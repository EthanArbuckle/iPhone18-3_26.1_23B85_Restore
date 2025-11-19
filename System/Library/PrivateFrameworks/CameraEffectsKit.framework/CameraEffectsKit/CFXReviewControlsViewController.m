@interface CFXReviewControlsViewController
- (CFXReviewControlsViewController)init;
@end

@implementation CFXReviewControlsViewController

- (CFXReviewControlsViewController)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MEMORY[0x277D75AC8];
  v6 = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [v5 storyboardWithName:v4 bundle:v6];

  v8 = [v7 instantiateViewControllerWithIdentifier:v4];

  return v8;
}

@end