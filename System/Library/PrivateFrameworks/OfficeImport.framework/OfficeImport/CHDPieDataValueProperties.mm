@interface CHDPieDataValueProperties
- (CHDPieDataValueProperties)init;
- (id)shallowCopyWithIndex:(unint64_t)a3;
@end

@implementation CHDPieDataValueProperties

- (CHDPieDataValueProperties)init
{
  v3.receiver = self;
  v3.super_class = CHDPieDataValueProperties;
  result = [(CHDDataValueProperties *)&v3 init];
  if (result)
  {
    result->mExplosion = 0;
    result->mIsExplosionSet = 0;
  }

  return result;
}

- (id)shallowCopyWithIndex:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CHDPieDataValueProperties;
  v4 = [(CHDDataValueProperties *)&v7 shallowCopyWithIndex:a3];
  v5 = v4;
  if (self->mIsExplosionSet)
  {
    [v4 setExplosion:self->mExplosion];
  }

  return v5;
}

@end