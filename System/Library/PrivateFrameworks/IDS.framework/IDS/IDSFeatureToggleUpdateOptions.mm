@interface IDSFeatureToggleUpdateOptions
+ (id)optionsWithFeatureID:(id)d state:(unint64_t)state;
- (IDSFeatureToggleUpdateOptions)initWithCoder:(id)coder;
- (IDSFeatureToggleUpdateOptions)initWithFeatureID:(id)d state:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFeatureToggleUpdateOptions

+ (id)optionsWithFeatureID:(id)d state:(unint64_t)state
{
  dCopy = d;
  v6 = [[IDSFeatureToggleUpdateOptions alloc] initWithFeatureID:dCopy state:state];

  return v6;
}

- (IDSFeatureToggleUpdateOptions)initWithFeatureID:(id)d state:(unint64_t)state
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = IDSFeatureToggleUpdateOptions;
  v8 = [(IDSFeatureToggleUpdateOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_featureID, d);
    v9->_state = state;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSFeatureToggleUpdateOptions alloc];
  featureID = [(IDSFeatureToggleUpdateOptions *)self featureID];
  v6 = [(IDSFeatureToggleUpdateOptions *)v4 initWithFeatureID:featureID state:[(IDSFeatureToggleUpdateOptions *)self state]];

  return v6;
}

- (IDSFeatureToggleUpdateOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fid"];
  v6 = [coderCopy decodeIntegerForKey:@"st"];

  v7 = [(IDSFeatureToggleUpdateOptions *)self initWithFeatureID:v5 state:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  featureID = [(IDSFeatureToggleUpdateOptions *)self featureID];
  [coderCopy encodeObject:featureID forKey:@"fid"];

  [coderCopy encodeInteger:-[IDSFeatureToggleUpdateOptions state](self forKey:{"state"), @"st"}];
}

@end