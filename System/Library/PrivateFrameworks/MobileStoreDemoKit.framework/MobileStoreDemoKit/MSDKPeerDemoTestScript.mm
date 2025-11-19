@interface MSDKPeerDemoTestScript
- (MSDKPeerDemoTestScript)initWithCoder:(id)a3;
- (MSDKPeerDemoTestScript)initWithName:(id)a3 andMethods:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoTestScript

- (MSDKPeerDemoTestScript)initWithName:(id)a3 andMethods:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoTestScript;
  v8 = [(MSDKPeerDemoTestScript *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoTestScript *)v8 setName:v6];
    [(MSDKPeerDemoTestScript *)v9 setMethods:v7];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoTestScript *)self name];
  v7 = [(MSDKPeerDemoTestScript *)self methods];
  v8 = [v3 stringWithFormat:@"<%@[%p]: Name=%@ Methods=%@>", v5, self, v6, v7];

  return v8;
}

- (MSDKPeerDemoTestScript)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MSDKPeerDemoTestScript;
  v5 = [(MSDKPeerDemoTestScript *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(MSDKPeerDemoTestScript *)v5 setName:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"testMethods"];
    [(MSDKPeerDemoTestScript *)v5 setMethods:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoTestScript *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(MSDKPeerDemoTestScript *)self methods];
  [v4 encodeObject:v6 forKey:@"testMethods"];
}

@end