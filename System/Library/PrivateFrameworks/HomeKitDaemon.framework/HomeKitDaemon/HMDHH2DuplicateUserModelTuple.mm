@interface HMDHH2DuplicateUserModelTuple
- (HMDHH2DuplicateUserModelTuple)initWithHomeModelID:(id)d userMergeID:(id)iD;
- (id)description;
@end

@implementation HMDHH2DuplicateUserModelTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  homeModelID = [(HMDHH2DuplicateUserModelTuple *)self homeModelID];
  userMergeID = [(HMDHH2DuplicateUserModelTuple *)self userMergeID];
  v8 = [v3 stringWithFormat:@"<%@: home = %@, user = %@>", v5, homeModelID, userMergeID];

  return v8;
}

- (HMDHH2DuplicateUserModelTuple)initWithHomeModelID:(id)d userMergeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = HMDHH2DuplicateUserModelTuple;
  v9 = [(HMDHH2DuplicateUserModelTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeModelID, d);
    objc_storeStrong(&v10->_userMergeID, iD);
  }

  return v10;
}

@end