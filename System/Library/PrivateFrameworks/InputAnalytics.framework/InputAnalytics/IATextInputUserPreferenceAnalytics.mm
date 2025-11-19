@interface IATextInputUserPreferenceAnalytics
- (IATextInputUserPreferenceAnalytics)init;
- (IATextInputUserPreferenceAnalytics)initWithEventHandler:(id)a3;
- (void)reportStateForUserPreference:(int64_t)a3;
- (void)reportStateForUserPreferences:(id)a3;
@end

@implementation IATextInputUserPreferenceAnalytics

- (IATextInputUserPreferenceAnalytics)init
{
  v3.receiver = self;
  v3.super_class = IATextInputUserPreferenceAnalytics;
  return [(IATextInputUserPreferenceAnalytics *)&v3 init];
}

- (IATextInputUserPreferenceAnalytics)initWithEventHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = IATextInputUserPreferenceAnalytics;
  return [(IATextInputUserPreferenceAnalytics *)&v4 init];
}

- (void)reportStateForUserPreference:(int64_t)a3
{
  v3 = sub_1D4620F80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462EDA4(v3);
  }
}

- (void)reportStateForUserPreferences:(id)a3
{
  v3 = sub_1D4620F80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462EDE8(v3);
  }
}

@end