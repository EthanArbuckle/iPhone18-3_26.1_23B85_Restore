@interface MRDServerMessageProxy
+ (id)proxyForObject:(id)a3 protocol:(id)a4;
+ (id)proxyForObjects:(id)a3 protocol:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation MRDServerMessageProxy

+ (id)proxyForObject:(id)a3 protocol:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  v9 = [a1 proxyForObjects:v8 protocol:{v6, v11}];

  return v9;
}

+ (id)proxyForObjects:(id)a3 protocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = +[NSHashTable weakObjectsHashTable];
  [v8 setObjects:v9];

  [v8 setProtocol:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
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
        v16 = [v8 objects];
        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MRDServerMessageProxy *)self objects];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [v4 selector];
        if (objc_opt_respondsToSelector())
        {
          [v4 invokeWithTarget:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
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
    v6 = [(MRDServerMessageProxy *)self protocol];
    types = protocol_getMethodDescription(v6, a3, 0, 1).types;

    if (types || ([(MRDServerMessageProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, a3, 1, 1).types, v8, types))
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