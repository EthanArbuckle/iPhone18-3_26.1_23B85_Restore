@interface DKTrackingConfig
- (DKTrackingConfig)initWithClientApplicationID:(id)a3 customInferenceEnabled:(id)a4;
@end

@implementation DKTrackingConfig

- (DKTrackingConfig)initWithClientApplicationID:(id)a3 customInferenceEnabled:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKTrackingConfig;
  v9 = [(DKTrackingConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientApplicationID, a3);
    v10->_customInferenceEnabled = v8 != 0;
  }

  return v10;
}

@end