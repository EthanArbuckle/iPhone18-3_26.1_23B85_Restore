@interface SUUIMediaQueryFeature
- (SUUIMediaQueryFeature)initWithFeatureName:(id)name value:(id)value;
@end

@implementation SUUIMediaQueryFeature

- (SUUIMediaQueryFeature)initWithFeatureName:(id)name value:(id)value
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SUUIMediaQueryFeature;
  v6 = [(SUUIMediaQueryFeature *)&v10 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    featureName = v6->_featureName;
    v6->_featureName = v7;
  }

  return v6;
}

@end