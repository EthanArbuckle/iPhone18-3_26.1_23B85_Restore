@interface HKMedicalIDNavigationController
- (void)viewDidLoad;
@end

@implementation HKMedicalIDNavigationController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKMedicalIDNavigationController;
  [(HKNavigationController *)&v2 viewDidLoad];
}

@end