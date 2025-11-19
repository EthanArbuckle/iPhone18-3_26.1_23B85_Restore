@interface MMCSRequestorContext
- (MMCSEngine)engine;
- (MMCSRequestorContext)initWithEngine:(id)a3 type:(int)a4;
- (void)dealloc;
@end

@implementation MMCSRequestorContext

- (MMCSEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)dealloc
{
  free(self->_itemIDs);
  free(self->_itemFlags);
  free(self->_signatures);
  if (self->_count)
  {
    v3 = 0;
    do
    {
      free(self->_authTokens[v3++]);
    }

    while (v3 < self->_count);
  }

  free(self->_authTokens);
  v4.receiver = self;
  v4.super_class = MMCSRequestorContext;
  [(MMCSRequestorContext *)&v4 dealloc];
}

- (MMCSRequestorContext)initWithEngine:(id)a3 type:(int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MMCSRequestorContext;
  v7 = [(MMCSRequestorContext *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_engine, v6);
    v8->_type = a4;
  }

  return v8;
}

@end