@interface KSBuddyAddKeyboardLanguageListControllerWrapper
- (void)dismiss;
- (void)viewDidLoad;
@end

@implementation KSBuddyAddKeyboardLanguageListControllerWrapper

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSBuddyAddKeyboardLanguageListControllerWrapper;
  [(KSBuddyAddKeyboardLanguageListControllerWrapper *)&v4 viewDidLoad];
  v3 = objc_alloc_init(KSAddKeyboardLanguageListController);
  [(KSAddKeyboardLanguageListController *)v3 setReturnSuggestedInputModes:1];
  [(KSAddKeyboardLanguageListController *)v3 setRootController:self];
  [(KSAddKeyboardLanguageListController *)v3 setSpecifier:objc_alloc_init(MEMORY[0x277D3FAD8])];
  [(KSAddKeyboardLanguageListController *)v3 setParentController:self];
  [(PSRootController *)self showController:v3];
  [(KSBuddyAddKeyboardLanguageListControllerWrapper *)self setController:v3];
}

- (void)dismiss
{
  v2 = *([(KSBuddyAddKeyboardLanguageListControllerWrapper *)self completionBlock]+ 16);

  v2();
}

@end