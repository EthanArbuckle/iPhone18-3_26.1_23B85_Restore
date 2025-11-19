@interface DDFlightPreviewAction
- (CGSize)suggestedContentSize;
- (id)expandViewController;
- (id)menuActionClasses;
- (void)setPreviewMode:(BOOL)a3;
@end

@implementation DDFlightPreviewAction

- (id)expandViewController
{
  v3 = [DDFlightAction alloc];
  v4 = [(DDAction *)self url];
  v5 = [(DDAction *)self result];
  v6 = [(DDAction *)self context];
  v7 = [(DDAction *)v3 initWithURL:v4 result:v5 context:v6];
  v8 = [(DDFlightAction *)v7 viewController];

  return v8;
}

- (id)menuActionClasses
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(DDFlightPreviewAction *)self previewActions];
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CBEA60] arrayWithObject:{*(*(&v14 + 1) + 8 * i), v14}];
          [v3 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (CGSize)suggestedContentSize
{
  v2 = 325.0;
  v3 = 325.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreviewMode:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = DDFlightPreviewAction;
  [(DDRemoteAction *)&v8 setPreviewMode:?];
  if (!self->_previewModeSet && !a3)
  {
    self->_previewModeSet = 1;
    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
    v6 = *MEMORY[0x277CBE640];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v5 runMode:v6 beforeDate:v7];

    usleep(0x7530u);
  }
}

@end