@interface SUUIActivityIndicatorView
+ (CGSize)_activityIndicatorSize;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringWithLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)_isAnimating;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)_updateSpinnerAnimation;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SUUIActivityIndicatorView

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  text = [element text];
  if (text)
  {
    v9 = [self _attributedStringWithLabel:text context:contextCopy];
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForLabel:text attributedString:v9 width:width];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [self _activityIndicatorSize];
  v11 = v10;
  v13 = v12;
  text = [elementCopy text];

  if (text)
  {
    [contextCopy sizeForViewElement:text width:width];
    v13 = v13 + v16;
    if (v11 < v15)
    {
      v11 = v15;
    }
  }

  v17 = v11;
  v18 = v13;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __65__SUUIActivityIndicatorView_reloadWithViewElement_width_context___block_invoke;
  v15 = &unk_2798F5EF0;
  v16 = elementCopy;
  selfCopy = self;
  v18 = contextCopy;
  widthCopy = width;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SUUIViewReuseView *)self modifyUsingBlock:&v12];
  [(SUUIActivityIndicatorView *)self _updateSpinnerAnimation:v12];
}

void __65__SUUIActivityIndicatorView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [*(a1 + 32) style];
  v4 = [v3 ikColor];
  v5 = [v4 color];

  v6 = [*(a1 + 32) image];
  if (v6)
  {
    v7 = [v22 addImageViewWithElement:v6 context:*(a1 + 48)];
    v8 = *(a1 + 40);
    v9 = *(v8 + 472);
    *(v8 + 472) = v7;

    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    [*(*(a1 + 40) + 472) setTintColor:v10];
    [*(a1 + 32) period];
    if (v15 <= 0.0)
    {
      v15 = 1.0;
    }

    *(*(a1 + 40) + 496) = v15;
  }

  else
  {
    v11 = [v22 addReusableViewWithReuseIdentifier:0x286AEE340];
    v12 = *(a1 + 40);
    v13 = *(v12 + 480);
    *(v12 + 480) = v11;

    [*(*(a1 + 40) + 480) setActivityIndicatorViewStyle:100];
    v14 = *(*(a1 + 40) + 480);
    if (v5)
    {
      [v14 setColor:v5];
    }

    else
    {
      v21 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v14 setColor:v21];
    }
  }

  v16 = [*(a1 + 32) text];
  if (v16)
  {
    v17 = [v22 addLabelViewWithElement:v16 width:*(a1 + 48) context:*(a1 + 56)];
    v18 = *(a1 + 40);
    v19 = *(v18 + 488);
    *(v18 + 488) = v17;
  }

  v20 = [*(a1 + 32) style];
  *(*(a1 + 40) + 424) = SUUIViewElementAlignmentForStyle(v20);
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIActivityIndicatorView *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SUUIActivityIndicatorView;
  [(SUUIActivityIndicatorView *)&v3 didMoveToSuperview];
  [(SUUIActivityIndicatorView *)self _updateSpinnerAnimation];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SUUIActivityIndicatorView;
  [(SUUIActivityIndicatorView *)&v3 didMoveToWindow];
  [(SUUIActivityIndicatorView *)self _updateSpinnerAnimation];
}

