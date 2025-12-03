@interface MFAttachmentRaw
+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type;
+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d;
- (MFAttachmentRaw)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type
{
  v5 = [self attachmentData:data fileName:name mimeType:type contentID:0];

  return v5;
}

+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d
{
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v13 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v13 setData:dataCopy];
  [(MFAttachmentRaw *)v13 setFileName:nameCopy];
  [(MFAttachmentRaw *)v13 setMimeType:typeCopy];
  [(MFAttachmentRaw *)v13 setContentID:dCopy];

  return v13;
}

- (MFAttachmentRaw)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MFAttachmentRaw;
  v5 = [(MFAttachmentRaw *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(MFAttachmentRaw *)self data];
  [coderCopy encodeObject:data forKey:@"EFPropertyKey_data"];

  fileName = [(MFAttachmentRaw *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"EFPropertyKey_fileName"];

  mimeType = [(MFAttachmentRaw *)self mimeType];
  [coderCopy encodeObject:mimeType forKey:@"EFPropertyKey_mimeType"];

  contentID = [(MFAttachmentRaw *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"EFPropertyKey_contentID"];
}

@end