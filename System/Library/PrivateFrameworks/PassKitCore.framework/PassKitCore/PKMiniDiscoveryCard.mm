@interface PKMiniDiscoveryCard
- (BOOL)isEqual:(id)equal;
- (PKMiniDiscoveryCard)initWithCoder:(id)coder;
- (PKMiniDiscoveryCard)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKMiniDiscoveryCard

- (PKMiniDiscoveryCard)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PKMiniDiscoveryCard;
  v5 = [(PKDiscoveryCard *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"miniCardTemplateType"];
    v5->_miniCardTemplateType = PKDiscoveryMiniCardTemplateTypeFromString(v6);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PKMiniDiscoveryCard;
  v5 = [(PKDiscoveryCard *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_miniCardTemplateType == equalCopy[14];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PKMiniDiscoveryCard;
  v3 = [(PKDiscoveryCard *)&v5 hash];
  return self->_miniCardTemplateType - v3 + 32 * v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v7.receiver = self;
  v7.super_class = PKMiniDiscoveryCard;
  v4 = [(PKDiscoveryCard *)&v7 description];
  [v3 appendFormat:@" %@ ", v4];

  [v3 appendFormat:@"%@: '%ld'; ", @"miniCardTemplateType", self->_miniCardTemplateType];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKMiniDiscoveryCard;
  coderCopy = coder;
  [(PKDiscoveryCard *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_miniCardTemplateType forKey:{@"miniCardTemplateType", v5.receiver, v5.super_class}];
}

- (PKMiniDiscoveryCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKMiniDiscoveryCard;
  v5 = [(PKDiscoveryCard *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_miniCardTemplateType = [coderCopy decodeIntegerForKey:@"miniCardTemplateType"];
  }

  return v5;
}

@end