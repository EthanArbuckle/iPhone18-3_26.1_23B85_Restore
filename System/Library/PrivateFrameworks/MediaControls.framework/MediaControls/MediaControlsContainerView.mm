@interface MediaControlsContainerView
- (BOOL)isTimeControlOnScreen;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPCPlayerResponse)response;
- (MediaControlsContainerView)initWithFrame:(CGRect)frame;
- (void)_updateStyle;
- (void)layoutSubviews;
- (void)setEmpty:(BOOL)empty;
- (void)setRatingActionSheetDelegate:(id)delegate;
- (void)setResponse:(id)response;
- (void)setStyle:(int64_t)style;
- (void)setTimeControlOnScreen:(BOOL)screen;
@end

@implementation MediaControlsContainerView

- (MediaControlsContainerView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = MediaControlsContainerView;
  v3 = [(MediaControlsContainerView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    primaryVisualEffectView = [(MediaControlsContainerView *)v3 primaryVisualEffectView];
    [(MediaControlsContainerView *)v3 addSubview:primaryVisualEffectView];

    primaryVisualEffectView2 = [(MediaControlsContainerView *)v3 primaryVisualEffectView];
    contentView = [primaryVisualEffectView2 contentView];
    timeControl = [(MediaControlsContainerView *)v3 timeControl];
    [contentView addSubview:timeControl];

    transportStackView = [(MediaControlsContainerView *)v3 transportStackView];
    [(MediaControlsContainerView *)v3 addSubview:transportStackView];

    [(MediaControlsContainerView *)v3 _updateStyle];
  }

  return v3;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = MediaControlsContainerView;
  [(MediaControlsContainerView *)&v35 layoutSubviews];
  traitCollection = [(MediaControlsContainerView *)self traitCollection];
  [traitCollection displayScale];

  [(MediaControlsContainerView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRoundToScale();
  primaryVisualEffectView = [(MediaControlsContainerView *)self primaryVisualEffectView];
  [primaryVisualEffectView setFrame:{v5, v7, v9, v11}];

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
  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setFrame:{v25, v27, v29, v31}];

  timeControl = [(MediaControlsContainerView *)self timeControl];
  [timeControl setFrame:{v14, v34, v17, v19}];
}

- (void)setEmpty:(BOOL)empty
{
  empty = self->_empty;
  if (empty != empty)
  {
    self->_empty = empty;
    empty = empty;
  }

  timeControl = [(MediaControlsContainerView *)self timeControl];
  [timeControl setEmpty:empty];

  v6 = self->_empty;
  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setEmpty:v6];

  [(MediaControlsContainerView *)self setNeedsLayout];
}

- (void)setStyle:(int64_t)style
{
  timeControl = [(MediaControlsContainerView *)self timeControl];
  [timeControl setStyle:style];

  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setStyle:style];

  if (self->_style != style)
  {
    self->_style = style;
    [(MediaControlsContainerView *)self _updateStyle];

    [(MediaControlsContainerView *)self setNeedsLayout];
  }
}

- (void)setRatingActionSheetDelegate:(id)delegate
{
  delegateCopy = delegate;
  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setActionsDelegate:delegateCopy];
}

- (void)setTimeControlOnScreen:(BOOL)screen
{
  screenCopy = screen;
  timeControl = [(MediaControlsContainerView *)self timeControl];
  [timeControl setTimeControlOnScreen:screenCopy];
}

- (BOOL)isTimeControlOnScreen
{
  timeControl = [(MediaControlsContainerView *)self timeControl];
  isTimeControlOnScreen = [timeControl isTimeControlOnScreen];

  return isTimeControlOnScreen;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  timeControl = [(MediaControlsContainerView *)self timeControl];
  [timeControl setResponse:responseCopy];

  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setResponse:responseCopy];
}

- (MPCPlayerResponse)response
{
  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  response = [transportStackView response];

  return response;
}

- (void)_updateStyle
{
  style = self->_style;
  timeControl = [(MediaControlsContainerView *)self timeControl];
  v5 = timeControl;
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

  [timeControl setAlpha:v6];

  transportStackView = [(MediaControlsContainerView *)self transportStackView];
  [transportStackView setAlpha:v7];
}

@end