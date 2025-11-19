@interface CLSiloIdleHandler
- (CLSiloIdleHandler)initWithIdleHandler:(id)a3 onResume:(id)a4;
- (void)invalidate;
@end

@implementation CLSiloIdleHandler

- (CLSiloIdleHandler)initWithIdleHandler:(id)a3 onResume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CLSiloIdleHandler;
  v8 = [(CLSiloIdleHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CLSiloIdleHandler *)v8 setOnIdle:v6];
    [(CLSiloIdleHandler *)v9 setOnResume:v7];
  }

  return v9;
}

- (void)invalidate
{
  [(CLSiloIdleHandler *)self setOnIdle:0];

  [(CLSiloIdleHandler *)self setOnResume:0];
}

@end