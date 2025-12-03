@interface LACClientInfo
+ (id)emptyClientInfo;
- (LACClientInfo)initWithBundleId:(id)id displayName:(id)name;
- (LACClientInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACClientInfo

- (LACClientInfo)initWithBundleId:(id)id displayName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = LACClientInfo;
  v9 = [(LACClientInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, id);
    objc_storeStrong(&v10->_displayName, name);
  }

  return v10;
}

+ (id)emptyClientInfo
{
  v2 = [[self alloc] initWithBundleId:0 displayName:0];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleId = [(LACClientInfo *)self bundleId];
  v6 = NSStringFromSelector(sel_bundleId);
  [coderCopy encodeObject:bundleId forKey:v6];

  displayName = [(LACClientInfo *)self displayName];
  v7 = NSStringFromSelector(sel_displayName);
  [coderCopy encodeObject:displayName forKey:v7];
}

- (LACClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleId);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_displayName);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(LACClientInfo *)self initWithBundleId:v7 displayName:v10];
  return v11;
}

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  bundleId = [(LACClientInfo *)self bundleId];
  v7 = [v5 stringWithFormat:@"bundleID: %@", bundleId];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  displayName = [(LACClientInfo *)self displayName];
  v10 = [v8 stringWithFormat:@"displayName: %@", displayName];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end