@interface HKDiagnosticTestReport(HealthUI)
- (id)displayItems;
- (id)localizedStatusDisplayString;
@end

@implementation HKDiagnosticTestReport(HealthUI)

- (id)localizedStatusDisplayString
{
  v1 = [a1 status];
  v2 = [v1 localizedPreferredName];

  return v2;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 recordItem];
  [v2 hk_addNonNilObject:v3];

  v4 = [a1 statusItem];
  [v2 hk_addNonNilObject:v4];

  v5 = [v2 copy];

  return v5;
}

@end