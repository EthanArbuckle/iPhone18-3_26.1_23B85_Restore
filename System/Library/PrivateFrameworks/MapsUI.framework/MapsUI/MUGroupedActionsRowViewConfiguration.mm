@interface MUGroupedActionsRowViewConfiguration
+ (id)defaultConfiguration;
- (MUGroupedActionsRowViewConfiguration)initWithStyle:(int64_t)a3 useVibrancy:(BOOL)a4;
@end

@implementation MUGroupedActionsRowViewConfiguration

- (MUGroupedActionsRowViewConfiguration)initWithStyle:(int64_t)a3 useVibrancy:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MUGroupedActionsRowViewConfiguration;
  result = [(MUGroupedActionsRowViewConfiguration *)&v7 init];
  if (result)
  {
    result->_style = a3;
    result->_useVibrancy = a4;
  }

  return result;
}

+ (id)defaultConfiguration
{
  v2 = [[MUGroupedActionsRowViewConfiguration alloc] initWithStyle:0 useVibrancy:1];
  v3 = +[MUInfoCardStyle actionRowTintColor];
  [(MUGroupedActionsRowViewConfiguration *)v2 setTintColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_3736];
  [(MUGroupedActionsRowViewConfiguration *)v2 setItemBackgroundColor:v4];

  v5 = +[MUInfoCardStyle rowSelectedColor];
  [(MUGroupedActionsRowViewConfiguration *)v2 setItemHighlightColor:v5];

  return v2;
}

id __60__MUGroupedActionsRowViewConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = dbl_1C5879FC0[[a2 userInterfaceStyle] == 2];
  v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [v3 colorWithAlphaComponent:v2];

  return v4;
}

@end