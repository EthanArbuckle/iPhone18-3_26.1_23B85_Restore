@interface _FCUIFocusSelectionHeaderView
- (void)_layoutLabel:(id)label inBounds:(CGRect)bounds measuringOnly:(CGSize *)only;
@end

@implementation _FCUIFocusSelectionHeaderView

- (void)_layoutLabel:(id)label inBounds:(CGRect)bounds measuringOnly:(CGSize *)only
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  labelCopy = label;
  [labelCopy sizeThatFits:{width, height}];
  BSRectWithSize();
  traitCollection = [(_FCUIFocusSelectionHeaderView *)self traitCollection];
  [traitCollection displayScale];
  v23 = v12;
  UIRectCenteredXInRectScale();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (only)
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
    only->width = v21;
    only->height = MaxY;
  }

  else
  {
    [labelCopy setFrame:{v14, v16, v18, v20, v23}];
  }
}

@end