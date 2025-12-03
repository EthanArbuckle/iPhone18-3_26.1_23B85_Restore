@interface LNAllEntitiesQueryRequestType
+ (id)queryRequest;
- (LNAllEntitiesQueryRequestType)init;
- (LNAllEntitiesQueryRequestType)initWithCoder:(id)coder;
- (unint64_t)hash;
@end

@implementation LNAllEntitiesQueryRequestType

- (unint64_t)hash
{
  v2 = [(LNAllEntitiesQueryRequestType *)self description];
  v3 = [v2 hash];

  return v3;
}

- (LNAllEntitiesQueryRequestType)initWithCoder:(id)coder
{
  queryRequest = [objc_opt_class() queryRequest];

  return queryRequest;
}

- (LNAllEntitiesQueryRequestType)init
{
  v3.receiver = self;
  v3.super_class = LNAllEntitiesQueryRequestType;
  return [(LNQueryRequestTypeBase *)&v3 _init];
}

+ (id)queryRequest
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__LNAllEntitiesQueryRequestType_queryRequest__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (queryRequest_onceToken_206[0] != -1)
  {
    dispatch_once(queryRequest_onceToken_206, block);
  }

  v2 = queryRequest_instance_205;

  return v2;
}

uint64_t __45__LNAllEntitiesQueryRequestType_queryRequest__block_invoke(uint64_t a1)
{
  queryRequest_instance_205 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end