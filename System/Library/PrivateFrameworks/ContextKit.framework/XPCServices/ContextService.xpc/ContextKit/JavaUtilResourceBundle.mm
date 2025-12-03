@interface JavaUtilResourceBundle
+ (id)getLoader;
+ (void)initialize;
- (BOOL)containsKeyWithNSString:(id)string;
- (id)getStringArrayWithNSString:(id)string;
- (id)getStringWithNSString:(id)string;
- (id)handleKeySet;
- (id)keySet;
- (void)dealloc;
@end

@implementation JavaUtilResourceBundle

- (id)getStringWithNSString:(id)string
{
  v3 = sub_10024575C(self, string);
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

- (id)getStringArrayWithNSString:(id)string
{
  v3 = sub_10024575C(self, string);
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

- (BOOL)containsKeyWithNSString:(id)string
{
  if (!string)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"key == null");
    objc_exception_throw(v6);
  }

  keySet = [(JavaUtilResourceBundle *)self keySet];
  if (!keySet)
  {
    JreThrowNullPointerException();
  }

  return [keySet containsWithId:string];
}

- (id)keySet
{
  v3 = new_JavaUtilHashSet_init();
  getKeys = [(JavaUtilResourceBundle *)self getKeys];
  if (!getKeys)
  {
    JreThrowNullPointerException();
  }

  v5 = getKeys;
  if ([getKeys hasMoreElements])
  {
    do
    {
      -[JavaUtilHashSet addWithId:](v3, "addWithId:", [v5 nextElement]);
    }

    while (([v5 hasMoreElements] & 1) != 0);
  }

  return v3;
}

- (id)handleKeySet
{
  keySet = [(JavaUtilResourceBundle *)self keySet];
  v4 = new_JavaUtilHashSet_init();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (!keySet)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [keySet countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(keySet);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(JavaUtilResourceBundle *)self handleGetObjectWithNSString:v10, v12])
        {
          [(JavaUtilHashSet *)v5 addWithId:v10];
        }
      }

      v7 = [keySet countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilResourceBundle;
  [(JavaUtilResourceBundle *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaUtilResourceBundle_MissingBundle alloc];
    v2->super.lastLoadTime_ = 0;
    JreStrongAssignAndConsume(&qword_100555370, v2);
    v3 = [JavaUtilResourceBundle_MissingBundle alloc];
    v3->super.lastLoadTime_ = 0;
    JreStrongAssignAndConsume(&qword_100555378, v3);
    v4 = new_JavaUtilWeakHashMap_init();
    JreStrongAssignAndConsume(&qword_100555380, v4);
    Default = JavaUtilLocale_getDefault();
    JreStrongAssign(&qword_100555388, Default);
    atomic_store(1u, &JavaUtilResourceBundle__initialized);
  }
}

+ (id)getLoader
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  result = [JavaUtilResourceBundle_class_() getClassLoader];
  if (!result)
  {

    return JavaLangClassLoader_getSystemClassLoader();
  }

  return result;
}

@end