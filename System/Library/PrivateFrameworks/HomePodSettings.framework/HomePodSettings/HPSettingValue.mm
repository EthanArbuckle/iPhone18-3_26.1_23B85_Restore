@interface HPSettingValue
- (BOOL)isEqual:(id)equal;
- (HPSettingValue)initWithCoder:(id)coder;
- (HPSettingValue)initWithKeyPath:(id)path;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSettingValue

- (HPSettingValue)initWithKeyPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HPSettingValue;
  v6 = [(HPSettingValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyPath, path);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyPath = [(HPSettingValue *)self keyPath];
      keyPath2 = [(HPSettingValue *)v5 keyPath];

      v8 = [keyPath isEqualToString:keyPath2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  keyPath = [(HPSettingValue *)self keyPath];
  v3 = [keyPath hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HPSettingValue *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"setting.keypath"];
}

- (HPSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HPSettingValue;
  v5 = [(HPSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;
  }

  return v5;
}

@end