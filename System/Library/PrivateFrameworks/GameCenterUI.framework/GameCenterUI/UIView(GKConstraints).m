@interface UIView(GKConstraints)
- (void)_gkRemoveAllConstraints;
@end

@implementation UIView(GKConstraints)

- (void)_gkRemoveAllConstraints
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 superview];
  if (v2)
  {
    v3 = v2;
    do
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = [v3 constraints];
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v5)
      {
        goto LABEL_15;
      }

      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 firstItem];
          v11 = v10;
          if (v10 == a1)
          {
          }

          else
          {
            v12 = [v9 secondItem];

            if (v12 != a1)
            {
              continue;
            }
          }

          [v3 removeConstraint:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
LABEL_15:

      v13 = [v3 superview];

      v3 = v13;
    }

    while (v13);
  }

  v14 = [a1 constraints];
  [a1 removeConstraints:v14];
}

@end