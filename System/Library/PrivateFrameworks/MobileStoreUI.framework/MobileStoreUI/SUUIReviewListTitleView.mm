@interface SUUIReviewListTitleView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForDateLabel:(id)label context:(id)context;
+ (id)_attributedStringForTitleLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIReviewListTitleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIReviewListTitleView

- (SUUIReviewListTitleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIReviewListTitleView;
  v3 = [(SUUIViewReuseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIReviewListTitleView *)v3 setContentMode:3];
  }

  return v4;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v9 = [self _dateLabelForViewElement:elementCopy];
  if (v9)
  {
    v10 = [self _attributedStringForDateLabel:v9 context:contextCopy];
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForLabel:v9 attributedString:v10 width:width];

    if ([v10 length])
    {
      [v10 boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
      width = width - v12;
    }
  }

  v13 = [self _textLabelForViewElement:elementCopy];
  if (v13)
  {
    v14 = [self _attributedStringForTitleLabel:v13 context:contextCopy];
    labelLayoutCache2 = [contextCopy labelLayoutCache];
    [labelLayoutCache2 requestLayoutForLabel:v13 attributedString:v14 width:width];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  contextCopy = context;
  v8 = [element firstChildForElementType:138];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  [contextCopy sizeForViewElement:v8 width:width];
  v11 = v9 + v10;
  v12 = [contextCopy textPropertiesForViewElement:v8 width:width];

  [v12 baselineOffsetFromBottom];
  widthCopy = width;
  v14 = v11;
  result.height = v14;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SUUIReviewListTitleView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F5EF0;
  widthCopy = width;
  v12[4] = self;
  v13 = elementCopy;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SUUIViewReuseView *)self modifyUsingBlock:v12];
}

void __63__SUUIReviewListTitleView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 56);
  v4 = [objc_opt_class() _dateLabelForViewElement:*(a1 + 40)];
  if (v4)
  {
    v5 = [v15 addLabelViewWithElement:v4 width:*(a1 + 48) context:*(a1 + 56)];
    [*(a1 + 32) setDateView:v5];

    v6 = [*(a1 + 48) textPropertiesForViewElement:v4 width:*(a1 + 56)];
    v7 = [*(a1 + 32) dateView];
    [v15 setTextProperties:v6 forView:v7];

    v8 = [*(a1 + 32) dateView];
    [v8 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
    v10 = v9;

    v3 = v3 - v10;
  }

  else
  {
    [*(a1 + 32) setDateView:0];
  }

  v11 = [objc_opt_class() _textLabelForViewElement:*(a1 + 40)];
  if (v11)
  {
    v12 = [v15 addLabelViewWithElement:v11 width:*(a1 + 48) context:v3];
    [*(a1 + 32) setTitleView:v12];

    v13 = [*(a1 + 48) textPropertiesForViewElement:v11 width:v3];
    v14 = [*(a1 + 32) titleView];
    [v15 setTextProperties:v13 forView:v14];
  }

  else
  {
    [*(a1 + 32) setTitleView:0];
  }
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
    [(SUUIReviewListTitleView *)self setNeedsDisplay];
  }
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = SUUIReviewListTitleView;
  [(SUUIReviewListTitleView *)&v47 layoutSubviews];
  [(SUUIReviewListTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  rect = v9;
  [(SUUIReviewListTitleView *)self contentInset];
  v11 = v10;
  v45 = v12;
  v14 = v13;
  titleView = [(SUUIReviewListTitleView *)self titleView];
  dateView = [(SUUIReviewListTitleView *)self dateView];
  layout = [dateView layout];
  [layout boundingSize];
  v19 = v18;
  v21 = v20;

  layout2 = [titleView layout];
  [layout2 baselineOffset];
  v24 = v23;
  layout3 = [dateView layout];
  [layout3 baselineOffset];
  v27 = v24 - v26;

  v46 = v11;
  v28 = v11 + v27;
  v29 = v14;
  v30 = round(v28);
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = rect;
  Width = CGRectGetWidth(v48);
  v49.origin.x = 0.0;
  v49.origin.y = v30;
  v49.size.width = v19;
  v49.size.height = v21;
  v32 = Width - CGRectGetWidth(v49) - v29;
  v50.origin.x = v32;
  v50.origin.y = v30;
  v50.size.width = v19;
  v50.size.height = v21;
  v51 = CGRectIntegral(v50);
  [dateView setFrame:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];
  v52.origin.x = v32;
  v52.origin.y = v30;
  v52.size.width = v19;
  v52.size.height = v21;
  if (CGRectGetWidth(v52) <= 2.22044605e-16)
  {
    v33 = v45;
    v34 = v8 - v45 - v29;
  }

  else
  {
    v53.origin.x = v32;
    v53.origin.y = v30;
    v53.size.width = v19;
    v53.size.height = v21;
    v33 = v45;
    v34 = CGRectGetMinX(v53) - v45 + -10.0;
  }

  layout4 = [titleView layout];
  [layout4 boundingSize];
  v37 = v36;
  v39 = v38;

  if (v37 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v37;
  }

  v41 = v33;
  v42 = v46;
  v43 = v39;
  v54 = CGRectIntegral(*(&v40 - 2));
  [titleView setFrame:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SUUIReviewListTitleView *)self contentInset:fits.width];
  v6 = v5;
  titleView = [(SUUIReviewListTitleView *)self titleView];
  [titleView sizeThatFits:{width, 1.79769313e308}];
  v9 = v8;

  v10 = v6 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

+ (id)_attributedStringForTitleLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(1);
  }

  tintColor = [contextCopy tintColor];
  blackColor = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:blackColor style:style];

  return v12;
}

+ (id)_attributedStringForDateLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(21);
  }

  tintColor = [contextCopy tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 style:style];

  return v12;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end