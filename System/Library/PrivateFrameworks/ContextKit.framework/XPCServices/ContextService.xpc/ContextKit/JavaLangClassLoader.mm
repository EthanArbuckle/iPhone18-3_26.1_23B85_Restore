@interface JavaLangClassLoader
+ (id)getSystemClassLoader;
- (id)findSystemClassWithNSString:(id)a3;
- (id)getPackageWithNSString:(id)a3;
- (id)getPackages;
- (id)getResourceAsStreamWithNSString:(id)a3;
- (id)getResourceWithNSString:(id)a3;
- (id)getResourcesWithNSString:(id)a3;
- (id)loadClassWithNSString:(id)a3 withBoolean:(BOOL)a4;
- (void)dealloc;
@end

@implementation JavaLangClassLoader

+ (id)getSystemClassLoader
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  return JavaLangSystemClassLoader_loader_;
}

- (id)findSystemClassWithNSString:(id)a3
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v4 = JavaLangSystemClassLoader_loader_;

  return IOSClass_forName_initialize_classLoader_(a3, 0, v4);
}

- (id)getResourceWithNSString:(id)a3
{
  parent = self->parent_;
  if (!parent)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaLangClassLoader *)parent getResourceWithNSString:?];
  if (!result)
  {

    return [(JavaLangClassLoader *)self findResourceWithNSString:a3];
  }

  return result;
}

- (id)getResourcesWithNSString:(id)a3
{
  parent = self->parent_;
  if (!parent)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaLangTwoEnumerationsInOne_initWithJavaUtilEnumeration_withJavaUtilEnumeration_([(JavaLangClassLoader *)parent getResourcesWithNSString:?], [(JavaLangClassLoader *)self findResourcesWithNSString:a3]);

  return v5;
}

- (id)getResourceAsStreamWithNSString:(id)a3
{
  result = [(JavaLangClassLoader *)self getResourceWithNSString:a3];
  if (result)
  {
    return [result openStream];
  }

  return result;
}

- (id)loadClassWithNSString:(id)a3 withBoolean:(BOOL)a4
{
  result = sub_10017F598(a3);
  if (!result)
  {
    parent = self->parent_;
    if (!parent)
    {
      JreThrowNullPointerException();
    }

    result = [(JavaLangClassLoader *)parent loadClassWithNSString:a3 withBoolean:0];
    if (!result)
    {

      return [(JavaLangClassLoader *)self findClassWithNSString:a3];
    }
  }

  return result;
}

- (id)getPackageWithNSString:(id)a3
{
  packages = self->packages_;
  objc_sync_enter(packages);
  v6 = self->packages_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)v6 getWithId:a3];
  objc_sync_exit(packages);
  return v7;
}

- (id)getPackages
{
  packages = self->packages_;
  objc_sync_enter(packages);
  v4 = self->packages_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)v4 values];
  v6 = v5;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v7 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [v5 size], JavaLangPackage_class_());
  [v6 toArrayWithNSObjectArray:v7];
  objc_sync_exit(packages);
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangClassLoader;
  [(JavaLangClassLoader *)&v3 dealloc];
}

@end