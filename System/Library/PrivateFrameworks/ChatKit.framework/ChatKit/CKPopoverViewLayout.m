@interface CKPopoverViewLayout
- (CGPoint)anchorCenter;
- (CGRect)anchorFrameInContainer;
- (CGRect)popoverFrameInContainer;
- (CGSize)anchorSize;
- (CGSize)containerSize;
- (CGSize)preferredContentSize;
- (CKPopoverViewLayout)initWithConfiguration:(id)a3;
- (id)newLayoutMetricsWithCoordinateSpace:(id)a3;
- (void)updateProperties:(id)a3;
@end

@implementation CKPopoverViewLayout

- (CKPopoverViewLayout)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKPopoverViewLayout;
  v6 = [(CKPopoverViewLayout *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_mutating = 0;
    v8 = *MEMORY[0x1E695F060];
    v6->_anchorCenter = *MEMORY[0x1E695EFF8];
    v6->_anchorSize = v8;
    v6->_containerSize = v8;
    v6->_preferredContentSize = v8;
    v6->_state = 0;
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (CGRect)anchorFrameInContainer
{
  width = self->_anchorSize.width;
  height = self->_anchorSize.height;
  v4 = self->_anchorCenter.x - width * 0.5;
  v5 = self->_anchorCenter.y - height * 0.5;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)updateProperties:(id)a3
{
  self->_mutating = 1;
  (*(a3 + 2))(a3, a2);
  self->_mutating = 0;
}

- (CGRect)popoverFrameInContainer
{
  [(CKPopoverViewLayoutConfiguration *)self->_configuration optimalSizeForPreferredContentSize:self->_state state:self->_preferredContentSize.width, self->_preferredContentSize.height];
  v4 = v3;
  v6 = v5;
  height = self->_containerSize.height;
  [(CKPopoverViewLayoutConfiguration *)self->_configuration maximumHeight];
  v9 = v8;
  y = self->_anchorCenter.y;
  v27 = self->_containerSize.height;
  v10 = self->_anchorSize.height;
  [(CKPopoverViewLayoutConfiguration *)self->_configuration minimumTopSpacing];
  v12 = v11;
  [(CKPopoverViewLayout *)self anchorFrameInContainer];
  Width = CGRectGetWidth(v28);
  [(CKPopoverViewLayout *)self anchorFrameInContainer];
  v14 = Width - CGRectGetMidX(v29);
  if (v14 >= -58.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -58.0;
  }

  [(CKPopoverViewLayout *)self anchorFrameInContainer];
  v16 = CGRectGetMidX(v30) + v15;
  v17 = self->_containerSize.width - (v4 + v16);
  [(CKPopoverViewLayoutConfiguration *)self->_configuration minimumTrailingSpacing];
  v19 = v17 - v18;
  if (v19 < 0.0)
  {
    v16 = v16 + v19;
  }

  if (height >= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = height;
  }

  v21 = v20 - (v12 + v27 - (y + v10 * 0.5));
  if (v21 < v6)
  {
    v6 = v21;
  }

  [(CKPopoverViewLayout *)self anchorFrameInContainer];
  v22 = CGRectGetMaxY(v31) - v6;
  v23 = v16;
  v24 = v4;
  v25 = v6;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (id)newLayoutMetricsWithCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [CKPopoverViewLayoutMetrics alloc];
  v6 = [(CKPopoverViewLayout *)self state];
  [(CKPopoverViewLayout *)self popoverFrameInContainer];
  v7 = [(CKPopoverViewLayoutMetrics *)v5 initWithState:v6 frame:v4 coordinateSpace:?];

  return v7;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)anchorCenter
{
  x = self->_anchorCenter.x;
  y = self->_anchorCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)anchorSize
{
  width = self->_anchorSize.width;
  height = self->_anchorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end