@interface FCFeatureEnablementChecker
+ (BOOL)enabledForCurrentLevel:(unint64_t)level;
+ (BOOL)enabledInConfig:(id)config forKey:(id)key withDefaultLevel:(unint64_t)level;
@end

@implementation FCFeatureEnablementChecker

+ (BOOL)enabledForCurrentLevel:(unint64_t)level
{
  v5 = NFInternalBuild() & level;
  if (NFSeedBuild() && (v5 & 1) == 0)
  {
    LOBYTE(v5) = ([self currentSeedTestBit] & level) != 0;
  }

  if ((NFInternalBuild() & 1) == 0 && (NFSeedBuild() & 1) == 0)
  {
    LOBYTE(v5) = (level & 2) != 0;
  }

  return v5;
}

+ (BOOL)enabledInConfig:(id)config forKey:(id)key withDefaultLevel:(unint64_t)level
{
  v6 = FCAppConfigurationIntegerValue(config, key, level);

  return [self enabledForCurrentLevel:v6];
}

@end