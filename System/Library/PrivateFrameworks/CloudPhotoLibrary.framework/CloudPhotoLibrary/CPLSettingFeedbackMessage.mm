@interface CPLSettingFeedbackMessage
- (CPLSettingFeedbackMessage)initWithSetting:(id)a3 value:(id)a4 libraryIdentifier:(id)a5;
- (id)serverMessage;
@end

@implementation CPLSettingFeedbackMessage

- (id)serverMessage
{
  v7.receiver = self;
  v7.super_class = CPLSettingFeedbackMessage;
  v3 = [(CPLFeedbackMessage *)&v7 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"setting"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_settingName];
  [v3 addKeysAndValues:v4];
  v5 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v5 setKey:@"settingValue"];
  [(CPLServerFeedbackKeyAndValue *)v5 setValue:self->_value];
  [v3 addKeysAndValues:v5];

  return v3;
}

- (CPLSettingFeedbackMessage)initWithSetting:(id)a3 value:(id)a4 libraryIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CPLSettingFeedbackMessage;
  v10 = [(CPLFeedbackMessage *)&v16 initWithLibraryIdentifier:a5];
  if (v10)
  {
    v11 = [v8 copy];
    settingName = v10->_settingName;
    v10->_settingName = v11;

    v13 = [v9 copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

@end