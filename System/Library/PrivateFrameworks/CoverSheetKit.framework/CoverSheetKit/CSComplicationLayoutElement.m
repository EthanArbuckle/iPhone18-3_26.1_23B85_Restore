@interface CSComplicationLayoutElement
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (CSComplicationLayoutElement)initWithIdentifier:(id)a3 complicationFamily:(unint64_t)a4 size:(CGSize)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)gridWidth;
- (unint64_t)hash;
@end

@implementation CSComplicationLayoutElement

- (CSComplicationLayoutElement)initWithIdentifier:(id)a3 complicationFamily:(unint64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = CSComplicationLayoutElement;
  v11 = [(CSComplicationLayoutElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_complicationFamily = a4;
    v12->_size.width = width;
    v12->_size.height = height;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(CSComplicationLayoutElement *)v4 identifier];
      if ([(NSString *)identifier isEqualToString:v6]&& (complicationFamily = self->_complicationFamily, complicationFamily == [(CSComplicationLayoutElement *)v4 complicationFamily]))
      {
        [(CSComplicationLayoutElement *)v4 size];
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

- (id)copyWithZone:(_NSZone *)a3
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