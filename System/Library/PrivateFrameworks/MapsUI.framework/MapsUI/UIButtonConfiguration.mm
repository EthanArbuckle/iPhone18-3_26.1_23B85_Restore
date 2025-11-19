@interface UIButtonConfiguration
@end

@implementation UIButtonConfiguration

id __83__UIButtonConfiguration_MapsUI___mapsui_textButtonConfigurationWithFont_textColor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (UIAccessibilityButtonShapesEnabled())
  {
    [v3 setObject:&unk_1F450DC70 forKeyedSubscript:*MEMORY[0x1E69DB758]];
  }

  v4 = [v3 copy];

  return v4;
}

id __59__UIButtonConfiguration_MapsUI___setupButtonConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];
  v4 = [v3 copy];

  return v4;
}

id __88__UIButtonConfiguration_MUPlaceHeaderButtonExtras___setupDirectionsButtonConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v4 = [v2 copy];

  return v4;
}

@end