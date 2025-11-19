@interface JTView
- (void)enableDebugMode:(id)a3;
- (void)layoutSubviews;
@end

@implementation JTView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = JTView;
  [(JTView *)&v3 layoutSubviews];
  if ([(JTView *)self debuggingUIEnabled])
  {
    [(JTView *)self enableDebugMode:self];
  }
}

- (void)enableDebugMode:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(JTView *)self enableDebugMode:*(*(&v25 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v4 layer];
  v11 = [v10 sublayers];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v12)
  {

LABEL_20:
    v19 = [[JTLayer alloc] initWithDebugEnabled];
    [v4 bounds];
    [(JTLayer *)v19 setFrame:?];
    v20 = [v4 layer];
    [v20 addSublayer:v19];

    goto LABEL_21;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v22;
  do
  {
    for (j = 0; j != v13; ++j)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
        v14 = [v18 debuggingUIEnabled];
        [v4 bounds];
        [v18 setFrame:?];
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  }

  while (v13);

  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
}

@end