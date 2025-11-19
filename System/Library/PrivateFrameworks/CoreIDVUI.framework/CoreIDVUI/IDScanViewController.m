@interface IDScanViewController
- (void)startManualCaptureTask;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation IDScanViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2457CC740();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457CCCAC(a3);
}

- (void)startManualCaptureTask
{
  v2 = self;
  sub_2457D06B0();
}

@end