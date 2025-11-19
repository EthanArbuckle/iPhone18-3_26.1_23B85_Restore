@interface HUISoundMeterViewInterface
- (BOOL)shouldShow;
- (HUISoundMeterViewInterface)initWithConfigurationType:(unint64_t)a3 delegate:(id)a4 source:(unint64_t)a5;
- (HUISoundMeterViewInterfaceDelegate)delegate;
- (id)soundMeterView;
- (id)soundMeterViewController;
- (void)liveLevelMeteringDisplayStateChanged:(BOOL)a3;
- (void)localSourceAvailableDidUpdate:(BOOL)a3;
- (void)remoteSourceAvailableDidUpdate:(BOOL)a3;
- (void)start;
- (void)stop;
- (void)updateViewsWith:(double)a3 fastLeq:(double)a4 thresholdLevel:(unint64_t)a5;
@end

@implementation HUISoundMeterViewInterface

- (HUISoundMeterViewInterface)initWithConfigurationType:(unint64_t)a3 delegate:(id)a4 source:(unint64_t)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HUISoundMeterViewInterface;
  v9 = [(HUISoundMeterViewInterface *)&v13 init];
  if (v9)
  {
    v10 = [[HUISoundMeterViewInterfaceInternal alloc] initWithConfigurationType:a3];
    [(HUISoundMeterViewInterface *)v9 setSoundMeterViewInterfaceInternal:v10];

    [(HUISoundMeterViewInterface *)v9 setDelegate:v8];
    v11 = [[HUISoundMeterListener alloc] initWithDelgate:v9 source:a5];
    [(HUISoundMeterViewInterface *)v9 setMeteringListener:v11];
  }

  return v9;
}

- (id)soundMeterViewController
{
  v2 = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  v3 = [v2 soundMeterViewController];

  return v3;
}

- (id)soundMeterView
{
  v2 = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  v3 = [v2 soundMeterViewController];
  v4 = [v3 view];

  return v4;
}

- (void)start
{
  v2 = [(HUISoundMeterViewInterface *)self meteringListener];
  [v2 start];
}

- (void)stop
{
  v2 = [(HUISoundMeterViewInterface *)self meteringListener];
  [v2 stop];
}

- (BOOL)shouldShow
{
  v2 = [(HUISoundMeterViewInterface *)self meteringListener];
  v3 = [v2 shouldShow];

  return v3;
}

- (void)liveLevelMeteringDisplayStateChanged:(BOOL)a3
{
  v3 = [(HUISoundMeterViewInterface *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    AXPerformBlockOnMainThread();
  }
}

void __67__HUISoundMeterViewInterface_liveLevelMeteringDisplayStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 soundMeterViewInterfaceDisplayStateChanged:*(a1 + 40)];
}

- (void)updateViewsWith:(double)a3 fastLeq:(double)a4 thresholdLevel:(unint64_t)a5
{
  v8 = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  [v8 updateViewsWithSlowLeq:a5 fastLeq:a3 thresholdLevel:a4];
}

- (void)localSourceAvailableDidUpdate:(BOOL)a3
{
  v3 = [(HUISoundMeterViewInterface *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    AXPerformBlockOnMainThread();
  }
}

void __60__HUISoundMeterViewInterface_localSourceAvailableDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 localSourceAvailableDidUpdate:*(a1 + 40)];
}

- (void)remoteSourceAvailableDidUpdate:(BOOL)a3
{
  v3 = [(HUISoundMeterViewInterface *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    AXPerformBlockOnMainThread();
  }
}

void __61__HUISoundMeterViewInterface_remoteSourceAvailableDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteSourceAvailableDidUpdate:*(a1 + 40)];
}

- (HUISoundMeterViewInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end