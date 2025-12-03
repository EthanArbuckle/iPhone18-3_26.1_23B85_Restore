@interface BLHLSKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHLSKey:(id)key;
- (id)description;
- (unint64_t)hash;
- (void)setPropertiesFromAttributeList:(id)list;
@end

@implementation BLHLSKey

- (void)setPropertiesFromAttributeList:(id)list
{
  listCopy = list;
  v15 = [listCopy objectForKeyedSubscript:@"METHOD"];
  if ([@"NONE" isEqualToString:?])
  {
    v5 = 1;
LABEL_7:
    self->_method = v5;
    goto LABEL_8;
  }

  if ([@"AES-128" isEqualToString:v15])
  {
    v5 = 2;
    goto LABEL_7;
  }

  if ([@"SAMPLE-AES" isEqualToString:v15])
  {
    v5 = 3;
    goto LABEL_7;
  }

  self->_method = 0;
LABEL_8:
  v6 = [listCopy objectForKeyedSubscript:@"URI"];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  url = self->_url;
  self->_url = v7;

  v9 = [listCopy objectForKeyedSubscript:@"KEYFORMAT"];
  keyFormat = self->_keyFormat;
  self->_keyFormat = v9;

  v11 = [listCopy objectForKeyedSubscript:@"KEYFORMATVERSIONS"];
  keyFormatVersions = self->_keyFormatVersions;
  self->_keyFormatVersions = v11;

  v13 = [listCopy objectForKeyedSubscript:@"IV"];

  iv = self->_iv;
  self->_iv = v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_method];
  v5 = [v3 stringWithFormat:@"{%@, %@, %@, %@, %@}", v4, self->_url, self->_keyFormat, self->_keyFormatVersions, self->_iv];

  return v5;
}

- (BOOL)isEqualToHLSKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  url = self->_url;
  if (url)
  {
    v7 = [keyCopy url];
    v8 = [(NSURL *)url isEqual:v7];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  keyFormat = self->_keyFormat;
  if (keyFormat)
  {
    keyFormat = [v5 keyFormat];
    v11 = [(NSString *)keyFormat isEqualToString:keyFormat];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  iv = self->_iv;
  if (iv)
  {
    v13 = [v5 iv];
    v14 = [(NSString *)iv isEqualToString:v13];

    if (!v14)
    {
      goto LABEL_10;
    }
  }

  keyFormatVersions = self->_keyFormatVersions;
  if (keyFormatVersions && ([v5 keyFormatVersions], v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqualToString:](keyFormatVersions, "isEqualToString:", v16), v16, !v17))
  {
LABEL_10:
    v19 = 0;
  }

  else
  {
    method = self->_method;
    v19 = method == [v5 method];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      v6 = [(BLHLSKey *)self isEqualToHLSKey:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_url hash];
  v4 = [(NSString *)self->_iv hash]^ v3;
  v5 = [(NSString *)self->_keyFormat hash];
  return v4 ^ v5 ^ [(NSString *)self->_keyFormatVersions hash]^ self->_method;
}

@end