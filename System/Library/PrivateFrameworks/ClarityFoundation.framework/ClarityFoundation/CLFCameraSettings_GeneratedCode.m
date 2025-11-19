@interface CLFCameraSettings_GeneratedCode
+ (CLFCameraSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFCameraSettings_GeneratedCode)init;
@end

@implementation CLFCameraSettings_GeneratedCode

+ (CLFCameraSettings)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CLFCameraSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_3;

  return v3;
}

- (CLFCameraSettings_GeneratedCode)init
{
  v13.receiver = self;
  v13.super_class = CLFCameraSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_allowPhotoCapture);
    [v4 setObject:@"AllowPhotoCapture" forKeyedSubscript:v5];

    v6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_allowSelfieCapture);
    [v6 setObject:@"AllowSelfieCapture" forKeyedSubscript:v7];

    v8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_allowSelfieVideoCapture);
    [v8 setObject:@"AllowSelfieVideoCapture" forKeyedSubscript:v9];

    v10 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_allowVideoCapture);
    [v10 setObject:@"AllowVideoCapture" forKeyedSubscript:v11];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___CLFCameraSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v11, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_allowPhotoCapture);
  v12[0] = v3;
  v4 = NSStringFromSelector(sel_allowSelfieCapture);
  v12[1] = v4;
  v5 = NSStringFromSelector(sel_allowSelfieVideoCapture);
  v12[2] = v5;
  v6 = NSStringFromSelector(sel_allowVideoCapture);
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v8 = [v2 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end