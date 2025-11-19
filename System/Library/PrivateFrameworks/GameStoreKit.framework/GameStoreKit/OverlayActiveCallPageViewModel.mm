@interface OverlayActiveCallPageViewModel
- (void)dealloc;
@end

@implementation OverlayActiveCallPageViewModel

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for OverlayActiveCallPageViewModel();
  [(OverlayActiveCallPageViewModel *)&v6 dealloc];
}

@end