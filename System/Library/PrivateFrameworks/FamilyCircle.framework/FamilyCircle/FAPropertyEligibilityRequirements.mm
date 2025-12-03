@interface FAPropertyEligibilityRequirements
- (FAPropertyEligibilityRequirements)initWithCoder:(id)coder;
- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)name dictionaryRepresentation:(id)representation;
- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)name hasRecommendedMembers:(BOOL)members expectedMediaAltDSID:(id)d serverEligibility:(BOOL)eligibility activeBundleIDs:(id)ds serverPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAPropertyEligibilityRequirements

- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)name dictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  nameCopy = name;
  v8 = [representationCopy objectForKeyedSubscript:@"has-recommended-members"];
  bOOLValue = [v8 BOOLValue];
  v10 = [representationCopy objectForKeyedSubscript:@"media-altDSID-matches"];
  v11 = [representationCopy objectForKeyedSubscript:@"server-journey-eligibility"];
  bOOLValue2 = [v11 BOOLValue];
  v13 = [representationCopy objectForKeyedSubscript:@"active-apps"];
  v14 = [representationCopy objectForKeyedSubscript:@"serverPayload"];

  v15 = [(FAPropertyEligibilityRequirements *)self initWithPropertyName:nameCopy hasRecommendedMembers:bOOLValue expectedMediaAltDSID:v10 serverEligibility:bOOLValue2 activeBundleIDs:v13 serverPayload:v14];
  return v15;
}

- (FAPropertyEligibilityRequirements)initWithPropertyName:(id)name hasRecommendedMembers:(BOOL)members expectedMediaAltDSID:(id)d serverEligibility:(BOOL)eligibility activeBundleIDs:(id)ds serverPayload:(id)payload
{
  nameCopy = name;
  dCopy = d;
  dsCopy = ds;
  payloadCopy = payload;
  v26.receiver = self;
  v26.super_class = FAPropertyEligibilityRequirements;
  v18 = [(FAPropertyEligibilityRequirements *)&v26 init];
  if (v18)
  {
    v19 = [nameCopy copy];
    propertyName = v18->_propertyName;
    v18->_propertyName = v19;

    v18->_hasRecommendedMembers = members;
    v21 = [dCopy copy];
    expectedMediaAltDSID = v18->_expectedMediaAltDSID;
    v18->_expectedMediaAltDSID = v21;

    v18->_serverEligibility = eligibility;
    v23 = [dsCopy copy];
    activeBundleIDs = v18->_activeBundleIDs;
    v18->_activeBundleIDs = v23;

    objc_storeStrong(&v18->_serverPayload, payload);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  propertyName = self->_propertyName;
  coderCopy = coder;
  [coderCopy encodeObject:propertyName forKey:@"propertyName"];
  [coderCopy encodeBool:self->_hasRecommendedMembers forKey:@"has-recommended-members"];
  [coderCopy encodeObject:self->_expectedMediaAltDSID forKey:@"media-altDSID-matches"];
  [coderCopy encodeBool:self->_serverEligibility forKey:@"server-journey-eligibility"];
  [coderCopy encodeObject:self->_activeBundleIDs forKey:@"active-apps"];
  [coderCopy encodeObject:self->_serverPayload forKey:@"serverPayload"];
}

- (FAPropertyEligibilityRequirements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAPropertyEligibilityRequirements *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyName"];
    propertyName = v5->_propertyName;
    v5->_propertyName = v6;

    v5->_hasRecommendedMembers = [coderCopy decodeBoolForKey:@"has-recommended-members"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"media-altDSID-matches"];
    expectedMediaAltDSID = v5->_expectedMediaAltDSID;
    v5->_expectedMediaAltDSID = v8;

    v5->_serverEligibility = [coderCopy decodeBoolForKey:@"server-journey-eligibility"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"active-apps"];
    activeBundleIDs = v5->_activeBundleIDs;
    v5->_activeBundleIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"serverPayload"];
    serverPayload = v5->_serverPayload;
    v5->_serverPayload = v20;
  }

  return v5;
}

@end