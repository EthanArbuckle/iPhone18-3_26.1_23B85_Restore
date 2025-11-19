@interface CSComplicationWrapperViewController
- (CSComplicationWrapperViewController)initWithWidgetHostViewController:(id)a3;
- (void)dealloc;
- (void)setHighlighted:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CSComplicationWrapperViewController

- (CSComplicationWrapperViewController)initWithWidgetHostViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSComplicationWrapperViewController;
  v6 = [(CSComplicationWrapperViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetHostViewController, a3);
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

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    if (!self->_dimmingView)
    {
      v6 = objc_alloc(MEMORY[0x277D75D18]);
      v7 = [(CSComplicationWrapperViewController *)self view];
      [v7 bounds];
      v8 = [v6 initWithFrame:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = v8;

      [(UIView *)self->_dimmingView setAutoresizingMask:18];
      v10 = self->_dimmingView;
      v11 = [MEMORY[0x277D75348] blackColor];
      [(UIView *)v10 setBackgroundColor:v11];

      [(UIView *)self->_dimmingView setAlpha:0.600000024];
      v12 = [(CSComplicationWrapperViewController *)self view];
      [v12 addSubview:self->_dimmingView];
    }

    v13 = self->_dimmingView;
    if (v4)
    {
      v14 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController snapshotView];
      [(UIView *)v13 setMaskView:v14];
    }

    else
    {
      [(UIView *)self->_dimmingView setMaskView:0];
    }

    v15 = self->_dimmingView;

    [(UIView *)v15 setHidden:!v4];
  }
}

@end