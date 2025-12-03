@interface EDTableStyle
+ (id)tableStyle;
- (EDTableStyle)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setName:(id)name;
@end

@implementation EDTableStyle

+ (id)tableStyle
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDTableStyle)init
{
  v6.receiver = self;
  v6.super_class = EDTableStyle;
  v2 = [(EDTableStyle *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(EDKeyedCollection);
    mTableStyleElements = v2->mTableStyleElements;
    v2->mTableStyleElements = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSString *)self->mName copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(EDKeyedCollection *)self->mTableStyleElements copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = v4;
  }

  return v4;
}

- (void)setName:(id)name
{
  nameCopy = name;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mName, name);
    nameCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTableStyle;
  v2 = [(EDTableStyle *)&v4 description];

  return v2;
}

@end