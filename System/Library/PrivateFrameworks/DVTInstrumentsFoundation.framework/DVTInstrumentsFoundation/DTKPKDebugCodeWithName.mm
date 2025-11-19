@interface DTKPKDebugCodeWithName
- (BOOL)isEqual:(id)a3;
- (DTKPKDebugCodeWithName)initWithCoder:(id)a3;
- (DTKPKDebugCodeWithName)initWithValue:(unsigned int)a3 name:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DTKPKDebugCodeWithName

- (DTKPKDebugCodeWithName)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DTKPKDebugCodeWithName;
  v5 = [(DTKPKDebugCodeWithName *)&v9 init];
  if (v5)
  {
    v5->_kdebugCode.value = [v4 decodeInt32ForKey:@"_kdebugCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_kdebugCode.value;
  v5 = a3;
  [v5 encodeInt32:value forKey:@"_kdebugCode"];
  [v5 encodeObject:self->_name forKey:@"_name"];
}

- (DTKPKDebugCodeWithName)initWithValue:(unsigned int)a3 name:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DTKPKDebugCodeWithName;
  v8 = [(DTKPKDebugCodeWithName *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_kdebugCode.value = a3;
    objc_storeStrong(&v8->_name, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DTKPKDebugCodeWithName *)self name];
    v7 = [v5 name];
    if ([v6 isEqualToString:v7])
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