@interface WFAlertButton
+ (id)buttonWithTitle:(id)title style:(int64_t)style handler:(id)handler;
+ (id)buttonWithTitle:(id)title style:(int64_t)style preferred:(BOOL)preferred contextAwareHandler:(id)handler;
+ (id)buttonWithTitle:(id)title style:(int64_t)style preferred:(BOOL)preferred handler:(id)handler;
+ (id)cancelButtonWithContextAwareHandler:(id)handler;
+ (id)cancelButtonWithHandler:(id)handler;
+ (id)cancelButtonWithTarget:(id)target action:(SEL)action;
+ (id)okButtonWithContextAwareHandler:(id)handler;
+ (id)okButtonWithHandler:(id)handler;
+ (id)okButtonWithTarget:(id)target action:(SEL)action;
- (WFAlert)alert;
- (WFAlertButton)initWithTitle:(id)title style:(int64_t)style handler:(id)handler preferred:(BOOL)preferred;
@end

@implementation WFAlertButton

- (WFAlert)alert
{
  WeakRetained = objc_loadWeakRetained(&self->_alert);

  return WeakRetained;
}

- (WFAlertButton)initWithTitle:(id)title style:(int64_t)style handler:(id)handler preferred:(BOOL)preferred
{
  titleCopy = title;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = WFAlertButton;
  v12 = [(WFAlertButton *)&v19 init];
  if (v12)
  {
    v13 = [titleCopy copy];
    title = v12->_title;
    v12->_title = v13;

    v12->_style = style;
    v15 = [handlerCopy copy];
    handler = v12->_handler;
    v12->_handler = v15;

    v12->_preferred = preferred;
    v17 = v12;
  }

  return v12;
}

+ (id)buttonWithTitle:(id)title style:(int64_t)style preferred:(BOOL)preferred handler:(id)handler
{
  preferredCopy = preferred;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__WFAlertButton_buttonWithTitle_style_preferred_handler___block_invoke;
  v14[3] = &unk_2783494B8;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = [self buttonWithTitle:title style:style preferred:preferredCopy contextAwareHandler:v14];

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

+ (id)buttonWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__WFAlertButton_buttonWithTitle_style_handler___block_invoke;
  v12[3] = &unk_2783494B8;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [self buttonWithTitle:title style:style preferred:0 contextAwareHandler:v12];

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

+ (id)buttonWithTitle:(id)title style:(int64_t)style preferred:(BOOL)preferred contextAwareHandler:(id)handler
{
  preferredCopy = preferred;
  handlerCopy = handler;
  titleCopy = title;
  v12 = [[self alloc] initWithTitle:titleCopy style:style handler:handlerCopy preferred:preferredCopy];

  return v12;
}

+ (id)okButtonWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = WFLocalizedString(@"OK");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__WFAlertButton_Convenience__okButtonWithTarget_action___block_invoke;
  v11[3] = &unk_2783494E0;
  v12 = targetCopy;
  actionCopy = action;
  v8 = targetCopy;
  v9 = [self buttonWithTitle:v7 style:0 handler:v11];

  return v9;
}

+ (id)cancelButtonWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = WFLocalizedString(@"Cancel");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WFAlertButton_Convenience__cancelButtonWithTarget_action___block_invoke;
  v11[3] = &unk_2783494E0;
  v12 = targetCopy;
  actionCopy = action;
  v8 = targetCopy;
  v9 = [self buttonWithTitle:v7 style:1 handler:v11];

  return v9;
}

+ (id)okButtonWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WFLocalizedString(@"OK");
  v6 = [self buttonWithTitle:v5 style:0 handler:handlerCopy];

  return v6;
}

+ (id)cancelButtonWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WFLocalizedString(@"Cancel");
  v6 = [self buttonWithTitle:v5 style:1 handler:handlerCopy];

  return v6;
}

+ (id)okButtonWithContextAwareHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WFLocalizedString(@"OK");
  v6 = [self buttonWithTitle:v5 style:0 contextAwareHandler:handlerCopy];

  return v6;
}

+ (id)cancelButtonWithContextAwareHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WFLocalizedString(@"Cancel");
  v6 = [self buttonWithTitle:v5 style:1 contextAwareHandler:handlerCopy];

  return v6;
}

@end