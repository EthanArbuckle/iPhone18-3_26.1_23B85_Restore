@interface HKInteractiveChartAnnotationViewKeyValueLabel
- (CGSize)_compressedKeySize;
- (CGSize)_horizontalIntrinsicContentSize;
- (CGSize)_verticalInstrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (HKInteractiveChartAnnotationViewKeyValueLabel)initWithFrame:(CGRect)frame;
- (void)_installForwardChevronView;
- (void)_layoutSubviewsHorizontally;
- (void)_layoutSubviewsVertically;
- (void)_removeForwardChevronView;
- (void)handleTapOutGesture:(id)gesture;
- (void)layoutSubviews;
- (void)setTapOutBlock:(id)block;
@end

@implementation HKInteractiveChartAnnotationViewKeyValueLabel

- (HKInteractiveChartAnnotationViewKeyValueLabel)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = HKInteractiveChartAnnotationViewKeyValueLabel;
  v3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_orientation = 1;
    v5 = objc_opt_new();
    keyLabel = v4->_keyLabel;
    v4->_keyLabel = v5;

    hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [(HKSelectedRangeLabel *)v4->_keyLabel setFont:hk_chartLollipopKeyFont];

    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [keyLabel setTextColor:hk_chartLollipopLabelColor];

    keyLabel2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [keyLabel2 setAdjustsFontSizeToFitWidth:1];

    keyLabel3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [keyLabel3 setMinimumScaleFactor:0.1];

    keyLabel4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [keyLabel4 setLineBreakMode:4];

    keyLabel5 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 keyLabel];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 addSubview:keyLabel5];

    v14 = objc_opt_new();
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v14;

    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKSelectedRangeLabel *)v4->_valueLabel setFont:hk_chartCurrentValueValueFont];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [valueLabel setTextColor:labelColor];

    valueLabel2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [valueLabel2 setAdjustsFontSizeToFitWidth:1];

    valueLabel3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [valueLabel3 setMinimumScaleFactor:0.1];

    valueLabel4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [valueLabel4 setLineBreakMode:4];

    valueLabel5 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 valueLabel];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)v4 addSubview:valueLabel5];

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

- (void)setTapOutBlock:(id)block
{
  v5 = _Block_copy(block);
  tapOutBlock = self->_tapOutBlock;
  self->_tapOutBlock = v5;

  if (block)
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
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v4 = MEMORY[0x1E69DCAD8];
  v18[0] = hk_chartLollipopLabelColor;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [v4 configurationWithPaletteColors:v5];

  v7 = MEMORY[0x1E69DCAD8];
  hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  v9 = [v7 configurationWithFont:hk_chartLollipopKeyFont];

  v10 = [v6 configurationByApplyingConfiguration:v9];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setForwardChevronView:v12];

  forwardChevronView = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  [forwardChevronView setContentMode:1];

  forwardChevronView2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self addSubview:forwardChevronView2];

  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setNeedsLayout];
  v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapOutGesture_];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setTapOutRecognizer:v15];

  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setUserInteractionEnabled:1];
  tapOutRecognizer = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutRecognizer];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self addGestureRecognizer:tapOutRecognizer];

  v17 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"LollipopTapOut"];
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setAccessibilityIdentifier:v17];
}

- (void)_removeForwardChevronView
{
  forwardChevronView = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (forwardChevronView)
  {
    forwardChevronView2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [forwardChevronView2 removeFromSuperview];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setNeedsLayout];
    tapOutRecognizer = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutRecognizer];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self removeGestureRecognizer:tapOutRecognizer];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setUserInteractionEnabled:0];
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setTapOutRecognizer:0];

    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self setForwardChevronView:0];
  }
}

- (void)handleTapOutGesture:(id)gesture
{
  tapOutBlock = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutBlock];

  if (tapOutBlock)
  {
    tapOutBlock2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self tapOutBlock];
    tapOutBlock2[2]();
  }
}

- (void)_layoutSubviewsVertically
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v8 = v7;
  valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel intrinsicContentSize];
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
  valueLabel2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel2 setFrame:{0.0, v18, v4, v19}];

  v21 = v4 - v8;
  forwardChevronView = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  if (forwardChevronView)
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
    forwardChevronView2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

    if (forwardChevronView2)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0.0;
    }
  }

  keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [keyLabel setFrame:{v14, v24, v23, v18 - v24}];

  forwardChevronView3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (forwardChevronView3)
  {
    v28 = v8 + -4.0;
    v29 = v21 + 4.0;
    if ([(HKInteractiveChartAnnotationViewKeyValueLabel *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v29 = 0.0;
    }

    forwardChevronView4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [forwardChevronView4 setFrame:{v29, v24 + 2.0, v28, v28}];
  }
}

- (void)_layoutSubviewsHorizontally
{
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _compressedKeySize];
  v8 = v7;
  valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel intrinsicContentSize];
  v11 = v10;

  if (v8 + v11 <= v4)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = (v8 + v11 - v4) * 0.5;
  }

  forwardChevronView = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
  if (forwardChevronView)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v8 - v12;
  forwardChevronView2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (forwardChevronView2)
  {
    v15 = v15 - v14;
  }

  keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [keyLabel setFrame:{0.0, 0.0, v15, v6}];

  v18 = v15 + 0.0;
  forwardChevronView3 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  if (forwardChevronView3)
  {
    forwardChevronView4 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];
    [forwardChevronView4 setFrame:{v18 + 4.0, 2.0, v14 + -4.0, v14 + -4.0}];

    v18 = v14 + v18;
  }

  valueLabel2 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel2 setFrame:{v18, 0.0, v11 - v12, v6}];
}

- (CGSize)intrinsicContentSize
{
  orientation = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self orientation];
  if (orientation == 1)
  {
    [(HKInteractiveChartAnnotationViewKeyValueLabel *)self _verticalInstrinsicContentSize];
  }

  else if (!orientation)
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
  valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel intrinsicContentSize];
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
  valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self valueLabel];
  [valueLabel intrinsicContentSize];
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
  keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self keyLabel];
  [keyLabel intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  forwardChevronView = [(HKInteractiveChartAnnotationViewKeyValueLabel *)self forwardChevronView];

  v9 = v5 + v7;
  if (!forwardChevronView)
  {
    v9 = v5;
  }

  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

@end