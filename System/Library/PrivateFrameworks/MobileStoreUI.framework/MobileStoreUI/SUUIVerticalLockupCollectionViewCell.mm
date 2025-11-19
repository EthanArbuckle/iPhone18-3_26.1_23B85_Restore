@interface SUUIVerticalLockupCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SUUIVerticalLockupCollectionViewCell

- (SUUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIVerticalLockupCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUIVerticalLockupCollectionViewCell *)v3 contentView];
    v6 = [SUUIVerticalLockupView alloc];
    [v5 bounds];
    v7 = [(SUUIVerticalLockupView *)v6 initWithFrame:?];
    lockupView = v4->_lockupView;
    v4->_lockupView = v7;

    [v5 addSubview:v4->_lockupView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  lockupView = self->_lockupView;
  v6 = [v4 backgroundColor];
  [(SUUIViewReuseView *)lockupView setBackgroundColor:v6];

  v13.receiver = self;
  v13.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v13 applyLayoutAttributes:v4];
  [v4 zoomingImageWidth];
  v8 = v7;
  v9 = 1.0;
  v10 = 1.0;
  if (v7 > 0.00000011920929)
  {
    [v4 zoomingImageImposedAlphaOfOtherViews];
    v10 = v11;
    [v4 zoomingImageAlpha];
    v9 = v12;
  }

  [(SUUIVerticalLockupView *)self->_lockupView setOpacityOfViewsOtherThanProductImageView:v10];
  [(SUUIVerticalLockupView *)self->_lockupView setZoomingImageAlpha:v9];
  [(SUUIVerticalLockupView *)self->_lockupView setZoomingImageWidth:v8];
}

- (void)setPerspectiveTargetView:(id)a3
{
  lockupView = self->_lockupView;
  v4 = a3;
  [(SUUIVerticalLockupView *)lockupView setPerspectiveTargetView:v4];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUIVerticalLockupView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIVerticalLockupView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  lockupView = self->_lockupView;
  v4 = [(SUUIVerticalLockupCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUIVerticalLockupView *)lockupView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  lockupView = self->_lockupView;
  v5 = a3;
  [(SUUIViewReuseView *)lockupView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SUUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setSelected:a3];
  [(SUUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SUUIVerticalLockupCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SUUIVerticalLockupCollectionViewCell *)self isSelected])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__54;
    lockupView = self->_lockupView;
    v32 = __Block_byref_object_dispose__54;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke;
    v27[3] = &unk_2798FB298;
    v27[4] = &v28;
    [(SUUIViewReuseView *)lockupView enumerateExistingViewsForReuseIdentifier:0x286AF9940 usingBlock:v27];
    v4 = v29[5];
    if (v4 || (v5 = self->_lockupView, v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_2, v26[3] = &unk_2798FB298, v26[4] = &v28, [(SUUIViewReuseView *)v5 enumerateExistingViewsForReuseIdentifier:0x286AEECE0 usingBlock:v26], (v4 = v29[5]) != 0))
    {
      highlightImageView = self->_highlightImageView;
      if (!highlightImageView)
      {
        v7 = objc_alloc_init(SUUIImageView);
        v8 = self->_highlightImageView;
        self->_highlightImageView = v7;

        [(SUUIImageView *)self->_highlightImageView setAlpha:0.300000012];
        v9 = self->_highlightImageView;
        v10 = [MEMORY[0x277D75348] clearColor];
        [(SUUIImageView *)v9 setBackgroundColor:v10];

        highlightImageView = self->_highlightImageView;
        v4 = v29[5];
      }

      [v4 bounds];
      [(SUUIImageView *)highlightImageView setBounds:?];
      v11 = self->_highlightImageView;
      [v29[5] center];
      [(SUUIImageView *)v11 setCenter:?];
      v12 = self->_highlightImageView;
      v13 = [v29[5] image];
      v14 = [MEMORY[0x277D75348] blackColor];
      v15 = [v13 _flatImageWithColor:v14];
      [(SUUIImageView *)v12 setImage:v15];

      v16 = self->_highlightImageView;
      v17 = v29[5];
      if (v17)
      {
        [v17 transform];
      }

      else
      {
        memset(v25, 0, sizeof(v25));
      }

      [(SUUIImageView *)v16 setTransform:v25];
      [(SUUIVerticalLockupView *)self->_lockupView insertSubview:self->_highlightImageView aboveSubview:v29[5]];
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = self->_highlightImageView;
    if (v18)
    {
      v19 = v18;
      v20 = self->_highlightImageView;
      self->_highlightImageView = 0;

      [MEMORY[0x277CD9FF0] begin];
      v21 = MEMORY[0x277CD9FF0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_3;
      v23[3] = &unk_2798F5BE8;
      v24 = v19;
      v22 = v19;
      [v21 setCompletionBlock:v23];
      [(SUUIImageView *)v22 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

@end