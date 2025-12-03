@interface XRBottlenecksAnalysisModeManager
+ (BOOL)applyWithConfig:(id)config;
+ (BOOL)applyWithConfig:(id)config actionID:(unint64_t)d;
+ (id)allAnalysisModes;
+ (id)counterAnalysisWithName:(id)name;
- (XRBottlenecksAnalysisModeManager)init;
@end

@implementation XRBottlenecksAnalysisModeManager

+ (id)counterAnalysisWithName:(id)name
{
  v3 = sub_248030B38();
  v5 = _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC07counterD05named0B04DataVSgSS_tFZ_0(v3, v4);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_2480307A8();
    sub_24802B678(v5, v7);
    v8 = v9;
  }

  return v8;
}

+ (id)allAnalysisModes
{
  v2 = _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC03allD5Modes0B04DataVSgyFZ_0();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_2480307A8();
    sub_24802B678(v5, v6);
    v4 = v7;
  }

  return v4;
}

+ (BOOL)applyWithConfig:(id)config
{
  configCopy = config;
  v4 = _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC5apply6configSbSo22XRRecountConfigurationC_tFZ_0(configCopy);

  return v4;
}

+ (BOOL)applyWithConfig:(id)config actionID:(unint64_t)d
{
  configCopy = config;
  v5 = _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC5apply6config8actionIDSbSo22XRRecountConfigurationC_SutFZ_0(configCopy);

  return v5;
}

- (XRBottlenecksAnalysisModeManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(XRBottlenecksAnalysisModeManager *)&v3 init];
}

@end