@interface SUUIOnboardingInstructionsView
+ (id)explanationAttributedStringWithString:(id)string;
+ (id)titleAttributedStringWithString:(id)string;
- (SUUIOnboardingInstructionsView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (id)_newExplanationLabel;
- (id)_newTitleLabel;
- (void)layoutSubviews;
- (void)popLabelState;
- (void)pushLabelState;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentPosition:(int64_t)position animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation SUUIOnboardingInstructionsView

- (SUUIOnboardingInstructionsView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIOnboardingInstructionsView;
  v3 = [(SUUIOnboardingInstructionsView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _newExplanationLabel = [(SUUIOnboardingInstructionsView *)v3 _newExplanationLabel];
    explanationLabel = v4->_explanationLabel;
    v4->_explanationLabel = _newExplanationLabel;

    [(SUUIOnboardingInstructionsView *)v4 addSubview:v4->_explanationLabel];
    _newTitleLabel = [(SUUIOnboardingInstructionsView *)v4 _newTitleLabel];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = _newTitleLabel;

    [(SUUIOnboardingInstructionsView *)v4 addSubview:v4->_titleLabel];
  }

  return v4;
}

+ (id)explanationAttributedStringWithString:(id)string
{
  v3 = MEMORY[0x277CBEB38];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v5 setObject:v6 forKey:*MEMORY[0x277D740A8]];

  grayColor = [MEMORY[0x277D75348] grayColor];
  [v5 setObject:grayColor forKey:*MEMORY[0x277D740C0]];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy attributes:v5];

  return v8;
}

+ (id)titleAttributedStringWithString:(id)string
{
  v3 = MEMORY[0x277CBEB38];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D74300] _ultraLightSystemFontOfSize:28.0];
  [v5 setObject:v6 forKey:*MEMORY[0x277D740A8]];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [v5 setObject:blackColor forKey:*MEMORY[0x277D740C0]];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy attributes:v5];

  return v8;
}

- (void)popLabelState
{
  if ([(NSMutableArray *)self->_labelsStack count]>= 2)
  {
    [(UILabel *)self->_explanationLabel removeFromSuperview];
    [(UILabel *)self->_titleLabel removeFromSuperview];
    lastObject = [(NSMutableArray *)self->_labelsStack lastObject];
    titleLabel = self->_titleLabel;
    self->_titleLabel = lastObject;

    v5 = self->_titleLabel;
    backgroundColor = [(SUUIOnboardingInstructionsView *)self backgroundColor];
    [(UILabel *)v5 setBackgroundColor:backgroundColor];

    [(NSMutableArray *)self->_labelsStack removeLastObject];
    [(SUUIOnboardingInstructionsView *)self addSubview:self->_titleLabel];
    lastObject2 = [(NSMutableArray *)self->_labelsStack lastObject];
    explanationLabel = self->_explanationLabel;
    self->_explanationLabel = lastObject2;

    v9 = self->_explanationLabel;
    backgroundColor2 = [(SUUIOnboardingInstructionsView *)self backgroundColor];
    [(UILabel *)v9 setBackgroundColor:backgroundColor2];

    [(NSMutableArray *)self->_labelsStack removeLastObject];
    [(SUUIOnboardingInstructionsView *)self addSubview:self->_explanationLabel];

    [(SUUIOnboardingInstructionsView *)self setNeedsLayout];
  }
}

- (void)pushLabelState
{
  labelsStack = self->_labelsStack;
  if (!labelsStack)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_labelsStack;
    self->_labelsStack = v4;

    labelsStack = self->_labelsStack;
  }

  [(NSMutableArray *)labelsStack addObject:self->_explanationLabel];
  [(NSMutableArray *)self->_labelsStack addObject:self->_titleLabel];
  [(UILabel *)self->_explanationLabel removeFromSuperview];
  [(UILabel *)self->_titleLabel removeFromSuperview];
  _newExplanationLabel = [(SUUIOnboardingInstructionsView *)self _newExplanationLabel];
  explanationLabel = self->_explanationLabel;
  self->_explanationLabel = _newExplanationLabel;

  v8 = self->_explanationLabel;
  backgroundColor = [(SUUIOnboardingInstructionsView *)self backgroundColor];
  [(UILabel *)v8 setBackgroundColor:backgroundColor];

  [(SUUIOnboardingInstructionsView *)self addSubview:self->_explanationLabel];
  _newTitleLabel = [(SUUIOnboardingInstructionsView *)self _newTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _newTitleLabel;

  v12 = self->_titleLabel;
  backgroundColor2 = [(SUUIOnboardingInstructionsView *)self backgroundColor];
  [(UILabel *)v12 setBackgroundColor:backgroundColor2];

  [(SUUIOnboardingInstructionsView *)self addSubview:self->_titleLabel];

  [(SUUIOnboardingInstructionsView *)self setNeedsLayout];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIOnboardingInstructionsView *)self setNeedsLayout];
  }
}

