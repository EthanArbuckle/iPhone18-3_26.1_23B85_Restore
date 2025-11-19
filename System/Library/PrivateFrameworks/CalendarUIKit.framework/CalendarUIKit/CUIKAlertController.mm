@interface CUIKAlertController
+ (id)alertControllerWithTitle:(id)a3 message:(id)a4;
- (CUIKAlertController)initWithTitle:(id)a3 message:(id)a4;
- (NSArray)actions;
- (int64_t)_actionStyleForActionStyle:(int64_t)a3;
- (void)presentFromSource:(id)a3;
@end

@implementation CUIKAlertController

+ (id)alertControllerWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 message:v6];

  return v8;
}

- (CUIKAlertController)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CUIKAlertController;
  v9 = [(CUIKAlertController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_message, a4);
    v11 = objc_opt_new();
    actions = v10->_actions;
    v10->_actions = v11;
  }

  return v10;
}

- (NSArray)actions
{
  v2 = [(NSMutableArray *)self->_actions copy];

  return v2;
}

- (void)presentFromSource:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v19 = v4;
    v6 = MEMORY[0x1E69DC650];
    v7 = [(CUIKAlertController *)self title];
    v8 = [(CUIKAlertController *)self message];
    v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(CUIKAlertController *)self actions];
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = MEMORY[0x1E69DC648];
          v16 = [v14 title];
          v17 = -[CUIKAlertController _actionStyleForActionStyle:](self, "_actionStyleForActionStyle:", [v14 style]);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __41__CUIKAlertController_presentFromSource___block_invoke;
          v21[3] = &unk_1E8399F60;
          v21[4] = v14;
          v18 = [v15 actionWithTitle:v16 style:v17 handler:v21];
          [v9 addAction:v18];
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v5 = v19;
    [v19 presentViewController:v9 animated:1 completion:0];
  }
}

void __41__CUIKAlertController_presentFromSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 32));
}

- (int64_t)_actionStyleForActionStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end