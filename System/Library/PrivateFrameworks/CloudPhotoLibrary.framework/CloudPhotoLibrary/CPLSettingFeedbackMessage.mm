@interface CPLSettingFeedbackMessage
- (CPLSettingFeedbackMessage)initWithSetting:(id)setting value:(id)value libraryIdentifier:(id)identifier;
- (id)serverMessage;
@end

@implementation CPLSettingFeedbackMessage

- (id)serverMessage
{
  v7.receiver = self;
  v7.super_class = CPLSettingFeedbackMessage;
  serverMessage = [(CPLFeedbackMessage *)&v7 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"setting"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_settingName];
  [serverMessage addKeysAndValues:v4];
  v5 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v5 setKey:@"settingValue"];
  [(CPLServerFeedbackKeyAndValue *)v5 setValue:self->_value];
  [serverMessage addKeysAndValues:v5];

  return serverMessage;
}

- (CPLSettingFeedbackMessage)initWithSetting:(id)setting value:(id)value libraryIdentifier:(id)identifier
{
  settingCopy = setting;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = CPLSettingFeedbackMessage;
  v10 = [(CPLFeedbackMessage *)&v16 initWithLibraryIdentifier:identifier];
  if (v10)
  {
    v11 = [settingCopy copy];
    settingName = v10->_settingName;
    v10->_settingName = v11;

    v13 = [valueCopy copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

@end