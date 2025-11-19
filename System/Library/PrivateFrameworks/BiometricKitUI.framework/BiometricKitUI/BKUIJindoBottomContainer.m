@interface BKUIJindoBottomContainer
- (BOOL)showStartOverForState:(int)a3;
- (id)escapeHatchButtonForState:(int)a3;
- (void)buttonSelectedWithButtonTrayPosition:(int64_t)a3;
- (void)setupInitialUI;
@end

@implementation BKUIJindoBottomContainer

- (void)setupInitialUI
{
  v7.receiver = self;
  v7.super_class = BKUIJindoBottomContainer;
  [(BKUIPearlEnrollViewBottomContainer *)&v7 setupInitialUI];
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v4 = [v3 buttonTray];
  [v4 setActionDelegate:self];

  v5 = [(BKUIPearlEnrollViewBottomContainer *)self offScreenScrollview];
  v6 = [v5 buttonTray];
  [v6 setActionDelegate:self];
}

- (void)buttonSelectedWithButtonTrayPosition:(int64_t)a3
{
  if (a3 == 3)
  {
    v9 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v10 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [v9 state]);
    v11 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
    v12 = [v11 bottomLinkButton];

    v8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v13 = v8;
    if (v10 != v12)
    {
      [v8 cancelEnroll];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v13 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    [v13 nextStateButtonPressed:self];
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    return;
  }

  v4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v5 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [v4 state]);
  v6 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  v7 = [v6 topLinkButton];

  v8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v13 = v8;
  if (v5 == v7)
  {
LABEL_10:
    [v8 escapeHatchButtonPressed];
    goto LABEL_11;
  }

  [v8 retryPressed];
LABEL_11:
}

- (id)escapeHatchButtonForState:(int)a3
{
  if (a3 > 0xA)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << a3) & 0x747) != 0)
    {
      v4 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
      v5 = [v4 bottomLinkButton];
    }

    else
    {
      v4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      v6 = [v4 currentOperationHandler];
      if ([v6 shouldShowRetryUI])
      {
        v5 = [(BKUIPearlEnrollViewBottomContainer *)self bottomLinkButton];
      }

      else
      {
        v7 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
        v5 = [v7 topLinkButton];
      }
    }
  }

  return v5;
}

- (BOOL)showStartOverForState:(int)a3
{
  v5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if ([v5 state] == 3)
  {
    v6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v7 = [v6 currentOperationHandler];
    v8 = [v7 shouldShowRetryUI];

    if (v8)
    {
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
  }

  if (a3 <= 0xA)
  {
    v9 = 0x1F8u >> a3;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

@end