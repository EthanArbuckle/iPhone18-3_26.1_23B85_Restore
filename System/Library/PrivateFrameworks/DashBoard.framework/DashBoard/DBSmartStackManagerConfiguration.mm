@interface DBSmartStackManagerConfiguration
- (DBSmartStackManagerConfiguration)initWithAlertTitle:(id)title alertSubtitle:(id)subtitle actionTitle:(id)actionTitle action:(id)action;
@end

@implementation DBSmartStackManagerConfiguration

- (DBSmartStackManagerConfiguration)initWithAlertTitle:(id)title alertSubtitle:(id)subtitle actionTitle:(id)actionTitle action:(id)action
{
  titleCopy = title;
  subtitleCopy = subtitle;
  actionTitleCopy = actionTitle;
  actionCopy = action;
  v24.receiver = self;
  v24.super_class = DBSmartStackManagerConfiguration;
  v14 = [(DBSmartStackManagerConfiguration *)&v24 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    alertTitle = v14->_alertTitle;
    v14->_alertTitle = v15;

    v17 = [subtitleCopy copy];
    alertSubtitle = v14->_alertSubtitle;
    v14->_alertSubtitle = v17;

    v19 = [actionTitleCopy copy];
    actionTitle = v14->_actionTitle;
    v14->_actionTitle = v19;

    v21 = [actionCopy copy];
    action = v14->_action;
    v14->_action = v21;
  }

  return v14;
}

@end