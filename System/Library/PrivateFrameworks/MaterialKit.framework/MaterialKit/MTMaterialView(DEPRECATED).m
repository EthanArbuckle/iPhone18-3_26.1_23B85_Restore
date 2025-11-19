@interface MTMaterialView(DEPRECATED)
@end

@implementation MTMaterialView(DEPRECATED)

+ (void)_deprecatedControlCenterMaterialWithRecipe:()DEPRECATED configuration:initialWeighting:scaleAdjustment:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTMaterialView.m" lineNumber:847 description:{@"Invalid parameter not satisfying: %@", @"[self _isWorkaroundRequiredForRecipe:recipe]"}];
}

@end