- (void)layoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  [(SUUIActivityIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [allExistingViews countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(allExistingViews);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v14 sizeThatFits:{v4, v6}];
        [v14 setFrame:{v11, v12, v15, v16}];
      }

      v9 = [allExistingViews countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  top = self->_contentInset.top;
  imageView = self->_imageView;
  if (imageView || (imageView = self->_indicatorView) != 0)
  {
    v19 = imageView;
    [v19 frame];
    v21 = (v4 - v20) * 0.5;
    [v19 setFrame:{floorf(v21), top}];
  }

  else
  {
    v19 = 0;
  }

  stringView = self->_stringView;
  if (stringView)
  {
    [(SUUIAttributedStringView *)stringView frame];
    v24 = (v4 - v23) * 0.5;
    [(SUUIAttributedStringView *)self->_stringView setFrame:floorf(v24), v6 - v25];
  }
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = SUUIActivityIndicatorView;
  [(SUUIActivityIndicatorView *)&v4 setHidden:hidden];
  [(SUUIActivityIndicatorView *)self _updateSpinnerAnimation];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  imageView = self->_imageView;
  if (imageView || (imageView = self->_indicatorView) != 0)
  {
    [imageView sizeThatFits:{fits.width, fits.height}];
    v7 = v7 + v10;
    if (v9 >= v6)
    {
      v6 = v9;
    }
  }

  stringView = self->_stringView;
  if (stringView)
  {
    [(SUUIAttributedStringView *)stringView sizeThatFits:width, height];
    v7 = v7 + 18.0;
    if (v12 >= v6)
    {
      v6 = v12;
    }
  }

  v13 = v7 + self->_contentInset.bottom + self->_contentInset.top;
  v14 = v6 + self->_contentInset.left + self->_contentInset.right;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (CGSize)_activityIndicatorSize
{
  if (_activityIndicatorSize_sOnce != -1)
  {
    +[SUUIActivityIndicatorView _activityIndicatorSize];
  }

  v2 = *&_activityIndicatorSize_sIndicatorSize_0;
  v3 = *&_activityIndicatorSize_sIndicatorSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __51__SUUIActivityIndicatorView__activityIndicatorSize__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:1];
  [v2 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  _activityIndicatorSize_sIndicatorSize_0 = v0;
  _activityIndicatorSize_sIndicatorSize_1 = v1;
}

+ (id)_attributedStringWithLabel:(id)label context:(id)context
{
  labelCopy = label;
  style = [labelCopy style];
  v6 = SUUIViewElementFontWithStyle(style);
  if (!v6)
  {
    v7 = SUUIFontPreferredFontForTextStyle(8);
    v6 = [v7 fontWithSize:11.0];
  }

  ikColor = [style ikColor];
  color = [ikColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  text = [labelCopy text];
  v11 = [text attributedStringWithDefaultFont:v6 foregroundColor:color style:style];

  return v11;
}

- (BOOL)_isAnimating
{
  if (self->_indicatorView)
  {
    return [(UIActivityIndicatorView *)self->_indicatorView isAnimating];
  }

  else
  {
    return self->_animating;
  }
}

- (void)_startAnimating
{
  if (![(SUUIActivityIndicatorView *)self _isAnimating])
  {
    indicatorView = self->_indicatorView;
    if (indicatorView)
    {

      [(UIActivityIndicatorView *)indicatorView startAnimating];
    }

    else
    {
      self->_animating = 1;
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
      [v8 setDuration:self->_period];
      LODWORD(v4) = 2139095040;
      [v8 setRepeatCount:v4];
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:0.0];
      [v8 setFromValue:v5];
      v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:6.28318531];
      [v8 setToValue:v6];
      layer = [(UIImageView *)self->_imageView layer];
      [layer addAnimation:v8 forKey:@"transform"];
    }
  }
}

- (void)_stopAnimating
{
  if ([(SUUIActivityIndicatorView *)self _isAnimating])
  {
    indicatorView = self->_indicatorView;
    if (indicatorView)
    {

      [(UIActivityIndicatorView *)indicatorView stopAnimating];
    }

    else
    {
      self->_animating = 0;
      layer = [(UIImageView *)self->_imageView layer];
      [layer removeAnimationForKey:@"transform"];
    }
  }
}

- (void)_updateSpinnerAnimation
{
  window = [(SUUIActivityIndicatorView *)self window];
  if (window && (v4 = window, v5 = [(SUUIActivityIndicatorView *)self isHidden], v4, (v5 & 1) == 0))
  {

    [(SUUIActivityIndicatorView *)self _startAnimating];
  }

  else
  {

    [(SUUIActivityIndicatorView *)self _stopAnimating];
  }
}

@end