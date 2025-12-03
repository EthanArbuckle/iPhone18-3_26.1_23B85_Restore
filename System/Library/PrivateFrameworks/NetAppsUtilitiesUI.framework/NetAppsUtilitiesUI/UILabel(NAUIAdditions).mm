@interface UILabel(NAUIAdditions)
- (double)naui_capOffsetFromTop;
- (double)naui_distanceFromBaselineToCoordinate:()NAUIAdditions inView:;
- (void)naui_reloadDynamicFontWithTextStyleDescriptor:()NAUIAdditions;
@end

@implementation UILabel(NAUIAdditions)

- (double)naui_capOffsetFromTop
{
  font = [self font];
  [font ascender];
  v4 = v3;
  font2 = [self font];
  [font2 capHeight];
  v7 = v4 - v6;

  return v7;
}

- (double)naui_distanceFromBaselineToCoordinate:()NAUIAdditions inView:
{
  [self convertPoint:0.0 fromView:a2];
  v4 = v3;
  [self bounds];
  Height = CGRectGetHeight(v8);
  [self naui_baselineOffsetFromBottom];
  return v4 - (Height - v6);
}

- (void)naui_reloadDynamicFontWithTextStyleDescriptor:()NAUIAdditions
{
  v4 = a3;
  attributedText = [self attributedText];
  v6 = [attributedText copy];

  v7 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:v4];
  v26.receiver = self;
  v26.super_class = &off_286D2FAD8;
  objc_msgSendSuper2(&v26, sel_naui_reloadDynamicFontWithTextStyleDescriptor_, v4);
  fontDescriptor = [v7 fontDescriptor];
  v9 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

  if ([v9 length] && objc_msgSend(v6, "length"))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v10 = [v6 mutableCopy];
    v11 = [v6 length];
    v12 = *MEMORY[0x277D740A8];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __72__UILabel_NAUIAdditions__naui_reloadDynamicFontWithTextStyleDescriptor___block_invoke;
    v17 = &unk_279966740;
    v21 = &v22;
    v18 = v4;
    v13 = v10;
    v19 = v13;
    v20 = v7;
    [v6 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, &v14}];
    if (*(v23 + 24) == 1)
    {
      [self setAttributedText:{v13, v14, v15, v16, v17, v18, v19}];
    }

    _Block_object_dispose(&v22, 8);
  }
}

@end