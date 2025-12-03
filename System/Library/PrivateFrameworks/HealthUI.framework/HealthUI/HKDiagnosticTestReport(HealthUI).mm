@interface HKDiagnosticTestReport(HealthUI)
- (id)displayItems;
- (id)localizedStatusDisplayString;
@end

@implementation HKDiagnosticTestReport(HealthUI)

- (id)localizedStatusDisplayString
{
  status = [self status];
  localizedPreferredName = [status localizedPreferredName];

  return localizedPreferredName;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recordItem = [self recordItem];
  [v2 hk_addNonNilObject:recordItem];

  statusItem = [self statusItem];
  [v2 hk_addNonNilObject:statusItem];

  v5 = [v2 copy];

  return v5;
}

@end