@interface ICFilterAttachmentActivityItemSource
- (id)activityItemSourceForSelector:(SEL)selector;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)initAttachmentItem:(id)item;
@end

@implementation ICFilterAttachmentActivityItemSource

- (id)initAttachmentItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = ICFilterAttachmentActivityItemSource;
  v5 = [(ICFilterAttachmentActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICFilterAttachmentActivityItemSource *)v5 setAttachmentItem:itemCopy];
  }

  return v6;
}

- (id)activityItemSourceForSelector:(SEL)selector
{
  attachmentItem = [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
  v4 = ICProtocolCast();

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  itemCopy = item;
  v5 = [(ICFilterAttachmentActivityItemSource *)self activityItemSourceForSelector:sel_activityViewControllerPlaceholderItem_];
  v6 = v5;
  if (v5)
  {
    [v5 activityViewControllerPlaceholderItem:itemCopy];
  }

  else
  {
    [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
  }
  v7 = ;

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  if ([typeCopy isEqual:*MEMORY[0x1E69CDA78]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E69CDA90]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.mobilenotes.lock-note") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69CDAA8]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69CDAF0]))
  {
    goto LABEL_6;
  }

  if (![typeCopy isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
LABEL_15:
    v15 = [(ICFilterAttachmentActivityItemSource *)self activityItemSourceForSelector:sel_activityViewController_itemForActivityType_];
    v16 = v15;
    if (v15)
    {
      [v15 activityViewController:controllerCopy itemForActivityType:typeCopy];
    }

    else
    {
      [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
    }
    v8 = ;

    goto LABEL_7;
  }

  attachmentItem = [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_15;
  }

  attachmentItem2 = [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
  attachment = [attachmentItem2 attachment];
  attachmentModel = [attachment attachmentModel];
  canConvertToHTMLForSharing = [attachmentModel canConvertToHTMLForSharing];

  if ((canConvertToHTMLForSharing & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v8 = 0;
LABEL_7:

  return v8;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v8 = [(ICFilterAttachmentActivityItemSource *)self activityItemSourceForSelector:sel_activityViewController_dataTypeIdentifierForActivityType_];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 activityViewController:controllerCopy dataTypeIdentifierForActivityType:typeCopy];
  }

  else
  {
    v10 = &stru_1F4F94F00;
  }

  return v10;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  attachmentItem = [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    attachmentItem2 = [(ICFilterAttachmentActivityItemSource *)self attachmentItem];
    v11 = [attachmentItem2 activityViewController:controllerCopy attachmentNameForActivityType:typeCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end