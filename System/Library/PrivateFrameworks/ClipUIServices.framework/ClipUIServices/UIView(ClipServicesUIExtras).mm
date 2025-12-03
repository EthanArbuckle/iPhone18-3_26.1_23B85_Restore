@interface UIView(ClipServicesUIExtras)
+ (id)cps_vibrantSeparator;
+ (id)cps_viewWithBackgroundColor:()ClipServicesUIExtras cornerRadius:;
- (uint64_t)cps_configureForAnimatesAlphaWhenHighlighted:()ClipServicesUIExtras;
- (uint64_t)cps_sizeToFitWithinSize:()ClipServicesUIExtras;
- (void)cps_verticallyAlignTopView:()ClipServicesUIExtras bottomView:margin:;
@end

@implementation UIView(ClipServicesUIExtras)

+ (id)cps_viewWithBackgroundColor:()ClipServicesUIExtras cornerRadius:
{
  v6 = a4;
  v7 = objc_alloc_init(self);
  [v7 _setContinuousCornerRadius:a2];
  [v7 setBackgroundColor:v6];

  [v7 setClipsToBounds:1];

  return v7;
}

- (uint64_t)cps_configureForAnimatesAlphaWhenHighlighted:()ClipServicesUIExtras
{
  v3 = 0.16;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x277D85DD0];
  v5[2] = __77__UIView_ClipServicesUIExtras__cps_configureForAnimatesAlphaWhenHighlighted___block_invoke;
  v5[3] = &unk_278DD2498;
  if (!a3)
  {
    v3 = 0.5;
  }

  v5[4] = self;
  v6 = a3;
  return [MEMORY[0x277D75D18] animateWithDuration:50659328 delay:v5 options:0 animations:v3 completion:0.0];
}

- (uint64_t)cps_sizeToFitWithinSize:()ClipServicesUIExtras
{
  [self sizeThatFits:?];
  [self transform];
  if (CGAffineTransformIsIdentity(&v3))
  {
    [self frame];
    return [self setFrame:?];
  }

  else
  {
    [self bounds];
    return [self setBounds:?];
  }
}

- (void)cps_verticallyAlignTopView:()ClipServicesUIExtras bottomView:margin:
{
  v36 = a5;
  v7 = a4;
  [self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  rect = v14;
  [v7 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  Width = CGRectGetWidth(v38);
  v39.origin.x = v17;
  v39.origin.y = v19;
  v39.size.width = v21;
  v24 = v21;
  v25 = v23;
  v39.size.height = v23;
  v26 = (Width - CGRectGetWidth(v39)) * 0.5;
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = rect;
  Height = CGRectGetHeight(v40);
  [v7 bounds];
  v28 = CGRectGetHeight(v41) + a2;
  [v36 bounds];
  v29 = (Height - (v28 + CGRectGetHeight(v42))) * 0.5;
  [v7 setFrame:{v26, v29, v24, v25}];

  [v36 frame];
  v30 = v43.size.width;
  v31 = v43.size.height;
  v32 = (Width - CGRectGetWidth(v43)) * 0.5;
  v44.origin.x = v26;
  v44.origin.y = v29;
  v44.size.width = v24;
  v44.size.height = v25;
  [v36 setFrame:{v32, v29 + CGRectGetHeight(v44) + a2, v30, v31}];
}

+ (id)cps_vibrantSeparator
{
  v0 = [MEMORY[0x277D75210] effectWithStyle:8];
  v1 = [MEMORY[0x277D75D00] effectForBlurEffect:v0 style:7];
  v2 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  contentView = [v2 contentView];
  [contentView setBackgroundColor:whiteColor];

  heightAnchor = [v2 heightAnchor];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = [heightAnchor constraintEqualToConstant:1.0 / v7];
  [v8 setActive:1];

  return v2;
}

@end