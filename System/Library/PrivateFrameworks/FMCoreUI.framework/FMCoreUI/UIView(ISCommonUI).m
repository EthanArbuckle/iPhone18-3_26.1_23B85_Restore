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
  v2 = [MEMORY[0x277CBEB18] arrayWithObject:a1];
  v3 = [a1 subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) allSubviews];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4[2](v4, a1);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a1 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) performOnAllSubviews:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (uint64_t)centerHorizontallyInSuperview
{
  [a1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [a1 superview];
  [v8 frame];
  v10 = v9;
  [a1 frame];
  v12 = floor((v10 - v11) * 0.5);

  return [a1 setFrame:{v12, v3, v5, v7}];
}

- (uint64_t)centerVerticallyInSuperview
{
  [a1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [a1 superview];
  [v8 frame];
  v10 = v9;
  [a1 frame];
  v12 = floor((v10 - v11) * 0.5);

  return [a1 setFrame:{v3, v12, v5, v7}];
}

- (void)setRandomDebugHighlight
{
  v2 = vcvts_n_f32_u32(arc4random(), 8uLL);
  v3 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL);
  v4 = (v3 + 0.5);
  v5 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL);
  v6 = [MEMORY[0x277D75348] colorWithHue:v2 saturation:v4 brightness:(v5 + 0.5) alpha:1.0];
  [a1 setDebugHighlight:v6];
}

- (void)setDebugHighlight:()ISCommonUI
{
  v4 = a3;
  if (v4)
  {
    v27 = 1.0;
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v7 = v6;

    v8 = [a1 backgroundColor];
    objc_setAssociatedObject(a1, PreviousBackgroundColorKey, v8, 0x301);

    v9 = MEMORY[0x277D75348];
    v10 = [a1 layer];
    v11 = [v9 colorWithCGColor:{objc_msgSend(v10, "borderColor")}];
    objc_setAssociatedObject(a1, PreviousBorderColorKey, v11, 0x301);

    v12 = MEMORY[0x277CCABB0];
    v13 = [a1 layer];
    [v13 borderWidth];
    v14 = [v12 numberWithDouble:?];
    objc_setAssociatedObject(a1, &PreviousBorderWidthKey, v14, 0x301);

    objc_setAssociatedObject(a1, CurrentDebugHighlightKey, v4, 0x301);
    if (([v4 getRed:0 green:0 blue:0 alpha:&v27] & 1) == 0 && (objc_msgSend(v4, "getWhite:alpha:", 0, &v27) & 1) == 0)
    {
      [v4 getHue:0 saturation:0 brightness:0 alpha:&v27];
    }

    v15 = [v4 colorWithAlphaComponent:v27 * 0.25];
    [a1 setBackgroundColor:v15];

    v16 = [v4 CGColor];
    v17 = [a1 layer];
    [v17 setBorderColor:v16];

    v18 = [a1 layer];
    [v18 setBorderWidth:1.0 / v7];
  }

  else
  {
    v19 = objc_getAssociatedObject(a1, PreviousBackgroundColorKey);
    [a1 setBackgroundColor:v19];

    v20 = objc_getAssociatedObject(a1, PreviousBorderColorKey);
    v21 = [v20 CGColor];
    v22 = [a1 layer];
    [v22 setBorderColor:v21];

    v23 = objc_getAssociatedObject(a1, &PreviousBorderWidthKey);
    [v23 doubleValue];
    v25 = v24;
    v26 = [a1 layer];
    [v26 setBorderWidth:v25];

    objc_setAssociatedObject(a1, PreviousBackgroundColorKey, 0, 0x301);
    objc_setAssociatedObject(a1, PreviousBorderColorKey, 0, 0x301);
    objc_setAssociatedObject(a1, &PreviousBorderWidthKey, 0, 0x301);
    objc_setAssociatedObject(a1, CurrentDebugHighlightKey, 0, 0x301);
  }
}

- (id)generateImage
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v6 = [a1 isOpaque];
  v12.width = v3;
  v12.height = v5;
  UIGraphicsBeginImageContextWithOptions(v12, v6, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [a1 layer];
  [v8 renderInContext:CurrentContext];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (id)addConstraintsToFillSuperview
{
  if (([a1 translatesAutoresizingMaskIntoConstraints] & 1) != 0 || (objc_msgSend(a1, "superview"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = _NSDictionaryOfVariableBindings(&cfstr_Self.isa, a1, 0);
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[self]|" options:0 metrics:0 views:v3];
    [v4 addObjectsFromArray:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[self]|" options:0 metrics:0 views:v3];
    [v4 addObjectsFromArray:v6];

    v7 = [a1 superview];
    [v7 addConstraints:v4];

    v8 = [v4 copy];
  }

  return v8;
}

- (id)addConstraintsToSetSize:()ISCommonUI
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (([a1 translatesAutoresizingMaskIntoConstraints] & 1) != 0 || (objc_msgSend(a1, "superview"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Self.isa, a1, 0);
    v17[0] = @"width";
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v17[1] = @"height";
    v18[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[self(height)]" options:0 metrics:v10 views:v7];
    [v11 addObjectsFromArray:v12];

    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[self(width)]" options:0 metrics:v10 views:v7];
    [v11 addObjectsFromArray:v13];

    v14 = [a1 superview];
    [v14 addConstraints:v11];

    v15 = [v11 copy];
  }

  return v15;
}

@end