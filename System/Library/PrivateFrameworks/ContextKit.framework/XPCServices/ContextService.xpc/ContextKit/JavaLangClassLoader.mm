@interface JavaLangClassLoader
+ (id)getSystemClassLoader;
- (id)findSystemClassWithNSString:(id)string;
- (id)getPackageWithNSString:(id)string;
- (id)getPackages;
- (id)getResourceAsStreamWithNSString:(id)string;
- (id)getResourceWithNSString:(id)string;
- (id)getResourcesWithNSString:(id)string;
- (id)loadClassWithNSString:(id)string withBoolean:(BOOL)boolean;
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

- (id)findSystemClassWithNSString:(id)string
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v4 = JavaLangSystemClassLoader_loader_;

  return IOSClass_forName_initialize_classLoader_(string, 0, v4);
}

- (id)getResourceWithNSString:(id)string
{
  parent = self->parent_;
  if (!parent)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaLangClassLoader *)parent getResourceWithNSString:?];
  if (!result)
  {

    return [(JavaLangClassLoader *)self findResourceWithNSString:string];
  }

  return result;
}

- (id)getResourcesWithNSString:(id)string
{
  parent = self->parent_;
  if (!parent)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaLangTwoEnumerationsInOne_initWithJavaUtilEnumeration_withJavaUtilEnumeration_([(JavaLangClassLoader *)parent getResourcesWithNSString:?], [(JavaLangClassLoader *)self findResourcesWithNSString:string]);

  return v5;
}

- (id)getResourceAsStreamWithNSString:(id)string
{
  result = [(JavaLangClassLoader *)self getResourceWithNSString:string];
  if (result)
  {
    return [result openStream];
  }

  return result;
}

- (id)loadClassWithNSString:(id)string withBoolean:(BOOL)boolean
{
  result = sub_10017F598(string);
  if (!result)
  {
    parent = self->parent_;
    if (!parent)
    {
      JreThrowNullPointerException();
    }

    result = [(JavaLangClassLoader *)parent loadClassWithNSString:string withBoolean:0];
    if (!result)
    {

      return [(JavaLangClassLoader *)self findClassWithNSString:string];
    }
  }

  return result;
}

- (id)getPackageWithNSString:(id)string
{
  packages = self->packages_;
  objc_sync_enter(packages);
  v6 = self->packages_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)v6 getWithId:string];
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

  values = [(JavaUtilMap *)v4 values];
  v6 = values;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  v7 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [values size], JavaLangPackage_class_());
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