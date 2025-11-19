@interface LNValueType
+ (NSArray)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (BOOL)objectIsMemberOfType:(id)a3;
- (BOOL)valueIsKindOfType:(id)a3;
- (Class)objectClass;
- (LNValueType)initWithCoder:(id)a3;
- (LNValueType)initWithContentType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5;
@end

@implementation LNValueType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNValueType *)self contentType];
      v8 = [(LNValueType *)v6 contentType];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(LNValueType *)self contentType];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNValueType *)self contentType];
  [v4 encodeObject:v5 forKey:@"contentType"];
}

- (LNValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v6 = [(LNValueType *)self initWithContentType:v5];
  return v6;
}

- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 valueType];
  if ([v10 isEqual:self])
  {
    v11 = [v12 isEqual:self];

    if (v11)
    {
      v9[2](v9, v8);
    }
  }

  else
  {
  }
}

- (Class)objectClass
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[LNValueType objectClass] must be overridden"];
  __break(1u);
  return result;
}

- (BOOL)valueIsKindOfType:(id)a3
{
  v4 = [a3 valueType];
  LOBYTE(self) = [(LNValueType *)self isEqual:v4];

  return self;
}

- (BOOL)objectIsMemberOfType:(id)a3
{
  v4 = a3;
  [(LNValueType *)self objectClass];
  LOBYTE(self) = objc_opt_isKindOfClass();

  return self & 1;
}

- (LNValueType)initWithContentType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNValueType;
  v6 = [(LNValueType *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, a3);
    v8 = v7;
  }

  return v7;
}

+ (NSArray)objectClassesForCoding
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[LNValueType objectClassesForCoding] must be overridden"];
  __break(1u);
  return result;
}

@end