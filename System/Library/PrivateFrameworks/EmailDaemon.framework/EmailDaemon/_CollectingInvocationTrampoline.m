@interface _CollectingInvocationTrampoline
- (BOOL)respondsToSelector:(SEL)a3;
- (_CollectingInvocationTrampoline)initWithCollection:(id)a3 allMustMatch:(BOOL)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _CollectingInvocationTrampoline

- (_CollectingInvocationTrampoline)initWithCollection:(id)a3 allMustMatch:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = _CollectingInvocationTrampoline;
  v8 = [(_CollectingInvocationTrampoline *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collection, a3);
    v9->_allMustMatch = a4;
    memset(v13, 0, sizeof(v13));
    v10 = v9->_collection;
    if ([(NSFastEnumeration *)v10 countByEnumeratingWithState:v13 objects:v15 count:16])
    {
      objc_storeStrong(&v9->_first, *v13[0].super_class);
    }

    v11 = v9;
  }

  return v9;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = self;
  v7.receiver = self;
  v7.super_class = _CollectingInvocationTrampoline;
  if (![(_CollectingInvocationTrampoline *)&v7 respondsToSelector:?])
  {
    v4 = v4->_first;
  }

  v5 = [(_CollectingInvocationTrampoline *)v4 methodSignatureForSelector:a3];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = _CollectingInvocationTrampoline;
  if ([(_CollectingInvocationTrampoline *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    first = self->_first;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  allMustMatch = self->_allMustMatch;
  v15 = allMustMatch;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_collection;
  v7 = [(NSFastEnumeration *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v4 invokeWithTarget:*(*(&v11 + 1) + 8 * i)];
        v10 = -86;
        [v4 getReturnValue:&v10];
        if (self->_allMustMatch)
        {
          allMustMatch &= v10;
        }

        else
        {
          allMustMatch |= v10;
        }

        v15 = allMustMatch;
      }

      v7 = [(NSFastEnumeration *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  [v4 setReturnValue:&v15];
}

@end