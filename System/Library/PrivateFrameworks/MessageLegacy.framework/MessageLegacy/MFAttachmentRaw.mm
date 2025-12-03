@interface MFAttachmentRaw
+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d;
- (void)dealloc;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d
{
  v10 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v10 setData:data];
  [(MFAttachmentRaw *)v10 setFileName:name];
  [(MFAttachmentRaw *)v10 setMimeType:type];
  [(MFAttachmentRaw *)v10 setContentID:d];
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentRaw;
  [(MFAttachmentRaw *)&v3 dealloc];
}

@end