@interface PKDiscoverySpacerShelf
- (BOOL)isEqual:(id)equal;
- (PKDiscoverySpacerShelf)initWithCoder:(id)coder;
- (PKDiscoverySpacerShelf)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDiscoverySpacerShelf

- (PKDiscoverySpacerShelf)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKDiscoverySpacerShelf;
  v5 = [(PKDiscoverySpacerShelf *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PKDiscoveryShelf *)v5 setType:3];
    v7 = [dictionaryCopy PKStringForKey:@"type"];
    if ([@"cardSpacerA" isEqualToString:v7])
    {
      v8 = 1;
    }

    else if ([@"cardSpacerB" isEqualToString:v7])
    {
      v8 = 2;
    }

    else if ([@"cardSpacerC" isEqualToString:v7])
    {
      v8 = 3;
    }

    else if ([@"cardSpacerD" isEqualToString:v7])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v6->_spacerType = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PKDiscoverySpacerShelf;
  v5 = [(PKDiscoveryShelf *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_spacerType == equalCopy[4];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PKDiscoverySpacerShelf;
  v3 = [(PKDiscoveryShelf *)&v5 hash];
  return self->_spacerType - v3 + 32 * v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%ld'; ", @"type", self->_spacerType];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKDiscoverySpacerShelf;
  coderCopy = coder;
  [(PKDiscoveryShelf *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_spacerType forKey:{@"type", v5.receiver, v5.super_class}];
}

- (PKDiscoverySpacerShelf)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKDiscoverySpacerShelf;
  v5 = [(PKDiscoveryShelf *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_spacerType = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end