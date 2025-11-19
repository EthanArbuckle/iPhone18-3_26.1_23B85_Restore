@interface IMTranslationMetrics
+ (id)sharedMetrics;
- (IMTranslationMetrics)init;
@end

@implementation IMTranslationMetrics

+ (id)sharedMetrics
{
  if (qword_1EB30A418 != -1)
  {
    sub_1A88C5FDC();
  }

  v3 = qword_1EB30A420;

  return v3;
}

- (IMTranslationMetrics)init
{
  v3.receiver = self;
  v3.super_class = IMTranslationMetrics;
  return [(IMTranslationMetrics *)&v3 init];
}

@end