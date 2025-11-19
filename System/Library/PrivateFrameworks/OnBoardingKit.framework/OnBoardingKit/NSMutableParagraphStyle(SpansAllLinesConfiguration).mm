@interface NSMutableParagraphStyle(SpansAllLinesConfiguration)
- (uint64_t)preferredSpansAllLinesForCurrentLanguageWithText:()SpansAllLinesConfiguration;
- (uint64_t)spansAllLinesForConfiguration:()SpansAllLinesConfiguration withText:;
@end

@implementation NSMutableParagraphStyle(SpansAllLinesConfiguration)

- (uint64_t)preferredSpansAllLinesForCurrentLanguageWithText:()SpansAllLinesConfiguration
{
  v4 = a3;
  v5 = +[OBLanguageConfigurationProvider defaultConfiguration];
  v6 = [v5 spansAllLines];

  v7 = [a1 spansAllLinesForConfiguration:v6 withText:v4];
  return v7;
}

- (uint64_t)spansAllLinesForConfiguration:()SpansAllLinesConfiguration withText:
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    v7 = 0;
  }

  else if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 containsString:@"\n"] ^ 1;
  }

  return v7;
}

@end