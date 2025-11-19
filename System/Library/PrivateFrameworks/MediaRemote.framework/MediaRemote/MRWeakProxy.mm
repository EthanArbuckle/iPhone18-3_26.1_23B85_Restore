@interface MRWeakProxy
+ (id)weakProxyWithObject:(id)a3 protocol:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)object;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation MRWeakProxy

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (id)weakProxyWithObject:(id)a3 protocol:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MRWeakProxy);
  [(MRWeakProxy *)v7 setObject:v6];

  [(MRWeakProxy *)v7 setProtocol:v5];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MRWeakProxy *)self object];
  v4 = [v3 hash];
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = MRWeakProxy;
    v4 = [(MRWeakProxy *)&v6 hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MRWeakProxy *)self object];
    v6 = [v4 object];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(MRWeakProxy *)self object];
  if (v5)
  {
    [v4 selector];
    if (objc_opt_respondsToSelector())
    {
      [v4 invokeWithTarget:v5];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MRWeakProxy;
      [(MRWeakProxy *)&v6 forwardInvocation:v4];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(MRWeakProxy *)self object];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 methodSignatureForSelector:a3];
LABEL_6:
    v9 = v7;
    goto LABEL_7;
  }

  MethodDescription = protocol_getMethodDescription(self->_protocol, a3, 1, 1);
  if (!MethodDescription.types || ([MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11.receiver = self;
    v11.super_class = MRWeakProxy;
    v7 = [(MRWeakProxy *)&v11 methodSignatureForSelector:a3];
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

@end