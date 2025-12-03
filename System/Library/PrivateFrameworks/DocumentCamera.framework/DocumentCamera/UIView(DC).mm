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
  window = [self window];

  if (window)
  {
    window2 = [self window];
    screen = [window2 screen];
    displayIdentity = [screen displayIdentity];
    expectsSecureRendering = [displayIdentity expectsSecureRendering];

    return expectsSecureRendering;
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
  result = [self dc_isInSecureWindow];
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
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [self bounds];
  v7 = [v4 initWithSize:defaultFormat format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__UIView_DC__dc_imageRenderedFromLayer__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = self;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_imageRenderedFromViewHierarchy
{
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [self bounds];
  v7 = [v4 initWithSize:defaultFormat format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__UIView_DC__dc_imageRenderedFromViewHierarchy__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = self;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_imageViewRenderedFromLayer
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  dc_imageRenderedFromLayer = [self dc_imageRenderedFromLayer];
  [v3 setImage:dc_imageRenderedFromLayer];

  return v3;
}

- (id)dc_imageViewRenderedFromViewHierarchy
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  dc_imageRenderedFromViewHierarchy = [self dc_imageRenderedFromViewHierarchy];
  [v3 setImage:dc_imageRenderedFromViewHierarchy];

  return v3;
}

- (void)dc_removeAllConstraintsForSubview:()DC
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  constraints = [self constraints];
  v7 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(constraints);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        firstItem = [v11 firstItem];
        v13 = firstItem;
        if (firstItem == v4)
        {
        }

        else
        {
          secondItem = [v11 secondItem];

          if (secondItem != v4)
          {
            continue;
          }
        }

        [array addObject:v11];
      }

      v8 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [self removeConstraints:array];
}

- (void)dc_addConstraintsToFillSuperview
{
  selfCopy = self;
  [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_View.isa, selfCopy, 0);

  v2 = MEMORY[0x277CCAAD0];
  v3 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v6];
  [v2 activateConstraints:v3];

  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v6];
  [v4 activateConstraints:v5];
}

- (id)dc_renderImage
{
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [self bounds];
  v7 = [v4 initWithSize:defaultFormat format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__UIView_DC__dc_renderImage__block_invoke;
  v10[3] = &unk_278F937F8;
  v10[4] = self;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)dc_renderImageView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  dc_renderImage = [self dc_renderImage];
  [v3 setImage:dc_renderImage];

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
    [v13 animateWithDuration:v11 animations:v14 completion:self];

    [MEMORY[0x277CD9FF0] commit];
  }
}

@end