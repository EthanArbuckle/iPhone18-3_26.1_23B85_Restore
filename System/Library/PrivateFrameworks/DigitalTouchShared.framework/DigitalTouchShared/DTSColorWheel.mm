@interface DTSColorWheel
- (DTSColorWheelDelegate)delegate;
- (void)beganTouches:(id)touches;
- (void)createDoneButtonWithFrame:(CGRect)frame;
- (void)finishedTouches;
- (void)updatePickerPositionForPoint:(CGPoint)point;
@end

@implementation DTSColorWheel

- (void)beganTouches:(id)touches
{
  anyObject = [touches anyObject];
  [anyObject locationInView:self];
  [(DTSColorWheel *)self updatePickerPositionForPoint:?];
}

- (void)finishedTouches
{
  pickerCircle = [(DTSColorWheel *)self pickerCircle];
  RoundViewOriginToViewScale(pickerCircle);
}

- (void)createDoneButtonWithFrame:(CGRect)frame
{
  v7 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"COLOR_PICKER_DONE_TEXT" value:&stru_285BBA338 table:@"DigitalTouchShared-Localizable"];

  [v7 setTitle:v5 forState:0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v7 setTitleColor:whiteColor forState:0];

  [v7 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];
  [(DTSColorWheel *)self addSubview:v7];
  [(DTSColorWheel *)self setDoneButton:v7];
}

- (void)updatePickerPositionForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(DTSColorWheel *)self bounds];
  v6 = v25.origin.x;
  v7 = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v10 = CGRectGetWidth(v25) * 0.5;
  v26.origin.x = v6;
  v26.origin.y = v7;
  v26.size.width = width;
  v26.size.height = height;
  v11 = CGRectGetHeight(v26) * 0.5;
  v12 = x - v10;
  v13 = y - v11;
  v14 = hypot(v12, v13);
  if (v14 != 0.0)
  {
    v15 = v14;
    [(DTSColorWheel *)self colorWheelRadius];
    v17 = v16;
    [(DTSColorWheel *)self gradientWidth];
    v19 = (v17 + v18 * -0.5) / v15;
    v20 = v12 * v19;
    v21 = v13 * v19;
    pickerCircle = [(DTSColorWheel *)self pickerCircle];
    [(DTSColorWheel *)self setPickerRotation:atan2(v21, v20)];
    pickerViewHighlightedColor = [(DTSColorWheel *)self pickerViewHighlightedColor];
    [pickerCircle setBackgroundColor:pickerViewHighlightedColor];

    [pickerCircle setCenter:{(v10 + v20), (v11 + v21)}];
  }
}

- (DTSColorWheelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end