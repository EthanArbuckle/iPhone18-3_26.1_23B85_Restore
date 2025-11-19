@interface MRApplicationConnectionContext
- (BOOL)isEqual:(id)a3;
- (MRApplicationConnectionContext)initWithCoder:(id)a3;
- (MRApplicationConnectionContext)initWithIdentifier:(id)a3 service:(id)a4 destinationPlayerPath:(id)a5;
- (MRApplicationConnectionContext)initWithProtobuf:(id)a3;
- (MRApplicationConnectionContext)initWithProtobufData:(id)a3;
- (NSData)protobufData;
- (_MRApplicationConnectionContextProtobuf)protobuf;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRApplicationConnectionContext

- (MRApplicationConnectionContext)initWithIdentifier:(id)a3 service:(id)a4 destinationPlayerPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MRApplicationConnectionContext;
  v11 = [(MRApplicationConnectionContext *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    service = v11->_service;
    v11->_service = v14;

    v16 = [v10 copy];
    destinationPlayerPath = v11->_destinationPlayerPath;
    v11->_destinationPlayerPath = v16;
  }

  return v11;
}

- (MRApplicationConnectionContext)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRApplicationConnectionContextProtobuf alloc] initWithData:v4];

    self = [(MRApplicationConnectionContext *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRApplicationConnectionContext)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = MRApplicationConnectionContext;
    v5 = [(MRApplicationConnectionContext *)&v16 init];
    if (v5)
    {
      v6 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [v4 serviceName];
      service = v5->_service;
      v5->_service = v8;

      v10 = [MRPlayerPath alloc];
      v11 = [v4 destinationPlayerPath];
      v12 = [(MRPlayerPath *)v10 initWithProtobuf:v11];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v12;
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MRApplicationConnectionContext *)self identifier];
  v5 = [(MRApplicationConnectionContext *)self service];
  v6 = [v3 initWithFormat:@"<MRApplicationConnectionContext - id: %@, service: %@>", v4, v5];

  return v6;
}

- (_MRApplicationConnectionContextProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRApplicationConnectionContextProtobuf);
  v4 = [(MRApplicationConnectionContext *)self identifier];
  [(_MRApplicationConnectionContextProtobuf *)v3 setIdentifier:v4];

  v5 = [(MRApplicationConnectionContext *)self service];
  [(_MRApplicationConnectionContextProtobuf *)v3 setServiceName:v5];

  v6 = [(MRApplicationConnectionContext *)self destinationPlayerPath];
  v7 = [v6 protobuf];
  [(_MRApplicationConnectionContextProtobuf *)v3 setDestinationPlayerPath:v7];

  return v3;
}

- (NSData)protobufData
{
  v2 = [(MRApplicationConnectionContext *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(MRApplicationConnectionContext *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRApplicationConnectionContext *)self protobufData];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (MRApplicationConnectionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionContext *)self initWithProtobufData:v5];
  return v6;
}

@end