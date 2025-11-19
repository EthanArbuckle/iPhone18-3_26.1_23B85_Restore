@interface GenericInfo
- (id)init:(id)a3 parameters:(id)a4 returnType:(id)a5 typeParameters:(id)a6;
- (void)dealloc;
@end

@implementation GenericInfo

- (id)init:(id)a3 parameters:(id)a4 returnType:(id)a5 typeParameters:(id)a6
{
  v11.receiver = self;
  v11.super_class = GenericInfo;
  result = [(GenericInfo *)&v11 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
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