@interface CSDADataAnalyticsController
- (CSDADataAnalyticsController)initWithLocale:(id)locale fbfBundleId:(id)id;
@end

@implementation CSDADataAnalyticsController

- (CSDADataAnalyticsController)initWithLocale:(id)locale fbfBundleId:(id)id
{
  localeCopy = locale;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = CSDADataAnalyticsController;
  v8 = [(CSDADataAnalyticsController *)&v14 init];
  if (v8)
  {
    v9 = @"default";
    if (idCopy)
    {
      v9 = idCopy;
    }

    v10 = v9;
    v11 = [[_TtC23CoreSpeechDataAnalytics23DataAnalyticsController alloc] initWithLocale:localeCopy fbfBundleId:v10];

    analyticsController = v8->_analyticsController;
    v8->_analyticsController = v11;
  }

  return v8;
}

@end