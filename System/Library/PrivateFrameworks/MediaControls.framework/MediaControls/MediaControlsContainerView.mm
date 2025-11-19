@interface MediaControlsContainerView
- (BOOL)isTimeControlOnScreen;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPCPlayerResponse)response;
- (MediaControlsContainerView)initWithFrame:(CGRect)a3;
- (void)_updateStyle;
- (void)layoutSubviews;
- (void)setEmpty:(BOOL)a3;
- (void)setRatingActionSheetDelegate:(id)a3;
- (void)setResponse:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTimeControlOnScreen:(BOOL)a3;
@end

@implementation MediaControlsContainerView

- (MediaControlsContainerView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = MediaControlsContainerView;
  v3 = [(MediaControlsContainerView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MediaControlsTimeControl alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(MediaControlsTimeControl *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    timeControl = v3->_timeControl;
    v3->_timeControl = v9;

    v11 = [[MediaControlsTransportStackView alloc] initWithFrame:v5, v6, v7, v8];
    transportStackView = v3->_transportStackView;
    v3->_transportStackView = v11;

    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    primaryVisualEffectView = v3->_primaryVisualEffectView;
    v3->_primaryVisualEffectView = v13;

    v15 = [(MediaControlsContainerView *)v3 primaryVisualEffectView];
    [(MediaControlsContainerView *)v3 addSubview:v15];

    v16 = [(MediaControlsContainerView *)v3 primaryVisualEffectView];
    v17 = [v16 contentView];
    v18 = [(MediaControlsContainerView *)v3 timeControl];
    [v17 addSubview:v18];

    v19 = [(MediaControlsContainerView *)v3 transportStackView];
    [(MediaControlsContainerView *)v3 addSubview:v19];

    [(MediaControlsContainerView *)v3 _updateStyle];
  }

  return v3;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = MediaControlsContainerView;
  [(MediaControlsContainerView *)&v35 layoutSubviews];
  v3 = [(MediaControlsContainerView *)self traitCollection];
  [v3 displayScale];

  [(MediaControlsContainerView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRoundToScale();
  v12 = [(MediaControlsContainerView *)self primaryVisualEffectView];
  [v12 setFrame:{v5, v7, v9, v11}];

  if (self->_style == 1)
  {
    UIRectIntegralWithScale();
    v14 = v13;
    v34 = v15;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    UIRectIntegralWithScale();
    v34 = v20;
    v17 = v21;
    v19 = v22;
    v14 = v23;
  }

  UIRectIntegralWithScale();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(MediaControlsContainerView *)self transportStackView];
  [v32 setFrame:{v25, v27, v29, v31}];

  v33 = [(MediaControlsContainerView *)self timeControl];
  [v33 setFrame:{v14, v34, v17, v19}];
}

- (void)setEmpty:(BOOL)a3
{
  empty = self->_empty;
  if (empty != a3)
  {
    self->_empty = a3;
    empty = a3;
  }

  v5 = [(MediaControlsContainerView *)self timeControl];
  [v5 setEmpty:empty];

  v6 = self->_empty;
  v7 = [(MediaControlsContainerView *)self transportStackView];
  [v7 setEmpty:v6];

  [(MediaControlsContainerView *)self setNeedsLayout];
}

- (void)setStyle:(int64_t)a3
{
  v5 = [(MediaControlsContainerView *)self timeControl];
  [v5 setStyle:a3];

  v6 = [(MediaControlsContainerView *)self transportStackView];
  [v6 setStyle:a3];

  if (self->_style != a3)
  {
    self->_style = a3;
    [(MediaControlsContainerView *)self _updateStyle];

    [(MediaControlsContainerView *)self setNeedsLayout];
  }
}

- (void)setRatingActionSheetDelegate:(id)a3
{
  v4 = a3;
  v5 = [(MediaControlsContainerView *)self transportStackView];
  [v5 setActionsDelegate:v4];
}

- (void)setTimeControlOnScreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(MediaControlsContainerView *)self timeControl];
  [v4 setTimeControlOnScreen:v3];
}

- (BOOL)isTimeControlOnScreen
{
  v2 = [(MediaControlsContainerView *)self timeControl];
  v3 = [v2 isTimeControlOnScreen];

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MediaControlsContainerView *)self transportStackView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setResponse:(id)a3
{
  v4 = a3;
  v5 = [(MediaControlsContainerView *)self timeControl];
  [v5 setResponse:v4];

  v6 = [(MediaControlsContainerView *)self transportStackView];
  [v6 setResponse:v4];
}

- (MPCPlayerResponse)response
{
  v2 = [(MediaControlsContainerView *)self transportStackView];
  v3 = [v2 response];

  return v3;
}

- (void)_updateStyle
{
  style = self->_style;
  v4 = [(MediaControlsContainerView *)self timeControl];
  v5 = v4;
  if (style == 1)
  {
    v7 = 1.0;
    v6 = 0.0;
  }

  else if (style == 2)
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v6 = 1.0;
    v7 = 1.0;
  }

  [v4 setAlpha:v6];

  v8 = [(MediaControlsContainerView *)self transportStackView];
  [v8 setAlpha:v7];
}

@end