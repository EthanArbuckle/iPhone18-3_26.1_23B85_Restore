@interface NNMKComposedMessageAttachment
- (BOOL)prepareForArchiving;
- (NNMKComposedMessageAttachment)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)logTransmission;
- (void)prepareForArchiving;
@end

@implementation NNMKComposedMessageAttachment

- (NNMKComposedMessageAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NNMKComposedMessageAttachment *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileName"];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileData"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileURL"];
    url = v5->_url;
    v5->_url = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyUTIType"];
    utiType = v5->_utiType;
    v5->_utiType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileSize"];
    v5->_fileSize = [v16 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fileName = self->_fileName;
  v5 = a3;
  [v5 encodeObject:fileName forKey:@"kNSCodingKeyFileName"];
  [v5 encodeObject:self->_data forKey:@"kNSCodingKeyFileData"];
  [v5 encodeObject:self->_url forKey:@"kNSCodingKeyFileURL"];
  [v5 encodeObject:self->_mimeType forKey:@"kNSCodingKeyMimeType"];
  [v5 encodeObject:self->_utiType forKey:@"kNSCodingKeyUTIType"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fileSize];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeyFileSize"];
}

- (BOOL)prepareForArchiving
{
  url = self->_url;
  if (!url)
  {
    return self->_data != 0;
  }

  v11 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:url options:0 error:&v11];
  v5 = v11;
  data = self->_data;
  self->_data = v4;

  v7 = self->_data;
  v8 = v7 != 0;
  if (!v7)
  {
    v9 = __logCategories;
    if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
    {
      [(NNMKComposedMessageAttachment *)v9 prepareForArchiving];
    }
  }

  return v8;
}

- (void)logTransmission
{
  v9 = [(NNMKComposedMessageAttachment *)self utiType];
  NNMKGreenTeaLog(@"Transmitted attachment(s): filetype %@", v2, v3, v4, v5, v6, v7, v8, v9);
}

- (void)prepareForArchiving
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Unable to read attachment url to prepare for archiving: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end