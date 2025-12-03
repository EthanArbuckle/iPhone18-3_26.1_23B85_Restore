@interface HMMTRClusterDescription
- (HMMTRClusterDescription)initWithClass:(id)class selectorString:(id)string;
@end

@implementation HMMTRClusterDescription

- (HMMTRClusterDescription)initWithClass:(id)class selectorString:(id)string
{
  classCopy = class;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = HMMTRClusterDescription;
  v8 = [(HMMTRClusterDescription *)&v12 init];
  if (v8)
  {
    v9 = NSClassFromString(classCopy);
    clusterClass = v8->_clusterClass;
    v8->_clusterClass = v9;

    v8->_clusterSelector = NSSelectorFromString(stringCopy);
  }

  return v8;
}

@end