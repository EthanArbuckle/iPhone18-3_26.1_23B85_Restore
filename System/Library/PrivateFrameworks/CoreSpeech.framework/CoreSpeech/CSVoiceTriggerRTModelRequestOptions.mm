@interface CSVoiceTriggerRTModelRequestOptions
- (CSVoiceTriggerRTModelRequestOptions)initWithCSRTModelRequestOptions:(id)a3 builder:(id)a4;
- (CSVoiceTriggerRTModelRequestOptions)initWithCoder:(id)a3;
- (CSVoiceTriggerRTModelRequestOptions)initWithMutableBuilder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSVoiceTriggerRTModelRequestOptions

- (void)encodeWithCoder:(id)a3
{
  siriLocale = self->_siriLocale;
  v5 = a3;
  [v5 encodeObject:siriLocale forKey:@"CSRTModelRequestOptionsSiriLocale"];
  [v5 encodeBool:self->_allowMph forKey:@"CSRTModelRequestOptionsAllowMph"];
  [v5 encodeObject:self->_userSelectedPhraseType forKey:@"CSRTModelRequestOptionsUserSelectedPhraseType"];
  [v5 encodeObject:self->_endpointId forKey:@"CSRTModelRequestOptionsEndpointId"];
  [v5 encodeObject:self->_engineMajorVersion forKey:@"CSRTModelRequestOptionsngineMajorVersion"];
  [v5 encodeObject:self->_engineMinorVersion forKey:@"CSRTModelRequestOptionsEngineMinorVersion"];
  [v5 encodeObject:self->_accessoryModelType forKey:@"CSRTModelRequestOptionsAccessoryModelType"];
  [v5 encodeObject:self->_accessoryInfo forKey:@"CSRTModelRequestOptionsAccessoryInfo"];
}

- (CSVoiceTriggerRTModelRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsSiriLocale"];
  v6 = [v4 decodeBoolForKey:@"CSRTModelRequestOptionsAllowMph"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsUserSelectedPhraseType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsEndpointId"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsngineMajorVersion"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsEngineMinorVersion"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsAccessoryModelType"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSRTModelRequestOptionsAccessoryInfo"];

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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_initWeak(&location, self);
  v4 = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4A10;
  v7[3] = &unk_100250AA8;
  objc_copyWeak(&v8, &location);
  v5 = [(CSVoiceTriggerRTModelRequestOptions *)v4 initWithMutableBuilder:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v5;
}

- (CSVoiceTriggerRTModelRequestOptions)initWithCSRTModelRequestOptions:(id)a3 builder:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C4C80;
  v10[3] = &unk_100250A80;
  v11 = a3;
  v12 = a4;
  v6 = v12;
  v7 = v11;
  v8 = [(CSVoiceTriggerRTModelRequestOptions *)self initWithMutableBuilder:v10];

  return v8;
}

- (CSVoiceTriggerRTModelRequestOptions)initWithMutableBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CSVoiceTriggerRTModelRequestOptions;
  v5 = [(CSVoiceTriggerRTModelRequestOptions *)&v21 init];
  v6 = objc_alloc_init(CSVoiceTriggerRTModelRequestOptionsMutable);
  if (v5)
  {
    if (v4)
    {
      v4[2](v4, v6);
    }

    v7 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mSiriLocale];
    siriLocale = v5->_siriLocale;
    v5->_siriLocale = v7;

    v5->_allowMph = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAllowMph];
    v5->_userSelectedPhraseType = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mUserSelectedPhrasetype];
    v9 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEndpointId];
    endpointId = v5->_endpointId;
    v5->_endpointId = v9;

    v11 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEngineMajorVersion];
    engineMajorVersion = v5->_engineMajorVersion;
    v5->_engineMajorVersion = v11;

    v13 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mEngineMinorVersion];
    engineMinorVersion = v5->_engineMinorVersion;
    v5->_engineMinorVersion = v13;

    v15 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAccessoryModelType];
    accessoryModelType = v5->_accessoryModelType;
    v5->_accessoryModelType = v15;

    v17 = [(CSVoiceTriggerRTModelRequestOptionsMutable *)v6 mAccessoryInfo];
    v18 = [v17 copy];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v18;
  }

  return v5;
}

@end