@interface _DBAnalyticsAppInfo
- (_DBAnalyticsAppInfo)initWithAppInfo:(id)a3 policyEvaluator:(id)a4;
- (_DBAnalyticsAppInfo)initWithBundleIdentifier:(id)a3 appDeclaration:(id)a4 policyEvaluator:(id)a5;
- (id)debugDescription;
@end

@implementation _DBAnalyticsAppInfo

- (_DBAnalyticsAppInfo)initWithAppInfo:(id)a3 policyEvaluator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 bundleIdentifier];
  v10 = [v7 carPlayDeclaration];
  v11 = [(_DBAnalyticsAppInfo *)self initWithBundleIdentifier:v9 appDeclaration:v10 policyEvaluator:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_appInfo, a3);
  }

  return v11;
}

- (_DBAnalyticsAppInfo)initWithBundleIdentifier:(id)a3 appDeclaration:(id)a4 policyEvaluator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _DBAnalyticsAppInfo;
  v12 = [(_DBAnalyticsTimeAccumulator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleIdentifier, a3);
    v13->_numberOfSiriPresentations = 0;
    if (!v10)
    {
      v14 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
      v10 = [MEMORY[0x277CF8A10] declarationForAppRecord:v14];
    }

    v15 = [v11 effectivePolicyForAppDeclaration:v10];
    v13->_category = [v15 applicationCategory];
  }

  return v13;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _DBAnalyticsAppInfo;
  v4 = [(_DBAnalyticsAppInfo *)&v8 debugDescription];
  v5 = [(_DBAnalyticsAppInfo *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end