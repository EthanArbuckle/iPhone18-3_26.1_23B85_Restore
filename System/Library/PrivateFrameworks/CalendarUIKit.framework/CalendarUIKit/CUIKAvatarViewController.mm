@interface CUIKAvatarViewController
+ (id)createAvatarViewController;
@end

@implementation CUIKAvatarViewController

+ (id)createAvatarViewController
{
  v2 = [MEMORY[0x1E695D0D8] defaultSettings];
  v3 = [objc_alloc(MEMORY[0x1E695D0D0]) initWithSettings:v2];

  return v3;
}

@end