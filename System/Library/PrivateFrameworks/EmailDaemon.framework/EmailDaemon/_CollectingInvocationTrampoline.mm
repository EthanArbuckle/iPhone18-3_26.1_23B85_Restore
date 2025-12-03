@interface _CollectingInvocationTrampoline
- (BOOL)respondsToSelector:(SEL)selector;
- (_CollectingInvocationTrampoline)initWithCollection:(id)collection allMustMatch:(BOOL)match;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _CollectingInvocationTrampoline

- (_CollectingInvocationTrampoline)initWithCollection:(id)collection allMustMatch:(BOOL)match
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = _CollectingInvocationTrampoline;
  v8 = [(_CollectingInvocationTrampoline *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collection, collection);
    v9->_allMustMatch = match;
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

- (id)methodSignatureForSelector:(SEL)selector
{
  selfCopy = self;
  v7.receiver = self;
  v7.super_class = _CollectingInvocationTrampoline;
  if (![(_CollectingInvocationTrampoline *)&v7 respondsToSelector:?])
  {
    selfCopy = selfCopy->_first;
  }

  v5 = [(_CollectingInvocationTrampoline *)selfCopy methodSignatureForSelector:selector];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
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

        [invocationCopy invokeWithTarget:*(*(&v11 + 1) + 8 * i)];
        v10 = -86;
        [invocationCopy getReturnValue:&v10];
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

  [invocationCopy setReturnValue:&v15];
}

@end