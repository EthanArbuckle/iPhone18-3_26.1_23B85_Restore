@interface FCCancelHandler
+ (id)cancelHandlerWithBlock:(id)block;
+ (id)cancelHandlerWithStrongTarget:(id)target selector:(SEL)selector;
+ (id)cancelHandlerWithWeakTarget:(id)target selector:(SEL)selector;
- (FCCancelHandler)initWithBlock:(id)block;
- (FCCancelHandler)initWithStrongTarget:(id)target selector:(SEL)selector;
- (FCCancelHandler)initWithWeakTarget:(id)target selector:(SEL)selector;
- (SEL)selector;
- (id)weakTarget;
- (void)cancel;
- (void)setSelector:(SEL)selector;
@end

@implementation FCCancelHandler

+ (id)cancelHandlerWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

+ (id)cancelHandlerWithWeakTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = [[self alloc] initWithWeakTarget:targetCopy selector:selector];

  return v7;
}

+ (id)cancelHandlerWithStrongTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = [[self alloc] initWithStrongTarget:targetCopy selector:selector];

  return v7;
}

- (FCCancelHandler)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = FCCancelHandler;
  v5 = [(FCCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    cancelBlock = v5->_cancelBlock;
    v5->_cancelBlock = v6;
  }

  return v5;
}

- (FCCancelHandler)initWithWeakTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = FCCancelHandler;
  v7 = [(FCCancelHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakTarget, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

- (FCCancelHandler)initWithStrongTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = FCCancelHandler;
  v8 = [(FCCancelHandler *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strongTarget, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v9->_selector = selectorCopy;
  }

  return v9;
}

- (void)cancel
{
  cancelBlock = [(FCCancelHandler *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(FCCancelHandler *)self cancelBlock];

    if (!cancelBlock2)
    {
      goto LABEL_11;
    }

    cancelBlock3 = [(FCCancelHandler *)self cancelBlock];
    cancelBlock3[2]();
  }

  else
  {
    if (![(FCCancelHandler *)self selector])
    {
      goto LABEL_11;
    }

    strongTarget = [(FCCancelHandler *)self strongTarget];
    if (strongTarget)
    {
      [(FCCancelHandler *)self strongTarget];
    }

    else
    {
      [(FCCancelHandler *)self weakTarget];
    }
    cancelBlock3 = ;

    if (cancelBlock3)
    {
      ([cancelBlock3 methodForSelector:{-[FCCancelHandler selector](self, "selector")}])(cancelBlock3, -[FCCancelHandler selector](self, "selector"));
    }
  }

LABEL_11:
  [(FCCancelHandler *)self setCancelBlock:0];
  [(FCCancelHandler *)self setWeakTarget:0];

  [(FCCancelHandler *)self setStrongTarget:0];
}

- (id)weakTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_weakTarget);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end