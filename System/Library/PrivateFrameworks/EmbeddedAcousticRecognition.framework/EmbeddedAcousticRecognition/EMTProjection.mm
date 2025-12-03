@interface EMTProjection
- (BOOL)isEqual:(id)equal;
- (EMTProjection)initWithIdentifier:(id)identifier range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation EMTProjection

- (EMTProjection)initWithIdentifier:(id)identifier range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = EMTProjection;
  v8 = [(EMTProjection *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EMTProjection alloc];
  identifier = self->_identifier;
  location = self->_range.location;
  length = self->_range.length;

  return [(EMTProjection *)v4 initWithIdentifier:identifier range:location, length];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(EMTProjection *)self identifier];
    identifier2 = [v5 identifier];
    v8 = [identifier isEqualToString:identifier2];

    if (v8)
    {
      location = self->_range.location;
      length = self->_range.length;
      v13 = location == [v5 range] && length == v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(EMTProjection *)self description];
  v3 = [v2 hash];

  return v3;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end