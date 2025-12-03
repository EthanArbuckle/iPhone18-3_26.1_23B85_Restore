@interface CKEffectPickerViewController
- (CGPoint)balloonViewOrigin;
- (CGRect)sendButtonFrame;
- (CKEffectPickerViewController)initWithComposition:(id)composition sendButtonFrame:(CGRect)frame balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)view;
- (CKEffectPickerViewControllerDelegate)delegate;
- (void)effectPickerViewDidFinishAnimatingIn:(id)in;
- (void)effectSelectedWithIdentifier:(id)identifier;
- (void)handleTouchMoved:(CGPoint)moved;
- (void)handleTouchUp:(CGPoint)up;
- (void)presentPicker;
- (void)setCloseButtonYPosition:(double)position;
- (void)setSemanticContentAttribute:(id)attribute forceLTR:(BOOL)r;
- (void)touchUpInsideCloseButton;
- (void)updateColor:(char)color;
- (void)updateHintTransition:(double)transition;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKEffectPickerViewController

- (CKEffectPickerViewController)initWithComposition:(id)composition sendButtonFrame:(CGRect)frame balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)view
{
  colorCopy = color;
  y = origin.y;
  x = origin.x;
  height = frame.size.height;
  width = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  compositionCopy = composition;
  viewCopy = view;
  v65.receiver = self;
  v65.super_class = CKEffectPickerViewController;
  v18 = [(CKEffectPickerViewController *)&v65 init];
  v19 = v18;
  if (v18)
  {
    [(CKEffectPickerViewController *)v18 setSendButtonFrame:v14, v13, width, height];
    [(CKEffectPickerViewController *)v19 setBalloonViewOrigin:x, y];
    view = [(CKEffectPickerViewController *)v19 view];
    layer = [view layer];
    [layer setAllowsGroupBlending:0];

    v22 = +[CKUIBehavior sharedBehaviors];
    isAccessibilityPreferredContentSizeCategory = [v22 isAccessibilityPreferredContentSizeCategory];

    v24 = off_1E72E4D68;
    if (!isAccessibilityPreferredContentSizeCategory)
    {
      v24 = off_1E72E4D70;
    }

    v25 = objc_alloc(*v24);
    view2 = [(CKEffectPickerViewController *)v19 view];
    [view2 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [(CKEffectPickerViewController *)v19 sendButtonFrame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [(CKEffectPickerViewController *)v19 balloonViewOrigin];
    v64 = compositionCopy;
    v45 = [v25 initWithFrame:compositionCopy sendButtonFrame:colorCopy balloonViewOrigin:viewCopy composition:v28 color:v30 gradientReferenceView:{v32, v34, v36, v38, v40, v42, v43, v44}];

    [v45 setAutoresizingMask:18];
    view3 = [(CKEffectPickerViewController *)v19 view];
    [view3 bounds];
    [v45 setFrame:?];

    [v45 setAccessibilityIdentifier:@"EffectPickerView"];
    [v45 setDelegate:v19];
    [(CKEffectPickerViewController *)v19 setPickerView:v45];
    [view addSubview:v45];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      [(CKEffectPickerViewController *)v19 setSemanticContentAttribute:view forceLTR:1];
    }

    v47 = CKFrameworkBundle();
    v48 = [v47 localizedStringForKey:@"IMPACT_PICKER_INVISIBLE_INK_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v49 = CKFrameworkBundle();
    v50 = [v49 localizedStringForKey:@"IMPACT_PICKER_INVISIBLE_INK_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v45 addEffect:v48 withDescriptiveText:v50 withIdentifier:@"com.apple.MobileSMS.expressivesend.invisibleink"];

    v51 = CKFrameworkBundle();
    v52 = [v51 localizedStringForKey:@"IMPACT_PICKER_GENTLE_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v53 = CKFrameworkBundle();
    v54 = [v53 localizedStringForKey:@"IMPACT_PICKER_GENTLE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v45 addEffect:v52 withDescriptiveText:v54 withIdentifier:@"com.apple.MobileSMS.expressivesend.gentle"];

    v55 = CKFrameworkBundle();
    v56 = [v55 localizedStringForKey:@"IMPACT_PICKER_LOUD_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v57 = CKFrameworkBundle();
    v58 = [v57 localizedStringForKey:@"IMPACT_PICKER_LOUD_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v45 addEffect:v56 withDescriptiveText:v58 withIdentifier:@"com.apple.MobileSMS.expressivesend.loud"];

    v59 = CKFrameworkBundle();
    v60 = [v59 localizedStringForKey:@"IMPACT_PICKER_IMPACT_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v61 = CKFrameworkBundle();
    v62 = [v61 localizedStringForKey:@"IMPACT_PICKER_IMPACT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v45 addEffect:v60 withDescriptiveText:v62 withIdentifier:@"com.apple.MobileSMS.expressivesend.impact"];

    compositionCopy = v64;
  }

  return v19;
}

- (void)setSemanticContentAttribute:(id)attribute forceLTR:(BOOL)r
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [attribute subviews];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = !r;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        v12 = objc_opt_isKindOfClass() | v9;
        if (v12)
        {
          v13 = 4;
        }

        else
        {
          v13 = 3;
        }

        [v11 setSemanticContentAttribute:v13];
        [(CKEffectPickerViewController *)self setSemanticContentAttribute:v11 forceLTR:(v12 & 1) == 0];
        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerViewController;
  [(CKEffectPickerViewController *)&v5 viewWillAppear:appear];
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView _adjustMainLabelAndTypeSegmentedControlIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerViewController;
  [(CKEffectPickerViewController *)&v5 viewWillDisappear:disappear];
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView invalidateAllAnimationTimers];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(CKEffectPickerViewController *)self delegate:coordinator];
  [v5 effectPickerViewControllerClose:self animated:0];
}

- (void)presentPicker
{
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView _animateIn];
}

- (void)updateHintTransition:(double)transition
{
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView updateHintTransition:transition];
}

- (void)updateColor:(char)color
{
  colorCopy = color;
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView updateColor:colorCopy];
}

- (void)handleTouchUp:(CGPoint)up
{
  y = up.y;
  x = up.x;
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  pickerView2 = [(CKEffectPickerViewController *)self pickerView];
  [pickerView convertPoint:pickerView2 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  pickerView3 = [(CKEffectPickerViewController *)self pickerView];
  [pickerView3 handleTouchUp:{v9, v11}];
}

- (void)handleTouchMoved:(CGPoint)moved
{
  y = moved.y;
  x = moved.x;
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  pickerView2 = [(CKEffectPickerViewController *)self pickerView];
  [pickerView convertPoint:pickerView2 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  pickerView3 = [(CKEffectPickerViewController *)self pickerView];
  [pickerView3 handleTouchMoved:{v9, v11}];
}

- (void)setCloseButtonYPosition:(double)position
{
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView setCloseButtonYPosition:position];
}

- (void)effectPickerViewDidFinishAnimatingIn:(id)in
{
  pickerView = [(CKEffectPickerViewController *)self pickerView];
  [pickerView _startSwitcherAnimationIfNecessary];
}

- (void)touchUpInsideCloseButton
{
  delegate = [(CKEffectPickerViewController *)self delegate];
  [delegate effectPickerViewControllerClose:self animated:0];
}

- (void)effectSelectedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(CKEffectPickerViewController *)self delegate];
  [delegate effectPickerViewController:self effectWithIdentifierSelected:identifierCopy];
}

- (CKEffectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sendButtonFrame
{
  x = self->_sendButtonFrame.origin.x;
  y = self->_sendButtonFrame.origin.y;
  width = self->_sendButtonFrame.size.width;
  height = self->_sendButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)balloonViewOrigin
{
  x = self->_balloonViewOrigin.x;
  y = self->_balloonViewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end