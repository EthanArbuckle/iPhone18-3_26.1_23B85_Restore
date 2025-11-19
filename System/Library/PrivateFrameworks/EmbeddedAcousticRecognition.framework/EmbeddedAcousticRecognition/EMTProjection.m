@interface EMTProjection
- (BOOL)isEqual:(id)a3;
- (EMTProjection)initWithIdentifier:(id)a3 range:(_NSRange)a4;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation EMTProjection

- (EMTProjection)initWithIdentifier:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = EMTProjection;
  v8 = [(EMTProjection *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EMTProjection alloc];
  identifier = self->_identifier;
  location = self->_range.location;
  length = self->_range.length;

  return [(EMTProjection *)v4 initWithIdentifier:identifier range:location, length];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EMTProjection *)self identifier];
    v7 = [v5 identifier];
    v8 = [v6 isEqualToString:v7];

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