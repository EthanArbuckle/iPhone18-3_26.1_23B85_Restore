@interface _DBAnalyticsAppInfo
- (_DBAnalyticsAppInfo)initWithAppInfo:(id)info policyEvaluator:(id)evaluator;
- (_DBAnalyticsAppInfo)initWithBundleIdentifier:(id)identifier appDeclaration:(id)declaration policyEvaluator:(id)evaluator;
- (id)debugDescription;
@end

@implementation _DBAnalyticsAppInfo

- (_DBAnalyticsAppInfo)initWithAppInfo:(id)info policyEvaluator:(id)evaluator
{
  infoCopy = info;
  evaluatorCopy = evaluator;
  bundleIdentifier = [infoCopy bundleIdentifier];
  carPlayDeclaration = [infoCopy carPlayDeclaration];
  v11 = [(_DBAnalyticsAppInfo *)self initWithBundleIdentifier:bundleIdentifier appDeclaration:carPlayDeclaration policyEvaluator:evaluatorCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_appInfo, info);
  }

  return v11;
}

- (_DBAnalyticsAppInfo)initWithBundleIdentifier:(id)identifier appDeclaration:(id)declaration policyEvaluator:(id)evaluator
{
  identifierCopy = identifier;
  declarationCopy = declaration;
  evaluatorCopy = evaluator;
  v17.receiver = self;
  v17.super_class = _DBAnalyticsAppInfo;
  v12 = [(_DBAnalyticsTimeAccumulator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    v13->_numberOfSiriPresentations = 0;
    if (!declarationCopy)
    {
      v14 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
      declarationCopy = [MEMORY[0x277CF8A10] declarationForAppRecord:v14];
    }

    v15 = [evaluatorCopy effectivePolicyForAppDeclaration:declarationCopy];
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
  bundleIdentifier = [(_DBAnalyticsAppInfo *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, bundleIdentifier];

  return v6;
}

@end