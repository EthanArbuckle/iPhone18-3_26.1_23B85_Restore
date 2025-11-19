@interface CSAudioInjectionEngineFactory
+ (id)engineWithDevice:(id)a3 streamHandleId:(unint64_t)a4;
@end

@implementation CSAudioInjectionEngineFactory

+ (id)engineWithDevice:(id)a3 streamHandleId:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 deviceType];
  v7 = [v5 isBundleDevice];

  if (v7)
  {
    v8 = off_10024CB88;
  }

  else if ((v6 - 1) > 7)
  {
    v8 = off_10024CB98;
  }

  else
  {
    v8 = (&off_100253408)[(v6 - 1)];
  }

  v9 = [objc_alloc(*v8) initWithStreamHandleId:a4];

  return v9;
}

@end