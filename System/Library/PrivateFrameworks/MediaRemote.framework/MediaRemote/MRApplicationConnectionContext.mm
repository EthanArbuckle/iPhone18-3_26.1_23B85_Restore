@interface MRApplicationConnectionContext
- (BOOL)isEqual:(id)equal;
- (MRApplicationConnectionContext)initWithCoder:(id)coder;
- (MRApplicationConnectionContext)initWithIdentifier:(id)identifier service:(id)service destinationPlayerPath:(id)path;
- (MRApplicationConnectionContext)initWithProtobuf:(id)protobuf;
- (MRApplicationConnectionContext)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRApplicationConnectionContextProtobuf)protobuf;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRApplicationConnectionContext

- (MRApplicationConnectionContext)initWithIdentifier:(id)identifier service:(id)service destinationPlayerPath:(id)path
{
  identifierCopy = identifier;
  serviceCopy = service;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = MRApplicationConnectionContext;
  v11 = [(MRApplicationConnectionContext *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [serviceCopy copy];
    service = v11->_service;
    v11->_service = v14;

    v16 = [pathCopy copy];
    destinationPlayerPath = v11->_destinationPlayerPath;
    v11->_destinationPlayerPath = v16;
  }

  return v11;
}

- (MRApplicationConnectionContext)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRApplicationConnectionContextProtobuf alloc] initWithData:dataCopy];

    self = [(MRApplicationConnectionContext *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRApplicationConnectionContext)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v16.receiver = self;
    v16.super_class = MRApplicationConnectionContext;
    v5 = [(MRApplicationConnectionContext *)&v16 init];
    if (v5)
    {
      identifier = [protobufCopy identifier];
      identifier = v5->_identifier;
      v5->_identifier = identifier;

      serviceName = [protobufCopy serviceName];
      service = v5->_service;
      v5->_service = serviceName;

      v10 = [MRPlayerPath alloc];
      destinationPlayerPath = [protobufCopy destinationPlayerPath];
      v12 = [(MRPlayerPath *)v10 initWithProtobuf:destinationPlayerPath];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(MRApplicationConnectionContext *)self identifier];
  service = [(MRApplicationConnectionContext *)self service];
  v6 = [v3 initWithFormat:@"<MRApplicationConnectionContext - id: %@, service: %@>", identifier, service];

  return v6;
}

- (_MRApplicationConnectionContextProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRApplicationConnectionContextProtobuf);
  identifier = [(MRApplicationConnectionContext *)self identifier];
  [(_MRApplicationConnectionContextProtobuf *)v3 setIdentifier:identifier];

  service = [(MRApplicationConnectionContext *)self service];
  [(_MRApplicationConnectionContextProtobuf *)v3 setServiceName:service];

  destinationPlayerPath = [(MRApplicationConnectionContext *)self destinationPlayerPath];
  protobuf = [destinationPlayerPath protobuf];
  [(_MRApplicationConnectionContextProtobuf *)v3 setDestinationPlayerPath:protobuf];

  return v3;
}

- (NSData)protobufData
{
  protobuf = [(MRApplicationConnectionContext *)self protobuf];
  data = [protobuf data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
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
  identifier = [(MRApplicationConnectionContext *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobufData = [(MRApplicationConnectionContext *)self protobufData];
  [coderCopy encodeObject:protobufData forKey:@"protobufData"];
}

- (MRApplicationConnectionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionContext *)self initWithProtobufData:v5];
  return v6;
}

@end