@interface BMPersonName
- (BMPersonName)initWithName:(id)name nameComponents:(id)components;
- (BMPersonName)initWithProto:(id)proto;
- (BMPersonName)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMPersonName

- (BMPersonName)initWithName:(id)name nameComponents:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = BMPersonName;
  v9 = [(BMPersonName *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_nameComponents, components);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_nameComponents != 0;
    nameComponents = [v5 nameComponents];
    v8 = nameComponents == 0;

    if (v6 == v8)
    {
      goto LABEL_8;
    }

    if (!self->_nameComponents)
    {
      goto LABEL_6;
    }

    nameComponents2 = [v5 nameComponents];

    if (!nameComponents2)
    {
      goto LABEL_6;
    }

    nameComponents = self->_nameComponents;
    nameComponents3 = [v5 nameComponents];
    LODWORD(nameComponents) = [(BMNameComponents *)nameComponents isEqual:nameComponents3];

    if (!nameComponents)
    {
LABEL_8:
      v14 = 0;
    }

    else
    {
LABEL_6:
      name = self->_name;
      name = [v5 name];
      v14 = [(NSString *)name isEqualToString:name];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)encodeAsProto
{
  proto = [(BMPersonName *)self proto];
  data = [proto data];

  return data;
}

- (BMPersonName)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    v6 = [BMNameComponents alloc];
    nameComponents = [v5 nameComponents];
    v8 = [(BMNameComponents *)v6 initWithProto:nameComponents];

    name = [v5 name];

    self = [(BMPersonName *)self initWithName:name nameComponents:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMPersonName)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPersonName alloc] initWithData:dataCopy];

    self = [(BMPersonName *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  name = [(BMPersonName *)self name];
  [v3 setName:name];

  nameComponents = [(BMPersonName *)self nameComponents];

  if (nameComponents)
  {
    nameComponents2 = [(BMPersonName *)self nameComponents];
    proto = [nameComponents2 proto];

    [v3 setNameComponents:proto];
  }

  return v3;
}

@end