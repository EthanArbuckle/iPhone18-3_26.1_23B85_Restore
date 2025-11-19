@interface FCUserVectorModelOutput
- (FCUserVectorModelOutput)initWithUser_vector:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation FCUserVectorModelOutput

- (FCUserVectorModelOutput)initWithUser_vector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCUserVectorModelOutput;
  v6 = [(FCUserVectorModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user_vector, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"user_vector"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(FCUserVectorModelOutput *)self user_vector];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end