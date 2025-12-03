@interface MSDKPeerDemoGKMetrics
- (MSDKPeerDemoGKMetrics)initWithCoder:(id)coder;
- (MSDKPeerDemoGKMetrics)initWithGKDataList:(id)list;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoGKMetrics

- (MSDKPeerDemoGKMetrics)initWithGKDataList:(id)list
{
  listCopy = list;
  v8.receiver = self;
  v8.super_class = MSDKPeerDemoGKMetrics;
  v5 = [(MSDKPeerDemoGKMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSDKPeerDemoGKMetrics *)v5 setGKDataList:listCopy];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  gKDataList = [(MSDKPeerDemoGKMetrics *)self GKDataList];
  v7 = [v3 stringWithFormat:@"<%@[%p]: GKDataList=%@>", v5, self, gKDataList];

  return v7;
}

- (MSDKPeerDemoGKMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoGKMetrics;
  v5 = [(MSDKPeerDemoGKMetrics *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"GKDataList"];
    [(MSDKPeerDemoGKMetrics *)v5 setGKDataList:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  gKDataList = [(MSDKPeerDemoGKMetrics *)self GKDataList];
  [coderCopy encodeObject:gKDataList forKey:@"GKDataList"];
}

@end