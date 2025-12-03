@interface MSDKPeerDemoTestScript
- (MSDKPeerDemoTestScript)initWithCoder:(id)coder;
- (MSDKPeerDemoTestScript)initWithName:(id)name andMethods:(id)methods;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoTestScript

- (MSDKPeerDemoTestScript)initWithName:(id)name andMethods:(id)methods
{
  nameCopy = name;
  methodsCopy = methods;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoTestScript;
  v8 = [(MSDKPeerDemoTestScript *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoTestScript *)v8 setName:nameCopy];
    [(MSDKPeerDemoTestScript *)v9 setMethods:methodsCopy];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(MSDKPeerDemoTestScript *)self name];
  methods = [(MSDKPeerDemoTestScript *)self methods];
  v8 = [v3 stringWithFormat:@"<%@[%p]: Name=%@ Methods=%@>", v5, self, name, methods];

  return v8;
}

- (MSDKPeerDemoTestScript)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MSDKPeerDemoTestScript;
  v5 = [(MSDKPeerDemoTestScript *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(MSDKPeerDemoTestScript *)v5 setName:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"testMethods"];
    [(MSDKPeerDemoTestScript *)v5 setMethods:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MSDKPeerDemoTestScript *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  methods = [(MSDKPeerDemoTestScript *)self methods];
  [coderCopy encodeObject:methods forKey:@"testMethods"];
}

@end