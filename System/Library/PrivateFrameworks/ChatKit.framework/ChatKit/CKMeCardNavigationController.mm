@interface CKMeCardNavigationController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKMeCardNavigationController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKMeCardNavigationController;
  [(CKMeCardNavigationController *)&v4 viewWillAppear:appear];
  [(CKMeCardNavigationController *)self becomeFirstResponder];
}

@end