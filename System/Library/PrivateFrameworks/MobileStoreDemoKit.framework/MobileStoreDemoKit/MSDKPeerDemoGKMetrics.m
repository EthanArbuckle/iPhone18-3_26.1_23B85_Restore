@interface MSDKPeerDemoGKMetrics
- (MSDKPeerDemoGKMetrics)initWithCoder:(id)a3;
- (MSDKPeerDemoGKMetrics)initWithGKDataList:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoGKMetrics

- (MSDKPeerDemoGKMetrics)initWithGKDataList:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSDKPeerDemoGKMetrics;
  v5 = [(MSDKPeerDemoGKMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSDKPeerDemoGKMetrics *)v5 setGKDataList:v4];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoGKMetrics *)self GKDataList];
  v7 = [v3 stringWithFormat:@"<%@[%p]: GKDataList=%@>", v5, self, v6];

  return v7;
}

- (MSDKPeerDemoGKMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoGKMetrics;
  v5 = [(MSDKPeerDemoGKMetrics *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"GKDataList"];
    [(MSDKPeerDemoGKMetrics *)v5 setGKDataList:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoGKMetrics *)self GKDataList];
  [v4 encodeObject:v5 forKey:@"GKDataList"];
}

@end