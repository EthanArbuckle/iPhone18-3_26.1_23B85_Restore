@interface MRDGroupSessionJoinRequest
- (MRDGroupSessionJoinRequest)initWithIdentifier:(id)identifier identity:(id)identity oobKeys:(id)keys;
- (MRDGroupSessionJoinRequest)initWithProtobuf:(id)protobuf;
- (_MRGroupSessionJoinRequestProtobuf)protobuf;
- (id)redactedDescription;
@end

@implementation MRDGroupSessionJoinRequest

- (MRDGroupSessionJoinRequest)initWithIdentifier:(id)identifier identity:(id)identity oobKeys:(id)keys
{
  identifierCopy = identifier;
  identityCopy = identity;
  keysCopy = keys;
  v15.receiver = self;
  v15.super_class = MRDGroupSessionJoinRequest;
  v12 = [(MRDGroupSessionJoinRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_identity, identity);
    objc_storeStrong(&v13->_oobKeys, keys);
  }

  return v13;
}

- (MRDGroupSessionJoinRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = MRDGroupSessionJoinRequest;
  v5 = [(MRDGroupSessionJoinRequest *)&v17 init];
  if (v5)
  {
    identifier = [protobufCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [MRUserIdentity alloc];
    identity = [protobufCopy identity];
    v11 = [v9 initWithProtobuf:identity];
    identity = v5->_identity;
    v5->_identity = v11;

    oobKeys = [protobufCopy oobKeys];
    v14 = [oobKeys copy];
    oobKeys = v5->_oobKeys;
    v5->_oobKeys = v14;
  }

  return v5;
}

- (_MRGroupSessionJoinRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionJoinRequestProtobuf);
  identifier = [(MRDGroupSessionJoinRequest *)self identifier];
  v5 = [identifier copy];
  [v3 setIdentifier:v5];

  identity = [(MRDGroupSessionJoinRequest *)self identity];
  protobuf = [identity protobuf];
  [v3 setIdentity:protobuf];

  oobKeys = [(MRDGroupSessionJoinRequest *)self oobKeys];
  v9 = [oobKeys mutableCopy];
  [v3 setOobKeys:v9];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_opt_class();
  identifier = self->_identifier;
  v5 = [NSNumber numberWithUnsignedInteger:[(NSArray *)self->_oobKeys count]];
  v6 = [NSString stringWithFormat:@"<%@: %p identifier=%@ identity=[redacted] oobKeysCount=%@>", v3, self, identifier, v5];

  return v6;
}

@end