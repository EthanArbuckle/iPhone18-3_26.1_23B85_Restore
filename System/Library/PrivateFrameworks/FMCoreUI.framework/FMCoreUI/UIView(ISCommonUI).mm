@interface UIView(ISCommonUI)
- (id)addConstraintsToFillSuperview;
- (id)addConstraintsToSetSize:()ISCommonUI;
- (id)allSubviews;
- (id)generateImage;
- (uint64_t)centerHorizontallyInSuperview;
- (uint64_t)centerVerticallyInSuperview;
- (void)performOnAllSubviews:()ISCommonUI;
- (void)setDebugHighlight:()ISCommonUI;
- (void)setRandomDebugHighlight;
@end

@implementation UIView(ISCommonUI)

- (id)allSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  subviews = [self subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        allSubviews = [*(*(&v11 + 1) + 8 * i) allSubviews];
        [v2 addObjectsFromArray:allSubviews];
      }

      v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

- (void)performOnAllSubviews:()ISCommonUI
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v4[2](v4, self);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [self subviews];
  v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v10 + 1) + 8 * v9++) performOnAllSubviews:v4];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (uint64_t)centerHorizontallyInSuperview
{
  [self frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  superview = [self superview];
  [superview frame];
  v10 = v9;
  [self frame];
  v12 = floor((v10 - v11) * 0.5);

  return [self setFrame:{v12, v3, v5, v7}];
}

- (uint64_t)centerVerticallyInSuperview
{
  [self frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  superview = [self superview];
  [superview frame];
  v10 = v9;
  [self frame];
  v12 = floor((v10 - v11) * 0.5);

  return [self setFrame:{v3, v12, v5, v7}];
}

- (void)setRandomDebugHighlight
{
  v2 = vcvts_n_f32_u32(arc4random(), 8uLL);
  v3 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL);
  v4 = (v3 + 0.5);
  v5 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL);
  v6 = [MEMORY[0x277D75348] colorWithHue:v2 saturation:v4 brightness:(v5 + 0.5) alpha:1.0];
  [self setDebugHighlight:v6];
}

- (void)setDebugHighlight:()ISCommonUI
{
  v4 = a3;
  if (v4)
  {
    v27 = 1.0;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v7 = v6;

    backgroundColor = [self backgroundColor];
    objc_setAssociatedObject(self, PreviousBackgroundColorKey, backgroundColor, 0x301);

    v9 = MEMORY[0x277D75348];
    layer = [self layer];
    v11 = [v9 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];
    objc_setAssociatedObject(self, PreviousBorderColorKey, v11, 0x301);

    v12 = MEMORY[0x277CCABB0];
    layer2 = [self layer];
    [layer2 borderWidth];
    v14 = [v12 numberWithDouble:?];
    objc_setAssociatedObject(self, &PreviousBorderWidthKey, v14, 0x301);

    objc_setAssociatedObject(self, CurrentDebugHighlightKey, v4, 0x301);
    if (([v4 getRed:0 green:0 blue:0 alpha:&v27] & 1) == 0 && (objc_msgSend(v4, "getWhite:alpha:", 0, &v27) & 1) == 0)
    {
      [v4 getHue:0 saturation:0 brightness:0 alpha:&v27];
    }

    v15 = [v4 colorWithAlphaComponent:v27 * 0.25];
    [self setBackgroundColor:v15];

    cGColor = [v4 CGColor];
    layer3 = [self layer];
    [layer3 setBorderColor:cGColor];

    layer4 = [self layer];
    [layer4 setBorderWidth:1.0 / v7];
  }

  else
  {
    v19 = objc_getAssociatedObject(self, PreviousBackgroundColorKey);
    [self setBackgroundColor:v19];

    v20 = objc_getAssociatedObject(self, PreviousBorderColorKey);
    cGColor2 = [v20 CGColor];
    layer5 = [self layer];
    [layer5 setBorderColor:cGColor2];

    v23 = objc_getAssociatedObject(self, &PreviousBorderWidthKey);
    [v23 doubleValue];
    v25 = v24;
    layer6 = [self layer];
    [layer6 setBorderWidth:v25];

    objc_setAssociatedObject(self, PreviousBackgroundColorKey, 0, 0x301);
    objc_setAssociatedObject(self, PreviousBorderColorKey, 0, 0x301);
    objc_setAssociatedObject(self, &PreviousBorderWidthKey, 0, 0x301);
    objc_setAssociatedObject(self, CurrentDebugHighlightKey, 0, 0x301);
  }
}

- (id)generateImage
{
  [self bounds];
  v3 = v2;
  v5 = v4;
  isOpaque = [self isOpaque];
  v12.width = v3;
  v12.height = v5;
  UIGraphicsBeginImageContextWithOptions(v12, isOpaque, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [self layer];
  [layer renderInContext:CurrentContext];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (id)addConstraintsToFillSuperview
{
  if (([self translatesAutoresizingMaskIntoConstraints] & 1) != 0 || (objc_msgSend(self, "superview"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = _NSDictionaryOfVariableBindings(&cfstr_Self.isa, self, 0);
    array = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[self]|" options:0 metrics:0 views:v3];
    [array addObjectsFromArray:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[self]|" options:0 metrics:0 views:v3];
    [array addObjectsFromArray:v6];

    superview = [self superview];
    [superview addConstraints:array];

    v8 = [array copy];
  }

  return v8;
}

- (id)addConstraintsToSetSize:()ISCommonUI
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (([self translatesAutoresizingMaskIntoConstraints] & 1) != 0 || (objc_msgSend(self, "superview"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Self.isa, self, 0);
    v17[0] = @"width";
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v17[1] = @"height";
    v18[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    array = [MEMORY[0x277CBEB18] array];
    v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[self(height)]" options:0 metrics:v10 views:v7];
    [array addObjectsFromArray:v12];

    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[self(width)]" options:0 metrics:v10 views:v7];
    [array addObjectsFromArray:v13];

    superview = [self superview];
    [superview addConstraints:array];

    v15 = [array copy];
  }

  return v15;
}

@end