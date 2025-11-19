@interface ICAttachmentDrawingActivityItemSource
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation ICAttachmentDrawingActivityItemSource

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  v9 = [(ICAttachmentActivityItemSource *)self attachment];
  v10 = [v9 attachmentModel];
  v11 = ICCheckedDynamicCast();

  v12 = [v11 imageForActivityItem];
  v13 = UIImagePNGRepresentation(v12);

  objc_autoreleasePoolPop(v8);

  return v13;
}

@end