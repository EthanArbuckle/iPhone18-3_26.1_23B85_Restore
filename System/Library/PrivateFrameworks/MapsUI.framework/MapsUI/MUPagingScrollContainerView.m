@interface MUPagingScrollContainerView
- (MUPagingScrollContainerView)initWithHorizontalScrollView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateCorner;
- (void)setCornerStyle:(int64_t)a3;
@end

@implementation MUPagingScrollContainerView

- (void)_updateCorner
{
  cornerStyle = self->_cornerStyle;
  if (cornerStyle == 1)
  {
    [(UIView *)self->_containedView _mapsui_setCardCorner];
  }

  else if (!cornerStyle)
  {
    [(UIView *)self->_containedView _setContinuousCornerRadius:0.0];
  }
}

- (void)setCornerStyle:(int64_t)a3
{
  if (self->_cornerStyle != a3)
  {
    self->_cornerStyle = a3;
    [(MUPagingScrollContainerView *)self _updateCorner];
  }
}

- (void)_setupConstraints
{
  v52[14] = *MEMORY[0x1E69E9840];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = [(MUScrollViewProtocol *)self->_containedScrollView leadingAnchor];
  v49 = [(UIView *)self->_containedView leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v52[0] = v48;
  v47 = [(MUScrollViewProtocol *)self->_containedScrollView trailingAnchor];
  v46 = [(UIView *)self->_containedView trailingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v52[1] = v45;
  v44 = [(MUScrollViewProtocol *)self->_containedScrollView topAnchor];
  v43 = [(UIView *)self->_containedView topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v52[2] = v42;
  v41 = [(MUScrollViewProtocol *)self->_containedScrollView bottomAnchor];
  v40 = [(UIView *)self->_containedView bottomAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v52[3] = v39;
  v38 = [(UIView *)self->_containedView topAnchor];
  v37 = [(MUPagingScrollContainerView *)self topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v52[4] = v36;
  v35 = [(UIView *)self->_containedView bottomAnchor];
  v34 = [(MUPagingScrollContainerView *)self bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v52[5] = v33;
  v31 = [(UIView *)self->_containedView leadingAnchor];
  v32 = [(MUPagingScrollContainerView *)self layoutMarginsGuide];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v52[6] = v29;
  v27 = [(UIView *)self->_containedView trailingAnchor];
  v28 = [(MUPagingScrollContainerView *)self layoutMarginsGuide];
  v26 = [v28 trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v52[7] = v25;
  v24 = [(MUPagingScrollControlsView *)self->_controlsView topAnchor];
  v23 = [(UIView *)self->_containedView topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v52[8] = v22;
  v21 = [(MUPagingScrollControlsView *)self->_controlsView bottomAnchor];
  v20 = [(UIView *)self->_containedView bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v52[9] = v19;
  v18 = [(MUPagingScrollControlsView *)self->_controlsView leadingAnchor];
  v17 = [(UIView *)self->_containedView leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:0.0];
  v52[10] = v16;
  v3 = [(MUPagingScrollControlsView *)self->_controlsView leadingAnchor];
  v4 = [(MUPagingScrollContainerView *)self leadingAnchor];
  v5 = [v3 constraintGreaterThanOrEqualToAnchor:v4];
  v52[11] = v5;
  v6 = [(MUPagingScrollControlsView *)self->_controlsView trailingAnchor];
  v7 = [(UIView *)self->_containedView trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];
  v52[12] = v8;
  v9 = [(MUPagingScrollControlsView *)self->_controlsView trailingAnchor];
  v10 = [(MUPagingScrollContainerView *)self trailingAnchor];
  v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
  v52[13] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:14];
  [v51 addObjectsFromArray:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [v51 copy];
  [v13 activateConstraints:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = MUPagingScrollContainerView;
  v7 = a4;
  v8 = [(MUPagingScrollContainerView *)&v13 hitTest:v7 withEvent:x, y];
  v9 = [v7 type];

  controlsView = v8;
  if (v9 == 11)
  {
    controlsView = self->_controlsView;
  }

  v11 = controlsView;

  return controlsView;
}

- (void)_setupSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  containedView = self->_containedView;
  self->_containedView = v4;

  [(UIView *)self->_containedView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containedView setClipsToBounds:1];
  [(UIView *)self->_containedView _mapsui_setCardCorner];
  [(MUPagingScrollContainerView *)self addSubview:self->_containedView];
  [(MUScrollViewProtocol *)self->_containedScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containedView addSubview:self->_containedScrollView];
  v6 = [[MUPagingScrollControlsView alloc] initWithHorizontalScrollView:self->_containedScrollView];
  controlsView = self->_controlsView;
  self->_controlsView = v6;

  [(MUPagingScrollControlsView *)self->_controlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPagingScrollControlsView *)self->_controlsView setHidden:1];
  [(MUPagingScrollContainerView *)self addSubview:self->_controlsView];
  v8 = self->_controlsView;

  [(MUPagingScrollContainerView *)self sendSubviewToBack:v8];
}

- (MUPagingScrollContainerView)initWithHorizontalScrollView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPagingScrollContainerView;
  v6 = [(MUPagingScrollContainerView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containedScrollView, a3);
    [(MUPagingScrollContainerView *)v7 setCornerStyle:1];
    [(MUScrollViewProtocol *)v7->_containedScrollView setShowsHorizontalScrollIndicator:0];
    [(MUPagingScrollContainerView *)v7 setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
    [(MUPagingScrollContainerView *)v7 _setupSubviews];
    [(MUPagingScrollContainerView *)v7 _setupConstraints];
  }

  return v7;
}

@end