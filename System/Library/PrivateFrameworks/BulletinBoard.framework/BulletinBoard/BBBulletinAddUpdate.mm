@interface BBBulletinAddUpdate
- (BBBulletinAddUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds shouldPlayLightsAndSirens:(BOOL)sirens;
- (BBBulletinAddUpdate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBBulletinAddUpdate

- (BBBulletinAddUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds shouldPlayLightsAndSirens:(BOOL)sirens
{
  v7.receiver = self;
  v7.super_class = BBBulletinAddUpdate;
  result = [(BBBulletinUpdate *)&v7 initWithBulletin:bulletin feeds:feeds];
  if (result)
  {
    result->_shouldPlayLightsAndSirens = sirens;
  }

  return result;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = BBBulletinAddUpdate;
  v3 = [(BBBulletinUpdate *)&v5 hash];
  return v3 ^ [(BBBulletinAddUpdate *)self shouldPlayLightsAndSirens];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      v9.receiver = self;
      v9.super_class = BBBulletinAddUpdate;
      if ([(BBBulletinUpdate *)&v9 isEqual:v5])
      {
        shouldPlayLightsAndSirens = [(BBBulletinAddUpdate *)self shouldPlayLightsAndSirens];
        v7 = shouldPlayLightsAndSirens ^ [(BBBulletinAddUpdate *)v5 shouldPlayLightsAndSirens]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BBBulletinAddUpdate shouldPlayLightsAndSirens](self withName:{"shouldPlayLightsAndSirens"), @"Should Play Lights And Sirens"}];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BBBulletinAddUpdate;
  coderCopy = coder;
  [(BBBulletinUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[BBBulletinAddUpdate shouldPlayLightsAndSirens](self forKey:{"shouldPlayLightsAndSirens", v5.receiver, v5.super_class), @"shouldPlayLightsAndSirens"}];
}

- (BBBulletinAddUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BBBulletinAddUpdate;
  v5 = [(BBBulletinUpdate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldPlayLightsAndSirens = [coderCopy decodeBoolForKey:@"shouldPlayLightsAndSirens"];
  }

  return v5;
}

@end