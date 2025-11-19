@interface MRDGroupSessionJoinResponse
- (MRDGroupSessionJoinResponse)initWithNearbyGroup:(id)a3 publicSigningKeyData:(id)a4 joinToken:(id)a5;
@end

@implementation MRDGroupSessionJoinResponse

- (MRDGroupSessionJoinResponse)initWithNearbyGroup:(id)a3 publicSigningKeyData:(id)a4 joinToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MRDGroupSessionJoinResponse;
  v12 = [(MRDGroupSessionJoinResponse *)&v16 init];
  if (v12)
  {
    v13 = [v9 identifier];
    sessionIdentifier = v12->_sessionIdentifier;
    v12->_sessionIdentifier = v13;

    objc_storeStrong(&v12->_nearbyGroup, a3);
    objc_storeStrong(&v12->_publicSigningKeyData, a4);
    objc_storeStrong(&v12->_joinToken, a5);
  }

  return v12;
}

@end