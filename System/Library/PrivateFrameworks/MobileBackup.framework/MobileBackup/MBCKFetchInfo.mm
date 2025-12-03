@interface MBCKFetchInfo
- (MBCKFetchInfo)init;
- (id)description;
@end

@implementation MBCKFetchInfo

- (MBCKFetchInfo)init
{
  v6.receiver = self;
  v6.super_class = MBCKFetchInfo;
  v2 = [(MBCKFetchInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    callbacks = v2->_callbacks;
    v2->_callbacks = v3;
  }

  return v2;
}

- (id)description
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v4 = [NSString alloc];
  recordID = [(MBCKFetchInfo *)self recordID];
  recordName = [recordID recordName];
  v7 = [v4 initWithFormat:@"recordName=%@", recordName];
  [v3 addObject:v7];

  v8 = [[NSString alloc] initWithFormat:@"state=%lu", -[MBCKFetchInfo state](self, "state")];
  [v3 addObject:v8];

  v9 = [NSString alloc];
  v10 = objc_opt_class();
  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [v9 initWithFormat:@"<%@: %p; %@>", v10, self, v11];

  return v12;
}

@end