@interface ICAttachmentTableActivityItemSource
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ICAttachmentTableActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAB0]);

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  v9 = [(ICAttachmentActivityItemSource *)self attachment];
  v10 = [v9 attachmentModel];
  v11 = ICCheckedDynamicCast();

  v12 = [v7 isEqualToString:*MEMORY[0x1E69CDA78]];
  v13 = [v7 isEqualToString:*MEMORY[0x1E69CDB00]];
  v14 = [v11 table];
  v15 = v14;
  if ((v12 & 1) != 0 || v13)
  {
    v19 = [v14 joinedAttributedStringForColumns:0 rows:0];

    v21 = [v19 string];
    v20 = v21;
    if (v12)
    {
      v22 = [v21 dataUsingEncoding:4];

      v20 = v22;
    }
  }

  else
  {
    v16 = [v11 attachment];
    v17 = [v16 managedObjectContext];
    v18 = [v15 attributedStringWithNSTextTablesForColumns:0 rows:0 context:v17];

    v19 = v18;
    v20 = v19;
  }

  objc_autoreleasePoolPop(v8);

  return v20;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v10.receiver = self;
  v10.super_class = ICAttachmentTableActivityItemSource;
  v5 = a4;
  v6 = [(ICAttachmentActivityItemSource *)&v10 activityViewController:a3 dataTypeIdentifierForActivityType:v5];
  v7 = [v5 isEqualToString:{*MEMORY[0x1E69CDA78], v10.receiver, v10.super_class}];

  if (v7)
  {
    v8 = [*MEMORY[0x1E6983060] identifier];

    v6 = v8;
  }

  return v6;
}

@end