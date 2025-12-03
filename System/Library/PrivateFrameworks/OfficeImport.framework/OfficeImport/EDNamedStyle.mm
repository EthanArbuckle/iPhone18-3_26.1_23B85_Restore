@interface EDNamedStyle
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setName:(id)name;
@end

@implementation EDNamedStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = EDNamedStyle;
  v5 = [(EDStyle *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->mName copyWithZone:zone];
    v7 = v5[12];
    v5[12] = v6;

    v8 = v5;
  }

  return v5;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->mName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->mName, name);
    nameCopy = v6;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDNamedStyle;
  v2 = [(EDStyle *)&v4 description];

  return v2;
}

@end