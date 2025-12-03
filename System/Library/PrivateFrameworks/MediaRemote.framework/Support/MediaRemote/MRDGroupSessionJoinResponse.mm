@interface MRDGroupSessionJoinResponse
- (MRDGroupSessionJoinResponse)initWithNearbyGroup:(id)group publicSigningKeyData:(id)data joinToken:(id)token;
@end

@implementation MRDGroupSessionJoinResponse

- (MRDGroupSessionJoinResponse)initWithNearbyGroup:(id)group publicSigningKeyData:(id)data joinToken:(id)token
{
  groupCopy = group;
  dataCopy = data;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = MRDGroupSessionJoinResponse;
  v12 = [(MRDGroupSessionJoinResponse *)&v16 init];
  if (v12)
  {
    identifier = [groupCopy identifier];
    sessionIdentifier = v12->_sessionIdentifier;
    v12->_sessionIdentifier = identifier;

    objc_storeStrong(&v12->_nearbyGroup, group);
    objc_storeStrong(&v12->_publicSigningKeyData, data);
    objc_storeStrong(&v12->_joinToken, token);
  }

  return v12;
}

@end