@interface _FCUIFocusSelectionHeaderView
- (void)_layoutLabel:(id)a3 inBounds:(CGRect)a4 measuringOnly:(CGSize *)a5;
@end

@implementation _FCUIFocusSelectionHeaderView

- (void)_layoutLabel:(id)a3 inBounds:(CGRect)a4 measuringOnly:(CGSize *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v24 = a3;
  [v24 sizeThatFits:{width, height}];
  BSRectWithSize();
  v11 = [(_FCUIFocusSelectionHeaderView *)self traitCollection];
  [v11 displayScale];
  v23 = v12;
  UIRectCenteredXInRectScale();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (a5)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v21 = CGRectGetWidth(v26);
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.width = v18;
    v27.size.height = v20;
    MaxY = CGRectGetMaxY(v27);
    a5->width = v21;
    a5->height = MaxY;
  }

  else
  {
    [v24 setFrame:{v14, v16, v18, v20, v23}];
  }
}

@end