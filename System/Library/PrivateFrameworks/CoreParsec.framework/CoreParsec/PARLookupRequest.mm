@interface PARLookupRequest
- (Class)responseClass;
- (PARLookupRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARLookupRequest

- (Class)responseClass
{
  v2 = _os_feature_enabled_impl();
  v3 = off_1E7AC5130;
  if (!v2)
  {
    v3 = off_1E7AC5158;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (PARLookupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PARLookupRequest;
  v5 = [(PARRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    queryString = v5->_queryString;
    v5->_queryString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryContext"];
    queryContext = v5->_queryContext;
    v5->_queryContext = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lookupDomain"];
    domain = v5->_domain;
    v5->_domain = v10;

    v5->_lookupSelectionType = [v4 decodeIntegerForKey:@"lookupSelectionType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARLookupRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_queryString forKey:{@"query", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_queryContext forKey:@"queryContext"];
  [v4 encodeObject:self->_domain forKey:@"lookupDomain"];
  [v4 encodeInteger:self->_lookupSelectionType forKey:@"lookupSelectionType"];
  [v4 encodeObject:self->_appBundleId forKey:@"appBundleId"];
  [v4 encodeObject:self->_preferredLanguage forKey:@"preferredLanguage"];
}

@end