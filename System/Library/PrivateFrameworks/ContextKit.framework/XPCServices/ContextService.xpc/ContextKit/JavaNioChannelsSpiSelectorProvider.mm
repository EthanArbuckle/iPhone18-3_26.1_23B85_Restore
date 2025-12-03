@interface JavaNioChannelsSpiSelectorProvider
+ (id)loadProviderByJar;
+ (void)initialize;
@end

@implementation JavaNioChannelsSpiSelectorProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssign(&qword_1005551A0, 0);
    atomic_store(1u, JavaNioChannelsSpiSelectorProvider__initialized);
  }
}

+ (id)loadProviderByJar
{
  if ((atomic_load_explicit(JavaNioChannelsSpiSelectorProvider__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021C290();
  }

  memset(v3, 0, sizeof(v3));
  v0 = JavaNioChannelsSpiSelectorProvider_class_();
  v1 = JavaUtilServiceLoader_load__WithIOSClass_(v0);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilServiceLoader *)v1 countByEnumeratingWithState:v3 objects:v4 count:16];
  if (result)
  {
    return **(&v3[0] + 1);
  }

  return result;
}

@end