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
  if ([a1 isFirstResponder])
  {
    return 1;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = [a1 subviews];
  v2 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v7 + 1) + 8 * i) __ck_containsFirstResponder])
        {
          v2 = 1;
          goto LABEL_13;
        }
      }

      v2 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v19 = [a1 leadingAnchor];
  v20 = [v4 safeAreaLayoutGuide];
  v18 = [v20 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v16 = [a1 trailingAnchor];
  v5 = [v4 safeAreaLayoutGuide];
  v6 = [v5 trailingAnchor];
  v7 = [v16 constraintEqualToAnchor:v6];
  v21[1] = v7;
  v8 = [a1 topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v21[2] = v10;
  v11 = [a1 bottomAnchor];
  v12 = [v4 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v15 activateConstraints:v14];
}

- (void)__ck_makeEdgesEqualTo:()CKUtilities
{
  v19[4] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E696ACD8];
  v4 = a3;
  v18 = [a1 leftAnchor];
  v17 = [v4 leftAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [a1 rightAnchor];
  v6 = [v4 rightAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [a1 topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [a1 bottomAnchor];
  v12 = [v4 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v15 activateConstraints:v14];
}

- (uint64_t)__ck_ensureMinimumTouchInsets
{
  [a1 bounds];

  return [a1 _setTouchInsets:?];
}

@end