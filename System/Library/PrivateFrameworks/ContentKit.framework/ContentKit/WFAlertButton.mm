@interface WFAlertButton
+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 preferred:(BOOL)a5 contextAwareHandler:(id)a6;
+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 preferred:(BOOL)a5 handler:(id)a6;
+ (id)cancelButtonWithContextAwareHandler:(id)a3;
+ (id)cancelButtonWithHandler:(id)a3;
+ (id)cancelButtonWithTarget:(id)a3 action:(SEL)a4;
+ (id)okButtonWithContextAwareHandler:(id)a3;
+ (id)okButtonWithHandler:(id)a3;
+ (id)okButtonWithTarget:(id)a3 action:(SEL)a4;
- (WFAlert)alert;
- (WFAlertButton)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5 preferred:(BOOL)a6;
@end

@implementation WFAlertButton

- (WFAlert)alert
{
  WeakRetained = objc_loadWeakRetained(&self->_alert);

  return WeakRetained;
}

- (WFAlertButton)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5 preferred:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = WFAlertButton;
  v12 = [(WFAlertButton *)&v19 init];
  if (v12)
  {
    v13 = [v10 copy];
    title = v12->_title;
    v12->_title = v13;

    v12->_style = a4;
    v15 = [v11 copy];
    handler = v12->_handler;
    v12->_handler = v15;

    v12->_preferred = a6;
    v17 = v12;
  }

  return v12;
}

+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 preferred:(BOOL)a5 handler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__WFAlertButton_buttonWithTitle_style_preferred_handler___block_invoke;
  v14[3] = &unk_2783494B8;
  v15 = v10;
  v11 = v10;
  v12 = [a1 buttonWithTitle:a3 style:a4 preferred:v6 contextAwareHandler:v14];

  return v12;
}

uint64_t __57__WFAlertButton_buttonWithTitle_style_preferred_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__WFAlertButton_buttonWithTitle_style_handler___block_invoke;
  v12[3] = &unk_2783494B8;
  v13 = v8;
  v9 = v8;
  v10 = [a1 buttonWithTitle:a3 style:a4 preferred:0 contextAwareHandler:v12];

  return v10;
}

uint64_t __47__WFAlertButton_buttonWithTitle_style_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 preferred:(BOOL)a5 contextAwareHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [[a1 alloc] initWithTitle:v11 style:a4 handler:v10 preferred:v6];

  return v12;
}

+ (id)okButtonWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = WFLocalizedString(@"OK");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__WFAlertButton_Convenience__okButtonWithTarget_action___block_invoke;
  v11[3] = &unk_2783494E0;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [a1 buttonWithTitle:v7 style:0 handler:v11];

  return v9;
}

+ (id)cancelButtonWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = WFLocalizedString(@"Cancel");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WFAlertButton_Convenience__cancelButtonWithTarget_action___block_invoke;
  v11[3] = &unk_2783494E0;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [a1 buttonWithTitle:v7 style:1 handler:v11];

  return v9;
}

+ (id)okButtonWithHandler:(id)a3
{
  v4 = a3;
  v5 = WFLocalizedString(@"OK");
  v6 = [a1 buttonWithTitle:v5 style:0 handler:v4];

  return v6;
}

+ (id)cancelButtonWithHandler:(id)a3
{
  v4 = a3;
  v5 = WFLocalizedString(@"Cancel");
  v6 = [a1 buttonWithTitle:v5 style:1 handler:v4];

  return v6;
}

+ (id)okButtonWithContextAwareHandler:(id)a3
{
  v4 = a3;
  v5 = WFLocalizedString(@"OK");
  v6 = [a1 buttonWithTitle:v5 style:0 contextAwareHandler:v4];

  return v6;
}

+ (id)cancelButtonWithContextAwareHandler:(id)a3
{
  v4 = a3;
  v5 = WFLocalizedString(@"Cancel");
  v6 = [a1 buttonWithTitle:v5 style:1 contextAwareHandler:v4];

  return v6;
}

@end