@interface CSComplicationLayoutElement
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CSComplicationLayoutElement)initWithIdentifier:(id)identifier complicationFamily:(unint64_t)family size:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)gridWidth;
- (unint64_t)hash;
@end

@implementation CSComplicationLayoutElement

- (CSComplicationLayoutElement)initWithIdentifier:(id)identifier complicationFamily:(unint64_t)family size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CSComplicationLayoutElement;
  v11 = [(CSComplicationLayoutElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_complicationFamily = family;
    v12->_size.width = width;
    v12->_size.height = height;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(CSComplicationLayoutElement *)equalCopy identifier];
      if ([(NSString *)identifier isEqualToString:identifier]&& (complicationFamily = self->_complicationFamily, complicationFamily == [(CSComplicationLayoutElement *)equalCopy complicationFamily]))
      {
        [(CSComplicationLayoutElement *)equalCopy size];
        v10 = self->_size.height == v9 && self->_size.width == v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_complicationFamily];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size.height * self->_size.width];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (int64_t)gridWidth
{
  if ([(CSComplicationLayoutElement *)self complicationFamily])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSComplicationLayoutElement alloc];
  identifier = self->_identifier;
  complicationFamily = self->_complicationFamily;
  width = self->_size.width;
  height = self->_size.height;

  return [(CSComplicationLayoutElement *)v4 initWithIdentifier:identifier complicationFamily:complicationFamily size:width, height];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end