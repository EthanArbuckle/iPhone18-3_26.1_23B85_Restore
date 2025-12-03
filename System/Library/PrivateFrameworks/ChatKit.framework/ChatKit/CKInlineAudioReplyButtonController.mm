@interface CKInlineAudioReplyButtonController
- (CKInlineAudioReplyButtonController)initWithStartButton:(id)button stopButton:(id)stopButton;
- (CKInlineAudioReplyButtonDelegate)delegate;
- (void)dealloc;
- (void)setStarted:(BOOL)started;
- (void)touchDownInStartButton:(id)button event:(id)event;
- (void)touchDragEnter:(id)enter;
- (void)touchDragExit:(id)exit;
- (void)touchUpInStartButton:(id)button event:(id)event;
- (void)touchUpInStopButton:(id)button;
- (void)touchUpOutsideStartButton:(id)button event:(id)event;
@end

@implementation CKInlineAudioReplyButtonController

- (CKInlineAudioReplyButtonController)initWithStartButton:(id)button stopButton:(id)stopButton
{
  buttonCopy = button;
  stopButtonCopy = stopButton;
  v11.receiver = self;
  v11.super_class = CKInlineAudioReplyButtonController;
  v8 = [(CKInlineAudioReplyButtonController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CKInlineAudioReplyButtonController *)v8 setHoldThreshold:0.255];
    [buttonCopy addTarget:v9 action:sel_touchDownInStartButton_event_ forControlEvents:1];
    [buttonCopy addTarget:v9 action:sel_touchUpInStartButton_event_ forControlEvents:64];
    [buttonCopy addTarget:v9 action:sel_touchUpOutsideStartButton_event_ forControlEvents:128];
    [stopButtonCopy addTarget:v9 action:sel_touchUpInStopButton_ forControlEvents:64];
    [buttonCopy addTarget:v9 action:sel_touchDragEnter_ forControlEvents:16];
    [stopButtonCopy addTarget:v9 action:sel_touchDragEnter_ forControlEvents:16];
    [buttonCopy addTarget:v9 action:sel_touchDragExit_ forControlEvents:32];
    [stopButtonCopy addTarget:v9 action:sel_touchDragExit_ forControlEvents:32];
    [(CKInlineAudioReplyButtonController *)v9 setStartButton:buttonCopy];
    [(CKInlineAudioReplyButtonController *)v9 setStopButton:stopButtonCopy];
    [(CKInlineAudioReplyButtonController *)v9 setStarted:0];
  }

  return v9;
}

- (void)dealloc
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setDisableInteraction:0];

  [(UIButton *)self->_startButton removeTarget:self action:0 forControlEvents:0];
  [(UIButton *)self->_stopButton removeTarget:self action:0 forControlEvents:0];
  v4.receiver = self;
  v4.super_class = CKInlineAudioReplyButtonController;
  [(CKInlineAudioReplyButtonController *)&v4 dealloc];
}

- (void)setStarted:(BOOL)started
{
  startedCopy = started;
  self->_started = started;
  startButton = [(CKInlineAudioReplyButtonController *)self startButton];
  v6 = startButton;
  if (startedCopy)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (startedCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [startButton setAlpha:v7];

  stopButton = [(CKInlineAudioReplyButtonController *)self stopButton];
  [stopButton setAlpha:v8];

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setDisableInteraction:startedCopy];
}

- (void)touchDownInStartButton:(id)button event:(id)event
{
  [event timestamp];
  [(CKInlineAudioReplyButtonController *)self setTouchDownTime:?];
  if ([(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    delegate = [(CKInlineAudioReplyButtonController *)self delegate];
    [delegate audioReplyButtonStop:self];
  }

  else
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:1];
    stopButton = [(CKInlineAudioReplyButtonController *)self stopButton];
    [stopButton setHighlighted:1];

    delegate = [(CKInlineAudioReplyButtonController *)self delegate];
    [delegate audioReplyButtonStart:self];
  }
}

- (void)touchUpInStartButton:(id)button event:(id)event
{
  [event timestamp];
  v6 = v5;
  [(CKInlineAudioReplyButtonController *)self touchDownTime];
  v8 = v6 - v7;
  [(CKInlineAudioReplyButtonController *)self holdThreshold];
  if (v8 > v9 && [(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    delegate = [(CKInlineAudioReplyButtonController *)self delegate];
    [delegate audioReplyButtonStop:self];
  }

  else
  {
    delegate = [(CKInlineAudioReplyButtonController *)self stopButton];
    [delegate setHighlighted:0];
  }
}

- (void)touchUpOutsideStartButton:(id)button event:(id)event
{
  [(CKInlineAudioReplyButtonController *)self setStarted:0, event];
  delegate = [(CKInlineAudioReplyButtonController *)self delegate];
  [delegate audioReplyButtonCancel:self];
}

- (void)touchUpInStopButton:(id)button
{
  if ([(CKInlineAudioReplyButtonController *)self isStarted])
  {
    [(CKInlineAudioReplyButtonController *)self setStarted:0];
    delegate = [(CKInlineAudioReplyButtonController *)self delegate];
    [delegate audioReplyButtonStop:self];
  }
}

- (void)touchDragEnter:(id)enter
{
  stopButton = [(CKInlineAudioReplyButtonController *)self stopButton];
  [stopButton setHighlighted:1];
}

- (void)touchDragExit:(id)exit
{
  stopButton = [(CKInlineAudioReplyButtonController *)self stopButton];
  [stopButton setHighlighted:0];
}

- (CKInlineAudioReplyButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end