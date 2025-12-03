@interface GenericInfo
- (id)init:(id)init parameters:(id)parameters returnType:(id)type typeParameters:(id)typeParameters;
- (void)dealloc;
@end

@implementation GenericInfo

- (id)init:(id)init parameters:(id)parameters returnType:(id)type typeParameters:(id)typeParameters
{
  v11.receiver = self;
  v11.super_class = GenericInfo;
  result = [(GenericInfo *)&v11 init];
  if (result)
  {
    *(result + 1) = init;
    *(result + 2) = parameters;
    *(result + 3) = type;
    *(result + 4) = typeParameters;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GenericInfo;
  [(GenericInfo *)&v3 dealloc];
}

@end