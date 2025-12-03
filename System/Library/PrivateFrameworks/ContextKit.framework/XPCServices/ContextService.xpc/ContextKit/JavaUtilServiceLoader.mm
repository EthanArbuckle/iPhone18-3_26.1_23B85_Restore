@interface JavaUtilServiceLoader
+ (id)load__WithIOSClass:(id)class;
- (NSString)description;
- (id)internalLoad;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilServiceLoader

- (id)internalLoad
{
  v2 = *(self + 24);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  [v2 clear];
  v3 = *(self + 8);
  if (!v3 || ([v3 getName], v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, @"META-INF/services/"), (v12 = *(self + 16)) == 0))
  {
    JreThrowNullPointerException();
  }

  return [*(self + 24) addAllWithJavaUtilCollection:{JavaUtilCollections_listWithJavaUtilEnumeration_(objc_msgSend(v12, "getResourcesWithNSString:", v11))}];
}

- (id)iterator
{
  v3 = [JavaUtilServiceLoader_ServiceIterator alloc];
  sub_1002505D4(v3, self);

  return v3;
}

+ (id)load__WithIOSClass:(id)class
{
  v4 = JavaLangThread_currentThread();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  getContextClassLoader = [(JavaLangThread *)v4 getContextClassLoader];

  return JavaUtilServiceLoader_load__WithIOSClass_withJavaLangClassLoader_(class, getContextClassLoader);
}

- (NSString)description
{
  service = self->service_;
  if (!service)
  {
    JreThrowNullPointerException();
  }

  [(IOSClass *)service getName];
  return JreStrcat("$$", v3, v4, v5, v6, v7, v8, v9, @"ServiceLoader for ");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilServiceLoader;
  [(JavaUtilServiceLoader *)&v3 dealloc];
}

@end