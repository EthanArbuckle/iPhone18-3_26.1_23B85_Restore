@interface NRMutableDeviceProperty
+ (id)diffFrom:(id)from to:(id)to;
+ (id)enclosedClassTypes;
- (BOOL)isEqual:(id)equal;
- (NRMutableDeviceProperty)init;
- (NRMutableDeviceProperty)initWithCoder:(id)coder;
- (NRMutableDeviceProperty)initWithProtobuf:(id)protobuf;
- (NRMutableDeviceProperty)initWithValue:(id)value;
- (NRPBMutableDeviceProperty)protobuf;
- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value;
@end

@implementation NRMutableDeviceProperty

+ (id)enclosedClassTypes
{
  v14 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v14 setWithObjects:{v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v6 = [[NRDevicePropertyDiff alloc] initWithValue:valueCopy];

  v5 = [(NRMutableDeviceProperty *)self applyDiff:v6 upOnly:0 notifyParent:1 unconditional:0];
}

- (NRMutableDeviceProperty)init
{
  v3.receiver = self;
  v3.super_class = NRMutableDeviceProperty;
  return [(NRMutableStateBase *)&v3 init];
}

- (NRMutableDeviceProperty)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = NRMutableDeviceProperty;
  v6 = [(NRMutableStateBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (NRMutableDeviceProperty)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = NRMutableDeviceProperty;
  v5 = [(NRMutableStateBase *)&v10 init];
  if (v5)
  {
    value = [protobufCopy value];
    v7 = [NRDevicePropertyDiff unpackPropertyValue:value];
    value = v5->_value;
    v5->_value = v7;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
  }

  return v5;
}

- (NRPBMutableDeviceProperty)protobuf
{
  v3 = objc_opt_new();
  v4 = [NRDevicePropertyDiff packPropertyValue:self->_value];
  [v3 setValue:v4];

  return v3;
}

- (NRMutableDeviceProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NRMutableDeviceProperty;
  v5 = [(NRMutableStateBase *)&v14 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = +[NRMutableDeviceProperty enclosedClassTypes];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"value"];
    value = v5->_value;
    v5->_value = v11;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBMutableDeviceProperty alloc] initWithData:v6];
  v9 = [(NRMutableDeviceProperty *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRMutableDeviceProperty *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

+ (id)diffFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy == toCopy || ([fromCopy isEqual:toCopy] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = toCopy;
    v9 = [NRDevicePropertyDiff alloc];
    if (v8)
    {
      v10 = v8[4];
    }

    else
    {
      v10 = 0;
    }

    v7 = [(NRDevicePropertyDiff *)v9 initWithValue:v10];
  }

  return v7;
}

- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional
{
  parentCopy = parent;
  diffCopy = diff;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = selfCopy;
  v13 = selfCopy;
  if (!unconditional)
  {
    v13 = [(NRMutableDeviceProperty *)selfCopy copyWithZone:0];
  }

  value = [diffCopy value];
  value = v12->_value;
  v12->_value = value;

  v16 = diffCopy;
  if (!unconditional)
  {
    v16 = [objc_opt_class() diffFrom:v13 to:v12];
  }

  if (v16)
  {
    if (parentCopy)
    {
      [(NRMutableStateBase *)v12 notifyParentWithDiff:v16];
    }

    [(NRMutableStateBase *)v12 notifyObserversWithDiff:v16];
  }

  objc_autoreleasePoolPop(v10);

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  value = self->_value;

  return [v4 initWithValue:value];
}

- (unint64_t)hash
{
  value = self->_value;
  v4 = [objc_opt_class() hash];
  return [self->_value hash]- v4 + 32 * v4 + 961;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  value = self->_value;
  if (equalCopy->_value == value)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [value isEqual:?];
  }

LABEL_7:

  return v6;
}

- (id)description
{
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_value;
  if (isKindOfClass)
  {
    v6 = [NRTextFormattingUtilities dateFormatter:self->_value];
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    v8 = self->_value;
    if (v7)
    {
      [v8 UUIDString];
    }

    else
    {
      [v8 description];
    }
    v6 = ;
  }

  return v6;
}

@end