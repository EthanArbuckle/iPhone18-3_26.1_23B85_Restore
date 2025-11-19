@interface BBMenuCommand
- (BBMenuCommand)initWithSelector:(SEL)a3 requireEnabled:(id)a4 handler:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
- (void)invokeHandler;
@end

@implementation BBMenuCommand

- (unint64_t)hash
{
  v2 = NSStringFromSelector([(BBMenuCommand *)self selector]);
  v3 = [v2 hash];

  return v3;
}

- (BBMenuCommand)initWithSelector:(SEL)a3 requireEnabled:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = BBMenuCommand;
  v10 = [(BBMenuCommand *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_selector = a3;
    v12 = [v8 copy];
    requireEnabled = v11->_requireEnabled;
    v11->_requireEnabled = v12;

    v14 = [v9 copy];
    handler = v11->_handler;
    v11->_handler = v14;
  }

  return v11;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v3 = objc_opt_class();

  return [v3 instanceMethodSignatureForSelector:sel_invokeHandler];
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [v5 selector];
  if (v4 != [(BBMenuCommand *)self selector])
  {
    -[BBMenuCommand doesNotRecognizeSelector:](self, "doesNotRecognizeSelector:", [v5 selector]);
  }

  [(BBMenuCommand *)self invokeHandler];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ([(BBMenuCommand *)self selector]== a3)
  {
    return 0;
  }

  v4 = [(BBMenuCommand *)self requireEnabled];
  v5 = v4[2]();

  return v5;
}

- (void)invokeHandler
{
  v2 = [(BBMenuCommand *)self handler];
  v2[2]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 hash];
    v6 = v5 == [(BBMenuCommand *)self hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end