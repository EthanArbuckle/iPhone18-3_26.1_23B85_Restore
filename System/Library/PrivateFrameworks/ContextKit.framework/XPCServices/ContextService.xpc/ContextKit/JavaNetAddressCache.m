@interface JavaNetAddressCache
- (JavaNetAddressCache)init;
- (id)getWithNSString:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)putUnknownHostWithNSString:(id)a3 withNSString:(id)a4;
- (void)putWithNSString:(id)a3 withJavaNetInetAddressArray:(id)a4;
@end

@implementation JavaNetAddressCache

- (void)clear
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  [(LibcoreUtilBasicLruCache *)cache evictAll];
}

- (id)getWithNSString:(id)a3
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  result = [(LibcoreUtilBasicLruCache *)cache getWithId:a3];
  if (result)
  {
    v5 = result;
    v6 = *(result + 2);
    if (v6 >= JavaLangSystem_nanoTime())
    {
      return *(v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)putWithNSString:(id)a3 withJavaNetInetAddressArray:(id)a4
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  v7 = [JavaNetAddressCache_AddressCacheEntry alloc];
  JreStrongAssign(&v7->value_, a4);
  v7->expiryNanos_ = JavaLangSystem_nanoTime() + 2000000000;
  v8 = v7;

  [(LibcoreUtilBasicLruCache *)cache putWithId:a3 withId:v8];
}

- (void)putUnknownHostWithNSString:(id)a3 withNSString:(id)a4
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  v7 = [JavaNetAddressCache_AddressCacheEntry alloc];
  JreStrongAssign(&v7->value_, a4);
  v7->expiryNanos_ = JavaLangSystem_nanoTime() + 2000000000;
  v8 = v7;

  [(LibcoreUtilBasicLruCache *)cache putWithId:a3 withId:v8];
}

- (JavaNetAddressCache)init
{
  v3 = new_LibcoreUtilBasicLruCache_initWithInt_(16);
  JreStrongAssignAndConsume(&self->cache_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetAddressCache;
  [(JavaNetAddressCache *)&v3 dealloc];
}

@end