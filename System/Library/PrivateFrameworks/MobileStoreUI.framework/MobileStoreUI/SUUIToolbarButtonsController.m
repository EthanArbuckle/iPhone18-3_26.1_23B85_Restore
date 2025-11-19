@interface SUUIToolbarButtonsController
- (SUUIToolbarButtonsController)initWithToolbarViewElement:(id)a3;
- (id)addButtonItemWithButtonViewElement:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_updateButtonItem:(id)a3 withButtonViewElement:(id)a4;
- (void)disconnectAllButtons;
@end

@implementation SUUIToolbarButtonsController

- (SUUIToolbarButtonsController)initWithToolbarViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIToolbarButtonsController;
  v6 = [(SUUIToolbarButtonsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_toolbarElement, a3);
  }

  return v7;
}

- (id)addButtonItemWithButtonViewElement:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__buttonAction_];
  [v5 setTarget:self];
  [(SUUIToolbarButtonsController *)self _updateButtonItem:v5 withButtonViewElement:v4];
  buttonItemElements = self->_buttonItemElements;
  if (!buttonItemElements)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v8 = self->_buttonItemElements;
    self->_buttonItemElements = v7;

    buttonItemElements = self->_buttonItemElements;
  }

  [(NSMapTable *)buttonItemElements setObject:v4 forKey:v5];

  return v5;
}

- (void)disconnectAllButtons
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_buttonItemElements;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setTarget:{0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_buttonItemElements removeAllObjects];
}

- (void)_buttonAction:(id)a3
{
  v3 = [(NSMapTable *)self->_buttonItemElements objectForKey:a3];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_updateButtonItem:(id)a3 withButtonViewElement:(id)a4
{
  v9 = a3;
  v5 = a4;
  [v9 setEnabled:{objc_msgSend(v5, "isEnabled")}];
  [v9 setStyle:{2 * (objc_msgSend(v5, "buttonViewType") == 8)}];
  v6 = [v5 buttonImage];
  if (v6)
  {
    NSLog(&cfstr_ToolbarButtons.isa);
  }

  else
  {
    v7 = [v5 buttonText];
    v8 = [v7 string];
    [v9 setTitle:v8];
  }
}

@end