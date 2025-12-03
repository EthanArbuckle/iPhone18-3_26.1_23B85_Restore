@interface DDFlightPreviewAction
- (CGSize)suggestedContentSize;
- (id)expandViewController;
- (id)menuActionClasses;
- (void)setPreviewMode:(BOOL)mode;
@end

@implementation DDFlightPreviewAction

- (id)expandViewController
{
  v3 = [DDFlightAction alloc];
  v4 = [(DDAction *)self url];
  result = [(DDAction *)self result];
  context = [(DDAction *)self context];
  v7 = [(DDAction *)v3 initWithURL:v4 result:result context:context];
  viewController = [(DDFlightAction *)v7 viewController];

  return viewController;
}

- (id)menuActionClasses
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  previewActions = [(DDFlightPreviewAction *)self previewActions];
  if ([previewActions count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = previewActions;
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
          [array addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = array;
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

- (void)setPreviewMode:(BOOL)mode
{
  v8.receiver = self;
  v8.super_class = DDFlightPreviewAction;
  [(DDRemoteAction *)&v8 setPreviewMode:?];
  if (!self->_previewModeSet && !mode)
  {
    self->_previewModeSet = 1;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v6 = *MEMORY[0x277CBE640];
    date = [MEMORY[0x277CBEAA8] date];
    [currentRunLoop runMode:v6 beforeDate:date];

    usleep(0x7530u);
  }
}

@end