@interface UIView(DC)
+ (void)dc_animateWithDuration:()DC timingFunction:animations:completion:;
- (id)dc_imageRenderedFromLayer;
- (id)dc_imageRenderedFromViewHierarchy;
- (id)dc_imageViewRenderedFromLayer;
- (id)dc_imageViewRenderedFromViewHierarchy;
- (id)dc_renderImage;
- (id)dc_renderImageView;
- (uint64_t)dc_crashIfWindowIsSecure;
- (uint64_t)dc_isInSecureWindow;
- (void)dc_addConstraintsToFillSuperview;
- (void)dc_removeAllConstraintsForSubview:()DC;
@end

@implementation UIView(DC)

- (uint64_t)dc_isInSecureWindow
{
  v2 = [a1 window];

  if (v2)
  {
    v3 = [a1 window];
    v4 = [v3 screen];
    v5 = [v4 displayIdentity];
    v6 = [v5 expectsSecureRendering];

    return v6;
  }

  else
  {
    v8 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UIView(DC) *)v8 dc_isInSecureWindow];
    }

    return 1;
  }
}

- (uint64_t)dc_crashIfWindowIsSecure
{
  result = [a1 dc_isInSecureWindow];
  if (result)
  {
    v2 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(UIView(DC) *)v2 dc_crashIfWindowIsSecure];
    }

    return [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Attempted to show notes during unsecure session."];
  }

  return result;
}

- (id)dc_imageRenderedFromLayer
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__UIView_DC__dc_imageRenderedFromLayer__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_imageRenderedFromViewHierarchy
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__UIView_DC__dc_imageRenderedFromViewHierarchy__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_imageViewRenderedFromLayer
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 dc_imageRenderedFromLayer];
  [v3 setImage:v4];

  return v3;
}

- (id)dc_imageViewRenderedFromViewHierarchy
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 dc_imageRenderedFromViewHierarchy];
  [v3 setImage:v4];

  return v3;
}

- (void)dc_removeAllConstraintsForSubview:()DC
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 constraints];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 firstItem];
        v13 = v12;
        if (v12 == v4)
        {
        }

        else
        {
          v14 = [v11 secondItem];

          if (v14 != v4)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [a1 removeConstraints:v5];
}

- (void)dc_addConstraintsToFillSuperview
{
  v1 = a1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_View.isa, v1, 0);

  v2 = MEMORY[0x277CCAAD0];
  v3 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v6];
  [v2 activateConstraints:v3];

  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v6];
  [v4 activateConstraints:v5];
}

- (id)dc_renderImage
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__UIView_DC__dc_renderImage__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_renderImageView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 dc_renderImage];
  [v3 setImage:v4];

  return v3;
}

+ (void)dc_animateWithDuration:()DC timingFunction:animations:completion:
{
  v9 = a6;
  if (a5)
  {
    v10 = MEMORY[0x277CD9FF0];
    v11 = a5;
    v12 = a4;
    [v10 begin];
    [MEMORY[0x277CD9FF0] setAnimationTimingFunction:v12];

    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__UIView_DC__dc_animateWithDuration_timingFunction_animations_completion___block_invoke;
    v14[3] = &unk_278F93820;
    v15 = v9;
    [v13 animateWithDuration:v11 animations:v14 completion:a1];

    [MEMORY[0x277CD9FF0] commit];
  }
}

@end