@interface FCUserVectorModelOutput
- (FCUserVectorModelOutput)initWithUser_vector:(id)user_vector;
- (id)featureValueForName:(id)name;
@end

@implementation FCUserVectorModelOutput

- (FCUserVectorModelOutput)initWithUser_vector:(id)user_vector
{
  user_vectorCopy = user_vector;
  v9.receiver = self;
  v9.super_class = FCUserVectorModelOutput;
  v6 = [(FCUserVectorModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user_vector, user_vector);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"user_vector"])
  {
    v4 = MEMORY[0x1E695FE60];
    user_vector = [(FCUserVectorModelOutput *)self user_vector];
    v6 = [v4 featureValueWithMultiArray:user_vector];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end