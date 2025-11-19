@interface UIView(HUAdditions)
+ (void)hu_enableAnimations:()HUAdditions forBlock:;
- (BOOL)hu_isHomeAffordancePresent;
- (__CFString)hu_contentModeString;
- (uint64_t)hu_autoSizeByConstrainingWidth:()HUAdditions;
- (uint64_t)hu_isDescendantOfPickerView;
- (uint64_t)hu_setFramePreservingTransform:()HUAdditions;
- (void)hu_traverseViewHierarchy:()HUAdditions;
@end

@implementation UIView(HUAdditions)

- (uint64_t)hu_setFramePreservingTransform:()HUAdditions
{
  [a1 setBounds:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);

  return [a1 setCenter:{MidX, MidY}];
}

- (void)hu_traverseViewHierarchy:()HUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 subviews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v4[2](v4, v10);
        [v10 hu_traverseViewHierarchy:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (uint64_t)hu_autoSizeByConstrainingWidth:()HUAdditions
{
  LODWORD(a4) = 1148846080;
  LODWORD(a5) = 1112014848;
  [a1 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:*(MEMORY[0x277D76C70] + 8) verticalFittingPriority:{a4, a5}];
  [a1 frame];
  v7 = v6;
  [a1 frame];

  return [a1 setFrame:v7];
}

+ (void)hu_enableAnimations:()HUAdditions forBlock:
{
  v6 = a4;
  v5 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  if (v5)
  {
    [MEMORY[0x277D75D18] setAnimationsEnabled:a3];
  }

  v6[2]();
  [MEMORY[0x277D75D18] setAnimationsEnabled:v5];
}

- (BOOL)hu_isHomeAffordancePresent
{
  v1 = [a1 window];
  [v1 safeAreaInsets];
  v3 = v2 > 0.0;

  return v3;
}

- (uint64_t)hu_isDescendantOfPickerView
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (__CFString)hu_contentModeString
{
  v1 = [a1 contentMode];
  if ((v1 - 1) > 0xB)
  {
    return @"ScaleToFill";
  }

  else
  {
    return off_27977D5A0[v1 - 1];
  }
}

@end