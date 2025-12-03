@interface HUCenteredCellUITableView
- (CGRect)keyboardFrame;
- (void)layoutSubviews;
@end

@implementation HUCenteredCellUITableView

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = HUCenteredCellUITableView;
  [(HUCenteredCellUITableView *)&v33 layoutSubviews];
  if (([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    [(HUCenteredCellUITableView *)self rowHeight];
    v4 = v3;
    [(HUCenteredCellUITableView *)self sectionHeaderHeight];
    v6 = v4 + v5;
    [(HUCenteredCellUITableView *)self sectionFooterHeight];
    v8 = v6 + v7;
    window = [(HUCenteredCellUITableView *)self window];
    [(HUCenteredCellUITableView *)self bounds];
    [window convertRect:self fromView:?];
    v36.origin.x = v10;
    v36.origin.y = v11;
    v36.size.width = v12;
    v36.size.height = v13;
    v34 = CGRectIntersection(self->_keyboardFrame, v36);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    IsEmpty = CGRectIsEmpty(v35);
    v19 = 20.0;
    if (!IsEmpty)
    {
      v19 = height;
    }

    v20 = v8 + v19;
    v21 = *(MEMORY[0x277D768C8] + 8);
    v22 = *(MEMORY[0x277D768C8] + 16);
    v23 = *(MEMORY[0x277D768C8] + 24);
    [(HUCenteredCellUITableView *)self bounds];
    v25 = (v24 - v20) * 0.5;
    v26 = floorf(v25);
    [(HUCenteredCellUITableView *)self contentInset];
    if (v21 != v30 || (v27 == v26 ? (v31 = v23 == v29) : (v31 = 0), v31 ? (v32 = v22 == v28) : (v32 = 0), !v32))
    {
      [(HUCenteredCellUITableView *)self setContentInset:v26, v21, v22, v23];
    }
  }
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end