@interface UILabel(FocusUI)
+ (void)fcui_layoutPrimaryLabel:()FocusUI secondaryLabel:inTextFrame:primaryLabelFrame:secondaryLabelFrame:drawingContext:;
- (double)fcui_drawingHeightWithNumberOfLines:()FocusUI;
- (double)fcui_measuringHeightWithNumberOfLines:()FocusUI;
- (uint64_t)fcui_numberOfLinesInFrame:()FocusUI maximum:drawingContext:;
@end

@implementation UILabel(FocusUI)

+ (void)fcui_layoutPrimaryLabel:()FocusUI secondaryLabel:inTextFrame:primaryLabelFrame:secondaryLabelFrame:drawingContext:
{
  v31 = a6;
  v17 = a7;
  v18 = a10;
  if (v31 && a8)
  {
    v19 = [v31 fcui_numberOfLinesInFrame:0 maximum:v18 drawingContext:{a1, a2, a3, 1.79769313e308}];
    [v31 fcui_drawingHeightWithNumberOfLines:v19];
    v20 = [v17 text];
    v21 = [v20 length];

    if (v21)
    {
      [v31 fcui_measuringHeightWithNumberOfLines:v19];
      v22 = [v17 fcui_numberOfLinesInFrame:0 maximum:v18 drawingContext:{a1, a2, a3, 1.79769313e308}];
      [v17 fcui_measuringHeightWithNumberOfLines:v22];
      UIRectCenteredYInRect();
      CGRectGetMaxY(v33);
      [v17 fcui_drawingHeightWithNumberOfLines:v22];
      UIRectCenteredIntegralRectScale();
      if (a9)
      {
        *a9 = v23;
        a9[1] = v24;
        a9[2] = v25;
        a9[3] = v26;
      }
    }

    UIRectCenteredIntegralRectScale();
    *a8 = v27;
    a8[1] = v28;
    a8[2] = v29;
    a8[3] = v30;
  }
}

- (uint64_t)fcui_numberOfLinesInFrame:()FocusUI maximum:drawingContext:
{
  v14 = a8;
  v15 = [a1 font];
  v16 = [a1 text];
  v17 = [v15 fcui_numberOfLinesForText:v16 inFrame:a7 maximum:v14 drawingContext:{a2, a3, a4, a5}];

  return v17;
}

- (double)fcui_measuringHeightWithNumberOfLines:()FocusUI
{
  v5 = [a1 font];
  v6 = [a1 text];
  [v5 fcui_measuringHeightForText:v6 withNumberOfLines:a3];
  v8 = v7;

  return v8;
}

- (double)fcui_drawingHeightWithNumberOfLines:()FocusUI
{
  v5 = [a1 font];
  v6 = [a1 text];
  [v5 fcui_drawingHeightForText:v6 withNumberOfLines:a3 additionalPadding:2.0];
  v8 = v7;

  return v8;
}

@end