@interface BBMenuCommand
- (BBMenuCommand)initWithSelector:(SEL)selector requireEnabled:(id)enabled handler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
- (void)invokeHandler;
@end

@implementation BBMenuCommand

- (unint64_t)hash
{
  v2 = NSStringFromSelector([(BBMenuCommand *)self selector]);
  v3 = [v2 hash];

  return v3;
}

- (BBMenuCommand)initWithSelector:(SEL)selector requireEnabled:(id)enabled handler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = BBMenuCommand;
  v10 = [(BBMenuCommand *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_selector = selector;
    v12 = [enabledCopy copy];
    requireEnabled = v11->_requireEnabled;
    v11->_requireEnabled = v12;

    v14 = [handlerCopy copy];
    handler = v11->_handler;
    v11->_handler = v14;
  }

  return v11;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v3 = objc_opt_class();

  return [v3 instanceMethodSignatureForSelector:sel_invokeHandler];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  if (selector != [(BBMenuCommand *)self selector])
  {
    -[BBMenuCommand doesNotRecognizeSelector:](self, "doesNotRecognizeSelector:", [invocationCopy selector]);
  }

  [(BBMenuCommand *)self invokeHandler];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ([(BBMenuCommand *)self selector]== selector)
  {
    return 0;
  }

  requireEnabled = [(BBMenuCommand *)self requireEnabled];
  v5 = requireEnabled[2]();

  return v5;
}

- (void)invokeHandler
{
  handler = [(BBMenuCommand *)self handler];
  handler[2]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy hash];
    v6 = v5 == [(BBMenuCommand *)self hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end