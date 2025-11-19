@interface DBSmartStackManagerConfiguration
- (DBSmartStackManagerConfiguration)initWithAlertTitle:(id)a3 alertSubtitle:(id)a4 actionTitle:(id)a5 action:(id)a6;
@end

@implementation DBSmartStackManagerConfiguration

- (DBSmartStackManagerConfiguration)initWithAlertTitle:(id)a3 alertSubtitle:(id)a4 actionTitle:(id)a5 action:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = DBSmartStackManagerConfiguration;
  v14 = [(DBSmartStackManagerConfiguration *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    alertTitle = v14->_alertTitle;
    v14->_alertTitle = v15;

    v17 = [v11 copy];
    alertSubtitle = v14->_alertSubtitle;
    v14->_alertSubtitle = v17;

    v19 = [v12 copy];
    actionTitle = v14->_actionTitle;
    v14->_actionTitle = v19;

    v21 = [v13 copy];
    action = v14->_action;
    v14->_action = v21;
  }

  return v14;
}

@end