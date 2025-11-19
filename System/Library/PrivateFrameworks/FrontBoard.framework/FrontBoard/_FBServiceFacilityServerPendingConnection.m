@interface _FBServiceFacilityServerPendingConnection
+ (id)pendingConnectionToFacility:(id)a3 completion:(id)a4;
- (_FBServiceFacilityServerPendingConnection)initWithFacility:(id)a3 completion:(id)a4;
@end

@implementation _FBServiceFacilityServerPendingConnection

+ (id)pendingConnectionToFacility:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_FBServiceFacilityServerPendingConnection alloc] initWithFacility:v6 completion:v5];

  return v7;
}

- (_FBServiceFacilityServerPendingConnection)initWithFacility:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _FBServiceFacilityServerPendingConnection;
  v9 = [(_FBServiceFacilityServerPendingConnection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_facility, a3);
    v11 = [v8 copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end