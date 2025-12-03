@interface FCHLSKey
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCHLSKey

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_method];
  v5 = [v3 stringWithFormat:@"{%@, %@, %@, %@, %@}", v4, self->_url, self->_keyFormat, self->_keyFormatVersions, self->_iv];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (equalCopy)
      {
        if (objc_opt_isKindOfClass())
        {
          v5 = equalCopy;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      if (self)
      {
        url = self->_url;
        if (url && (!v6 ? (v8 = 0) : (v8 = v6->_url), ![(NSURL *)url isEqual:v8]) || (keyFormat = self->_keyFormat) != 0 && (!v6 ? (v10 = 0) : (v10 = v6->_keyFormat), ![(NSString *)keyFormat isEqualToString:v10]) || (iv = self->_iv) != 0 && (!v6 ? (v12 = 0) : (v12 = v6->_iv), ![(NSString *)iv isEqualToString:v12]) || (keyFormatVersions = self->_keyFormatVersions) != 0 && (!v6 ? (v14 = 0) : (v14 = v6->_keyFormatVersions), ![(NSString *)keyFormatVersions isEqualToString:v14]))
        {
          LOBYTE(self) = 0;
        }

        else
        {
          if (v6)
          {
            method = v6->_method;
          }

          else
          {
            method = 0;
          }

          LOBYTE(self) = self->_method == method;
        }
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_url hash];
  v4 = [(NSString *)self->_iv hash]^ v3;
  v5 = [(NSString *)self->_keyFormat hash];
  return v4 ^ v5 ^ [(NSString *)self->_keyFormatVersions hash]^ self->_method;
}

@end