@interface HKInteractiveChartAnnotationViewKeyValueLabel
- (CGSize)_compressedKeySize;
- (CGSize)_horizontalIntrinsicContentSize;
- (CGSize)_verticalInstrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (HKInteractiveChartAnnotationViewKeyValueLabel)initWithFrame:(CGRect)a3;
- (void)_installForwardChevronView;
- (void)_layoutSubviewsHorizontally;
- (void)_layoutSubviewsVertically;
- (void)_removeForwardChevronView;
- (void)handleTapOutGesture:(id)a3;
- (void)layoutSubviews;
- (void)setTapOutBlock:(id)a3;
@end

@implementation HKInteractiveChartAnnotationViewKeyValueLabel

- (HKInteractiveChartAnnotationViewKeyValueLabel)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = HKInteractiveChartAnnotationViewKeyValueLabel;
  v3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_orientation = 1;
    v5 = objc_opt_new();
    keyLabel = v4->_keyLabel;
    v4->_keyLabel = v5;

    v7 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [(HKSelectedRangeLabel *)v4->_keyLabel setFont:v7];

    v8 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v9 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [v9 setTextColor:v8];

    v10 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [v10 setAdjustsFontSizeToFitWidth:1];

    v11 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [v11 setMinimumScaleFactor:0.1];

    v12 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [v12 setLineBreakMode:4];

    v13 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 addSubview:v13];

    v14 = objc_opt_new();
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v14;

    v16 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKSelectedRangeLabel *)v4->_valueLabel setFont:v16];

    v17 = [MEMORY[0x1E69DC888] labelColor];
    v18 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [v18 setTextColor:v17];

    v19 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [v19 setAdjustsFontSizeToFitWidth:1];

    v20 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [v20 setMinimumScaleFactor:0.1];

    v21 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [v21 setLineBreakMode:4];

    v22 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 addSubview:v22];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 setForwardChevronView:0];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 setTapOutRecognizer:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  if ([(HKInteractiveChartAnnotationViewKeyValueLabel *)self orientation]== 1)
  {

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _layoutSubviewsVertically];
  }

  else
  {

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _layoutSubviewsHorizontally];
  }
}

- (void)setTapOutBlock:(id)a3
{
  v5 = _Block_copy(a3);
  tapOutBlock = self->_tapOutBlock;
  self->_tapOutBlock = v5;

  if (a3)
  {

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _installForwardChevronView];
  }

  else
  {

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _removeForwardChevronView];
  }
}

- (void)_installForwardChevronView
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v4 = MEMORY[0x1E69DCAD8];
  v18[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [v4 configurationWithPaletteColors:v5];

  v7 = MEMORY[0x1E69DCAD8];
  v8 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  v9 = [v7 configurationWithFont:v8];

  v10 = [v6 configurationByApplyingConfiguration:v9];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setForwardChevronView:v12];

  v13 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  [v13 setContentMode:1];

  v14 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self addSubview:v14];

  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setNeedsLayout];
  v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapOutGesture_];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setTapOutRecognizer:v15];

  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setUserInteractionEnabled:1];
  v16 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutRecognizer];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self addGestureRecognizer:v16];

  v17 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"LollipopTapOut"];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setAccessibilityIdentifier:v17];
}

- (void)_removeForwardChevronView
{
  v3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (v3)
  {
    v4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [v4 removeFromSuperview];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setNeedsLayout];
    v5 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutRecognizer];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self removeGestureRecognizer:v5];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setUserInteractionEnabled:0];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setTapOutRecognizer:0];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setForwardChevronView:0];
  }
}

- (void)handleTapOutGesture:(id)a3
{
  v4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutBlock];

  if (v4)
  {
    v5 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutBlock];
    v5[2]();
  }
}

- (void)_layoutSubviewsVertically
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v8 = v7;
  v9 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v9 intrinsicContentSize];
  v11 = v10;

  v12 = v8 + v11 - v6;
  v13 = v12 <= 0.00000001;
  v14 = 0.0;
  if (v12 <= 0.00000001)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11 * 0.15;
  }

  v16 = v6 + v15;
  if (v13)
  {
    v17 = -0.0;
  }

  else
  {
    v17 = v8 * -0.15;
  }

  if (v16 - v11 >= 0.0)
  {
    v18 = v16 - v11;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = v16 - v18;
  v20 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v20 setFrame:{0.0, v18, v4, v19}];

  v21 = v4 - v8;
  v22 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  if (v22)
  {
    v23 = v4 - v8;
  }

  else
  {
    v23 = v4;
  }

  v24 = v18 - v8;

  if (v18 - v8 < 0.0)
  {
    v24 = v17;
    v18 = v8 + v17;
  }

  if ([(HKInteractiveChartAnnotationViewKeyValueLabel *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v25 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

    if (v25)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0.0;
    }
  }

  v26 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [v26 setFrame:{v14, v24, v23, v18 - v24}];

  v27 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (v27)
  {
    v28 = v8 + -4.0;
    v29 = v21 + 4.0;
    if ([(HKInteractiveChartAnnotationViewKeyValueLabel *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v29 = 0.0;
    }

    v30 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [v30 setFrame:{v29, v24 + 2.0, v28, v28}];
  }
}

- (void)_layoutSubviewsHorizontally
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v8 = v7;
  v9 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v9 intrinsicContentSize];
  v11 = v10;

  if (v8 + v11 <= v4)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = (v8 + v11 - v4) * 0.5;
  }

  v13 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  if (v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v8 - v12;
  v16 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (v16)
  {
    v15 = v15 - v14;
  }

  v17 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [v17 setFrame:{0.0, 0.0, v15, v6}];

  v18 = v15 + 0.0;
  v19 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (v19)
  {
    v20 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [v20 setFrame:{v18 + 4.0, 2.0, v14 + -4.0, v14 + -4.0}];

    v18 = v14 + v18;
  }

  v21 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v21 setFrame:{v18, 0.0, v11 - v12, v6}];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self orientation];
  if (v3 == 1)
  {
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _verticalInstrinsicContentSize];
  }

  else if (!v3)
  {
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _horizontalIntrinsicContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_horizontalIntrinsicContentSize
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v4 = v3;
  v6 = v5;
  v7 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v7 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  v12 = v4 + v9;
  if (v6 >= v11)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_verticalInstrinsicContentSize
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v4 = v3;
  v6 = v5;
  v7 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [v7 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  if (v4 >= v9)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  v13 = v6 + v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_compressedKeySize
{
  v3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  v9 = v5 + v7;
  if (!v8)
  {
    v9 = v5;
  }

  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

@end