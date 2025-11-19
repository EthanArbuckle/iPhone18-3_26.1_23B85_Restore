@interface DataAnalyticsController
- (BOOL)shouldStartAudioLogFor:(id)a3;
- (BOOL)shouldStoreAudioLogFor:(id)a3;
- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)init;
- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)initWithLocale:(id)a3 fbfBundleId:(id)a4;
@end

@implementation DataAnalyticsController

- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)initWithLocale:(id)a3 fbfBundleId:(id)a4
{
  v4 = sub_24794EF04();
  v6 = v5;
  v7 = sub_24794EF04();
  return DataAnalyticsController.init(locale:fbfBundleId:)(v4, v6, v7, v8);
}

- (BOOL)shouldStartAudioLogFor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_24791FB70(v4);

  return self & 1;
}

- (BOOL)shouldStoreAudioLogFor:(id)a3
{
  v4 = sub_24794EF04();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_24791FDCC(v4, v6);

  return v4 & 1;
}

- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end