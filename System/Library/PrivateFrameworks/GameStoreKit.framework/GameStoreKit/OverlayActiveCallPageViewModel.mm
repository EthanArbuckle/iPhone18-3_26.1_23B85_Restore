@interface OverlayActiveCallPageViewModel
- (void)dealloc;
@end

@implementation OverlayActiveCallPageViewModel

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for OverlayActiveCallPageViewModel();
  [(OverlayActiveCallPageViewModel *)&v6 dealloc];
}

@end