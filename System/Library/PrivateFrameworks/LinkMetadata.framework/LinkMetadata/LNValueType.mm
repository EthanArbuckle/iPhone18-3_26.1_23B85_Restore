@interface LNValueType
+ (NSArray)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (BOOL)objectIsMemberOfType:(id)type;
- (BOOL)valueIsKindOfType:(id)type;
- (Class)objectClass;
- (LNValueType)initWithCoder:(id)coder;
- (LNValueType)initWithContentType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesOfValueType:(id)type value:(id)value block:(id)block;
@end

@implementation LNValueType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      contentType = [(LNValueType *)self contentType];
      contentType2 = [(LNValueType *)v6 contentType];
      v9 = contentType;
      v10 = contentType2;
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
  contentType = [(LNValueType *)self contentType];
  v3 = [contentType hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(LNValueType *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];
}

- (LNValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v6 = [(LNValueType *)self initWithContentType:v5];
  return v6;
}

- (void)enumerateValuesOfValueType:(id)type value:(id)value block:(id)block
{
  typeCopy = type;
  valueCopy = value;
  blockCopy = block;
  valueType = [valueCopy valueType];
  if ([valueType isEqual:self])
  {
    v11 = [typeCopy isEqual:self];

    if (v11)
    {
      blockCopy[2](blockCopy, valueCopy);
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

- (BOOL)valueIsKindOfType:(id)type
{
  valueType = [type valueType];
  LOBYTE(self) = [(LNValueType *)self isEqual:valueType];

  return self;
}

- (BOOL)objectIsMemberOfType:(id)type
{
  typeCopy = type;
  [(LNValueType *)self objectClass];
  LOBYTE(self) = objc_opt_isKindOfClass();

  return self & 1;
}

- (LNValueType)initWithContentType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = LNValueType;
  v6 = [(LNValueType *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, type);
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