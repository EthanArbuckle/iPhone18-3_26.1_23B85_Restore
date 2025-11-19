@interface MFAttachmentRaw
+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (void)dealloc;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v10 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v10 setData:a3];
  [(MFAttachmentRaw *)v10 setFileName:a4];
  [(MFAttachmentRaw *)v10 setMimeType:a5];
  [(MFAttachmentRaw *)v10 setContentID:a6];
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentRaw;
  [(MFAttachmentRaw *)&v3 dealloc];
}

@end