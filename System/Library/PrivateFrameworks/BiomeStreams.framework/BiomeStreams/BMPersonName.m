@interface BMPersonName
- (BMPersonName)initWithName:(id)a3 nameComponents:(id)a4;
- (BMPersonName)initWithProto:(id)a3;
- (BMPersonName)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMPersonName

- (BMPersonName)initWithName:(id)a3 nameComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMPersonName;
  v9 = [(BMPersonName *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_nameComponents, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = self->_nameComponents != 0;
    v7 = [v5 nameComponents];
    v8 = v7 == 0;

    if (v6 == v8)
    {
      goto LABEL_8;
    }

    if (!self->_nameComponents)
    {
      goto LABEL_6;
    }

    v9 = [v5 nameComponents];

    if (!v9)
    {
      goto LABEL_6;
    }

    nameComponents = self->_nameComponents;
    v11 = [v5 nameComponents];
    LODWORD(nameComponents) = [(BMNameComponents *)nameComponents isEqual:v11];

    if (!nameComponents)
    {
LABEL_8:
      v14 = 0;
    }

    else
    {
LABEL_6:
      name = self->_name;
      v13 = [v5 name];
      v14 = [(NSString *)name isEqualToString:v13];
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
  v2 = [(BMPersonName *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPersonName)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [BMNameComponents alloc];
    v7 = [v5 nameComponents];
    v8 = [(BMNameComponents *)v6 initWithProto:v7];

    v9 = [v5 name];

    self = [(BMPersonName *)self initWithName:v9 nameComponents:v8];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMPersonName)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPersonName alloc] initWithData:v4];

    self = [(BMPersonName *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMPersonName *)self name];
  [v3 setName:v4];

  v5 = [(BMPersonName *)self nameComponents];

  if (v5)
  {
    v6 = [(BMPersonName *)self nameComponents];
    v7 = [v6 proto];

    [v3 setNameComponents:v7];
  }

  return v3;
}

@end