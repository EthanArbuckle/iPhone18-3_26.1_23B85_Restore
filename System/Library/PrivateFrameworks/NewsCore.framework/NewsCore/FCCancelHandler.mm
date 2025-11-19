@interface FCCancelHandler
+ (id)cancelHandlerWithBlock:(id)a3;
+ (id)cancelHandlerWithStrongTarget:(id)a3 selector:(SEL)a4;
+ (id)cancelHandlerWithWeakTarget:(id)a3 selector:(SEL)a4;
- (FCCancelHandler)initWithBlock:(id)a3;
- (FCCancelHandler)initWithStrongTarget:(id)a3 selector:(SEL)a4;
- (FCCancelHandler)initWithWeakTarget:(id)a3 selector:(SEL)a4;
- (SEL)selector;
- (id)weakTarget;
- (void)cancel;
- (void)setSelector:(SEL)a3;
@end

@implementation FCCancelHandler

+ (id)cancelHandlerWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

+ (id)cancelHandlerWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithWeakTarget:v6 selector:a4];

  return v7;
}

+ (id)cancelHandlerWithStrongTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithStrongTarget:v6 selector:a4];

  return v7;
}

- (FCCancelHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCCancelHandler;
  v5 = [(FCCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cancelBlock = v5->_cancelBlock;
    v5->_cancelBlock = v6;
  }

  return v5;
}

- (FCCancelHandler)initWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FCCancelHandler;
  v7 = [(FCCancelHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakTarget, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_selector = v9;
  }

  return v8;
}

- (FCCancelHandler)initWithStrongTarget:(id)a3 selector:(SEL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = FCCancelHandler;
  v8 = [(FCCancelHandler *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strongTarget, a3);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_selector = v10;
  }

  return v9;
}

- (void)cancel
{
  v3 = [(FCCancelHandler *)self cancelBlock];

  if (v3)
  {
    v4 = [(FCCancelHandler *)self cancelBlock];

    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = [(FCCancelHandler *)self cancelBlock];
    v5[2]();
  }

  else
  {
    if (![(FCCancelHandler *)self selector])
    {
      goto LABEL_11;
    }

    v6 = [(FCCancelHandler *)self strongTarget];
    if (v6)
    {
      [(FCCancelHandler *)self strongTarget];
    }

    else
    {
      [(FCCancelHandler *)self weakTarget];
    }
    v5 = ;

    if (v5)
    {
      ([v5 methodForSelector:{-[FCCancelHandler selector](self, "selector")}])(v5, -[FCCancelHandler selector](self, "selector"));
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

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end