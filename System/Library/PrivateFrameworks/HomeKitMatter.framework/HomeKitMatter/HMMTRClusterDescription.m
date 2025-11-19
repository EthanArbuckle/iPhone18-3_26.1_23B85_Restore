@interface HMMTRClusterDescription
- (HMMTRClusterDescription)initWithClass:(id)a3 selectorString:(id)a4;
@end

@implementation HMMTRClusterDescription

- (HMMTRClusterDescription)initWithClass:(id)a3 selectorString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRClusterDescription;
  v8 = [(HMMTRClusterDescription *)&v12 init];
  if (v8)
  {
    v9 = NSClassFromString(v6);
    clusterClass = v8->_clusterClass;
    v8->_clusterClass = v9;

    v8->_clusterSelector = NSSelectorFromString(v7);
  }

  return v8;
}

@end