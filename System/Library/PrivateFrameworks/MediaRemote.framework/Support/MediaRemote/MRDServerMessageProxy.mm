@interface MRDServerMessageProxy
+ (id)proxyForObject:(id)object protocol:(id)protocol;
+ (id)proxyForObjects:(id)objects protocol:(id)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MRDServerMessageProxy

+ (id)proxyForObject:(id)object protocol:(id)protocol
{
  objectCopy = object;
  protocolCopy = protocol;
  objectCopy2 = object;
  v8 = [NSArray arrayWithObjects:&objectCopy count:1];

  v9 = [self proxyForObjects:v8 protocol:{protocolCopy, objectCopy}];

  return v9;
}

+ (id)proxyForObjects:(id)objects protocol:(id)protocol
{
  objectsCopy = objects;
  protocolCopy = protocol;
  v8 = [self alloc];
  v9 = +[NSHashTable weakObjectsHashTable];
  [v8 setObjects:v9];

  [v8 setProtocol:protocolCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = objectsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        objects = [v8 objects];
        [objects addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objects = [(MRDServerMessageProxy *)self objects];
  allObjects = [objects allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [invocationCopy selector];
        if (objc_opt_respondsToSelector())
        {
          [invocationCopy invokeWithTarget:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
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
    protocol = [(MRDServerMessageProxy *)self protocol];
    types = protocol_getMethodDescription(protocol, selector, 0, 1).types;

    if (types || ([(MRDServerMessageProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, selector, 1, 1).types, v8, types))
    {
      v9 = [NSMethodSignature signatureWithObjCTypes:types];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end