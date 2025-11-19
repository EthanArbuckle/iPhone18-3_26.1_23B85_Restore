@interface CEKExpandingTickMarksView
- (CEKExpandingTickMarksView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (_NSRange)_selectedRange;
- (unint64_t)_collapsedTickIndexForIndex:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelectedValue:(double)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation CEKExpandingTickMarksView

- (CEKExpandingTickMarksView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CEKExpandingTickMarksView;
  v3 = [(CEKExpandingTickMarksView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tickViews = v3->__tickViews;
    v3->__tickViews = v4;

    v6 = 41;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(NSMutableArray *)v3->__tickViews addObject:v7];
      [(CEKExpandingTickMarksView *)v3 addSubview:v7];

      --v6;
    }

    while (v6);
  }

  return v3;
}

- (void)setSelectedValue:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CEKExpandingTickMarksView *)self _middleTickIndex];
  v8 = (a3 + 1.0) * 0.5;
  if (v8 <= 0.5)
  {
    if (v8 >= 0.5)
    {
      v11 = 0;
      p_selectedRange = &self->__selectedRange;
      self->__selectedRange.location = v7;
      goto LABEL_7;
    }

    v10 = vcvtpd_s64_f64(v8 * 40);
    p_selectedRange = &self->__selectedRange;
    v11 = v7 - v10;
  }

  else
  {
    p_selectedRange = &self->__selectedRange;
    v10 = v7 + 1;
    v11 = vcvtmd_s64_f64(v8 * 40) - v7;
  }

  p_selectedRange->location = v10;
LABEL_7:
  p_selectedRange->length = v11;
  [(CEKExpandingTickMarksView *)self setNeedsLayout];
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CEKExpandingTickMarksView_setSelectedValue_animated___block_invoke;
    v12[3] = &unk_1E7CC6358;
    v12[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v12 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_expanded != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_expanded = a3;
    [(CEKExpandingTickMarksView *)self setNeedsLayout];
    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__CEKExpandingTickMarksView_setExpanded_animated___block_invoke;
      v8[3] = &unk_1E7CC6358;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.35 completion:0.0];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = (vcvtpd_s64_f64(41 / 5) - 1) * 7.0 + 1.0;
  v3 = fmax(10.0, 5.0);
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)_collapsedTickIndexForIndex:(unint64_t)a3
{
  v4 = [(CEKExpandingTickMarksView *)self _middleTickIndex];
  v5 = a3 / 5;
  v6 = floor(v5);
  v7 = ceil(v5);
  if (v4 <= a3)
  {
    return v6;
  }

  return v7;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CEKExpandingTickMarksView;
  [(CEKExpandingTickMarksView *)&v13 layoutSubviews];
  [(CEKExpandingTickMarksView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CEKExpandingTickMarksView *)self _tickViews];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__CEKExpandingTickMarksView_layoutSubviews__block_invoke;
  v12[3] = &unk_1E7CC63A0;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [v11 enumerateObjectsUsingBlock:v12];
}

void __43__CEKExpandingTickMarksView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v20 = a2;
  v5 = a3 % 5;
  if (a3 % 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _selectedRange];
    v6 = a3 >= v7 && a3 - v7 < v8;
  }

  v10 = [*(a1 + 32) expanded];
  v11 = a3;
  if (([*(a1 + 32) expanded] & 1) == 0)
  {
    v11 = [*(a1 + 32) _collapsedTickIndexForIndex:a3];
  }

  v12 = *(a1 + 64);
  if (v6 && ![*(a1 + 32) expanded])
  {
    v13 = [*(a1 + 32) tintColor];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC888] labelColor];
  }

  v14 = v13;
  v15 = 10.0;
  v16 = 0.3;
  v17 = 1.0;
  if (!v5)
  {
    v16 = 1.0;
  }

  v18 = [v13 colorWithAlphaComponent:v16];
  [v20 setBackgroundColor:v18];

  if (v5)
  {
    if ([*(a1 + 32) expanded])
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }
  }

  if (a3)
  {
    v19 = v10;
  }

  else
  {
    v19 = 1;
  }

  if (a3 == 40)
  {
    v19 = 1;
  }

  if (((v19 | v6) & 1) == 0)
  {
    v15 = 5.0;
  }

  [v20 setAlpha:v17];
  [v20 setFrame:{7.0 * v11, v12 - v15, 1.0, v15}];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKExpandingTickMarksView;
  [(CEKExpandingTickMarksView *)&v3 tintColorDidChange];
  [(CEKExpandingTickMarksView *)self setNeedsLayout];
}

- (_NSRange)_selectedRange
{
  p_selectedRange = &self->__selectedRange;
  location = self->__selectedRange.location;
  length = p_selectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end