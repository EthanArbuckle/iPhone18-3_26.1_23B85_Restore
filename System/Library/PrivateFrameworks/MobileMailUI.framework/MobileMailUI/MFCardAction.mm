@interface MFCardAction
+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handler:(id)handler;
- (void)executeHandler;
- (void)executeHandlerIfEnabled;
@end

@implementation MFCardAction

+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handler:(id)handler
{
  v7 = [self cardActionWithTitle:title shortTitle:shortTitle imageName:name tintColor:color handlerEnabled:1 handler:handler];

  return v7;
}

- (void)executeHandlerIfEnabled
{
  if ([(MFCardAction *)self handlerEnabled])
  {

    [(MFCardAction *)self executeHandler];
  }
}

- (void)executeHandler
{
  handler = [(MFCardAction *)self handler];
  if (handler)
  {
    handler[2](handler, self);
  }
}

@end