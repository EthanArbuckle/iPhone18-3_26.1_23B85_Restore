@interface ICAttachmentInlineDrawingActivityItemSource
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation ICAttachmentInlineDrawingActivityItemSource

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v11 = ICCheckedDynamicCast();

  imageForActivityItem = [v11 imageForActivityItem];
  v13 = UIImagePNGRepresentation(imageForActivityItem);

  objc_autoreleasePoolPop(v8);

  return v13;
}

@end