@interface UIViewController(FMCoreUI)
- (void)addConstraintsToFillSuperview;
@end

@implementation UIViewController(FMCoreUI)

- (void)addConstraintsToFillSuperview
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [a1 view];
  v3 = [v2 translatesAutoresizingMaskIntoConstraints];

  if ((v3 & 1) == 0)
  {
    v4 = [a1 view];
    v5 = _NSDictionaryOfVariableBindings(&cfstr_View.isa, v4, 0);
    v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v5];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          LODWORD(v8) = 1148829696;
          [v12 setPriority:v8];
          [v12 setIdentifier:@"constraintToFillSuperview.V"];
        }

        v9 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v13 = [a1 view];
    v14 = [v13 superview];
    [v14 addConstraints:v6];

    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v5];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v25 + 1) + 8 * j);
          LODWORD(v18) = 1148829696;
          [v22 setPriority:v18];
          [v22 setIdentifier:@"constraintToFillSuperview.H"];
        }

        v19 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    v23 = [a1 view];
    v24 = [v23 superview];
    [v24 addConstraints:v16];
  }
}

@end