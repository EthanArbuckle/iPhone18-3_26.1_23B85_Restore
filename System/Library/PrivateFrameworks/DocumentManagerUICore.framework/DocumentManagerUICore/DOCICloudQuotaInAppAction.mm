@interface DOCICloudQuotaInAppAction
- (DOCICloudQuotaInAppAction)initWithICQInAppAction:(id)action;
- (DOCICloudQuotaInAppAction)initWithTitle:(id)title type:(id)type;
- (void)performAction;
@end

@implementation DOCICloudQuotaInAppAction

- (DOCICloudQuotaInAppAction)initWithICQInAppAction:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = DOCICloudQuotaInAppAction;
  v5 = [(DOCICloudQuotaInAppAction *)&v13 init];
  action = v5->_action;
  v5->_action = actionCopy;
  v7 = actionCopy;

  title = [(ICQInAppAction *)v7 title];
  title = v5->_title;
  v5->_title = title;

  type = [(ICQInAppAction *)v7 type];
  type = v5->_type;
  v5->_type = type;

  return v5;
}

- (DOCICloudQuotaInAppAction)initWithTitle:(id)title type:(id)type
{
  titleCopy = title;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = DOCICloudQuotaInAppAction;
  v8 = [(DOCICloudQuotaInAppAction *)&v13 init];
  title = v8->_title;
  v8->_title = titleCopy;
  v10 = titleCopy;

  type = v8->_type;
  v8->_type = typeCopy;

  return v8;
}

- (void)performAction
{
  action = [(DOCICloudQuotaInAppAction *)self action];
  [action performActionWithContext:MEMORY[0x277CBEC10]];
}

@end