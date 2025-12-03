@interface _FBServiceFacilityServerPendingConnection
+ (id)pendingConnectionToFacility:(id)facility completion:(id)completion;
- (_FBServiceFacilityServerPendingConnection)initWithFacility:(id)facility completion:(id)completion;
@end

@implementation _FBServiceFacilityServerPendingConnection

+ (id)pendingConnectionToFacility:(id)facility completion:(id)completion
{
  completionCopy = completion;
  facilityCopy = facility;
  v7 = [[_FBServiceFacilityServerPendingConnection alloc] initWithFacility:facilityCopy completion:completionCopy];

  return v7;
}

- (_FBServiceFacilityServerPendingConnection)initWithFacility:(id)facility completion:(id)completion
{
  facilityCopy = facility;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _FBServiceFacilityServerPendingConnection;
  v9 = [(_FBServiceFacilityServerPendingConnection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_facility, facility);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end