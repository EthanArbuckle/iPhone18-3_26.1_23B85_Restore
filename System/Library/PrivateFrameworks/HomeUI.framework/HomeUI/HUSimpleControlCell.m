@interface HUSimpleControlCell
- (id)allControlViews;
- (void)_updateSliderConstraints;
- (void)prepareForReuse;
- (void)setControlView:(id)a3;
@end

@implementation HUSimpleControlCell

- (id)allControlViews
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUSimpleControlCell *)self controlView];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (void)setControlView:(id)a3
{
  v5 = a3;
  controlView = self->_controlView;
  if (controlView != v5)
  {
    v8 = v5;
    [(HUControlView *)controlView removeFromSuperview];
    objc_storeStrong(&self->_controlView, a3);
    [(HUControlView *)self->_controlView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUSimpleControlCell *)self contentView];
    [v7 addSubview:self->_controlView];

    [(HUSimpleControlCell *)self _updateSliderConstraints];
    v5 = v8;
  }
}

- (void)_updateSliderConstraints
{
  v3 = [(HUSimpleControlCell *)self controlViewConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUSimpleControlCell *)self controlViewConstraints];
    [v4 deactivateConstraints:v5];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUSimpleControlCell *)self controlView];

  if (v6)
  {
    v7 = [(HUSimpleControlCell *)self contentView];
    v8 = [v7 layoutMarginsGuide];

    v9 = [(HUSimpleControlCell *)self controlView];
    v10 = [v9 widthAnchor];
    v11 = [v8 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v25 addObject:v12];

    v13 = [(HUSimpleControlCell *)self controlView];
    v14 = [v13 leftAnchor];
    v15 = [v8 leftAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v25 addObject:v16];

    v17 = [(HUSimpleControlCell *)self controlView];
    v18 = [v17 topAnchor];
    v19 = [v8 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v25 addObject:v20];

    v21 = [(HUSimpleControlCell *)self controlView];
    v22 = [v21 heightAnchor];
    v23 = [v8 heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v25 addObject:v24];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v25];
  [(HUSimpleControlCell *)self setControlViewConstraints:v25];
}

- (void)prepareForReuse
{
  [(HUSimpleControlCell *)self setControlView:0];
  v3.receiver = self;
  v3.super_class = HUSimpleControlCell;
  [(HUSimpleControlCell *)&v3 prepareForReuse];
}

@end