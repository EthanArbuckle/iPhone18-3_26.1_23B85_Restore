@interface CSComplicationWrapperViewController
- (CSComplicationWrapperViewController)initWithWidgetHostViewController:(id)controller;
- (void)dealloc;
- (void)setHighlighted:(BOOL)highlighted;
- (void)viewDidLoad;
@end

@implementation CSComplicationWrapperViewController

- (CSComplicationWrapperViewController)initWithWidgetHostViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CSComplicationWrapperViewController;
  v6 = [(CSComplicationWrapperViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetHostViewController, controller);
  }

  return v7;
}

- (void)dealloc
{
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController invalidate];
  v3.receiver = self;
  v3.super_class = CSComplicationWrapperViewController;
  [(CSComplicationWrapperViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSComplicationWrapperViewController;
  [(CSComplicationWrapperViewController *)&v3 viewDidLoad];
  [(CSComplicationWrapperViewController *)self bs_addChildViewController:self->_widgetHostViewController];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    if (!self->_dimmingView)
    {
      v6 = objc_alloc(MEMORY[0x277D75D18]);
      view = [(CSComplicationWrapperViewController *)self view];
      [view bounds];
      v8 = [v6 initWithFrame:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = v8;

      [(UIView *)self->_dimmingView setAutoresizingMask:18];
      v10 = self->_dimmingView;
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UIView *)v10 setBackgroundColor:blackColor];

      [(UIView *)self->_dimmingView setAlpha:0.600000024];
      view2 = [(CSComplicationWrapperViewController *)self view];
      [view2 addSubview:self->_dimmingView];
    }

    v13 = self->_dimmingView;
    if (highlightedCopy)
    {
      snapshotView = [(CHUISWidgetHostViewController *)self->_widgetHostViewController snapshotView];
      [(UIView *)v13 setMaskView:snapshotView];
    }

    else
    {
      [(UIView *)self->_dimmingView setMaskView:0];
    }

    v15 = self->_dimmingView;

    [(UIView *)v15 setHidden:!highlightedCopy];
  }
}

@end