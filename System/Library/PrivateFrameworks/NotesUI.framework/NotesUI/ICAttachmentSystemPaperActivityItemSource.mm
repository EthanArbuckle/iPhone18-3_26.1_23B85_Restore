@interface ICAttachmentSystemPaperActivityItemSource
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation ICAttachmentSystemPaperActivityItemSource

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__30;
  v18 = __Block_byref_object_dispose__30;
  v19 = 0;
  v8 = objc_autoreleasePoolPush();
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__ICAttachmentSystemPaperActivityItemSource_activityViewController_itemForActivityType___block_invoke;
  v13[3] = &unk_1E846B1D8;
  v13[4] = self;
  v13[5] = &v14;
  [managedObjectContext performBlockAndWait:v13];

  objc_autoreleasePoolPop(v8);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __88__ICAttachmentSystemPaperActivityItemSource_activityViewController_itemForActivityType___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 attachmentModel];
  v8 = ICCheckedDynamicCast();

  v4 = [v8 imageForActivityItem];
  v5 = UIImagePNGRepresentation(v4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end