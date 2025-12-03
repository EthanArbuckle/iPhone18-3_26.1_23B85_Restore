@interface CLSiloIdleHandler
- (CLSiloIdleHandler)initWithIdleHandler:(id)handler onResume:(id)resume;
- (void)invalidate;
@end

@implementation CLSiloIdleHandler

- (CLSiloIdleHandler)initWithIdleHandler:(id)handler onResume:(id)resume
{
  handlerCopy = handler;
  resumeCopy = resume;
  v11.receiver = self;
  v11.super_class = CLSiloIdleHandler;
  v8 = [(CLSiloIdleHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CLSiloIdleHandler *)v8 setOnIdle:handlerCopy];
    [(CLSiloIdleHandler *)v9 setOnResume:resumeCopy];
  }

  return v9;
}

- (void)invalidate
{
  [(CLSiloIdleHandler *)self setOnIdle:0];

  [(CLSiloIdleHandler *)self setOnResume:0];
}

@end