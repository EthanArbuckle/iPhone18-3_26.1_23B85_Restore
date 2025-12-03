@interface CKAttachmentItemManager
+ (id)attachmentWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date shareURL:(id)rL;
@end

@implementation CKAttachmentItemManager

+ (id)attachmentWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date shareURL:(id)rL
{
  height = size.height;
  width = size.width;
  rLCopy = rL;
  dateCopy = date;
  guidCopy = guid;
  dCopy = d;
  lCopy = l;
  v19 = +[CKMediaObjectManager sharedInstance];
  lastPathComponent = [lCopy lastPathComponent];
  v21 = [v19 classForFilename:lastPathComponent];

  v22 = [objc_alloc(objc_msgSend(v21 "__ck_attachmentItemClass"))];

  return v22;
}

@end