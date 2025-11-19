@interface IAImageGenerationAnalytics
+ (id)imageCreationFeatureToEnumMap;
+ (id)imageCreationSignalToEnumMap;
@end

@implementation IAImageGenerationAnalytics

+ (id)imageCreationSignalToEnumMap
{
  if (qword_1EC7D65E8 != -1)
  {
    sub_1D462D6B4();
  }

  v3 = qword_1EC7D65F0;

  return v3;
}

+ (id)imageCreationFeatureToEnumMap
{
  if (qword_1EC7D65F8 != -1)
  {
    sub_1D462D6C8();
  }

  v3 = qword_1EC7D6600;

  return v3;
}

@end