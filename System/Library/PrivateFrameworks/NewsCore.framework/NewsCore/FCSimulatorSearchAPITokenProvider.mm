@interface FCSimulatorSearchAPITokenProvider
+ (id)apiToken;
@end

@implementation FCSimulatorSearchAPITokenProvider

+ (id)apiToken
{
  if (FeldsparCoreInternalExtrasEnabled())
  {
    fc_feldsparCoreInternalExtrasBundle = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
    [fc_feldsparCoreInternalExtrasBundle load];

    fc_feldsparCoreInternalExtrasBundle2 = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
    v4 = [fc_feldsparCoreInternalExtrasBundle2 classNamed:@"FCSimulatorSearchAPITokenProvider_Internal"];

    apiToken = [v4 apiToken];
  }

  else
  {
    apiToken = 0;
  }

  return apiToken;
}

@end