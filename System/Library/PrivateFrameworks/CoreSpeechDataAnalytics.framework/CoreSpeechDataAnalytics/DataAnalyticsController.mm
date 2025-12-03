@interface DataAnalyticsController
- (BOOL)shouldStartAudioLogFor:(id)for;
- (BOOL)shouldStoreAudioLogFor:(id)for;
- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)init;
- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)initWithLocale:(id)locale fbfBundleId:(id)id;
@end

@implementation DataAnalyticsController

- (_TtC23CoreSpeechDataAnalytics23DataAnalyticsController)initWithLocale:(id)locale fbfBundleId:(id)id
{
  v4 = sub_24794EF04();
  v6 = v5;
  v7 = sub_24794EF04();
  return DataAnalyticsController.init(locale:fbfBundleId:)(v4, v6, v7, v8);
}

- (BOOL)shouldStartAudioLogFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  LOBYTE(self) = sub_24791FB70(forCopy);

  return self & 1;
}

- (BOOL)shouldStoreAudioLogFor:(id)for
{
  v4 = sub_24794EF04();
  v6 = v5;
  selfCopy = self;
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