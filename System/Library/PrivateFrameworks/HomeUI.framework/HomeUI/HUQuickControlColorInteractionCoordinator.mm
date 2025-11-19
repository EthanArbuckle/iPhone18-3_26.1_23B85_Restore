@interface HUQuickControlColorInteractionCoordinator
- (HUQuickControlColorInteractionCoordinator)initWithControlView:(id)a3 colorPalette:(id)a4 delegate:(id)a5;
- (void)_notifyDelegateOfColorPaletteChangeIfNecessary;
- (void)cancelButtonTappedToDismissColorViewController;
- (void)controlView:(id)a3 colorPaletteDidChange:(id)a4;
- (void)controlView:(id)a3 didSelectColorAtIndexPath:(id)a4;
- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5;
- (void)controlView:(id)a3 showAuxiliaryView:(id)a4;
- (void)hideAuxiliaryViewForControlView:(id)a3;
- (void)presentFullColorViewForControlView:(id)a3 selectedColorIndexPath:(id)a4;
@end

@implementation HUQuickControlColorInteractionCoordinator

- (HUQuickControlColorInteractionCoordinator)initWithControlView:(id)a3 colorPalette:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUQuickControlColorInteractionCoordinator;
  v9 = [(HUQuickControlSimpleInteractionCoordinator *)&v12 initWithControlView:a3 delegate:a5];
  v10 = v9;
  if (v9)
  {
    [(HUQuickControlColorInteractionCoordinator *)v9 setColorPalette:v8];
  }

  return v10;
}

- (void)_notifyDelegateOfColorPaletteChangeIfNecessary
{
  if ([(HUQuickControlColorInteractionCoordinator *)self hasPendingColorPaletteChangeDelegateNotification]&& ![(HUQuickControlSimpleInteractionCoordinator *)self isUserInteractionActive])
  {
    v3 = [(HUQuickControlInteractionCoordinator *)self delegate];
    v4 = [(HUQuickControlColorInteractionCoordinator *)self colorPalette];
    [v3 interactionCoordinator:self colorPaletteDidChange:v4];

    [(HUQuickControlColorInteractionCoordinator *)self setHasPendingColorPaletteChangeDelegateNotification:0];
  }
}

- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = HUQuickControlColorInteractionCoordinator;
  [(HUQuickControlSimpleInteractionCoordinator *)&v7 controlView:a3 interactionStateDidChange:a4 forFirstTouch:a5];
  if (!a4)
  {
    [(HUQuickControlColorInteractionCoordinator *)self _notifyDelegateOfColorPaletteChangeIfNecessary];
  }
}

- (void)controlView:(id)a3 colorPaletteDidChange:(id)a4
{
  [(HUQuickControlColorInteractionCoordinator *)self setColorPalette:a4];
  [(HUQuickControlColorInteractionCoordinator *)self setHasPendingColorPaletteChangeDelegateNotification:1];

  [(HUQuickControlColorInteractionCoordinator *)self _notifyDelegateOfColorPaletteChangeIfNecessary];
}

- (void)controlView:(id)a3 showAuxiliaryView:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v6 interactionCoordinator:self showAuxiliaryView:v5];
}

- (void)hideAuxiliaryViewForControlView:(id)a3
{
  v4 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v4 hideAuxiliaryViewForInteractionCoordinator:self];
}

- (void)presentFullColorViewForControlView:(id)a3 selectedColorIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v6 presentFullColorViewForInteractionCoordinator:self selectedColorIndexPath:v5];
}

- (void)controlView:(id)a3 didSelectColorAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v6 interactionCoordinator:self didSelectColorAtIndexPath:v5];
}

- (void)cancelButtonTappedToDismissColorViewController
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = self;
    v7 = 2080;
    v8 = "[HUQuickControlColorInteractionCoordinator cancelButtonTappedToDismissColorViewController]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped cancel button", &v5, 0x16u);
  }

  v4 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v4 cancelColorPicking];
}

@end