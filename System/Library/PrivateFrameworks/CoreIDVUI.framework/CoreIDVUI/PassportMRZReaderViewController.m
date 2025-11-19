@interface PassportMRZReaderViewController
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PassportMRZReaderViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2457F1CA4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457F236C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2457F24EC(a3);
}

@end