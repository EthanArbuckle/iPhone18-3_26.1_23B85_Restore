@interface MFAttachmentRaw
+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5;
+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (MFAttachmentRaw)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5
{
  v5 = [a1 attachmentData:a3 fileName:a4 mimeType:a5 contentID:0];

  return v5;
}

+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v13 setData:v9];
  [(MFAttachmentRaw *)v13 setFileName:v10];
  [(MFAttachmentRaw *)v13 setMimeType:v11];
  [(MFAttachmentRaw *)v13 setContentID:v12];

  return v13;
}

- (MFAttachmentRaw)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MFAttachmentRaw;
  v5 = [(MFAttachmentRaw *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MFAttachmentRaw *)self data];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_data"];

  v5 = [(MFAttachmentRaw *)self fileName];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_fileName"];

  v6 = [(MFAttachmentRaw *)self mimeType];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_mimeType"];

  v7 = [(MFAttachmentRaw *)self contentID];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_contentID"];
}

@end