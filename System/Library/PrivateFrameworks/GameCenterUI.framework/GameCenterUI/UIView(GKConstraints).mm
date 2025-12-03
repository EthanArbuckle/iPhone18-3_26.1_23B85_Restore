@interface UIView(GKConstraints)
- (void)_gkRemoveAllConstraints;
@end

@implementation UIView(GKConstraints)

- (void)_gkRemoveAllConstraints
{
  v20 = *MEMORY[0x277D85DE8];
  superview = [self superview];
  if (superview)
  {
    v3 = superview;
    do
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      constraints = [v3 constraints];
      v5 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(constraints);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          firstItem = [v9 firstItem];
          v11 = firstItem;
          if (firstItem == self)
          {
          }

          else
          {
            secondItem = [v9 secondItem];

            if (secondItem != self)
            {
              continue;
            }
          }

          [v3 removeConstraint:v9];
        }

        v6 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
LABEL_15:

      superview2 = [v3 superview];

      v3 = superview2;
    }

    while (superview2);
  }

  constraints2 = [self constraints];
  [self removeConstraints:constraints2];
}

@end