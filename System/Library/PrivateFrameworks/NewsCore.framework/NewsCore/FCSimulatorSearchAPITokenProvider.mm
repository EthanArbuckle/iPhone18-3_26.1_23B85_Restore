@interface FCSimulatorSearchAPITokenProvider
+ (id)apiToken;
@end

@implementation FCSimulatorSearchAPITokenProvider

+ (id)apiToken
{
  if (FeldsparCoreInternalExtrasEnabled())
  {
    v2 = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
    [v2 load];

    v3 = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
    v4 = [v3 classNamed:@"FCSimulatorSearchAPITokenProvider_Internal"];

    v5 = [v4 apiToken];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end