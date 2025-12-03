@interface HUControlHostView
- (HUControlHostView)initWithControlView:(id)view;
- (void)setControlView:(id)view;
- (void)setRequiresWellDefinedSize:(BOOL)size;
- (void)updateConstraints;
@end

@implementation HUControlHostView

- (HUControlHostView)initWithControlView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = HUControlHostView;
  v5 = [(HUControlHostView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUControlHostView *)v5 setControlView:viewCopy];
  }

  return v6;
}

- (void)setControlView:(id)view
{
  viewCopy = view;
  controlView = self->_controlView;
  if (controlView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)controlView removeFromSuperview];
    objc_storeStrong(&self->_controlView, view);
    [(UIView *)self->_controlView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_controlView setPreservesSuperviewLayoutMargins:1];
    [(HUControlHostView *)self addSubview:self->_controlView];
    [(HUControlHostView *)self setNeedsUpdateConstraints];
    viewCopy = v7;
  }
}

- (void)setRequiresWellDefinedSize:(BOOL)size
{
  if (self->_requiresWellDefinedSize != size)
  {
    self->_requiresWellDefinedSize = size;
    [(HUControlHostView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Inside HUControlHostView::updateConstraints", buf, 2u);
  }

  controlConstraints = [(HUControlHostView *)self controlConstraints];

  if (controlConstraints)
  {
    v5 = MEMORY[0x277CCAAD0];
    controlConstraints2 = [(HUControlHostView *)self controlConstraints];
    [v5 deactivateConstraints:controlConstraints2];

    [(HUControlHostView *)self setControlConstraints:0];
  }

  controlView = [(HUControlHostView *)self controlView];

  if (controlView)
  {
    v8 = objc_opt_new();
    controlView2 = [(HUControlHostView *)self controlView];
    centerXAnchor = [controlView2 centerXAnchor];
    centerXAnchor2 = [(HUControlHostView *)self centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v8 addObject:v12];

    controlView3 = [(HUControlHostView *)self controlView];
    centerYAnchor = [controlView3 centerYAnchor];
    centerYAnchor2 = [(HUControlHostView *)self centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v8 addObject:v16];

    controlView4 = [(HUControlHostView *)self controlView];
    widthAnchor = [controlView4 widthAnchor];
    widthAnchor2 = [(HUControlHostView *)self widthAnchor];
    v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

    if ([(HUControlHostView *)self requiresWellDefinedSize])
    {
      *&v21 = 1000.0;
    }

    else
    {
      *&v21 = 251.0;
    }

    [v20 setPriority:v21];
    [v8 addObject:v20];
    controlView5 = [(HUControlHostView *)self controlView];
    heightAnchor = [controlView5 heightAnchor];
    heightAnchor2 = [(HUControlHostView *)self heightAnchor];
    v25 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

    if ([(HUControlHostView *)self requiresWellDefinedSize])
    {
      *&v26 = 1000.0;
    }

    else
    {
      *&v26 = 251.0;
    }

    [v25 setPriority:v26];
    [v8 addObject:v25];
    [MEMORY[0x277CCAAD0] activateConstraints:v8];
    [(HUControlHostView *)self setControlConstraints:v8];
  }

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "super.updateConstraints in HUControlHostView::updateConstraints", buf, 2u);
  }

  v28.receiver = self;
  v28.super_class = HUControlHostView;
  [(HUControlHostView *)&v28 updateConstraints];
}

@end