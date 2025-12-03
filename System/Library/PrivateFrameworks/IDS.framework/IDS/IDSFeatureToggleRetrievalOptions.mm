@interface IDSFeatureToggleRetrievalOptions
+ (id)optionsWithFeatureID:(id)d;
- (IDSFeatureToggleRetrievalOptions)initWithCoder:(id)coder;
- (IDSFeatureToggleRetrievalOptions)initWithFeatureID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFeatureToggleRetrievalOptions

+ (id)optionsWithFeatureID:(id)d
{
  dCopy = d;
  v4 = [[IDSFeatureToggleRetrievalOptions alloc] initWithFeatureID:dCopy];

  return v4;
}

- (IDSFeatureToggleRetrievalOptions)initWithFeatureID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = IDSFeatureToggleRetrievalOptions;
  v6 = [(IDSFeatureToggleRetrievalOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSFeatureToggleRetrievalOptions alloc];
  featureID = [(IDSFeatureToggleRetrievalOptions *)self featureID];
  v6 = [(IDSFeatureToggleRetrievalOptions *)v4 initWithFeatureID:featureID];

  return v6;
}

- (IDSFeatureToggleRetrievalOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fid"];

  v6 = [(IDSFeatureToggleRetrievalOptions *)self initWithFeatureID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  featureID = [(IDSFeatureToggleRetrievalOptions *)self featureID];
  [coderCopy encodeObject:featureID forKey:@"fid"];
}

@end