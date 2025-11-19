@interface CKActionMenuGestureRecognizerButton
+ (id)actionMenuGestureRecognizerButtonWithButton:(id)a3;
- (CKActionMenuGestureRecognizerButton)initWithGestureRecognizer:(id)a3 button:(id)a4;
- (CKActionMenuGestureRecognizerButtonDelegate)delegate;
- (void)gestureRecognized:(id)a3;
- (void)touchDownButton:(id)a3;
- (void)touchUpInsideButton:(id)a3;
- (void)touchUpOutsideButton:(id)a3;
@end

@implementation CKActionMenuGestureRecognizerButton

+ (id)actionMenuGestureRecognizerButtonWithButton:(id)a3
{
  v3 = a3;
  v4 = [CKActionMenuGestureRecognizerButton alloc];
  v5 = +[CKActionMenuGestureRecognizer actionMenuGestureRecognizer];
  v6 = [(CKActionMenuGestureRecognizerButton *)v4 initWithGestureRecognizer:v5 button:v3];

  return v6;
}

- (CKActionMenuGestureRecognizerButton)initWithGestureRecognizer:(id)a3 button:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CKActionMenuGestureRecognizerButton;
  v8 = [(CKActionMenuGestureRecognizerButton *)&v10 init];
  if (v8)
  {
    [v6 addTarget:v8 action:sel_gestureRecognized_];
    [(CKActionMenuGestureRecognizerButton *)v8 setGestureRecognizer:v6];
    [v7 addGestureRecognizer:v6];
    [v7 addTarget:v8 action:sel_touchDownButton_ forControlEvents:1];
    [v7 addTarget:v8 action:sel_touchUpInsideButton_ forControlEvents:64];
    [v7 addTarget:v8 action:sel_touchUpOutsideButton_ forControlEvents:128];
    [(CKActionMenuGestureRecognizerButton *)v8 setButton:v7];
  }

  return v8;
}

- (void)touchDownButton:(id)a3
{
  v4 = [(CKActionMenuGestureRecognizerButton *)self delegate];
  [v4 actionMenuGestureRecognizerButtonDidTouchDownButton:self];
}

- (void)touchUpInsideButton:(id)a3
{
  v4 = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([v4 actionMenuGestureRecognizerButtonShouldShowHint:self])
  {
    [v4 actionMenuGestureRecognizerButtonShowHint:self];
  }

  else
  {
    [v4 actionMenuGestureRecognizerButtonDidTouchUpInsideButton:self];
  }
}

- (void)touchUpOutsideButton:(id)a3
{
  v4 = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([v4 actionMenuGestureRecognizerButtonShouldShowHint:self])
  {
    [v4 actionMenuGestureRecognizerButtonShowHint:self];
  }
}

- (void)gestureRecognized:(id)a3
{
  v12 = a3;
  v4 = [(CKActionMenuGestureRecognizerButton *)self delegate];
  if ([v4 actionMenuGestureRecognizerButtonIsShowingHint:self])
  {
    [v12 setEnabled:0];
    [v12 setEnabled:1];
    goto LABEL_18;
  }

  if ([v4 actionMenuGestureRecognizerButtonShouldRecognizeGesture:self])
  {
    v5 = [v12 state];
    if (v5 == 5)
    {
      if ([v4 actionMenuGestureRecognizerButtonShouldShowHint:self])
      {
        [v4 actionMenuGestureRecognizerButtonShowHint:self];
      }

      [(CKActionMenuGestureRecognizerButton *)self setGestureDidBeginDate:0];
    }

    else
    {
      if (v5 == 3)
      {
        v6 = [(CKActionMenuGestureRecognizerButton *)self gestureDidBeginDate];
        if (v6 && ([MEMORY[0x1E695DF00] date], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", v6), v11 = v10, v9, v11 > 0.25) || !objc_msgSend(v4, "actionMenuGestureRecognizerButtonShouldShowHint:", self))
        {
          [v4 actionMenuGestureRecognizerButtonGestureDidEnd:self];
        }

        else
        {
          [v4 actionMenuGestureRecognizerButtonShowHint:self];
        }

        v7 = self;
        v8 = 0;
      }

      else
      {
        if (v5 != 1)
        {
          goto LABEL_18;
        }

        [v4 actionMenuGestureRecognizerButtonGestureDidBegin:self];
        v6 = [MEMORY[0x1E695DF00] date];
        v7 = self;
        v8 = v6;
      }

      [(CKActionMenuGestureRecognizerButton *)v7 setGestureDidBeginDate:v8];
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