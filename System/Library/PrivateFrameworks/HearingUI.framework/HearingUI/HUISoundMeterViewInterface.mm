@interface HUISoundMeterViewInterface
- (BOOL)shouldShow;
- (HUISoundMeterViewInterface)initWithConfigurationType:(unint64_t)type delegate:(id)delegate source:(unint64_t)source;
- (HUISoundMeterViewInterfaceDelegate)delegate;
- (id)soundMeterView;
- (id)soundMeterViewController;
- (void)liveLevelMeteringDisplayStateChanged:(BOOL)changed;
- (void)localSourceAvailableDidUpdate:(BOOL)update;
- (void)remoteSourceAvailableDidUpdate:(BOOL)update;
- (void)start;
- (void)stop;
- (void)updateViewsWith:(double)with fastLeq:(double)leq thresholdLevel:(unint64_t)level;
@end

@implementation HUISoundMeterViewInterface

- (HUISoundMeterViewInterface)initWithConfigurationType:(unint64_t)type delegate:(id)delegate source:(unint64_t)source
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HUISoundMeterViewInterface;
  v9 = [(HUISoundMeterViewInterface *)&v13 init];
  if (v9)
  {
    v10 = [[HUISoundMeterViewInterfaceInternal alloc] initWithConfigurationType:type];
    [(HUISoundMeterViewInterface *)v9 setSoundMeterViewInterfaceInternal:v10];

    [(HUISoundMeterViewInterface *)v9 setDelegate:delegateCopy];
    v11 = [[HUISoundMeterListener alloc] initWithDelgate:v9 source:source];
    [(HUISoundMeterViewInterface *)v9 setMeteringListener:v11];
  }

  return v9;
}

- (id)soundMeterViewController
{
  soundMeterViewInterfaceInternal = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  soundMeterViewController = [soundMeterViewInterfaceInternal soundMeterViewController];

  return soundMeterViewController;
}

- (id)soundMeterView
{
  soundMeterViewInterfaceInternal = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  soundMeterViewController = [soundMeterViewInterfaceInternal soundMeterViewController];
  view = [soundMeterViewController view];

  return view;
}

- (void)start
{
  meteringListener = [(HUISoundMeterViewInterface *)self meteringListener];
  [meteringListener start];
}

- (void)stop
{
  meteringListener = [(HUISoundMeterViewInterface *)self meteringListener];
  [meteringListener stop];
}

- (BOOL)shouldShow
{
  meteringListener = [(HUISoundMeterViewInterface *)self meteringListener];
  shouldShow = [meteringListener shouldShow];

  return shouldShow;
}

- (void)liveLevelMeteringDisplayStateChanged:(BOOL)changed
{
  delegate = [(HUISoundMeterViewInterface *)self delegate];
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

- (void)updateViewsWith:(double)with fastLeq:(double)leq thresholdLevel:(unint64_t)level
{
  soundMeterViewInterfaceInternal = [(HUISoundMeterViewInterface *)self soundMeterViewInterfaceInternal];
  [soundMeterViewInterfaceInternal updateViewsWithSlowLeq:level fastLeq:with thresholdLevel:leq];
}

- (void)localSourceAvailableDidUpdate:(BOOL)update
{
  delegate = [(HUISoundMeterViewInterface *)self delegate];
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

- (void)remoteSourceAvailableDidUpdate:(BOOL)update
{
  delegate = [(HUISoundMeterViewInterface *)self delegate];
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