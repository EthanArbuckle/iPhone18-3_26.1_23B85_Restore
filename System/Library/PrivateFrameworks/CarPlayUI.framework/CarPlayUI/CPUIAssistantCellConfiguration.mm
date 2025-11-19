@interface CPUIAssistantCellConfiguration
+ (id)configurationWithText:(id)a3;
@end

@implementation CPUIAssistantCellConfiguration

+ (id)configurationWithText:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setText:v3];

  return v4;
}

@end