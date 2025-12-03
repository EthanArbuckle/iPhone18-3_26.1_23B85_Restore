@interface MRUserIdentity
+ (id)basicIdentityWithIdentifier:(id)identifier displayName:(id)name;
+ (id)resolvableIdentityWithIdentifier:(id)identifier;
+ (id)resolvableIdentityWithIdentifier:(id)identifier displayName:(id)name;
+ (void)fetchIdentityForDSID:(id)d completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (MRUserIdentity)initWithCoder:(id)coder;
- (MRUserIdentity)initWithIdentifier:(id)identifier displayName:(id)name type:(int64_t)type;
- (MRUserIdentity)initWithProtobuf:(id)protobuf;
- (MRUserIdentity)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRUserIdentityProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRUserIdentity

+ (id)basicIdentityWithIdentifier:(id)identifier displayName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [[MRUserIdentity alloc] initWithIdentifier:identifierCopy displayName:nameCopy type:0];

  return v7;
}

+ (id)resolvableIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[MRUserIdentity alloc] initWithIdentifier:identifierCopy displayName:0 type:1];

  return v4;
}

+ (id)resolvableIdentityWithIdentifier:(id)identifier displayName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [[MRUserIdentity alloc] initWithIdentifier:identifierCopy displayName:nameCopy type:1];

  return v7;
}

+ (void)fetchIdentityForDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = MRGetSharedService();
  v8 = MRGroupSessionSubsystemGetNotificationQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MRUserIdentity_fetchIdentityForDSID_completion___block_invoke;
  v10[3] = &unk_1E769EA10;
  v11 = completionCopy;
  v9 = completionCopy;
  [v7 userIdentityForDSID:dCopy queue:v8 completion:v10];
}

uint64_t __50__MRUserIdentity_fetchIdentityForDSID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MRUserIdentity)initWithIdentifier:(id)identifier displayName:(id)name type:(int64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = MRUserIdentity;
  v10 = [(MRUserIdentity *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [nameCopy copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;

    v10->_type = type;
  }

  return v10;
}

- (MRUserIdentity)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v12.receiver = self;
    v12.super_class = MRUserIdentity;
    v5 = [(MRUserIdentity *)&v12 init];
    if (v5)
    {
      identifier = [protobufCopy identifier];
      identifier = v5->_identifier;
      v5->_identifier = identifier;

      displayName = [protobufCopy displayName];
      displayName = v5->_displayName;
      v5->_displayName = displayName;

      v5->_type = [protobufCopy type];
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

- (MRUserIdentity)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRUserIdentityProtobuf alloc] initWithData:dataCopy];

    self = [(MRUserIdentity *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRUserIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRUserIdentity *)self initWithProtobufData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRUserIdentity *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"protobufData"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  identifier = [(MRUserIdentity *)self identifier];
  displayName = [(MRUserIdentity *)self displayName];
  v7 = [v3 initWithFormat:@"<%@: identifier=%@, displayName=%@, type=%ld>", v4, identifier, displayName, -[MRUserIdentity type](self, "type")];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      displayName = v5->_displayName;
      v12 = self->_displayName;
      v13 = v12;
      if (v12 == displayName)
      {
      }

      else
      {
        v14 = [(NSString *)v12 isEqual:displayName];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      v10 = self->_type == v5->_type;
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (_MRUserIdentityProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRUserIdentityProtobuf);
  identifier = [(MRUserIdentity *)self identifier];
  [(_MRUserIdentityProtobuf *)v3 setIdentifier:identifier];

  displayName = [(MRUserIdentity *)self displayName];
  [(_MRUserIdentityProtobuf *)v3 setDisplayName:displayName];

  [(_MRUserIdentityProtobuf *)v3 setType:[(MRUserIdentity *)self type]];

  return v3;
}

- (NSData)protobufData
{
  protobuf = [(MRUserIdentity *)self protobuf];
  data = [protobuf data];

  return data;
}

@end