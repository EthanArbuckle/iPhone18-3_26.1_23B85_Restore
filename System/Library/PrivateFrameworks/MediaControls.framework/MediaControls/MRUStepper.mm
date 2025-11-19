@interface MRUStepper
- (MRUStepper)initWithFrame:(CGRect)a3;
- (MRUStepperDelegate)delegate;
- (void)decreaseButtonHoldBegan:(id)a3;
- (void)decreaseButtonHoldReleased:(id)a3;
- (void)decreaseTouchUpInside:(id)a3;
- (void)increaseButtonHoldBegan:(id)a3;
- (void)increaseButtonHoldReleased:(id)a3;
- (void)increaseTouchUpInside:(id)a3;
- (void)layoutSubviews;
- (void)setDecrementImage:(id)a3;
- (void)setIncrementImage:(id)a3;
- (void)setPreferredSymbolConfiguration:(id)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisualStyling;
@end

@implementation MRUStepper

- (MRUStepper)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MRUStepper;
  v3 = [(MRUStepper *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    decrementBackground = v3->_decrementBackground;
    v3->_decrementBackground = v4;

    [(MRUStepper *)v3 addSubview:v3->_decrementBackground];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    incrementBackground = v3->_incrementBackground;
    v3->_incrementBackground = v6;

    [(MRUStepper *)v3 addSubview:v3->_incrementBackground];
    v8 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    decrementButton = v3->_decrementButton;
    v3->_decrementButton = v8;

    [(MRUTransportButton *)v3->_decrementButton setShowHighlightCircle:0];
    [(MRUTransportButton *)v3->_decrementButton setPointerStyle:1];
    v10 = [(MRUTransportButton *)v3->_decrementButton imageView];
    [v10 setContentMode:1];

    [(MRUTransportButton *)v3->_decrementButton addTarget:v3 action:sel_decreaseTouchUpInside_ forControlEvents:64];
    [(MRUTransportButton *)v3->_decrementButton addTarget:v3 action:sel_decreaseButtonHoldBegan_ forControlEvents:0x1000000];
    [(MRUTransportButton *)v3->_decrementButton addTarget:v3 action:sel_decreaseButtonHoldReleased_ forControlEvents:0x2000000];
    [(MRUStepper *)v3 addSubview:v3->_decrementButton];
    v11 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    incrementButton = v3->_incrementButton;
    v3->_incrementButton = v11;

    [(MRUTransportButton *)v3->_incrementButton setShowHighlightCircle:0];
    [(MRUTransportButton *)v3->_incrementButton setPointerStyle:1];
    v13 = [(MRUTransportButton *)v3->_incrementButton imageView];
    [v13 setContentMode:1];

    [(MRUTransportButton *)v3->_incrementButton addTarget:v3 action:sel_increaseTouchUpInside_ forControlEvents:64];
    [(MRUTransportButton *)v3->_incrementButton addTarget:v3 action:sel_increaseButtonHoldBegan_ forControlEvents:0x1000000];
    [(MRUTransportButton *)v3->_incrementButton addTarget:v3 action:sel_increaseButtonHoldReleased_ forControlEvents:0x2000000];
    [(MRUStepper *)v3 addSubview:v3->_incrementButton];
    v18[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(MRUStepper *)v3 registerForTraitChanges:v14 withAction:sel_updateVisualStyling];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MRUStepper;
  [(MRUStepper *)&v15 layoutSubviews];
  [(MRUStepper *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  CGRectGetWidth(v16);
  UIRoundToViewScale();
  v8 = v7;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetHeight(v19);
  [(MRUStepper *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUTransportButton *)self->_decrementButton setFrame:?];
  v20.origin.x = MinX;
  v20.origin.y = MinY;
  v20.size.width = v8;
  v20.size.height = v11;
  [(MRUTransportButton *)self->_decrementButton _setContinuousCornerRadius:CGRectGetHeight(v20) * 0.5];
  [(UIView *)self->_decrementBackground setFrame:MinX, MinY, v8, v11];
  v21.origin.x = MinX;
  v21.origin.y = MinY;
  v21.size.width = v8;
  v21.size.height = v11;
  [(UIView *)self->_decrementBackground _setContinuousCornerRadius:CGRectGetHeight(v21) * 0.5];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v12 = CGRectGetMaxX(v22) - v8;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = CGRectGetMinY(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = CGRectGetHeight(v24);
  [(MRUStepper *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUTransportButton *)self->_incrementButton setFrame:?];
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v8;
  v25.size.height = v14;
  [(MRUTransportButton *)self->_incrementButton _setContinuousCornerRadius:CGRectGetHeight(v25) * 0.5];
  [(UIView *)self->_incrementBackground setFrame:v12, v13, v8, v14];
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v8;
  v26.size.height = v14;
  [(UIView *)self->_incrementBackground _setContinuousCornerRadius:CGRectGetHeight(v26) * 0.5];
}

- (void)setDecrementImage:(id)a3
{
  objc_storeStrong(&self->_decrementImage, a3);
  v5 = a3;
  [(MRUTransportButton *)self->_decrementButton setImage:v5 forState:0];
}

- (void)setIncrementImage:(id)a3
{
  objc_storeStrong(&self->_incrementImage, a3);
  v5 = a3;
  [(MRUTransportButton *)self->_incrementButton setImage:v5 forState:0];
}

- (void)setPreferredSymbolConfiguration:(id)a3
{
  objc_storeStrong(&self->_preferredSymbolConfiguration, a3);
  v5 = a3;
  [(MRUTransportButton *)self->_incrementButton setPreferredSymbolConfiguration:v5 forImageInState:0];
  [(MRUTransportButton *)self->_decrementButton setPreferredSymbolConfiguration:v5 forImageInState:0];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUStepper *)self updateVisualStyling];
    [(MRUTransportButton *)self->_incrementButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_decrementButton setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)decreaseTouchUpInside:(id)a3
{
  if (![(MPButton *)self->_decrementButton isHolding])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stepperDidDecrement:self];
  }
}

- (void)decreaseButtonHoldBegan:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    [0 stepperDecrementHoldBegan:self];
  }
}

- (void)decreaseButtonHoldReleased:(id)a3
{
  if ([(MPButton *)self->_decrementButton isHolding]&& (objc_opt_respondsToSelector() & 1) != 0)
  {

    [0 stepperDecrementHoldEnded:self];
  }
}

- (void)increaseTouchUpInside:(id)a3
{
  if (![(MPButton *)self->_incrementButton isHolding])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stepperDidIncrement:self];
  }
}

- (void)increaseButtonHoldBegan:(id)a3
{
  if ([(MPButton *)self->_incrementButton isHolding]&& (objc_opt_respondsToSelector() & 1) != 0)
  {

    [0 stepperIncrementHoldBegan:self];
  }
}

- (void)increaseButtonHoldReleased:(id)a3
{
  if ([(MPButton *)self->_incrementButton isHolding]&& (objc_opt_respondsToSelector() & 1) != 0)
  {

    [0 stepperIncrementHoldEnded:self];
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  decrementBackground = self->_decrementBackground;
  v5 = [(MRUStepper *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:2 toView:decrementBackground traitCollection:v5];

  v6 = self->_stylingProvider;
  incrementBackground = self->_incrementBackground;
  v8 = [(MRUStepper *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:2 toView:incrementBackground traitCollection:v8];
}

- (MRUStepperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end