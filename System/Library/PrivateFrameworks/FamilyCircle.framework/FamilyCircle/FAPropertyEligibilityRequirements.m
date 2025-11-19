@interface FAPropertyEligibilityRequirements
- (FAPropertyEligibilityRequirements)initWithCoder:(id)a3;
- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)a3 dictionaryRepresentation:(id)a4;
- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)a3 hasRecommendedMembers:(BOOL)a4 expectedMediaAltDSID:(id)a5 serverEligibility:(BOOL)a6 activeBundleIDs:(id)a7 serverPayload:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAPropertyEligibilityRequirements

- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)a3 dictionaryRepresentation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:@"has-recommended-members"];
  v9 = [v8 BOOLValue];
  v10 = [v6 objectForKeyedSubscript:@"media-altDSID-matches"];
  v11 = [v6 objectForKeyedSubscript:@"server-journey-eligibility"];
  v12 = [v11 BOOLValue];
  v13 = [v6 objectForKeyedSubscript:@"active-apps"];
  v14 = [v6 objectForKeyedSubscript:@"serverPayload"];

  v15 = [(FAPropertyEligibilityRequirements *)self initWithPropertyName:v7 hasRecommendedMembers:v9 expectedMediaAltDSID:v10 serverEligibility:v12 activeBundleIDs:v13 serverPayload:v14];
  return v15;
}

- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)a3 hasRecommendedMembers:(BOOL)a4 expectedMediaAltDSID:(id)a5 serverEligibility:(BOOL)a6 activeBundleIDs:(id)a7 serverPayload:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = FAPropertyEligibilityRequirements;
  v18 = [(FAPropertyEligibilityRequirements *)&v26 init];
  if (v18)
  {
    v19 = [v14 copy];
    propertyName = v18->_propertyName;
    v18->_propertyName = v19;

    v18->_hasRecommendedMembers = a4;
    v21 = [v15 copy];
    expectedMediaAltDSID = v18->_expectedMediaAltDSID;
    v18->_expectedMediaAltDSID = v21;

    v18->_serverEligibility = a6;
    v23 = [v16 copy];
    activeBundleIDs = v18->_activeBundleIDs;
    v18->_activeBundleIDs = v23;

    objc_storeStrong(&v18->_serverPayload, a8);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  propertyName = self->_propertyName;
  v5 = a3;
  [v5 encodeObject:propertyName forKey:@"propertyName"];
  [v5 encodeBool:self->_hasRecommendedMembers forKey:@"has-recommended-members"];
  [v5 encodeObject:self->_expectedMediaAltDSID forKey:@"media-altDSID-matches"];
  [v5 encodeBool:self->_serverEligibility forKey:@"server-journey-eligibility"];
  [v5 encodeObject:self->_activeBundleIDs forKey:@"active-apps"];
  [v5 encodeObject:self->_serverPayload forKey:@"serverPayload"];
}

- (FAPropertyEligibilityRequirements)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAPropertyEligibilityRequirements *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyName"];
    propertyName = v5->_propertyName;
    v5->_propertyName = v6;

    v5->_hasRecommendedMembers = [v4 decodeBoolForKey:@"has-recommended-members"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"media-altDSID-matches"];
    expectedMediaAltDSID = v5->_expectedMediaAltDSID;
    v5->_expectedMediaAltDSID = v8;

    v5->_serverEligibility = [v4 decodeBoolForKey:@"server-journey-eligibility"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"active-apps"];
    activeBundleIDs = v5->_activeBundleIDs;
    v5->_activeBundleIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"serverPayload"];
    serverPayload = v5->_serverPayload;
    v5->_serverPayload = v20;
  }

  return v5;
}

@end