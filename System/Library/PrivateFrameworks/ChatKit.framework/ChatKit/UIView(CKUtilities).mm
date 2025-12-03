@interface UIView(CKUtilities)
- (uint64_t)__ck_containsFirstResponder;
- (uint64_t)__ck_ensureMinimumTouchInsets;
- (void)__ck_makeEdgesEqualTo:()CKUtilities;
- (void)__ck_makeEdgesEqualToHorizontalSafeArea:()CKUtilities;
@end

@implementation UIView(CKUtilities)

- (uint64_t)__ck_containsFirstResponder
{
  v12 = *MEMORY[0x1E69E9840];
  if ([self isFirstResponder])
  {
    return 1;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  subviews = [self subviews];
  v2 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(subviews);
        }

        if ([*(*(&v7 + 1) + 8 * i) __ck_containsFirstResponder])
        {
          v2 = 1;
          goto LABEL_13;
        }
      }

      v2 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

- (void)__ck_makeEdgesEqualToHorizontalSafeArea:()CKUtilities
{
  v21[4] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E696ACD8];
  v4 = a3;
  leadingAnchor = [self leadingAnchor];
  safeAreaLayoutGuide = [v4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v17;
  trailingAnchor = [self trailingAnchor];
  safeAreaLayoutGuide2 = [v4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v7;
  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v10;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v15 activateConstraints:v14];
}

- (void)__ck_makeEdgesEqualTo:()CKUtilities
{
  v19[4] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E696ACD8];
  v4 = a3;
  leftAnchor = [self leftAnchor];
  leftAnchor2 = [v4 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v19[0] = v16;
  rightAnchor = [self rightAnchor];
  rightAnchor2 = [v4 rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v19[1] = v7;
  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[2] = v10;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v15 activateConstraints:v14];
}

- (uint64_t)__ck_ensureMinimumTouchInsets
{
  [self bounds];

  return [self _setTouchInsets:?];
}

@end