- (void)setContentPosition:(int64_t)position animated:(BOOL)animated completionBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (self->_contentPosition == position)
  {
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 1);
    }
  }

  else
  {
    self->_contentPosition = position;
    if (animated)
    {
      [(UILabel *)self->_explanationLabel frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(UILabel *)self->_titleLabel frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(SUUIOnboardingInstructionsView *)self layoutSubviews];
      [(UILabel *)self->_explanationLabel frame];
      v41 = v27;
      v42 = v26;
      v39 = v29;
      v40 = v28;
      [(UILabel *)self->_titleLabel frame];
      v37 = v31;
      v38 = v30;
      v35 = v33;
      v36 = v32;
      [(UILabel *)self->_explanationLabel setFrame:v11, v13, v15, v17];
      [(UILabel *)self->_titleLabel setFrame:v19, v21, v23, v25];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __78__SUUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke;
      v46[3] = &unk_2798F5DA8;
      v46[4] = self;
      v46[5] = v38;
      v46[6] = v37;
      v46[7] = v36;
      v46[8] = v35;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v46 options:0 animations:1.0 completion:0.0];
      v34 = MEMORY[0x277D75D18];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __78__SUUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_2;
      v45[3] = &unk_2798F5DA8;
      v45[4] = self;
      v45[5] = v42;
      v45[6] = v41;
      v45[7] = v40;
      v45[8] = v39;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __78__SUUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_3;
      v43[3] = &unk_2798F5DD0;
      v44 = v9;
      [v34 animateWithDuration:0 delay:v45 options:v43 animations:1.05 completion:0.05];
    }

    else
    {
      if (blockCopy)
      {
        (*(blockCopy + 2))(blockCopy, 1);
      }

      [(SUUIOnboardingInstructionsView *)self setNeedsLayout];
    }
  }
}

uint64_t __78__SUUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)layoutSubviews
{
  [(SUUIOnboardingInstructionsView *)self bounds];
  v4 = v3;
  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  [(UILabel *)self->_titleLabel sizeThatFits:v6, 1.79769313e308];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_explanationLabel sizeThatFits:v6, 1.79769313e308];
  v13 = v12;
  top = self->_contentInset.top;
  if (!self->_contentPosition)
  {
    v15 = top + (v4 - top - self->_contentInset.bottom - v10 - v12 + -10.0) * 0.5;
    top = floorf(v15);
  }

  if (v11 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v11;
  }

  if (v8 >= v6)
  {
    v8 = v6;
  }

  left = self->_contentInset.left;
  v18 = (v6 - v8) * 0.5;
  v19 = left + floorf(v18);
  v20 = floorf(v19);
  v21 = (v6 - v16) * 0.5;
  *&left = left + floorf(v21);
  v22 = floorf(*&left);
  v26.origin.x = v20;
  v26.origin.y = top;
  v26.size.width = v8;
  v26.size.height = v10;
  v23 = CGRectGetMaxY(v26) + 10.0;
  [(UILabel *)self->_titleLabel setFrame:v20, top, v8, v10];
  explanationLabel = self->_explanationLabel;

  [(UILabel *)explanationLabel setFrame:v22, v23, v16, v13];
}

- (void)setBackgroundColor:(id)color
{
  explanationLabel = self->_explanationLabel;
  colorCopy = color;
  [(UILabel *)explanationLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIOnboardingInstructionsView;
  [(SUUIOnboardingInstructionsView *)&v6 setBackgroundColor:colorCopy];
}

- (id)_newExplanationLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:clearColor];

  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:1];
  return v2;
}

- (id)_newTitleLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:clearColor];

  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:1];
  return v2;
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