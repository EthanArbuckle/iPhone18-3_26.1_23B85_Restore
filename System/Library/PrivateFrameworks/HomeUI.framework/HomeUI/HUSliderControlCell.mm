@interface HUSliderControlCell
- (id)allControlViews;
- (void)_updateSliderConstraints;
- (void)prepareForReuse;
- (void)setSliderView:(id)a3;
@end

@implementation HUSliderControlCell

- (id)allControlViews
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUSliderControlCell *)self sliderView];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (void)setSliderView:(id)a3
{
  v5 = a3;
  sliderView = self->_sliderView;
  if (sliderView != v5)
  {
    v8 = v5;
    [(HUSimpleSliderControlView *)sliderView removeFromSuperview];
    objc_storeStrong(&self->_sliderView, a3);
    [(HUSimpleSliderControlView *)self->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUSliderControlCell *)self contentView];
    [v7 addSubview:self->_sliderView];

    [(HUSliderControlCell *)self _updateSliderConstraints];
    v5 = v8;
  }
}

- (void)_updateSliderConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUSliderControlCell *)self sliderConstraints];
  [v3 deactivateConstraints:v4];

  [(HUSliderControlCell *)self setSliderConstraints:0];
  v5 = [(HUSliderControlCell *)self sliderView];

  if (v5)
  {
    v30 = [(HUSliderControlCell *)self sliderView];
    v28 = [v30 topAnchor];
    v29 = [(HUSliderControlCell *)self contentView];
    v27 = [v29 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(HUSliderControlCell *)self sliderView];
    v23 = [v25 bottomAnchor];
    v24 = [(HUSliderControlCell *)self contentView];
    v22 = [v24 bottomAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v21;
    v20 = [(HUSliderControlCell *)self sliderView];
    v18 = [v20 leadingAnchor];
    v19 = [(HUSliderControlCell *)self contentView];
    v17 = [v19 layoutMarginsGuide];
    v6 = [v17 leadingAnchor];
    v7 = [v18 constraintEqualToAnchor:v6];
    v31[2] = v7;
    v8 = [(HUSliderControlCell *)self sliderView];
    v9 = [v8 trailingAnchor];
    v10 = [(HUSliderControlCell *)self contentView];
    v11 = [v10 layoutMarginsGuide];
    v12 = [v11 trailingAnchor];
    v13 = [v9 constraintEqualToAnchor:v12];
    v31[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [(HUSliderControlCell *)self setSliderConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [(HUSliderControlCell *)self sliderConstraints];
    [v15 activateConstraints:v16];
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