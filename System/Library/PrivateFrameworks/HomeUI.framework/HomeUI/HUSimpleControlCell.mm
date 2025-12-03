@interface HUSimpleControlCell
- (id)allControlViews;
- (void)_updateSliderConstraints;
- (void)prepareForReuse;
- (void)setControlView:(id)view;
@end

@implementation HUSimpleControlCell

- (id)allControlViews
{
  v2 = MEMORY[0x277CBEB98];
  controlView = [(HUSimpleControlCell *)self controlView];
  v4 = [v2 na_setWithSafeObject:controlView];

  return v4;
}

- (void)setControlView:(id)view
{
  viewCopy = view;
  controlView = self->_controlView;
  if (controlView != viewCopy)
  {
    v8 = viewCopy;
    [(HUControlView *)controlView removeFromSuperview];
    objc_storeStrong(&self->_controlView, view);
    [(HUControlView *)self->_controlView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUSimpleControlCell *)self contentView];
    [contentView addSubview:self->_controlView];

    [(HUSimpleControlCell *)self _updateSliderConstraints];
    viewCopy = v8;
  }
}

- (void)_updateSliderConstraints
{
  controlViewConstraints = [(HUSimpleControlCell *)self controlViewConstraints];

  if (controlViewConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    controlViewConstraints2 = [(HUSimpleControlCell *)self controlViewConstraints];
    [v4 deactivateConstraints:controlViewConstraints2];
  }

  array = [MEMORY[0x277CBEB18] array];
  controlView = [(HUSimpleControlCell *)self controlView];

  if (controlView)
  {
    contentView = [(HUSimpleControlCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    controlView2 = [(HUSimpleControlCell *)self controlView];
    widthAnchor = [controlView2 widthAnchor];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [array addObject:v12];

    controlView3 = [(HUSimpleControlCell *)self controlView];
    leftAnchor = [controlView3 leftAnchor];
    leftAnchor2 = [layoutMarginsGuide leftAnchor];
    v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v16];

    controlView4 = [(HUSimpleControlCell *)self controlView];
    topAnchor = [controlView4 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v20];

    controlView5 = [(HUSimpleControlCell *)self controlView];
    heightAnchor = [controlView5 heightAnchor];
    heightAnchor2 = [layoutMarginsGuide heightAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [array addObject:v24];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(HUSimpleControlCell *)self setControlViewConstraints:array];
}

- (void)prepareForReuse
{
  [(HUSimpleControlCell *)self setControlView:0];
  v3.receiver = self;
  v3.super_class = HUSimpleControlCell;
  [(HUSimpleControlCell *)&v3 prepareForReuse];
}

@end