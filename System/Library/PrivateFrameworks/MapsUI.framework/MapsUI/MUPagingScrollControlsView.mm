@interface MUPagingScrollControlsView
- (BOOL)shouldFlipPagingDirection;
- (MUPagingScrollControlsView)initWithHorizontalScrollView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_adjustScrollIndexByOffset:(int64_t)a3;
- (void)_scrollNext;
- (void)_scrollPrevious;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateChevronVisibility;
- (void)handleHover:(id)a3;
- (void)setHoverActive:(BOOL)a3;
@end

@implementation MUPagingScrollControlsView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = MUPagingScrollControlsView;
  v7 = a4;
  v8 = [(MUPagingScrollControlsView *)&v12 hitTest:v7 withEvent:x, y];
  v9 = [v7 type];

  if (v9 || v8 != self)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_adjustScrollIndexByOffset:(int64_t)a3
{
  [(MUScrollViewProtocol *)self->_scrollView frame];
  Width = CGRectGetWidth(v10);
  [(MUScrollViewProtocol *)self->_scrollView contentOffset];
  v7 = round(v6 / Width);
  [(MUScrollViewProtocol *)self->_scrollView contentSize];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MUPagingScrollControlsView__adjustScrollIndexByOffset___block_invoke;
  v9[3] = &unk_1E82191F8;
  v9[4] = self;
  v9[5] = fmin(fmax(v7 + a3, 0.0) * Width, v8 - Width);
  [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.2];
}

uint64_t __57__MUPagingScrollControlsView__adjustScrollIndexByOffset___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setContentOffset:{*(a1 + 40), 0.0}];
  v2 = *(a1 + 32);

  return [v2 _updateChevronVisibility];
}

- (void)_scrollNext
{
  if ([(MUPagingScrollControlsView *)self shouldFlipPagingDirection])
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  [(MUPagingScrollControlsView *)self _adjustScrollIndexByOffset:v3];
}

- (void)_scrollPrevious
{
  if ([(MUPagingScrollControlsView *)self shouldFlipPagingDirection])
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  [(MUPagingScrollControlsView *)self _adjustScrollIndexByOffset:v3];
}

- (void)_updateChevronVisibility
{
  [(MUScrollViewProtocol *)self->_scrollView frame];
  Width = CGRectGetWidth(v16);
  [(MUScrollViewProtocol *)self->_scrollView contentSize];
  v5 = v4 - Width;
  [(MUScrollViewProtocol *)self->_scrollView contentOffset];
  v7 = v6 <= 0.0;
  [(MUScrollViewProtocol *)self->_scrollView contentOffset];
  v9 = v8 >= v5;
  v10 = [(MUPagingScrollControlsView *)self shouldFlipPagingDirection];
  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__MUPagingScrollControlsView__updateChevronVisibility__block_invoke;
  v13[3] = &unk_1E82191D0;
  v13[4] = self;
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  v14 = v12;
  v15 = v11;
  [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.2];
}

uint64_t __54__MUPagingScrollControlsView__updateChevronVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hoverActive];
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = 1.0;
    if (*(a1 + 40))
    {
      v4 = 0.0;
    }
  }

  [*(*(a1 + 32) + 408) setAlpha:v4];
  if ([*(a1 + 32) hoverActive])
  {
    if (*(a1 + 41))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v5 = *(*(a1 + 32) + 416);

  return [v5 setAlpha:v3];
}

- (BOOL)shouldFlipPagingDirection
{
  v3 = [(UIView *)self _mapsui_isRTL];
  if (v3)
  {

    LOBYTE(v3) = [(MUPagingScrollControlsView *)self automaticallyFlipsForRTL];
  }

  return v3;
}

- (void)setHoverActive:(BOOL)a3
{
  if (self->_hoverActive != a3)
  {
    self->_hoverActive = a3;
    [(MUPagingScrollControlsView *)self _updateChevronVisibility];
  }
}

- (void)handleHover:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(MUPagingScrollControlsView *)self setHoverActive:v4];
}

- (void)_setupConstraints
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [(UIButton *)self->_previousPageButton centerYAnchor];
  v18 = [(MUPagingScrollControlsView *)self centerYAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [(UIButton *)self->_nextPageButton centerYAnchor];
  v4 = [(MUPagingScrollControlsView *)self centerYAnchor];
  v5 = [v16 constraintEqualToAnchor:v4];
  v20[1] = v5;
  v6 = [(UIButton *)self->_previousPageButton leftAnchor];
  v7 = [(MUPagingScrollControlsView *)self leftAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v20[2] = v8;
  v9 = [(UIButton *)self->_nextPageButton rightAnchor];
  v10 = [(MUPagingScrollControlsView *)self rightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v3 addObjectsFromArray:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [v3 copy];
  [v13 activateConstraints:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.left"];
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  previousPageButton = self->_previousPageButton;
  self->_previousPageButton = v3;

  [(UIButton *)self->_previousPageButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIButton *)self->_previousPageButton setTintColor:v5];

  [(UIButton *)self->_previousPageButton setAlpha:0.0];
  [(UIButton *)self->_previousPageButton setImage:v15 forState:0];
  v6 = self->_previousPageButton;
  v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:21.0];
  [(UIButton *)v6 setPreferredSymbolConfiguration:v7 forImageInState:0];

  [(UIButton *)self->_previousPageButton addTarget:self action:sel__scrollPrevious forControlEvents:64];
  [(MUPagingScrollControlsView *)self addSubview:self->_previousPageButton];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.right"];
  v9 = [MEMORY[0x1E69DC738] buttonWithType:0];
  nextPageButton = self->_nextPageButton;
  self->_nextPageButton = v9;

  [(UIButton *)self->_nextPageButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIButton *)self->_nextPageButton setTintColor:v11];

  [(UIButton *)self->_nextPageButton setAlpha:0.0];
  [(UIButton *)self->_nextPageButton setImage:v8 forState:0];
  v12 = self->_nextPageButton;
  v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:21.0];
  [(UIButton *)v12 setPreferredSymbolConfiguration:v13 forImageInState:0];

  [(UIButton *)self->_nextPageButton addTarget:self action:sel__scrollNext forControlEvents:64];
  [(MUPagingScrollControlsView *)self addSubview:self->_nextPageButton];
  v14 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_handleHover_];
  [(MUPagingScrollControlsView *)self addGestureRecognizer:v14];
}

- (MUPagingScrollControlsView)initWithHorizontalScrollView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPagingScrollControlsView;
  v6 = [(MUPagingScrollControlsView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollView, a3);
    [(MUPagingScrollControlsView *)v7 _setupSubviews];
    [(MUPagingScrollControlsView *)v7 _setupConstraints];
  }

  return v7;
}

@end