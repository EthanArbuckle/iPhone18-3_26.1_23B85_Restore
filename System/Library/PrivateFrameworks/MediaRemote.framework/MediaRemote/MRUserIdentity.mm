@interface MRUserIdentity
+ (id)basicIdentityWithIdentifier:(id)a3 displayName:(id)a4;
+ (id)resolvableIdentityWithIdentifier:(id)a3;
+ (id)resolvableIdentityWithIdentifier:(id)a3 displayName:(id)a4;
+ (void)fetchIdentityForDSID:(id)a3 completion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MRUserIdentity)initWithCoder:(id)a3;
- (MRUserIdentity)initWithIdentifier:(id)a3 displayName:(id)a4 type:(int64_t)a5;
- (MRUserIdentity)initWithProtobuf:(id)a3;
- (MRUserIdentity)initWithProtobufData:(id)a3;
- (NSData)protobufData;
- (_MRUserIdentityProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRUserIdentity

+ (id)basicIdentityWithIdentifier:(id)a3 displayName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MRUserIdentity alloc] initWithIdentifier:v6 displayName:v5 type:0];

  return v7;
}

+ (id)resolvableIdentityWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[MRUserIdentity alloc] initWithIdentifier:v3 displayName:0 type:1];

  return v4;
}

+ (id)resolvableIdentityWithIdentifier:(id)a3 displayName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MRUserIdentity alloc] initWithIdentifier:v6 displayName:v5 type:1];

  return v7;
}

+ (void)fetchIdentityForDSID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = MRGetSharedService();
  v8 = MRGroupSessionSubsystemGetNotificationQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MRUserIdentity_fetchIdentityForDSID_completion___block_invoke;
  v10[3] = &unk_1E769EA10;
  v11 = v5;
  v9 = v5;
  [v7 userIdentityForDSID:v6 queue:v8 completion:v10];
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

- (MRUserIdentity)initWithIdentifier:(id)a3 displayName:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MRUserIdentity;
  v10 = [(MRUserIdentity *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;

    v10->_type = a5;
  }

  return v10;
}

- (MRUserIdentity)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = MRUserIdentity;
    v5 = [(MRUserIdentity *)&v12 init];
    if (v5)
    {
      v6 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [v4 displayName];
      displayName = v5->_displayName;
      v5->_displayName = v8;

      v5->_type = [v4 type];
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MRUserIdentity)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRUserIdentityProtobuf alloc] initWithData:v4];

    self = [(MRUserIdentity *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRUserIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRUserIdentity *)self initWithProtobufData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(MRUserIdentity *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRUserIdentity *)self identifier];
  v6 = [(MRUserIdentity *)self displayName];
  v7 = [v3 initWithFormat:@"<%@: identifier=%@, displayName=%@, type=%ld>", v4, v5, v6, -[MRUserIdentity type](self, "type")];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v4 = [(MRUserIdentity *)self identifier];
  [(_MRUserIdentityProtobuf *)v3 setIdentifier:v4];

  v5 = [(MRUserIdentity *)self displayName];
  [(_MRUserIdentityProtobuf *)v3 setDisplayName:v5];

  [(_MRUserIdentityProtobuf *)v3 setType:[(MRUserIdentity *)self type]];

  return v3;
}

- (NSData)protobufData
{
  v2 = [(MRUserIdentity *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end