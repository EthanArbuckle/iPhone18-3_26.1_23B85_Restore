@interface CKEffectPickerViewController
- (CGPoint)balloonViewOrigin;
- (CGRect)sendButtonFrame;
- (CKEffectPickerViewController)initWithComposition:(id)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 color:(char)a6 gradientReferenceView:(id)a7;
- (CKEffectPickerViewControllerDelegate)delegate;
- (void)effectPickerViewDidFinishAnimatingIn:(id)a3;
- (void)effectSelectedWithIdentifier:(id)a3;
- (void)handleTouchMoved:(CGPoint)a3;
- (void)handleTouchUp:(CGPoint)a3;
- (void)presentPicker;
- (void)setCloseButtonYPosition:(double)a3;
- (void)setSemanticContentAttribute:(id)a3 forceLTR:(BOOL)a4;
- (void)touchUpInsideCloseButton;
- (void)updateColor:(char)a3;
- (void)updateHintTransition:(double)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKEffectPickerViewController

- (CKEffectPickerViewController)initWithComposition:(id)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 color:(char)a6 gradientReferenceView:(id)a7
{
  v8 = a6;
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = a3;
  v17 = a7;
  v65.receiver = self;
  v65.super_class = CKEffectPickerViewController;
  v18 = [(CKEffectPickerViewController *)&v65 init];
  v19 = v18;
  if (v18)
  {
    [(CKEffectPickerViewController *)v18 setSendButtonFrame:v14, v13, width, height];
    [(CKEffectPickerViewController *)v19 setBalloonViewOrigin:x, y];
    v20 = [(CKEffectPickerViewController *)v19 view];
    v21 = [v20 layer];
    [v21 setAllowsGroupBlending:0];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 isAccessibilityPreferredContentSizeCategory];

    v24 = off_1E72E4D68;
    if (!v23)
    {
      v24 = off_1E72E4D70;
    }

    v25 = objc_alloc(*v24);
    v26 = [(CKEffectPickerViewController *)v19 view];
    [v26 bounds];
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
    v64 = v16;
    v45 = [v25 initWithFrame:v16 sendButtonFrame:v8 balloonViewOrigin:v17 composition:v28 color:v30 gradientReferenceView:{v32, v34, v36, v38, v40, v42, v43, v44}];

    [v45 setAutoresizingMask:18];
    v46 = [(CKEffectPickerViewController *)v19 view];
    [v46 bounds];
    [v45 setFrame:?];

    [v45 setAccessibilityIdentifier:@"EffectPickerView"];
    [v45 setDelegate:v19];
    [(CKEffectPickerViewController *)v19 setPickerView:v45];
    [v20 addSubview:v45];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      [(CKEffectPickerViewController *)v19 setSemanticContentAttribute:v20 forceLTR:1];
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

    v16 = v64;
  }

  return v19;
}

- (void)setSemanticContentAttribute:(id)a3 forceLTR:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [a3 subviews];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = !a4;
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerViewController;
  [(CKEffectPickerViewController *)&v5 viewWillAppear:a3];
  v4 = [(CKEffectPickerViewController *)self pickerView];
  [v4 _adjustMainLabelAndTypeSegmentedControlIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerViewController;
  [(CKEffectPickerViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CKEffectPickerViewController *)self pickerView];
  [v4 invalidateAllAnimationTimers];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = [(CKEffectPickerViewController *)self delegate:a4];
  [v5 effectPickerViewControllerClose:self animated:0];
}

- (void)presentPicker
{
  v2 = [(CKEffectPickerViewController *)self pickerView];
  [v2 _animateIn];
}

- (void)updateHintTransition:(double)a3
{
  v4 = [(CKEffectPickerViewController *)self pickerView];
  [v4 updateHintTransition:a3];
}

- (void)updateColor:(char)a3
{
  v3 = a3;
  v4 = [(CKEffectPickerViewController *)self pickerView];
  [v4 updateColor:v3];
}

- (void)handleTouchUp:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CKEffectPickerViewController *)self pickerView];
  v7 = [(CKEffectPickerViewController *)self pickerView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(CKEffectPickerViewController *)self pickerView];
  [v12 handleTouchUp:{v9, v11}];
}

- (void)handleTouchMoved:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CKEffectPickerViewController *)self pickerView];
  v7 = [(CKEffectPickerViewController *)self pickerView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(CKEffectPickerViewController *)self pickerView];
  [v12 handleTouchMoved:{v9, v11}];
}

- (void)setCloseButtonYPosition:(double)a3
{
  v4 = [(CKEffectPickerViewController *)self pickerView];
  [v4 setCloseButtonYPosition:a3];
}

- (void)effectPickerViewDidFinishAnimatingIn:(id)a3
{
  v3 = [(CKEffectPickerViewController *)self pickerView];
  [v3 _startSwitcherAnimationIfNecessary];
}

- (void)touchUpInsideCloseButton
{
  v3 = [(CKEffectPickerViewController *)self delegate];
  [v3 effectPickerViewControllerClose:self animated:0];
}

- (void)effectSelectedWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectPickerViewController *)self delegate];
  [v5 effectPickerViewController:self effectWithIdentifierSelected:v4];
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