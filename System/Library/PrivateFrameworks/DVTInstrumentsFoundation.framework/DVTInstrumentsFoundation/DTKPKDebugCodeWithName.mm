@interface DTKPKDebugCodeWithName
- (BOOL)isEqual:(id)equal;
- (DTKPKDebugCodeWithName)initWithCoder:(id)coder;
- (DTKPKDebugCodeWithName)initWithValue:(unsigned int)value name:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DTKPKDebugCodeWithName

- (DTKPKDebugCodeWithName)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DTKPKDebugCodeWithName;
  v5 = [(DTKPKDebugCodeWithName *)&v9 init];
  if (v5)
  {
    v5->_kdebugCode.value = [coderCopy decodeInt32ForKey:@"_kdebugCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_kdebugCode.value;
  coderCopy = coder;
  [coderCopy encodeInt32:value forKey:@"_kdebugCode"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
}

- (DTKPKDebugCodeWithName)initWithValue:(unsigned int)value name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = DTKPKDebugCodeWithName;
  v8 = [(DTKPKDebugCodeWithName *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_kdebugCode.value = value;
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(DTKPKDebugCodeWithName *)self name];
    name2 = [v5 name];
    if ([name isEqualToString:name2])
    {
      v8.var0 = [(DTKPKDebugCodeWithName *)self kdebugCode];
      v9 = v8.var0 == [v5 kdebugCode];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end