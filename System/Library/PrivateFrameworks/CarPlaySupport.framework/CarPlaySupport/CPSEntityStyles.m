@interface CPSEntityStyles
+ (id)mapButtonBackgroundColor;
+ (id)mapButtonDropShadow;
@end

@implementation CPSEntityStyles

+ (id)mapButtonBackgroundColor
{
  v5 = &mapButtonBackgroundColor_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_19);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = mapButtonBackgroundColor__mapButtonBackgroundColor;

  return v2;
}

double __43__CPSEntityStyles_mapButtonBackgroundColor__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D75348] colorWithDynamicProvider:{&__block_literal_global_5, a1, a1}];
  v2 = mapButtonBackgroundColor__mapButtonBackgroundColor;
  mapButtonBackgroundColor__mapButtonBackgroundColor = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

id __43__CPSEntityStyles_mapButtonBackgroundColor__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] userInterfaceStyle] == 1)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.964705882 alpha:1.0];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] tableBackgroundColor];
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

+ (id)mapButtonDropShadow
{
  v5 = &mapButtonDropShadow_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_7_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = mapButtonDropShadow__mapButtonDropShadow;

  return v2;
}

uint64_t __38__CPSEntityStyles_mapButtonDropShadow__block_invoke()
{
  v0 = objc_opt_new();
  v1 = mapButtonDropShadow__mapButtonDropShadow;
  mapButtonDropShadow__mapButtonDropShadow = v0;
  MEMORY[0x277D82BD8](v1);
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.200000003];
  [mapButtonDropShadow__mapButtonDropShadow setColor:?];
  MEMORY[0x277D82BD8](v5);
  CGSizeMake_16();
  [mapButtonDropShadow__mapButtonDropShadow setOffset:{v2, v3}];
  [mapButtonDropShadow__mapButtonDropShadow setRadius:4.0];
  return [mapButtonDropShadow__mapButtonDropShadow setOpacity:1.0];
}

@end