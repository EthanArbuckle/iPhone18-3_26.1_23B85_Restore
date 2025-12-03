@interface CKActionMenuGestureRecognizerButton
+ (id)actionMenuGestureRecognizerButtonWithButton:(id)button;
- (CKActionMenuGestureRecognizerButton)initWithGestureRecognizer:(id)recognizer button:(id)button;
- (CKActionMenuGestureRecognizerButtonDelegate)delegate;
- (void)gestureRecognized:(id)recognized;
- (void)touchDownButton:(id)button;
- (void)touchUpInsideButton:(id)button;
- (void)touchUpOutsideButton:(id)button;
@end

@implementation CKActionMenuGestureRecognizerButton

+ (id)actionMenuGestureRecognizerButtonWithButton:(id)button
{
  buttonCopy = button;
  v4 = [CKActionMenuGestureRecognizerButton alloc];
  v5 = +[CKActionMenuGestureRecognizer actionMenuGestureRecognizer];
  v6 = [(CKActionMenuGestureRecognizerButton *)v4 initWithGestureRecognizer:v5 button:buttonCopy];

  return v6;
}

- (CKActionMenuGestureRecognizerButton)initWithGestureRecognizer:(id)recognizer button:(id)button
{
  recognizerCopy = recognizer;
  buttonCopy = button;
  v10.receiver = self;
  v10.super_class = CKActionMenuGestureRecognizerButton;
  v8 = [(CKActionMenuGestureRecognizerButton *)&v10 init];
  if (v8)
  {
    [recognizerCopy addTarget:v8 action:sel_gestureRecognized_];
    [(CKActionMenuGestureRecognizerButton *)v8 setGestureRecognizer:recognizerCopy];
    [buttonCopy addGestureRecognizer:recognizerCopy];
    [buttonCopy addTarget:v8 action:sel_touchDownButton_ forControlEvents:1];
    [buttonCopy addTarget:v8 action:sel_touchUpInsideButton_ forControlEvents:64];
    [buttonCopy addTarget:v8 action:sel_touchUpOutsideButton_ forControlEvents:128];
    [(CKActionMenuGestureRecognizerButton *)v8 setButton:buttonCopy];
  }

  return v8;
}

- (void)touchDownButton:(id)button
{
  delegate = [(CKActionMenuGestureRecognizerButton *)self delegate];
  [delegate actionMenuGestureRecognizerButtonDidTouchDownButton:self];
}

- (void)touchUpInsideButton:(id)button
{
  delegate = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([delegate actionMenuGestureRecognizerButtonShouldShowHint:self])
  {
    [delegate actionMenuGestureRecognizerButtonShowHint:self];
  }

  else
  {
    [delegate actionMenuGestureRecognizerButtonDidTouchUpInsideButton:self];
  }
}

- (void)touchUpOutsideButton:(id)button
{
  delegate = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([delegate actionMenuGestureRecognizerButtonShouldShowHint:self])
  {
    [delegate actionMenuGestureRecognizerButtonShowHint:self];
  }
}

- (void)gestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  delegate = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([delegate actionMenuGestureRecognizerButtonIsShowingHint:self])
  {
    [recognizedCopy setEnabled:0];
    [recognizedCopy setEnabled:1];
    goto LABEL_18;
  }

  if ([delegate actionMenuGestureRecognizerButtonShouldRecognizeGesture:self])
  {
    state = [recognizedCopy state];
    if (state == 5)
    {
      if ([delegate actionMenuGestureRecognizerButtonShouldShowHint:self])
      {
        [delegate actionMenuGestureRecognizerButtonShowHint:self];
      }

      [(CKActionMenuGestureRecognizerButton *)self setGestureDidBeginDate:0];
    }

    else
    {
      if (state == 3)
      {
        gestureDidBeginDate = [(CKActionMenuGestureRecognizerButton *)self gestureDidBeginDate];
        if (gestureDidBeginDate && ([MEMORY[0x1E695DF00] date], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", gestureDidBeginDate), v11 = v10, v9, v11 > 0.25) || !objc_msgSend(delegate, "actionMenuGestureRecognizerButtonShouldShowHint:", self))
        {
          [delegate actionMenuGestureRecognizerButtonGestureDidEnd:self];
        }

        else
        {
          [delegate actionMenuGestureRecognizerButtonShowHint:self];
        }

        selfCopy2 = self;
        v8 = 0;
      }

      else
      {
        if (state != 1)
        {
          goto LABEL_18;
        }

        [delegate actionMenuGestureRecognizerButtonGestureDidBegin:self];
        gestureDidBeginDate = [MEMORY[0x1E695DF00] date];
        selfCopy2 = self;
        v8 = gestureDidBeginDate;
      }

      [(CKActionMenuGestureRecognizerButton *)selfCopy2 setGestureDidBeginDate:v8];
    }
  }

LABEL_18:
}

- (CKActionMenuGestureRecognizerButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end