@interface CSDADataAnalyticsController
- (CSDADataAnalyticsController)initWithLocale:(id)a3 fbfBundleId:(id)a4;
@end

@implementation CSDADataAnalyticsController

- (CSDADataAnalyticsController)initWithLocale:(id)a3 fbfBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CSDADataAnalyticsController;
  v8 = [(CSDADataAnalyticsController *)&v14 init];
  if (v8)
  {
    v9 = @"default";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
    v11 = [[_TtC23CoreSpeechDataAnalytics23DataAnalyticsController alloc] initWithLocale:v6 fbfBundleId:v10];

    analyticsController = v8->_analyticsController;
    v8->_analyticsController = v11;
  }

  return v8;
}

@end