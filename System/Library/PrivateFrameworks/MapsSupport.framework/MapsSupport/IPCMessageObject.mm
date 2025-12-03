@interface IPCMessageObject
+ (id)_dictionaryValueFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (IPCMessageObject)initWithCoder:(id)coder;
- (IPCMessageObject)initWithDictionary:(id)dictionary;
- (id)_dataValue;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPCMessageObject

- (IPCMessageObject)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v5.receiver = self;
    v5.super_class = IPCMessageObject;
    self = [(IPCMessageObject *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryValue = [(IPCMessageObject *)self dictionaryValue];
    dictionaryValue2 = [equalCopy dictionaryValue];
    v7 = [dictionaryValue isEqualToDictionary:dictionaryValue2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  dictionaryValue = [(IPCMessageObject *)self dictionaryValue];
  v3 = [dictionaryValue hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dictionaryValue = [(IPCMessageObject *)self dictionaryValue];
  v6 = [dictionaryValue copy];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

- (id)_dataValue
{
  dictionaryValue = [(IPCMessageObject *)self dictionaryValue];
  v6 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:dictionaryValue requiringSecureCoding:1 error:&v6];

  v4 = [v3 copy];

  return v4;
}

+ (id)_dictionaryValueFromData:(id)data
{
  dataCopy = data;
  v16 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v16];

  v5 = v16;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v8, v9, v10, v11, objc_opt_class(), 0];
    v15 = 0;
    v13 = [v4 decodeTopLevelObjectOfClasses:v12 forKey:NSKeyedArchiveRootObjectKey error:&v15];
    v6 = v15;

    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = v13;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _dataValue = [(IPCMessageObject *)self _dataValue];
  [coderCopy encodeObject:_dataValue forKey:@"dataValue"];
}

- (IPCMessageObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataValue"];

  v6 = [objc_opt_class() _dictionaryValueFromData:v5];
  if (v6)
  {
    self = [(IPCMessageObject *)self initWithDictionary:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end