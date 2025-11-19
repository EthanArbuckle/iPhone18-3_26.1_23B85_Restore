@interface ASProtocolCapabilities16_0
- (id)_calConstraintsPlistPath;
@end

@implementation ASProtocolCapabilities16_0

- (id)_calConstraintsPlistPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EAS16CalendarConstraints" ofType:@"plist"];

  return v3;
}

@end