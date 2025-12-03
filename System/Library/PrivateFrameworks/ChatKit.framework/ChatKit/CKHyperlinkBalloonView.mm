@interface CKHyperlinkBalloonView
- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (CKHyperlinkBalloonView)initWithFrame:(CGRect)frame;
- (void)textView:(id)view textItemMenuWillDisplayForTextItem:(id)item animator:(id)animator;
@end

@implementation CKHyperlinkBalloonView

- (CKHyperlinkBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKHyperlinkBalloonView;
  v3 = [(CKTextBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    textView = [(CKTextBalloonView *)v3 textView];
    [textView setSelectable:1];
    [textView _setInteractiveTextSelectionDisabled:1];
    [textView setUserInteractionEnabled:1];
    [textView setDelegate:v4];
    [textView setClipsToBounds:0];
  }

  return v4;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  lCopy = l;
  scheme = [lCopy scheme];
  v7 = [scheme isEqualToString:@"message"];

  if (v7)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] openURL:lCopy options:MEMORY[0x1E695E0F8] completionHandler:0];
LABEL_5:
    LOBYTE(v9) = 0;
    goto LABEL_6;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E695DFF8] ckSMSURLFromBusinessChatURL:lCopy];
  v9 = mEMORY[0x1E69DC668] == 0;
  if (mEMORY[0x1E69DC668])
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]2 openURL:mEMORY[0x1E69DC668] options:MEMORY[0x1E695E0F8] completionHandler:0];

    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (void)textView:(id)view textItemMenuWillDisplayForTextItem:(id)item animator:(id)animator
{
  viewCopy = view;
  itemCopy = item;
  animatorCopy = animator;
  if (itemCopy)
  {
    delegate = [(CKBalloonView *)self delegate];

    if (delegate)
    {
      delegate2 = [(CKBalloonView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate3 = [(CKBalloonView *)self delegate];
        link = [itemCopy link];
        [delegate3 saveHyperlinkBalloonViewData:self withHyperlink:link];
      }
    }
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  textView = [(CKTextBalloonView *)self textView];
  view = [gestureRecognizerCopy view];

  if (view != textView)
  {
    goto LABEL_2;
  }

  doubleTapGestureRecognizer = [(CKBalloonView *)self doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer == recognizerCopy)
  {
    v10 = 0;
    goto LABEL_3;
  }

  longPressGestureRecognizer = [(CKBalloonView *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer == recognizerCopy)
  {
    [recognizerCopy locationInView:textView];
    v10 = [textView willInteractWithLinkAtPoint:?];
  }

  else
  {
LABEL_2:
    v10 = 1;
  }

LABEL_3:

  return v10;
}

@end