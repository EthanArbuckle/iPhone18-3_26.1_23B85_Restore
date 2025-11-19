@interface EDNamedStyle
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setName:(id)a3;
@end

@implementation EDNamedStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = EDNamedStyle;
  v5 = [(EDStyle *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->mName copyWithZone:a3];
    v7 = v5[12];
    v5[12] = v6;

    v8 = v5;
  }

  return v5;
}

- (void)setName:(id)a3
{
  v5 = a3;
  if (self->mName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mName, a3);
    v5 = v6;
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