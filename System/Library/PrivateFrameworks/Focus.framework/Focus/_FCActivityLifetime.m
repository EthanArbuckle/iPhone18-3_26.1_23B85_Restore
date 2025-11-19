@interface _FCActivityLifetime
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_FCActivityLifetime)initWithLifetimeDetails:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _FCActivityLifetime

- (_FCActivityLifetime)initWithLifetimeDetails:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _FCActivityLifetime;
  v6 = [(_FCActivityLifetime *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dndLifetimeDetails, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dndLifetimeDetails = self->_dndLifetimeDetails;
      v6 = v4->_dndLifetimeDetails;
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_FCActivityLifetime *)self lifetimeIdentifier];
  v6 = [(_FCActivityLifetime *)self lifetimeName];
  v7 = [(_FCActivityLifetime *)self lifetimeMetadata];
  v8 = [v3 stringWithFormat:@"<%@: %p lifetimeIdentifier: %@; lifetimeName: %@; lifetimeMetadata: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DNDLifetimeDetails *)self->_dndLifetimeDetails copy];
  v6 = [v4 initWithLifetimeDetails:v5];

  return v6;
}

@end