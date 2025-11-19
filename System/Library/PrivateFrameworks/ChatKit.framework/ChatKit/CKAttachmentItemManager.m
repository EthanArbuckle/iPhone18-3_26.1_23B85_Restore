@interface CKAttachmentItemManager
+ (id)attachmentWithFileURL:(id)a3 size:(CGSize)a4 transferGUID:(id)a5 guid:(id)a6 createdDate:(id)a7 shareURL:(id)a8;
@end

@implementation CKAttachmentItemManager

+ (id)attachmentWithFileURL:(id)a3 size:(CGSize)a4 transferGUID:(id)a5 guid:(id)a6 createdDate:(id)a7 shareURL:(id)a8
{
  height = a4.height;
  width = a4.width;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = +[CKMediaObjectManager sharedInstance];
  v20 = [v18 lastPathComponent];
  v21 = [v19 classForFilename:v20];

  v22 = [objc_alloc(objc_msgSend(v21 "__ck_attachmentItemClass"))];

  return v22;
}

@end