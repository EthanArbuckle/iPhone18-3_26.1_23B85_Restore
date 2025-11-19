@interface SUUIContextActionsConfiguration
- (SUUIContextActionsConfiguration)initWithDialogTemplate:(id)a3;
- (id)_resourceImageForImageElement:(id)a3;
- (id)contextActions;
@end

@implementation SUUIContextActionsConfiguration

- (SUUIContextActionsConfiguration)initWithDialogTemplate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIContextActionsConfiguration;
  v6 = [(SUUIContextActionsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogTemplate, a3);
  }

  return v7;
}

- (id)contextActions
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(SUUIContextActionsConfiguration *)self dialogTemplate];
  v5 = [v4 buttons];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 buttonText];
        v12 = [v11 attributedStringWithDefaultFont:0 foregroundColor:0 style:0];
        v13 = [v12 string];

        v14 = [v10 buttonImage];
        v15 = [(SUUIContextActionsConfiguration *)self _resourceImageForImageElement:v14];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__SUUIContextActionsConfiguration_contextActions__block_invoke;
        v19[3] = &unk_2798F8E00;
        v19[4] = v10;
        v16 = [MEMORY[0x277D75618] actionWithTitle:v13 resource:v15 handler:v19];
        [v3 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];

  return v17;
}

uint64_t __49__SUUIContextActionsConfiguration_contextActions__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  *a3 = 1;
  return result;
}

- (id)_resourceImageForImageElement:(id)a3
{
  v3 = a3;
  v4 = [v3 resourceName];
  v5 = v4;
  if (v4)
  {
    v6 = SUUIImageWithResourceName(v4);
    v7 = [v3 style];
    v8 = [v7 imageMaskColor];

    if (v8)
    {
      v9 = [v8 color];

      if (v9)
      {
        v10 = [v8 color];
        v11 = [v6 _flatImageWithColor:v10];

        v6 = v11;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end