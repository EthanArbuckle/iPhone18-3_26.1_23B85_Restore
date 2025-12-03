@interface JavaLangSystemClassLoader
+ (void)initialize;
- (JavaLangSystemClassLoader)init;
- (id)findClassWithNSString:(id)string;
- (id)findResourceWithNSString:(id)string;
- (id)findResourcesWithNSString:(id)string;
- (id)loadClassWithNSString:(id)string withBoolean:(BOOL)boolean;
@end

@implementation JavaLangSystemClassLoader

- (JavaLangSystemClassLoader)init
{
  v3 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&self->super.packages_, v3);
  JreStrongAssign(&self->super.parent_, 0);
  return self;
}

- (id)findClassWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  return [IOSClass forName:"forName:initialize:classLoader:" initialize:? classLoader:?];
}

- (id)findResourceWithNSString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v3 = [+[NSBundle mainBundle](NSBundle URLForResource:"URLForResource:withExtension:" withExtension:string, 0];
  if (!v3)
  {
    return 0;
  }

  v4 = [[JavaNetURL alloc] initWithNSString:[(NSURL *)v3 description]];

  return v4;
}

- (id)findResourcesWithNSString:(id)string
{
  if (string)
  {
    v4 = objc_alloc_init(JavaUtilArrayList);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = +[NSBundle allBundles];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) URLForResource:string withExtension:0];
          if (v10)
          {
            -[JavaUtilArrayList addWithId:](v4, "addWithId:", -[JavaNetURL initWithNSString:]([JavaNetURL alloc], "initWithNSString:", [v10 description]));
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    return JavaUtilCollections_enumerationWithJavaUtilCollection_(v4);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = JavaLangSystemClassLoader;
    return [(JavaLangClassLoader *)&v16 findResourcesWithNSString:?];
  }
}

- (id)loadClassWithNSString:(id)string withBoolean:(BOOL)boolean
{
  objc_sync_enter(self);
  v6 = [(JavaLangSystemClassLoader *)self findClassWithNSString:string];
  objc_sync_exit(self);
  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaLangSystemClassLoader_init();
    JreStrongAssignAndConsume(&JavaLangSystemClassLoader_loader_, v2);
    atomic_store(1u, &JavaLangSystemClassLoader__initialized);
  }
}

@end