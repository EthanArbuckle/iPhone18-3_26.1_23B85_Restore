@interface CKInboxItem
- (CKInboxItem)initWithTitle:(id)a3 subtitle:(id)a4 systemImage:(id)a5 accessoryText:(id)a6 filterMode:(id)a7 action:(id)a8;
- (void)updateAccessory:(id)a3;
@end

@implementation CKInboxItem

- (CKInboxItem)initWithTitle:(id)a3 subtitle:(id)a4 systemImage:(id)a5 accessoryText:(id)a6 filterMode:(id)a7 action:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v30.receiver = self;
  v30.super_class = CKInboxItem;
  v20 = [(CKInboxItem *)&v30 init];
  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v19 copy];
    action = v20->_action;
    v20->_action = v23;

    v25 = [v18 copy];
    filterMode = v20->_filterMode;
    v20->_filterMode = v25;

    v27 = [[CKInboxItemSwift alloc] initWithIdentifier:v20->_identifier title:v14 subtitle:v15 systemImage:v16 accessoryText:v17];
    inboxItemSwift = v20->_inboxItemSwift;
    v20->_inboxItemSwift = v27;
  }

  return v20;
}

- (void)updateAccessory:(id)a3
{
  v4 = a3;
  v5 = [(CKInboxItem *)self inboxItemSwift];
  [v5 updateWithAccessoryText:v4];
}

@end