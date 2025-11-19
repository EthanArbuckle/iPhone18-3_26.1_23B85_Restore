@interface MRLazyProxy
+ (id)proxyWithProtocol:(id)a3 objectCallback:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation MRLazyProxy

+ (id)proxyWithProtocol:(id)a3 objectCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = MEMORY[0x1A58E3570](v7);

  v10 = v8[1];
  v8[1] = v9;

  v11 = v8[2];
  v8[2] = v6;

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v6 = a3;
  v4 = [(MRLazyProxy *)self objectCallback];
  v5 = v4[2]();

  if (v5)
  {
    [v6 selector];
    if (objc_opt_respondsToSelector())
    {
      [v6 invokeWithTarget:v5];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (a3 == a2)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(MRLazyProxy *)self protocol];
    types = protocol_getMethodDescription(v6, a3, 0, 1).types;

    if (types || ([(MRLazyProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, a3, 1, 1).types, v8, types))
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

@end