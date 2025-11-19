@interface HMDHH2DuplicateUserModelTuple
- (HMDHH2DuplicateUserModelTuple)initWithHomeModelID:(id)a3 userMergeID:(id)a4;
- (id)description;
@end

@implementation HMDHH2DuplicateUserModelTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HMDHH2DuplicateUserModelTuple *)self homeModelID];
  v7 = [(HMDHH2DuplicateUserModelTuple *)self userMergeID];
  v8 = [v3 stringWithFormat:@"<%@: home = %@, user = %@>", v5, v6, v7];

  return v8;
}

- (HMDHH2DuplicateUserModelTuple)initWithHomeModelID:(id)a3 userMergeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHH2DuplicateUserModelTuple;
  v9 = [(HMDHH2DuplicateUserModelTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeModelID, a3);
    objc_storeStrong(&v10->_userMergeID, a4);
  }

  return v10;
}

@end