@interface BKUIJindoBottomContainer
- (BOOL)showStartOverForState:(int)state;
- (id)escapeHatchButtonForState:(int)state;
- (void)buttonSelectedWithButtonTrayPosition:(int64_t)position;
- (void)setupInitialUI;
@end

@implementation BKUIJindoBottomContainer

- (void)setupInitialUI
{
  v7.receiver = self;
  v7.super_class = BKUIJindoBottomContainer;
  [(BKUIPearlEnrollViewBottomContainer *)&v7 setupInitialUI];
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  [buttonTray setActionDelegate:self];

  offScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self offScreenScrollview];
  buttonTray2 = [offScreenScrollview buttonTray];
  [buttonTray2 setActionDelegate:self];
}

- (void)buttonSelectedWithButtonTrayPosition:(int64_t)position
{
  if (position == 3)
  {
    delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v10 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [delegate state]);
    buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
    bottomLinkButton = [buttonTray bottomLinkButton];

    delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    delegate3 = delegate2;
    if (v10 != bottomLinkButton)
    {
      [delegate2 cancelEnroll];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (position == 2)
  {
    delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    [delegate3 nextStateButtonPressed:self];
    goto LABEL_11;
  }

  if (position != 1)
  {
    return;
  }

  delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v5 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [delegate4 state]);
  buttonTray2 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  topLinkButton = [buttonTray2 topLinkButton];

  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  delegate3 = delegate2;
  if (v5 == topLinkButton)
  {
LABEL_10:
    [delegate2 escapeHatchButtonPressed];
    goto LABEL_11;
  }

  [delegate2 retryPressed];
LABEL_11:
}

- (id)escapeHatchButtonForState:(int)state
{
  if (state > 0xA)
  {
    bottomLinkButton = 0;
  }

  else
  {
    if (((1 << state) & 0x747) != 0)
    {
      buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
      bottomLinkButton = [buttonTray bottomLinkButton];
    }

    else
    {
      buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler = [buttonTray currentOperationHandler];
      if ([currentOperationHandler shouldShowRetryUI])
      {
        bottomLinkButton = [(BKUIPearlEnrollViewBottomContainer *)self bottomLinkButton];
      }

      else
      {
        buttonTray2 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
        bottomLinkButton = [buttonTray2 topLinkButton];
      }
    }
  }

  return bottomLinkButton;
}

- (BOOL)showStartOverForState:(int)state
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if ([delegate state] == 3)
  {
    delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler = [delegate2 currentOperationHandler];
    shouldShowRetryUI = [currentOperationHandler shouldShowRetryUI];

    if (shouldShowRetryUI)
    {
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
  }

  if (state <= 0xA)
  {
    v9 = 0x1F8u >> state;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

@end