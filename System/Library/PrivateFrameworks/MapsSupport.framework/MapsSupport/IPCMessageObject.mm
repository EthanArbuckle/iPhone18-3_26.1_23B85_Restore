@interface IPCMessageObject
+ (id)_dictionaryValueFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IPCMessageObject)initWithCoder:(id)a3;
- (IPCMessageObject)initWithDictionary:(id)a3;
- (id)_dataValue;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPCMessageObject

- (IPCMessageObject)initWithDictionary:(id)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = IPCMessageObject;
    self = [(IPCMessageObject *)&v5 init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IPCMessageObject *)self dictionaryValue];
    v6 = [v4 dictionaryValue];
    v7 = [v5 isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(IPCMessageObject *)self dictionaryValue];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(IPCMessageObject *)self dictionaryValue];
  v6 = [v5 copy];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

- (id)_dataValue
{
  v2 = [(IPCMessageObject *)self dictionaryValue];
  v6 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v6];

  v4 = [v3 copy];

  return v4;
}

+ (id)_dictionaryValueFromData:(id)a3
{
  v3 = a3;
  v16 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v16];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IPCMessageObject *)self _dataValue];
  [v4 encodeObject:v5 forKey:@"dataValue"];
}

- (IPCMessageObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataValue"];

  v6 = [objc_opt_class() _dictionaryValueFromData:v5];
  if (v6)
  {
    self = [(IPCMessageObject *)self initWithDictionary:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end