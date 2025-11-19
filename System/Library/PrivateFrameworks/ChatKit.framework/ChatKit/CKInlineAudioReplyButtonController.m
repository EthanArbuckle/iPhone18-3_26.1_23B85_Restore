@interface CKInlineAudioReplyButtonController
- (CKInlineAudioReplyButtonController)initWithStartButton:(id)a3 stopButton:(id)a4;
- (CKInlineAudioReplyButtonDelegate)delegate;
- (void)dealloc;
- (void)setStarted:(BOOL)a3;
- (void)touchDownInStartButton:(id)a3 event:(id)a4;
- (void)touchDragEnter:(id)a3;
- (void)touchDragExit:(id)a3;
- (void)touchUpInStartButton:(id)a3 event:(id)a4;
- (void)touchUpInStopButton:(id)a3;
- (void)touchUpOutsideStartButton:(id)a3 event:(id)a4;
@end

@implementation CKInlineAudioReplyButtonController

- (CKInlineAudioReplyButtonController)initWithStartButton:(id)a3 stopButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKInlineAudioReplyButtonController;
  v8 = [(CKInlineAudioReplyButtonController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CKInlineAudioReplyButtonController *)v8 setHoldThreshold:0.255];
    [v6 addTarget:v9 action:sel_touchDownInStartButton_event_ forControlEvents:1];
    [v6 addTarget:v9 action:sel_touchUpInStartButton_event_ forControlEvents:64];
    [v6 addTarget:v9 action:sel_touchUpOutsideStartButton_event_ forControlEvents:128];
    [v7 addTarget:v9 action:sel_touchUpInStopButton_ forControlEvents:64];
    [v6 addTarget:v9 action:sel_touchDragEnter_ forControlEvents:16];
    [v7 addTarget:v9 action:sel_touchDragEnter_ forControlEvents:16];
    [v6 addTarget:v9 action:sel_touchDragExit_ forControlEvents:32];
    [v7 addTarget:v9 action:sel_touchDragExit_ forControlEvents:32];
    [(CKInlineAudioReplyButtonController *)v9 setStartButton:v6];
    [(CKInlineAudioReplyButtonController *)v9 setStopButton:v7];
    [(CKInlineAudioReplyButtonController *)v9 setStarted:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v3 setDisableInteraction:0];

  [(UIButton *)self->_startButton removeTarget:self action:0 forControlEvents:0];
  [(UIButton *)self->_stopButton removeTarget:self action:0 forControlEvents:0];
  v4.receiver = self;
  v4.super_class = CKInlineAudioReplyButtonController;
  [(CKInlineAudioReplyButtonController *)&v4 dealloc];
}

- (void)setStarted:(BOOL)a3
{
  v3 = a3;
  self->_started = a3;
  v5 = [(CKInlineAudioReplyButtonController *)self startButton];
  v6 = v5;
  if (v3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (v3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v5 setAlpha:v7];

  v9 = [(CKInlineAudioReplyButtonController *)self stopButton];
  [v9 setAlpha:v8];

  v10 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v10 setDisableInteraction:v3];
}

- (void)touchDownInStartButton:(id)a3 event:(id)a4
{
  [a4 timestamp];
  [(CKInlineAudioReplyButtonController *)self setTouchDownTime:?];
  if ([(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    v6 = [(CKInlineAudioReplyButtonController *)self delegate];
    [v6 audioReplyButtonStop:self];
  }

  else
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:1];
    v5 = [(CKInlineAudioReplyButtonController *)self stopButton];
    [v5 setHighlighted:1];

    v6 = [(CKInlineAudioReplyButtonController *)self delegate];
    [v6 audioReplyButtonStart:self];
  }
}

- (void)touchUpInStartButton:(id)a3 event:(id)a4
{
  [a4 timestamp];
  v6 = v5;
  [(CKInlineAudioReplyButtonController *)self touchDownTime];
  v8 = v6 - v7;
  [(CKInlineAudioReplyButtonController *)self holdThreshold];
  if (v8 > v9 && [(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    v10 = [(CKInlineAudioReplyButtonController *)self delegate];
    [v10 audioReplyButtonStop:self];
  }

  else
  {
    v10 = [(CKInlineAudioReplyButtonController *)self stopButton];
    [v10 setHighlighted:0];
  }
}

- (void)touchUpOutsideStartButton:(id)a3 event:(id)a4
{
  [(CKInlineAudioReplyButtonController *)self setStarted:0, a4];
  v5 = [(CKInlineAudioReplyButtonController *)self delegate];
  [v5 audioReplyButtonCancel:self];
}

- (void)touchUpInStopButton:(id)a3
{
  if ([(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    v4 = [(CKInlineAudioReplyButtonController *)self delegate];
    [v4 audioReplyButtonStop:self];
  }
}

- (void)touchDragEnter:(id)a3
{
  v3 = [(CKInlineAudioReplyButtonController *)self stopButton];
  [v3 setHighlighted:1];
}

- (void)touchDragExit:(id)a3
{
  v3 = [(CKInlineAudioReplyButtonController *)self stopButton];
  [v3 setHighlighted:0];
}

- (CKInlineAudioReplyButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end