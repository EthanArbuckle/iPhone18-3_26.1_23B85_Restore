@interface NNMKAttachment
- (BOOL)isActionable;
- (NNMKAttachment)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NNMKAttachment

- (NNMKAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NNMKAttachment;
  v5 = [(NNMKAttachment *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyContentId"];
    contentId = v5->_contentId;
    v5->_contentId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageId"];
    messageId = v5->_messageId;
    v5->_messageId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;

    v5->_fileSize = [v4 decodeIntegerForKey:@"kNSCodingKeyFileSize"];
    v5->_type = [v4 decodeIntegerForKey:@"kNSCodingKeyType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyContentURL"];
    url = v5->_url;
    v5->_url = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncState"];
    v5->_syncState = [v14 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contentId = self->_contentId;
  v5 = a3;
  [v5 encodeObject:contentId forKey:@"kNSCodingKeyContentId"];
  [v5 encodeObject:self->_messageId forKey:@"kNSCodingKeyMessageId"];
  [v5 encodeObject:self->_fileName forKey:@"kNSCodingKeyFileName"];
  [v5 encodeInteger:self->_fileSize forKey:@"kNSCodingKeyFileSize"];
  [v5 encodeInteger:self->_type forKey:@"kNSCodingKeyType"];
  [v5 encodeObject:self->_url forKey:@"kNSCodingKeyContentURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_syncState];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeySyncState"];
}

- (BOOL)isActionable
{
  v3 = objc_opt_class();
  v4 = [(NNMKAttachment *)self type];

  return [v3 isTypeActionable:v4];
}

@end