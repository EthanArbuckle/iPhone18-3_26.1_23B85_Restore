@interface JavaUtilConcurrentConcurrentHashMap_ValuesView
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilConcurrentConcurrentHashMap_ValueIterator)iterator;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_ValuesView

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak containsValueWithId:a3];
}

- (BOOL)removeWithId:(id)a3
{
  if (a3)
  {
    v4 = [JavaUtilConcurrentConcurrentHashMap_ValuesView iterator]_0(self);
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    v5 = v4;
    while ([(JavaUtilConcurrentConcurrentHashMap_BaseIterator *)v5 hasNext])
    {
      if ([a3 isEqual:{-[JavaUtilConcurrentConcurrentHashMap_ValueIterator next](v5, "next")}])
      {
        [(JavaUtilConcurrentConcurrentHashMap_BaseIterator *)v5 remove];
        return 1;
      }
    }
  }

  return 0;
}

- (JavaUtilConcurrentConcurrentHashMap_ValueIterator)iterator
{
  Weak = objc_loadWeak((a1 + 8));
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  v2 = Weak;
  v3 = atomic_load(Weak + 3);
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [JavaUtilConcurrentConcurrentHashMap_ValueIterator alloc];
  JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(v5, v3, v4, 0, v4, v2);

  return v5;
}

@end