@interface CLFMusicSettings_GeneratedCode
+ (CLFMusicSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFMusicSettings_GeneratedCode)init;
- (NSArray)selectedPlaylists;
@end

@implementation CLFMusicSettings_GeneratedCode

+ (CLFMusicSettings)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CLFMusicSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_1;

  return v3;
}

- (CLFMusicSettings_GeneratedCode)init
{
  v7.receiver = self;
  v7.super_class = CLFMusicSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_selectedPlaylists);
    [v4 setObject:@"SelectedPlaylists" forKeyedSubscript:v5];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CLFMusicSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v8, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_selectedPlaylists);
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)selectedPlaylists
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"SelectedPlaylists" ofClass:v3 defaultValue:v4];
}

@end