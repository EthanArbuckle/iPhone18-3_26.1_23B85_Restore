@interface CUIKAvatarViewController
+ (id)createAvatarViewController;
@end

@implementation CUIKAvatarViewController

+ (id)createAvatarViewController
{
  defaultSettings = [MEMORY[0x1E695D0D8] defaultSettings];
  v3 = [objc_alloc(MEMORY[0x1E695D0D0]) initWithSettings:defaultSettings];

  return v3;
}

@end