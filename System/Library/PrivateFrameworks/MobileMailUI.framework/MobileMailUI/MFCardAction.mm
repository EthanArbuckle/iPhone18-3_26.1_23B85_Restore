@interface MFCardAction
+ (id)cardActionWithTitle:(id)a3 shortTitle:(id)a4 imageName:(id)a5 tintColor:(id)a6 handler:(id)a7;
- (void)executeHandler;
- (void)executeHandlerIfEnabled;
@end

@implementation MFCardAction

+ (id)cardActionWithTitle:(id)a3 shortTitle:(id)a4 imageName:(id)a5 tintColor:(id)a6 handler:(id)a7
{
  v7 = [a1 cardActionWithTitle:a3 shortTitle:a4 imageName:a5 tintColor:a6 handlerEnabled:1 handler:a7];

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
  v3 = [(MFCardAction *)self handler];
  if (v3)
  {
    v3[2](v3, self);
  }
}

@end