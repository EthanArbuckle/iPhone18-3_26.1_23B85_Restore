@interface CKHyperlinkBalloonView
- (BOOL)_gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (CKHyperlinkBalloonView)initWithFrame:(CGRect)a3;
- (void)textView:(id)a3 textItemMenuWillDisplayForTextItem:(id)a4 animator:(id)a5;
@end

@implementation CKHyperlinkBalloonView

- (CKHyperlinkBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKHyperlinkBalloonView;
  v3 = [(CKTextBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKTextBalloonView *)v3 textView];
    [v5 setSelectable:1];
    [v5 _setInteractiveTextSelectionDisabled:1];
    [v5 setUserInteractionEnabled:1];
    [v5 setDelegate:v4];
    [v5 setClipsToBounds:0];
  }

  return v4;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v5 = a4;
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"message"];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    [v8 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:0];
LABEL_5:
    LOBYTE(v9) = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E695DFF8] ckSMSURLFromBusinessChatURL:v5];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    [v10 openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];

    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (void)textView:(id)a3 textItemMenuWillDisplayForTextItem:(id)a4 animator:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(CKBalloonView *)self delegate];

    if (v10)
    {
      v11 = [(CKBalloonView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(CKBalloonView *)self delegate];
        v14 = [v8 link];
        [v13 saveHyperlinkBalloonViewData:self withHyperlink:v14];
      }
    }
  }
}

- (BOOL)_gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKTextBalloonView *)self textView];
  v9 = [v7 view];

  if (v9 != v8)
  {
    goto LABEL_2;
  }

  v12 = [(CKBalloonView *)self doubleTapGestureRecognizer];

  if (v12 == v6)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v13 = [(CKBalloonView *)self longPressGestureRecognizer];

  if (v13 == v6)
  {
    [v6 locationInView:v8];
    v10 = [v8 willInteractWithLinkAtPoint:?];
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