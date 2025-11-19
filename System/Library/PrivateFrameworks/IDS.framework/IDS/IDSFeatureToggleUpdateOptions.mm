@interface IDSFeatureToggleUpdateOptions
+ (id)optionsWithFeatureID:(id)a3 state:(unint64_t)a4;
- (IDSFeatureToggleUpdateOptions)initWithCoder:(id)a3;
- (IDSFeatureToggleUpdateOptions)initWithFeatureID:(id)a3 state:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSFeatureToggleUpdateOptions

+ (id)optionsWithFeatureID:(id)a3 state:(unint64_t)a4
{
  v5 = a3;
  v6 = [[IDSFeatureToggleUpdateOptions alloc] initWithFeatureID:v5 state:a4];

  return v6;
}

- (IDSFeatureToggleUpdateOptions)initWithFeatureID:(id)a3 state:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSFeatureToggleUpdateOptions;
  v8 = [(IDSFeatureToggleUpdateOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_featureID, a3);
    v9->_state = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSFeatureToggleUpdateOptions alloc];
  v5 = [(IDSFeatureToggleUpdateOptions *)self featureID];
  v6 = [(IDSFeatureToggleUpdateOptions *)v4 initWithFeatureID:v5 state:[(IDSFeatureToggleUpdateOptions *)self state]];

  return v6;
}

- (IDSFeatureToggleUpdateOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fid"];
  v6 = [v4 decodeIntegerForKey:@"st"];

  v7 = [(IDSFeatureToggleUpdateOptions *)self initWithFeatureID:v5 state:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(IDSFeatureToggleUpdateOptions *)self featureID];
  [v5 encodeObject:v4 forKey:@"fid"];

  [v5 encodeInteger:-[IDSFeatureToggleUpdateOptions state](self forKey:{"state"), @"st"}];
}

@end