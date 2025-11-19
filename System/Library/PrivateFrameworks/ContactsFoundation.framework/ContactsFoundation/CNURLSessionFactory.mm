@interface CNURLSessionFactory
+ (CNURLSessionFactory)defaultFactory;
@end

@implementation CNURLSessionFactory

+ (CNURLSessionFactory)defaultFactory
{
  if (defaultFactory_cn_once_token_0 != -1)
  {
    +[CNURLSessionFactory defaultFactory];
  }

  v3 = defaultFactory_cn_once_object_0;

  return v3;
}

uint64_t __37__CNURLSessionFactory_defaultFactory__block_invoke()
{
  v0 = objc_alloc_init(CNURLSessionFactory);
  v1 = defaultFactory_cn_once_object_0;
  defaultFactory_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end