@interface HUSliderControlCell
- (id)allControlViews;
- (void)_updateSliderConstraints;
- (void)prepareForReuse;
- (void)setSliderView:(id)view;
@end

@implementation HUSliderControlCell

- (id)allControlViews
{
  v2 = MEMORY[0x277CBEB98];
  sliderView = [(HUSliderControlCell *)self sliderView];
  v4 = [v2 na_setWithSafeObject:sliderView];

  return v4;
}

- (void)setSliderView:(id)view
{
  viewCopy = view;
  sliderView = self->_sliderView;
  if (sliderView != viewCopy)
  {
    v8 = viewCopy;
    [(HUSimpleSliderControlView *)sliderView removeFromSuperview];
    objc_storeStrong(&self->_sliderView, view);
    [(HUSimpleSliderControlView *)self->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUSliderControlCell *)self contentView];
    [contentView addSubview:self->_sliderView];

    [(HUSliderControlCell *)self _updateSliderConstraints];
    viewCopy = v8;
  }
}

- (void)_updateSliderConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  sliderConstraints = [(HUSliderControlCell *)self sliderConstraints];
  [v3 deactivateConstraints:sliderConstraints];

  [(HUSliderControlCell *)self setSliderConstraints:0];
  sliderView = [(HUSliderControlCell *)self sliderView];

  if (sliderView)
  {
    sliderView2 = [(HUSliderControlCell *)self sliderView];
    topAnchor = [sliderView2 topAnchor];
    contentView = [(HUSliderControlCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v26;
    sliderView3 = [(HUSliderControlCell *)self sliderView];
    bottomAnchor = [sliderView3 bottomAnchor];
    contentView2 = [(HUSliderControlCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[1] = v21;
    sliderView4 = [(HUSliderControlCell *)self sliderView];
    leadingAnchor = [sliderView4 leadingAnchor];
    contentView3 = [(HUSliderControlCell *)self contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[2] = v7;
    sliderView5 = [(HUSliderControlCell *)self sliderView];
    trailingAnchor = [sliderView5 trailingAnchor];
    contentView4 = [(HUSliderControlCell *)self contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [(HUSliderControlCell *)self setSliderConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    sliderConstraints2 = [(HUSliderControlCell *)self sliderConstraints];
    [v15 activateConstraints:sliderConstraints2];
  }
}

- (void)prepareForReuse
{
  [(HUSliderControlCell *)self setSliderView:0];
  v3.receiver = self;
  v3.super_class = HUSliderControlCell;
  [(HUSliderControlCell *)&v3 prepareForReuse];
}

@end