@interface CUIKAlertController
+ (id)alertControllerWithTitle:(id)title message:(id)message;
- (CUIKAlertController)initWithTitle:(id)title message:(id)message;
- (NSArray)actions;
- (int64_t)_actionStyleForActionStyle:(int64_t)style;
- (void)presentFromSource:(id)source;
@end

@implementation CUIKAlertController

+ (id)alertControllerWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy message:messageCopy];

  return v8;
}

- (CUIKAlertController)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = CUIKAlertController;
  v9 = [(CUIKAlertController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_message, message);
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

- (void)presentFromSource:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    v19 = sourceCopy;
    v6 = MEMORY[0x1E69DC650];
    title = [(CUIKAlertController *)self title];
    message = [(CUIKAlertController *)self message];
    v9 = [v6 alertControllerWithTitle:title message:message preferredStyle:1];

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
          title2 = [v14 title];
          v17 = -[CUIKAlertController _actionStyleForActionStyle:](self, "_actionStyleForActionStyle:", [v14 style]);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __41__CUIKAlertController_presentFromSource___block_invoke;
          v21[3] = &unk_1E8399F60;
          v21[4] = v14;
          v18 = [v15 actionWithTitle:title2 style:v17 handler:v21];
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

- (int64_t)_actionStyleForActionStyle:(int64_t)style
{
  if (style == 2)
  {
    return 2;
  }

  else
  {
    return style == 1;
  }
}

@end