@interface CLFPhotosSettings_GeneratedCode
+ (CLFPhotosSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFPhotosSettings_GeneratedCode)init;
- (NSArray)selectedSharedAlbumCloudIdentifiers;
@end

@implementation CLFPhotosSettings_GeneratedCode

+ (CLFPhotosSettings)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CLFPhotosSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_4;

  return v3;
}

- (CLFPhotosSettings_GeneratedCode)init
{
  v11.receiver = self;
  v11.super_class = CLFPhotosSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_allowPinchToZoom);
    [v4 setObject:@"AllowPinchToZoom" forKeyedSubscript:v5];

    v6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_includeSharedAlbums);
    [v6 setObject:@"IncludeSharedAlbums" forKeyedSubscript:v7];

    v8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_selectedSharedAlbumCloudIdentifiers);
    [v8 setObject:@"SelectedSharedAlbumCloudIdentifiers" forKeyedSubscript:v9];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___CLFPhotosSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v10, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_allowPinchToZoom);
  v11[0] = v3;
  v4 = NSStringFromSelector(sel_includeSharedAlbums);
  v11[1] = v4;
  v5 = NSStringFromSelector(sel_selectedSharedAlbumCloudIdentifiers);
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v7 = [v2 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)selectedSharedAlbumCloudIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"SelectedSharedAlbumCloudIdentifiers" ofClass:v3 defaultValue:v4];
}

@end