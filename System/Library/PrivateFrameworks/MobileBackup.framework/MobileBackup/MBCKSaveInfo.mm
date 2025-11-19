@interface MBCKSaveInfo
- (MBCKSaveDelegate)delegate;
- (id)description;
@end

@implementation MBCKSaveInfo

- (id)description
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  v4 = [NSString alloc];
  v5 = [(MBCKSaveInfo *)self record];
  v6 = [v5 recordID];
  v7 = [v6 recordName];
  v8 = [v4 initWithFormat:@"recordName=%@", v7];
  [v3 addObject:v8];

  v9 = [[NSString alloc] initWithFormat:@"state=%lu", -[MBCKSaveInfo state](self, "state")];
  [v3 addObject:v9];

  v10 = [[NSString alloc] initWithFormat:@"sp=%ld", -[MBCKSaveInfo savePolicy](self, "savePolicy")];
  [v3 addObject:v10];

  v11 = [NSString alloc];
  v12 = objc_opt_class();
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [v11 initWithFormat:@"<%@: %p; %@>", v12, self, v13];

  return v14;
}

- (MBCKSaveDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end