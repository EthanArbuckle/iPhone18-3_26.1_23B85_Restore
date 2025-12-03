@interface HUQuickControlColorInteractionCoordinator
- (HUQuickControlColorInteractionCoordinator)initWithControlView:(id)view colorPalette:(id)palette delegate:(id)delegate;
- (void)_notifyDelegateOfColorPaletteChangeIfNecessary;
- (void)cancelButtonTappedToDismissColorViewController;
- (void)controlView:(id)view colorPaletteDidChange:(id)change;
- (void)controlView:(id)view didSelectColorAtIndexPath:(id)path;
- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch;
- (void)controlView:(id)view showAuxiliaryView:(id)auxiliaryView;
- (void)hideAuxiliaryViewForControlView:(id)view;
- (void)presentFullColorViewForControlView:(id)view selectedColorIndexPath:(id)path;
@end

@implementation HUQuickControlColorInteractionCoordinator

- (HUQuickControlColorInteractionCoordinator)initWithControlView:(id)view colorPalette:(id)palette delegate:(id)delegate
{
  paletteCopy = palette;
  v12.receiver = self;
  v12.super_class = HUQuickControlColorInteractionCoordinator;
  v9 = [(HUQuickControlSimpleInteractionCoordinator *)&v12 initWithControlView:view delegate:delegate];
  v10 = v9;
  if (v9)
  {
    [(HUQuickControlColorInteractionCoordinator *)v9 setColorPalette:paletteCopy];
  }

  return v10;
}

- (void)_notifyDelegateOfColorPaletteChangeIfNecessary
{
  if ([(HUQuickControlColorInteractionCoordinator *)self hasPendingColorPaletteChangeDelegateNotification]&& ![(HUQuickControlSimpleInteractionCoordinator *)self isUserInteractionActive])
  {
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    colorPalette = [(HUQuickControlColorInteractionCoordinator *)self colorPalette];
    [delegate interactionCoordinator:self colorPaletteDidChange:colorPalette];

    [(HUQuickControlColorInteractionCoordinator *)self setHasPendingColorPaletteChangeDelegateNotification:0];
  }
}

- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch
{
  v7.receiver = self;
  v7.super_class = HUQuickControlColorInteractionCoordinator;
  [(HUQuickControlSimpleInteractionCoordinator *)&v7 controlView:view interactionStateDidChange:change forFirstTouch:touch];
  if (!change)
  {
    [(HUQuickControlColorInteractionCoordinator *)self _notifyDelegateOfColorPaletteChangeIfNecessary];
  }
}

- (void)controlView:(id)view colorPaletteDidChange:(id)change
{
  [(HUQuickControlColorInteractionCoordinator *)self setColorPalette:change];
  [(HUQuickControlColorInteractionCoordinator *)self setHasPendingColorPaletteChangeDelegateNotification:1];

  [(HUQuickControlColorInteractionCoordinator *)self _notifyDelegateOfColorPaletteChangeIfNecessary];
}

- (void)controlView:(id)view showAuxiliaryView:(id)auxiliaryView
{
  auxiliaryViewCopy = auxiliaryView;
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate interactionCoordinator:self showAuxiliaryView:auxiliaryViewCopy];
}

- (void)hideAuxiliaryViewForControlView:(id)view
{
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate hideAuxiliaryViewForInteractionCoordinator:self];
}

- (void)presentFullColorViewForControlView:(id)view selectedColorIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate presentFullColorViewForInteractionCoordinator:self selectedColorIndexPath:pathCopy];
}

- (void)controlView:(id)view didSelectColorAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate interactionCoordinator:self didSelectColorAtIndexPath:pathCopy];
}

- (void)cancelButtonTappedToDismissColorViewController
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[HUQuickControlColorInteractionCoordinator cancelButtonTappedToDismissColorViewController]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped cancel button", &v5, 0x16u);
  }

  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  [controlView cancelColorPicking];
}

@end