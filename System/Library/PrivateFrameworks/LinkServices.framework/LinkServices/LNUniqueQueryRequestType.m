@interface LNUniqueQueryRequestType
+ (id)queryRequest;
- (LNUniqueQueryRequestType)init;
- (LNUniqueQueryRequestType)initWithCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation LNUniqueQueryRequestType

- (unint64_t)hash
{
  v2 = [(LNUniqueQueryRequestType *)self description];
  v3 = [v2 hash];

  return v3;
}

- (LNUniqueQueryRequestType)initWithCoder:(id)a3
{
  v4 = [objc_opt_class() queryRequest];

  return v4;
}

- (LNUniqueQueryRequestType)init
{
  v3.receiver = self;
  v3.super_class = LNUniqueQueryRequestType;
  return [(LNQueryRequestTypeBase *)&v3 _init];
}

+ (id)queryRequest
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__LNUniqueQueryRequestType_queryRequest__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (queryRequest_onceToken != -1)
  {
    dispatch_once(&queryRequest_onceToken, block);
  }

  v2 = queryRequest_instance;

  return v2;
}

uint64_t __40__LNUniqueQueryRequestType_queryRequest__block_invoke(uint64_t a1)
{
  queryRequest_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end