@interface DOCICloudQuotaInAppAction
- (DOCICloudQuotaInAppAction)initWithICQInAppAction:(id)a3;
- (DOCICloudQuotaInAppAction)initWithTitle:(id)a3 type:(id)a4;
- (void)performAction;
@end

@implementation DOCICloudQuotaInAppAction

- (DOCICloudQuotaInAppAction)initWithICQInAppAction:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DOCICloudQuotaInAppAction;
  v5 = [(DOCICloudQuotaInAppAction *)&v13 init];
  action = v5->_action;
  v5->_action = v4;
  v7 = v4;

  v8 = [(ICQInAppAction *)v7 title];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(ICQInAppAction *)v7 type];
  type = v5->_type;
  v5->_type = v10;

  return v5;
}

- (DOCICloudQuotaInAppAction)initWithTitle:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DOCICloudQuotaInAppAction;
  v8 = [(DOCICloudQuotaInAppAction *)&v13 init];
  title = v8->_title;
  v8->_title = v6;
  v10 = v6;

  type = v8->_type;
  v8->_type = v7;

  return v8;
}

- (void)performAction
{
  v2 = [(DOCICloudQuotaInAppAction *)self action];
  [v2 performActionWithContext:MEMORY[0x277CBEC10]];
}

@end