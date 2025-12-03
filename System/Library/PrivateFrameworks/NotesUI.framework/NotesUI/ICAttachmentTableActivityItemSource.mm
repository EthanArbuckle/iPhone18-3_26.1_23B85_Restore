@interface ICAttachmentTableActivityItemSource
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ICAttachmentTableActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAB0]);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v11 = ICCheckedDynamicCast();

  v12 = [typeCopy isEqualToString:*MEMORY[0x1E69CDA78]];
  v13 = [typeCopy isEqualToString:*MEMORY[0x1E69CDB00]];
  table = [v11 table];
  v15 = table;
  if ((v12 & 1) != 0 || v13)
  {
    v19 = [table joinedAttributedStringForColumns:0 rows:0];

    string = [v19 string];
    v20 = string;
    if (v12)
    {
      v22 = [string dataUsingEncoding:4];

      v20 = v22;
    }
  }

  else
  {
    attachment2 = [v11 attachment];
    managedObjectContext = [attachment2 managedObjectContext];
    v18 = [v15 attributedStringWithNSTextTablesForColumns:0 rows:0 context:managedObjectContext];

    v19 = v18;
    v20 = v19;
  }

  objc_autoreleasePoolPop(v8);

  return v20;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  v10.receiver = self;
  v10.super_class = ICAttachmentTableActivityItemSource;
  typeCopy = type;
  v6 = [(ICAttachmentActivityItemSource *)&v10 activityViewController:controller dataTypeIdentifierForActivityType:typeCopy];
  v7 = [typeCopy isEqualToString:{*MEMORY[0x1E69CDA78], v10.receiver, v10.super_class}];

  if (v7)
  {
    identifier = [*MEMORY[0x1E6983060] identifier];

    v6 = identifier;
  }

  return v6;
}

@end