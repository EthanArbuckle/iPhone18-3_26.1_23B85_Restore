@interface DKTrackingConfig
- (DKTrackingConfig)initWithClientApplicationID:(id)d customInferenceEnabled:(id)enabled;
@end

@implementation DKTrackingConfig

- (DKTrackingConfig)initWithClientApplicationID:(id)d customInferenceEnabled:(id)enabled
{
  dCopy = d;
  enabledCopy = enabled;
  v12.receiver = self;
  v12.super_class = DKTrackingConfig;
  v9 = [(DKTrackingConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientApplicationID, d);
    v10->_customInferenceEnabled = enabledCopy != 0;
  }

  return v10;
}

@end