@interface MRUViewServiceEndpointTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUViewServiceEndpointTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)contentEdgeInsets;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisualStyling;
@end

@implementation MRUViewServiceEndpointTableViewCell

- (MRUViewServiceEndpointTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MRUViewServiceEndpointTableViewCell;
  v4 = [(MRUViewServiceEndpointTableViewCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(MRUViewServiceEndpointTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(MRUNowPlayingCellContentView);
    cellContentView = v4->_cellContentView;
    v4->_cellContentView = v6;

    v8 = [(MRUNowPlayingCellContentView *)v4->_cellContentView artworkView];
    [v8 setStyle:0];

    v9 = [(MRUNowPlayingCellContentView *)v4->_cellContentView headerView];
    [v9 setLayout:3];

    v10 = [(MRUNowPlayingCellContentView *)v4->_cellContentView headerView];
    v11 = [v10 labelView];
    [v11 setLayout:1];

    v12 = [(MRUViewServiceEndpointTableViewCell *)v4 contentView];
    [v12 addSubview:v4->_cellContentView];

    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorView = v4->_separatorView;
    v4->_separatorView = v14;

    v16 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->_separatorView setBackgroundColor:v16];

    v17 = [(MRUViewServiceEndpointTableViewCell *)v4 contentView];
    [v17 addSubview:v4->_separatorView];

    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(MRUViewServiceEndpointTableViewCell *)v4 setSelectedBackgroundView:v18];

    v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v20 = [(MRUViewServiceEndpointTableViewCell *)v4 selectedBackgroundView];
    [v20 setBackgroundColor:v19];

    v21 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    v22 = [(MRUViewServiceEndpointTableViewCell *)v4 contentView];
    [v22 addInteraction:v21];

    v27[0] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v24 = [(MRUViewServiceEndpointTableViewCell *)v4 registerForTraitChanges:v23 withAction:sel_updateVisualStyling];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = MRUViewServiceEndpointTableViewCell;
  [(MRUViewServiceEndpointTableViewCell *)&v21 layoutSubviews];
  v3 = [(MRUViewServiceEndpointTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(MRUNowPlayingCellContentView *)self->_cellContentView setFrame:v5 + self->_contentEdgeInsets.left, v7 + self->_contentEdgeInsets.top, v9 - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right), v11 - (self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom)];
  [(MRUNowPlayingCellContentView *)self->_cellContentView textInset];
  UIRectInset();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(MRUViewServiceEndpointTableViewCell *)self traitCollection];
  [v20 displayScale];

  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  CGRectGetMinX(v22);
  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  CGRectGetMaxY(v23);
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  CGRectGetWidth(v24);
  [(MRUViewServiceEndpointTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIView *)self->_separatorView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MRUNowPlayingCellContentView *)self->_cellContentView sizeThatFits:a3.width, a3.height];
  v6 = v5 + self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MRUViewServiceEndpointTableViewCell;
  [(MRUViewServiceEndpointTableViewCell *)&v5 prepareForReuse];
  v3 = [(MRUViewServiceEndpointTableViewCell *)self cellContentView];
  v4 = [v3 artworkView];
  [v4 prepareForReuse];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    [(MRUViewServiceEndpointTableViewCell *)self setNeedsLayout];
  }
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MRUViewServiceEndpointTableViewCell;
  [(MRUViewServiceEndpointTableViewCell *)&v5 _setShouldHaveFullLengthBottomSeparator:?];
  [(UIView *)self->_separatorView setHidden:v3];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUViewServiceEndpointTableViewCell *)self updateVisualStyling];
    [(MRUNowPlayingCellContentView *)self->_cellContentView setStylingProvider:v6];
    v5 = v6;
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc(MEMORY[0x1E69DD070]);
  v6 = [(MRUViewServiceEndpointTableViewCell *)self contentView];
  v7 = [v5 initWithView:v6];

  v8 = [MEMORY[0x1E69DCDA8] effectWithPreview:v7];
  [v8 setPrefersScaledContent:0];
  v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:0];

  return v9;
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  v4 = [(MRUViewServiceEndpointTableViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:v4];
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end