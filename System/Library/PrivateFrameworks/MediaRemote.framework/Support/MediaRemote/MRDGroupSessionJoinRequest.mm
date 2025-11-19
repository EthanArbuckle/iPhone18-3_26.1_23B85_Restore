@interface MRDGroupSessionJoinRequest
- (MRDGroupSessionJoinRequest)initWithIdentifier:(id)a3 identity:(id)a4 oobKeys:(id)a5;
- (MRDGroupSessionJoinRequest)initWithProtobuf:(id)a3;
- (_MRGroupSessionJoinRequestProtobuf)protobuf;
- (id)redactedDescription;
@end

@implementation MRDGroupSessionJoinRequest

- (MRDGroupSessionJoinRequest)initWithIdentifier:(id)a3 identity:(id)a4 oobKeys:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MRDGroupSessionJoinRequest;
  v12 = [(MRDGroupSessionJoinRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_identity, a4);
    objc_storeStrong(&v13->_oobKeys, a5);
  }

  return v13;
}

- (MRDGroupSessionJoinRequest)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MRDGroupSessionJoinRequest;
  v5 = [(MRDGroupSessionJoinRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [MRUserIdentity alloc];
    v10 = [v4 identity];
    v11 = [v9 initWithProtobuf:v10];
    identity = v5->_identity;
    v5->_identity = v11;

    v13 = [v4 oobKeys];
    v14 = [v13 copy];
    oobKeys = v5->_oobKeys;
    v5->_oobKeys = v14;
  }

  return v5;
}

- (_MRGroupSessionJoinRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionJoinRequestProtobuf);
  v4 = [(MRDGroupSessionJoinRequest *)self identifier];
  v5 = [v4 copy];
  [v3 setIdentifier:v5];

  v6 = [(MRDGroupSessionJoinRequest *)self identity];
  v7 = [v6 protobuf];
  [v3 setIdentity:v7];

  v8 = [(MRDGroupSessionJoinRequest *)self oobKeys];
  v9 = [v8 mutableCopy];
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