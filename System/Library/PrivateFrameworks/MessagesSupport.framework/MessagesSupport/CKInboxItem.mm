@interface CKInboxItem
- (CKInboxItem)initWithTitle:(id)title subtitle:(id)subtitle systemImage:(id)image accessoryText:(id)text filterMode:(id)mode action:(id)action;
- (void)updateAccessory:(id)accessory;
@end

@implementation CKInboxItem

- (CKInboxItem)initWithTitle:(id)title subtitle:(id)subtitle systemImage:(id)image accessoryText:(id)text filterMode:(id)mode action:(id)action
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  textCopy = text;
  modeCopy = mode;
  actionCopy = action;
  v30.receiver = self;
  v30.super_class = CKInboxItem;
  v20 = [(CKInboxItem *)&v30 init];
  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [actionCopy copy];
    action = v20->_action;
    v20->_action = v23;

    v25 = [modeCopy copy];
    filterMode = v20->_filterMode;
    v20->_filterMode = v25;

    v27 = [[CKInboxItemSwift alloc] initWithIdentifier:v20->_identifier title:titleCopy subtitle:subtitleCopy systemImage:imageCopy accessoryText:textCopy];
    inboxItemSwift = v20->_inboxItemSwift;
    v20->_inboxItemSwift = v27;
  }

  return v20;
}

- (void)updateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  inboxItemSwift = [(CKInboxItem *)self inboxItemSwift];
  [inboxItemSwift updateWithAccessoryText:accessoryCopy];
}

@end