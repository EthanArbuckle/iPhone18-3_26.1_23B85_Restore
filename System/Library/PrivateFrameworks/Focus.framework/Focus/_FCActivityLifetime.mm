@interface _FCActivityLifetime
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_FCActivityLifetime)initWithLifetimeDetails:(id)details;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _FCActivityLifetime

- (_FCActivityLifetime)initWithLifetimeDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = _FCActivityLifetime;
  v6 = [(_FCActivityLifetime *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dndLifetimeDetails, details);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dndLifetimeDetails = self->_dndLifetimeDetails;
      v6 = equalCopy->_dndLifetimeDetails;
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
  lifetimeIdentifier = [(_FCActivityLifetime *)self lifetimeIdentifier];
  lifetimeName = [(_FCActivityLifetime *)self lifetimeName];
  lifetimeMetadata = [(_FCActivityLifetime *)self lifetimeMetadata];
  v8 = [v3 stringWithFormat:@"<%@: %p lifetimeIdentifier: %@; lifetimeName: %@; lifetimeMetadata: %@>", v4, self, lifetimeIdentifier, lifetimeName, lifetimeMetadata];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DNDLifetimeDetails *)self->_dndLifetimeDetails copy];
  v6 = [v4 initWithLifetimeDetails:v5];

  return v6;
}

@end