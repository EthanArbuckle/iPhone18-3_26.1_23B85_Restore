@interface LACClientInfo
+ (id)emptyClientInfo;
- (LACClientInfo)initWithBundleId:(id)a3 displayName:(id)a4;
- (LACClientInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACClientInfo

- (LACClientInfo)initWithBundleId:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACClientInfo;
  v9 = [(LACClientInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, a3);
    objc_storeStrong(&v10->_displayName, a4);
  }

  return v10;
}

+ (id)emptyClientInfo
{
  v2 = [[a1 alloc] initWithBundleId:0 displayName:0];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACClientInfo *)self bundleId];
  v6 = NSStringFromSelector(sel_bundleId);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(LACClientInfo *)self displayName];
  v7 = NSStringFromSelector(sel_displayName);
  [v4 encodeObject:v8 forKey:v7];
}

- (LACClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleId);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_displayName);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(LACClientInfo *)self initWithBundleId:v7 displayName:v10];
  return v11;
}

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LACClientInfo *)self bundleId];
  v7 = [v5 stringWithFormat:@"bundleID: %@", v6];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACClientInfo *)self displayName];
  v10 = [v8 stringWithFormat:@"displayName: %@", v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end