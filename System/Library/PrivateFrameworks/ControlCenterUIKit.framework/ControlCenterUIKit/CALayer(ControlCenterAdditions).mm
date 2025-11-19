@interface CALayer(ControlCenterAdditions)
- (void)_ccuiEnumerateSubtreeUsingBlock:()ControlCenterAdditions stop:;
@end

@implementation CALayer(ControlCenterAdditions)

- (void)_ccuiEnumerateSubtreeUsingBlock:()ControlCenterAdditions stop:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      if (*a4)
      {
        goto LABEL_15;
      }

      (*(v6 + 2))(v6, a1, a4);
      if (*a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*(v6 + 2))(v6, a1, 0);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a1 sublayers];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) _ccuiEnumerateSubtreeUsingBlock:v7 stop:a4];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

LABEL_15:
}

@end