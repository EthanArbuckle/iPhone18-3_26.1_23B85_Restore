@interface OADDrawableDefaults
- (id)addLineDefaults;
- (id)addShapeDefaults;
- (id)addTextDefaults;
- (id)description;
- (void)addDefaults;
@end

@implementation OADDrawableDefaults

- (void)addDefaults
{
  if (!self->mShapeDefaults)
  {
    v3 = [[OADDrawableCategoryDefaults alloc] initWithDefaults];
    mShapeDefaults = self->mShapeDefaults;
    self->mShapeDefaults = v3;
  }

  if (!self->mLineDefaults)
  {
    v5 = [[OADDrawableCategoryDefaults alloc] initWithDefaults];
    mLineDefaults = self->mLineDefaults;
    self->mLineDefaults = v5;
  }

  if (!self->mTextDefaults)
  {
    v7 = [[OADDrawableCategoryDefaults alloc] initWithDefaults];
    mTextDefaults = self->mTextDefaults;
    self->mTextDefaults = v7;
  }
}

- (id)addShapeDefaults
{
  mShapeDefaults = self->mShapeDefaults;
  if (!mShapeDefaults)
  {
    v4 = objc_alloc_init(OADDrawableCategoryDefaults);
    v5 = self->mShapeDefaults;
    self->mShapeDefaults = v4;

    mShapeDefaults = self->mShapeDefaults;
  }

  return mShapeDefaults;
}

- (id)addLineDefaults
{
  mLineDefaults = self->mLineDefaults;
  if (!mLineDefaults)
  {
    v4 = objc_alloc_init(OADDrawableCategoryDefaults);
    v5 = self->mLineDefaults;
    self->mLineDefaults = v4;

    mLineDefaults = self->mLineDefaults;
  }

  return mLineDefaults;
}

- (id)addTextDefaults
{
  mTextDefaults = self->mTextDefaults;
  if (!mTextDefaults)
  {
    v4 = objc_alloc_init(OADDrawableCategoryDefaults);
    v5 = self->mTextDefaults;
    self->mTextDefaults = v4;

    mTextDefaults = self->mTextDefaults;
  }

  return mTextDefaults;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADDrawableDefaults;
  v2 = [(OADDrawableDefaults *)&v4 description];

  return v2;
}

@end