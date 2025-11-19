@interface CHSControlConfigurationHost
@end

@implementation CHSControlConfigurationHost

uint64_t __93___CHSControlConfigurationHost_controlConfigurationsForApplicationContainerBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 controlIdentity];
  v4 = [v3 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

@end