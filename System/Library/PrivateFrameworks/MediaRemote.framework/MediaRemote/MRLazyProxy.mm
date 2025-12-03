@interface MRLazyProxy
+ (id)proxyWithProtocol:(id)protocol objectCallback:(id)callback;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MRLazyProxy

+ (id)proxyWithProtocol:(id)protocol objectCallback:(id)callback
{
  protocolCopy = protocol;
  callbackCopy = callback;
  v8 = [self alloc];
  v9 = MEMORY[0x1A58E3570](callbackCopy);

  v10 = v8[1];
  v8[1] = v9;

  v11 = v8[2];
  v8[2] = protocolCopy;

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objectCallback = [(MRLazyProxy *)self objectCallback];
  v5 = objectCallback[2]();

  if (v5)
  {
    [invocationCopy selector];
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:v5];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (selector == a2)
  {
    v9 = 0;
  }

  else
  {
    protocol = [(MRLazyProxy *)self protocol];
    types = protocol_getMethodDescription(protocol, selector, 0, 1).types;

    if (types || ([(MRLazyProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, selector, 1, 1).types, v8, types))
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