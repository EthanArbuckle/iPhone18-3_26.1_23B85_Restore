@interface CSVoiceTriggerRTModelRequestOptions
- (CSVoiceTriggerRTModelRequestOptions)initWithCSRTModelRequestOptions:(id)options builder:(id)builder;
- (CSVoiceTriggerRTModelRequestOptions)initWithCoder:(id)coder;
- (CSVoiceTriggerRTModelRequestOptions)initWithMutableBuilder:(id)builder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSVoiceTriggerRTModelRequestOptions

- (void)encodeWithCoder:(id)coder
{
  siriLocale = self->_siriLocale;
  coderCopy = coder;
  [coderCopy encodeObject:siriLocale forKey:@"CSRTModelRequestOptionsSiriLocale"];
  [coderCopy encodeBool:self->_allowMph forKey:@"CSRTModelRequestOptionsAllowMph"];
  [coderCopy encodeObject:self->_userSelectedPhraseType forKey:@"CSRTModelRequestOptionsUserSelectedPhraseType"];
  [coderCopy encodeObject:self->_endpointId forKey:@"CSRTModelRequestOptionsEndpointId"];
  [coderCopy encodeObject:self->_engineMajorVersion forKey:@"CSRTModelRequestOptionsngineMajorVersion"];
  [coderCopy encodeObject:self->_engineMinorVersion forKey:@"CSRTModelRequestOptionsEngineMinorVersion"];
  [coderCopy encodeObject:self->_accessoryModelType forKey:@"CSRTModelRequestOptionsAccessoryModelType"];
  [coderCopy encodeObject:self->_accessoryInfo forKey:@"CSRTModelRequestOptionsAccessoryInfo"];
}

- (CSVoiceTriggerRTModelRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsSiriLocale"];
  v6 = [coderCopy decodeBoolForKey:@"CSRTModelRequestOptionsAllowMph"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsUserSelectedPhraseType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsEndpointId"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsngineMajorVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsEngineMinorVersion"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsAccessoryModelType"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsAccessoryInfo"];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C48A0;
  v22[3] = &unk_100250AD0;
  v30 = v6;
  v23 = v5;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v19 = v5;
  v20 = [(CSVoiceTriggerRTModelRequestOptions *)self initWithMutableBuilder:v22];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_initWeak(&location, self);
  selfCopy = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4A10;
  v7[3] = &unk_100250AA8;
  objc_copyWeak(&v8, &location);
  v5 = [(CSVoiceTriggerRTModelRequestOptions *)selfCopy initWithMutableBuilder:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v5;
}

- (CSVoiceTriggerRTModelRequestOptions)initWithCSRTModelRequestOptions:(id)options builder:(id)builder
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C4C80;
  v10[3] = &unk_100250A80;
  optionsCopy = options;
  builderCopy = builder;
  v6 = builderCopy;
  v7 = optionsCopy;
  v8 = [(CSVoiceTriggerRTModelRequestOptions *)self initWithMutableBuilder:v10];

  return v8;
}

- (CSVoiceTriggerRTModelRequestOptions)initWithMutableBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = CSVoiceTriggerRTModelRequestOptions;
  v5 = [(CSVoiceTriggerRTModelRequestOptions *)&v21 init];
  v6 = objc_alloc_init(CSVoiceTriggerRTModelRequestOptionsMutable);
  if (v5)
  {
    if (builderCopy)
    {
      builderCopy[2](builderCopy, v6);
    }

    mSiriLocale = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mSiriLocale];
    siriLocale = v5->_siriLocale;
    v5->_siriLocale = mSiriLocale;

    v5->_allowMph = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAllowMph];
    v5->_userSelectedPhraseType = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mUserSelectedPhrasetype];
    mEndpointId = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEndpointId];
    endpointId = v5->_endpointId;
    v5->_endpointId = mEndpointId;

    mEngineMajorVersion = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEngineMajorVersion];
    engineMajorVersion = v5->_engineMajorVersion;
    v5->_engineMajorVersion = mEngineMajorVersion;

    mEngineMinorVersion = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEngineMinorVersion];
    engineMinorVersion = v5->_engineMinorVersion;
    v5->_engineMinorVersion = mEngineMinorVersion;

    mAccessoryModelType = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAccessoryModelType];
    accessoryModelType = v5->_accessoryModelType;
    v5->_accessoryModelType = mAccessoryModelType;

    mAccessoryInfo = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAccessoryInfo];
    v18 = [mAccessoryInfo copy];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v18;
  }

  return v5;
}

@end