@interface FCFeatureEnablementChecker
+ (BOOL)enabledForCurrentLevel:(unint64_t)a3;
+ (BOOL)enabledInConfig:(id)a3 forKey:(id)a4 withDefaultLevel:(unint64_t)a5;
@end

@implementation FCFeatureEnablementChecker

+ (BOOL)enabledForCurrentLevel:(unint64_t)a3
{
  v5 = NFInternalBuild() & a3;
  if (NFSeedBuild() && (v5 & 1) == 0)
  {
    LOBYTE(v5) = ([a1 currentSeedTestBit] & a3) != 0;
  }

  if ((NFInternalBuild() & 1) == 0 && (NFSeedBuild() & 1) == 0)
  {
    LOBYTE(v5) = (a3 & 2) != 0;
  }

  return v5;
}

+ (BOOL)enabledInConfig:(id)a3 forKey:(id)a4 withDefaultLevel:(unint64_t)a5
{
  v6 = FCAppConfigurationIntegerValue(a3, a4, a5);

  return [a1 enabledForCurrentLevel:v6];
}

@end