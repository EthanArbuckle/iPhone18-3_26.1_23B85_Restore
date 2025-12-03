@interface JavaUtilAbstractQueue
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (id)element;
- (id)remove;
- (void)clear;
@end

@implementation JavaUtilAbstractQueue

- (BOOL)addWithId:(id)id
{
  if (![(JavaUtilAbstractQueue *)self offerWithId:id])
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"Queue full");
    objc_exception_throw(v4);
  }

  return 1;
}

- (id)remove
{
  result = [(JavaUtilAbstractQueue *)self poll];
  if (!result)
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (id)element
{
  result = [(JavaUtilAbstractQueue *)self peek];
  if (!result)
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (void)clear
{
    ;
  }
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  if (!collection)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"c == null");
    goto LABEL_15;
  }

  if (collection == self)
  {
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(@"c == this");
LABEL_15:
    objc_exception_throw(v11);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [collection countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(collection);
        }

        v7 |= [(JavaUtilAbstractQueue *)self addWithId:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [collection countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

@end