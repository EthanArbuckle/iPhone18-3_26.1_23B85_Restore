@interface PDPlaceholder
- (PDPlaceholder)init;
- (id)description;
@end

@implementation PDPlaceholder

- (PDPlaceholder)init
{
  v3.receiver = self;
  v3.super_class = PDPlaceholder;
  result = [(PDPlaceholder *)&v3 init];
  if (result)
  {
    *&result->mType = xmmword_25D70ED50;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDPlaceholder;
  v2 = [(PDPlaceholder *)&v4 description];

  return v2;
}

@end