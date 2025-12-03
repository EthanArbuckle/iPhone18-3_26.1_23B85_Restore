@interface KSBuddyAddKeyboardLanguageViewController
- (KSBuddyAddKeyboardLanguageViewController)initWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation KSBuddyAddKeyboardLanguageViewController

- (KSBuddyAddKeyboardLanguageViewController)initWithCompletion:(id)completion
{
  v7.receiver = self;
  v7.super_class = KSBuddyAddKeyboardLanguageViewController;
  v4 = [(KSBuddyAddKeyboardLanguageViewController *)&v7 init];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setCompletionBlock:completion];
    [(KSBuddyAddKeyboardLanguageViewController *)v4 setWrapper:v5];
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = KSBuddyAddKeyboardLanguageViewController;
  [(KSBuddyAddKeyboardLanguageViewController *)&v3 viewDidLoad];
  [(KSBuddyAddKeyboardLanguageViewController *)self showViewController:[(KSBuddyAddKeyboardLanguageViewController *)self wrapper] sender:self];
}

@end