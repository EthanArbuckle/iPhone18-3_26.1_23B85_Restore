@interface MSVWeakProxy
+ (id)proxyWithObject:(id)a3 protocol:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)object;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation MSVWeakProxy

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (a3 == a2)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(MSVWeakProxy *)self protocol];
    types = protocol_getMethodDescription(v6, a3, 0, 1).types;

    if (types || ([(MSVWeakProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, a3, 1, 1).types, v8, types))
    {
      v9 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    [v5 selector];
    if (objc_opt_respondsToSelector())
    {
      [v5 invokeWithTarget:WeakRetained];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(v4 + 1);
    v6 = objc_loadWeakRetained(&self->_object);
    v7 = WeakRetained == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v4 = [WeakRetained hash];
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = MSVWeakProxy;
    v4 = [(MSVWeakProxy *)&v6 hash];
  }

  return v4;
}

+ (id)proxyWithObject:(id)a3 protocol:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  objc_storeWeak(v8 + 1, v7);

  v9 = v8[2];
  v8[2] = v6;

  return v8;
}

@end