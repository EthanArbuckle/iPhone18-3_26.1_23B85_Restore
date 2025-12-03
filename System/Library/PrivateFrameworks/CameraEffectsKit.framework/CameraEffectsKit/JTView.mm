@interface JTView
- (void)enableDebugMode:(id)mode;
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

- (void)enableDebugMode:(id)mode
{
  v31 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subviews = [modeCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [(JTView *)self enableDebugMode:*(*(&v25 + 1) + 8 * i)];
      }

      v7 = [subviews countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  layer = [modeCopy layer];
  sublayers = [layer sublayers];

  v12 = [sublayers countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v12)
  {

LABEL_20:
    initWithDebugEnabled = [[JTLayer alloc] initWithDebugEnabled];
    [modeCopy bounds];
    [(JTLayer *)initWithDebugEnabled setFrame:?];
    layer2 = [modeCopy layer];
    [layer2 addSublayer:initWithDebugEnabled];

    goto LABEL_21;
  }

  v13 = v12;
  debuggingUIEnabled = 0;
  v15 = *v22;
  do
  {
    for (j = 0; j != v13; ++j)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(sublayers);
      }

      v17 = *(*(&v21 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
        debuggingUIEnabled = [v18 debuggingUIEnabled];
        [modeCopy bounds];
        [v18 setFrame:?];
      }
    }

    v13 = [sublayers countByEnumeratingWithState:&v21 objects:v29 count:16];
  }

  while (v13);

  if ((debuggingUIEnabled & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
}

@end