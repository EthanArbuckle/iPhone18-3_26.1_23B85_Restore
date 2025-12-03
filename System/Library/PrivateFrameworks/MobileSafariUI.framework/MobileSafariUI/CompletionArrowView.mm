@interface CompletionArrowView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UITableViewCell)parentCell;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setUsesDownBackwardCompletionArrow:(BOOL)arrow;
@end

@implementation CompletionArrowView

- (void)setUsesDownBackwardCompletionArrow:(BOOL)arrow
{
  arrowCopy = arrow;
  if (!self->_buttonConfiguration || self->_usesDownBackwardCompletionArrow != arrow)
  {
    self->_usesDownBackwardCompletionArrow = arrow;
    if (!self->_buttonConfiguration)
    {
      plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
      buttonConfiguration = self->_buttonConfiguration;
      self->_buttonConfiguration = plainButtonConfiguration;

      clearColor = [MEMORY[0x277D75348] clearColor];
      background = [(UIButtonConfiguration *)self->_buttonConfiguration background];
      [background setBackgroundColor:clearColor];

      [(UIButtonConfiguration *)self->_buttonConfiguration setContentInsets:*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)];
      v9 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
      v10 = MEMORY[0x277D755D0];
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      v12 = [v10 configurationWithHierarchicalColor:secondaryLabelColor];
      v13 = [v12 configurationByApplyingConfiguration:v9];

      [(UIButtonConfiguration *)self->_buttonConfiguration setPreferredSymbolConfigurationForImage:v13];
    }

    if (arrowCopy)
    {
      v14 = @"arrow.down.backward.circle";
    }

    else
    {
      v14 = @"arrow.up.backward.circle";
    }

    v15 = [MEMORY[0x277D755B8] systemImageNamed:v14];
    [(UIButtonConfiguration *)self->_buttonConfiguration setImage:v15];

    v16 = self->_buttonConfiguration;

    [(CompletionArrowView *)self setConfiguration:v16];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CompletionArrowView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CompletionArrowView *)self bounds];
  v15 = fmax(44.0 - CGRectGetWidth(v40), 0.0) * -0.5;
  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  v42 = CGRectInset(v41, v15, 0.0);
  v16 = v42.origin.x;
  v17 = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);
  if (WeakRetained && [(CompletionArrowView *)self isDescendantOfView:WeakRetained])
  {
    v38 = y;
    [WeakRetained bounds];
    [(CompletionArrowView *)self convertRect:WeakRetained fromView:?];
    v22 = v21;
    v17 = v23;
    v25 = v24;
    height = v26;
    _sf_usesLeftToRightLayout = [(CompletionArrowView *)self _sf_usesLeftToRightLayout];
    v28 = v16;
    v29 = v17;
    v30 = width;
    v31 = height;
    if (_sf_usesLeftToRightLayout)
    {
      MaxX = CGRectGetMaxX(*&v28);
      v43.origin.x = v22;
      v43.origin.y = v17;
      v43.size.width = v25;
      v43.size.height = height;
      if (MaxX < CGRectGetMaxX(v43))
      {
        v44.origin.x = v22;
        v44.origin.y = v17;
        v44.size.width = v25;
        v44.size.height = height;
        v33 = CGRectGetMaxX(v44);
        v45.origin.x = v16;
        v45.origin.y = v17;
        v45.size.width = width;
        v45.size.height = height;
        width = width + v33 - CGRectGetMaxX(v45);
      }
    }

    else
    {
      MinX = CGRectGetMinX(*&v28);
      v46.origin.x = v22;
      v46.origin.y = v17;
      v46.size.width = v25;
      v46.size.height = height;
      if (MinX > CGRectGetMinX(v46))
      {
        v47.origin.x = v16;
        v47.origin.y = v17;
        v47.size.width = width;
        v47.size.height = height;
        v35 = CGRectGetMinX(v47);
        v48.origin.x = v22;
        v48.origin.y = v17;
        v48.size.width = v25;
        v48.size.height = height;
        width = width + v35 - CGRectGetMinX(v48);
        v49.origin.x = v22;
        v49.origin.y = v17;
        v49.size.width = v25;
        v49.size.height = height;
        v16 = CGRectGetMinX(v49);
      }
    }

    y = v38;
  }

  v50.origin.x = v16;
  v50.origin.y = v17;
  v50.size.width = width;
  v50.size.height = height;
  v39.x = x;
  v39.y = y;
  v36 = CGRectContainsPoint(v50, v39);

  return v36;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = CompletionArrowView;
  v8 = [(CompletionArrowView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 || ![(CompletionArrowView *)self pointInside:eventCopy withEvent:x, y])
  {
    self = v8;
  }

  selfCopy = self;

  return self;
}

- (UITableViewCell)parentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);

  return WeakRetained;
}

@end