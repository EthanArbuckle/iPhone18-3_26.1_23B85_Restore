@interface PKPassEntitlement
- (BOOL)hasCanonicallyEquivalentRightsToPassEntitlement:(id)a3;
- (BOOL)intraAccountSharingEnabled;
- (BOOL)isEqual:(id)a3;
- (PKPassEntitlement)initWithCarKeyProfile:(id)a3 roles:(id)a4 active:(BOOL)a5 subcredentialIdentifier:(id)a6;
- (PKPassEntitlement)initWithCoder:(id)a3;
- (PKPassEntitlement)initWithDictionary:(id)a3;
- (PKPassEntitlement)initWithSubcredentialDictionary:(id)a3 active:(BOOL)a4 subcredentialIdentifier:(id)a5;
- (id)copyWithSuppressedShareability;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)subcredentialDictionaryRepresentation;
- (int64_t)carKeyEntitlementType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassEntitlement

- (PKPassEntitlement)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v32.receiver = self;
    v32.super_class = PKPassEntitlement;
    self = [(PKPassEntitlement *)&v32 init];
    if (!self)
    {
LABEL_11:
      self = self;
      v15 = self;
      goto LABEL_12;
    }

    v5 = [v4 PKStringForKey:@"entitlementIdentifier"];
    identifier = self->_identifier;
    self->_identifier = v5;

    if (self->_identifier)
    {
      v7 = [PKPassShareTimeConfiguration alloc];
      v8 = [v4 PKDictionaryForKey:@"timeConfiguration"];
      v9 = [(PKPassShareTimeConfiguration *)v7 initWithDictionary:v8];
      timeConfiguration = self->_timeConfiguration;
      self->_timeConfiguration = v9;

      v11 = [v4 PKStringForKey:@"entitlementTemplateType"];
      entitlementTemplate = self->_entitlementTemplate;
      self->_entitlementTemplate = v11;

      self->_active = [v4 PKBoolForKey:@"active"];
      v13 = [v4 objectForKeyedSubscript:@"hasRemainingShares"];
      if (v13)
      {
        v14 = [v4 PKBoolForKey:@"hasRemainingShares"];
      }

      else
      {
        v14 = 1;
      }

      self->_hasRemainingShares = v14;

      v16 = [v4 PKDictionaryForKey:@"templateFields"];
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18 = [v16 PKDictionaryForKey:@"title"];
      [v17 setObject:v18 forKeyedSubscript:@"title"];

      v19 = [v16 PKDictionaryForKey:@"description"];
      [v17 setObject:v19 forKeyedSubscript:@"description"];

      v20 = [v17 count];
      if (v20)
      {
        v20 = [v17 copy];
      }

      templateFields = self->_templateFields;
      self->_templateFields = v20;

      v22 = [v4 PKArrayContaining:objc_opt_class() forKey:@"shareability"];
      v23 = PKSharingCapabilityShareabilitiesFromStringArray(v22);
      shareability = self->_shareability;
      self->_shareability = v23;

      v25 = [v4 PKArrayContaining:objc_opt_class() forKey:@"manageability"];
      v26 = PKSharingCapabilityVisibilitiesFromStringArray(v25);
      manageability = self->_manageability;
      self->_manageability = v26;

      v28 = [v4 PKArrayContaining:objc_opt_class() forKey:@"visibility"];
      v29 = PKSharingCapabilityVisibilitiesFromStringArray(v28);
      visibility = self->_visibility;
      self->_visibility = v29;

      goto LABEL_11;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (PKPassEntitlement)initWithSubcredentialDictionary:(id)a3 active:(BOOL)a4 subcredentialIdentifier:(id)a5
{
  v6 = a4;
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 PKNumberForKey:@"accessProfile"];
    v11 = [v8 PKStringForKey:@"accountRole"];
    v12 = v11;
    v13 = @"0000";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    if (v10)
    {
      v41[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      self = [(PKPassEntitlement *)self initWithCarKeyProfile:v10 roles:v15 active:v6 subcredentialIdentifier:v9];
    }

    else
    {
      v40.receiver = self;
      v40.super_class = PKPassEntitlement;
      v17 = [(PKPassEntitlement *)&v40 init];
      if (v17)
      {
        v18 = [v8 PKNumberForKey:@"value"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v8 PKNumberForKey:@"rights"];
        }

        value = v17->_value;
        v17->_value = v20;

        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", @"CarKeyEntitlement-", v17->_value];
        identifier = v17->_identifier;
        v17->_identifier = v22;

        objc_storeStrong(&v17->_subcredentialIdentifier, a5);
        v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v25 = [v8 PKStringForKey:@"description"];
        [v24 setObject:v25 forKeyedSubscript:@"title"];

        v26 = [v8 PKStringForKey:@"longDescription"];
        [v24 setObject:v26 forKeyedSubscript:@"description"];

        if ([v24 count])
        {
          v27 = v24;
        }

        else
        {
          v27 = 0;
        }

        objc_storeStrong(&v17->_templateFields, v27);
        objc_storeStrong(&v17->_entitlementTemplate, @"legacyCarKeyEntitlementTemplate");
        v28 = 1;
        if (!v6)
        {
          v28 = [v8 PKBoolForKey:@"active"];
        }

        v17->_active = v28;
        v29 = [v8 PKArrayContaining:objc_opt_class() forKey:@"shareability"];
        v30 = PKSharingCapabilityShareabilitiesFromStringArray(v29);
        shareability = v17->_shareability;
        v17->_shareability = v30;

        v32 = [v8 PKArrayContaining:objc_opt_class() forKey:@"manageability"];
        v33 = PKSharingCapabilityVisibilitiesFromStringArray(v32);
        manageability = v17->_manageability;
        v17->_manageability = v33;

        v35 = [v8 PKArrayContaining:objc_opt_class() forKey:@"visibility"];
        v36 = PKSharingCapabilityVisibilitiesFromStringArray(v35);
        visibility = v17->_visibility;
        v17->_visibility = v36;

        activeCapabilityRole = v17->_activeCapabilityRole;
        v17->_activeCapabilityRole = 0;

        v17->_hasRemainingShares = 1;
      }

      self = v17;
    }

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PKPassEntitlement)initWithCarKeyProfile:(id)a3 roles:(id)a4 active:(BOOL)a5 subcredentialIdentifier:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v32 = 0;
    goto LABEL_28;
  }

  v64.receiver = self;
  v64.super_class = PKPassEntitlement;
  v14 = [(PKPassEntitlement *)&v64 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_27;
  }

  v54 = v13;
  objc_storeStrong(&v14->_value, a3);
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", @"CarKeyEntitlement-", v15->_value];
  identifier = v15->_identifier;
  v15->_identifier = v16;

  objc_storeStrong(&v15->_subcredentialIdentifier, a6);
  objc_storeStrong(&v15->_entitlementTemplate, @"carKeyEntitlementTemplateV2");
  v15->_active = a5;
  v56 = v15;
  objc_storeStrong(&v15->_rawRoles, a4);
  v59 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v58 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v55 = v12;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (!v19)
  {
    v21 = 0;
    v23 = 1;
    goto LABEL_22;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v61;
  v23 = 1;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v61 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v25 = [[PKPassEntitlementCapabilitySet alloc] initWithRole:*(*(&v60 + 1) + 8 * i)];
      v26 = v25;
      if (v25)
      {
        if (-[PKPassEntitlementCapabilitySet isOwner](v25, "isOwner") && [v18 count] == 1)
        {
          v27 = [(NSString *)v56->_identifier stringByAppendingString:@"-Owner"];
          v28 = v56->_identifier;
          v56->_identifier = v27;
        }

        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementCapabilitySet shareability](v26, "shareability")}];
        [v59 addObject:v29];

        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementCapabilitySet visibility](v26, "visibility")}];
        [v58 addObject:v30];

        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementCapabilitySet manageability](v26, "manageability")}];
        [v57 addObject:v31];

        if (v23)
        {
          v23 = [(PKPassEntitlementCapabilitySet *)v26 intraAccountSharingEnabled];
          if (v21)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v23 = 0;
          if (v21)
          {
            goto LABEL_17;
          }
        }

        v21 = [(PKPassEntitlementCapabilitySet *)v26 capabilityRoleValue];
      }

LABEL_17:
    }

    v20 = [v18 countByEnumeratingWithState:&v60 objects:v65 count:16];
  }

  while (v20);
LABEL_22:

  v33 = [v59 allObjects];
  v34 = [v33 sortedArrayUsingSelector:sel_compare_];
  v15 = v56;
  shareability = v56->_shareability;
  v56->_shareability = v34;

  v36 = [v57 allObjects];
  v37 = [v36 sortedArrayUsingSelector:sel_compare_];
  manageability = v56->_manageability;
  v56->_manageability = v37;

  v39 = [v58 allObjects];
  v40 = [v39 sortedArrayUsingSelector:sel_compare_];
  visibility = v56->_visibility;
  v56->_visibility = v40;

  activeCapabilityRole = v56->_activeCapabilityRole;
  v56->_activeCapabilityRole = &unk_1F23B5930;

  v12 = v55;
  if (v56->_active)
  {
    if (v23)
    {
      v43 = [(NSArray *)v56->_shareability lastObject];
      activeShareability = v56->_activeShareability;
      v56->_activeShareability = v43;

      v45 = [(NSArray *)v56->_manageability lastObject];
      activeManageability = v56->_activeManageability;
      v56->_activeManageability = v45;

      v47 = [(NSArray *)v56->_visibility lastObject];
      activeVisibility = v56->_activeVisibility;
      v56->_activeVisibility = v47;

      objc_storeStrong(&v56->_activeCapabilityRole, v21);
    }

    v49 = v56->_shareability;
    v50 = MEMORY[0x1E695E0F0];
    v56->_shareability = MEMORY[0x1E695E0F0];

    v51 = v56->_manageability;
    v56->_manageability = v50;

    v52 = v56->_visibility;
    v56->_visibility = v50;
  }

  v56->_hasRemainingShares = 1;

  v13 = v54;
LABEL_27:
  self = v15;
  v32 = self;
LABEL_28:

  return v32;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"entitlementIdentifier"];
  v4 = [(PKPassShareTimeConfiguration *)self->_timeConfiguration dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"timeConfiguration"];

  [v3 setObject:self->_entitlementTemplate forKeyedSubscript:@"entitlementTemplateType"];
  [v3 setObject:self->_templateFields forKeyedSubscript:@"templateFields"];
  v5 = PKSharingCapabilityShareabilitiesToStringArray(self->_shareability);
  [v3 setObject:v5 forKeyedSubscript:@"shareability"];

  v6 = PKSharingCapabilityManageabilitiesToStringArray(self->_manageability);
  [v3 setObject:v6 forKeyedSubscript:@"manageability"];

  v7 = PKSharingCapabilityVisibilitiesToStringArray(self->_visibility);
  [v3 setObject:v7 forKeyedSubscript:@"visibility"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  [v3 setObject:v8 forKeyedSubscript:@"active"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasRemainingShares];
  [v3 setObject:v9 forKeyedSubscript:@"hasRemainingShares"];

  v10 = [v3 copy];

  return v10;
}

- (id)subcredentialDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_value forKeyedSubscript:@"value"];
  v4 = [(NSDictionary *)self->_templateFields objectForKeyedSubscript:@"title"];
  [v3 setObject:v4 forKeyedSubscript:@"description"];

  v5 = [(NSDictionary *)self->_templateFields objectForKeyedSubscript:@"description"];
  [v3 setObject:v5 forKeyedSubscript:@"longDescription"];

  v6 = [(NSArray *)self->_rawRoles firstObject];
  [v3 setObject:v6 forKeyedSubscript:@"accountRole"];

  v7 = self->_entitlementTemplate;
  v8 = v7;
  if (v7 == @"carKeyEntitlementTemplateV2")
  {

    goto LABEL_7;
  }

  if (!v7 || !@"carKeyEntitlementTemplateV2")
  {

    goto LABEL_9;
  }

  v9 = [(__CFString *)v7 isEqualToString:@"carKeyEntitlementTemplateV2"];

  if (v9)
  {
LABEL_7:
    [v3 setObject:self->_value forKeyedSubscript:@"accessProfile"];
  }

LABEL_9:
  v10 = [v3 copy];

  return v10;
}

- (BOOL)intraAccountSharingEnabled
{
  if (!self->_activeCapabilityRole)
  {
    return 1;
  }

  v2 = [[PKPassEntitlementCapabilitySet alloc] initWithIntRole:[(NSNumber *)self->_activeCapabilityRole unsignedShortValue]];
  v3 = [(PKPassEntitlementCapabilitySet *)v2 intraAccountSharingEnabled];

  return v3;
}

- (int64_t)carKeyEntitlementType
{
  v2 = [(NSNumber *)self->_value unsignedIntegerValue];

  return PKAppletSubcredentialEntitlementTypeFromValue(v2);
}

- (PKPassEntitlement)initWithCoder:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = PKPassEntitlement;
  v5 = [(PKPassEntitlement *)&v61 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeConfiguration"];
    timeConfiguration = v5->_timeConfiguration;
    v5->_timeConfiguration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlementTemplate"];
    entitlementTemplate = v5->_entitlementTemplate;
    v5->_entitlementTemplate = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"templateFields"];
    templateFields = v5->_templateFields;
    v5->_templateFields = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"active"];
    v5->_active = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasRemainingShares"];
    v5->_hasRemainingShares = [v20 BOOLValue];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"shareability"];
    v25 = PKSharingCapabilityShareabilitiesFromStringArray(v24);
    shareability = v5->_shareability;
    v5->_shareability = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"manageability"];
    v31 = PKSharingCapabilityManageabilitiesFromStringArray(v30);
    manageability = v5->_manageability;
    v5->_manageability = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"visibility"];
    v37 = PKSharingCapabilityVisibilitiesFromStringArray(v36);
    visibility = v5->_visibility;
    v5->_visibility = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"rawRoles"];
    rawRoles = v5->_rawRoles;
    v5->_rawRoles = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeCapabilityRole"];
    activeCapabilityRole = v5->_activeCapabilityRole;
    v5->_activeCapabilityRole = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeShareability"];
    v51 = v50;
    if (v50)
    {
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PKSharingCapabilityShareabilityFromString(v50)];
      activeShareability = v5->_activeShareability;
      v5->_activeShareability = v52;
    }

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeManageability"];

    if (v54)
    {
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PKSharingCapabilityManageabilityFromString(v54)];
      activeManageability = v5->_activeManageability;
      v5->_activeManageability = v55;
    }

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeVisibility"];

    if (v57)
    {
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PKSharingCapabilityVisibilityFromString(v57)];
      activeVisibility = v5->_activeVisibility;
      v5->_activeVisibility = v58;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_timeConfiguration forKey:@"timeConfiguration"];
  [v5 encodeObject:self->_entitlementTemplate forKey:@"entitlementTemplate"];
  [v5 encodeObject:self->_templateFields forKey:@"templateFields"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  [v5 encodeObject:v6 forKey:@"active"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasRemainingShares];
  [v5 encodeObject:v7 forKey:@"hasRemainingShares"];

  v8 = PKSharingCapabilityShareabilitiesToStringArray(self->_shareability);
  [v5 encodeObject:v8 forKey:@"shareability"];

  v9 = PKSharingCapabilityManageabilitiesToStringArray(self->_manageability);
  [v5 encodeObject:v9 forKey:@"manageability"];

  v10 = PKSharingCapabilityVisibilitiesToStringArray(self->_visibility);
  [v5 encodeObject:v10 forKey:@"visibility"];

  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_subcredentialIdentifier forKey:@"subcredentialIdentifier"];
  [v5 encodeObject:self->_rawRoles forKey:@"rawRoles"];
  [v5 encodeObject:self->_activeCapabilityRole forKey:@"activeCapabilityRole"];
  v11 = PKSharingCapabilityShareabilityToString([(NSNumber *)self->_activeShareability unsignedIntegerValue]);
  [v5 encodeObject:v11 forKey:@"activeShareability"];

  v12 = PKSharingCapabilityManageabilityToString([(NSNumber *)self->_activeManageability unsignedIntegerValue]);
  [v5 encodeObject:v12 forKey:@"activeManageability"];

  v13 = PKSharingCapabilityVisibilityToString([(NSNumber *)self->_activeVisibility unsignedIntegerValue]);
  [v5 encodeObject:v13 forKey:@"activeVisibility"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"timeConfiguration: '%@'; ", self->_timeConfiguration];
  [v6 appendFormat:@"entitlementTemplate: '%@'; ", self->_entitlementTemplate];
  [v6 appendFormat:@"templateFields: '%@'; ", self->_templateFields];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  [v6 appendFormat:@"active: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasRemainingShares];
  [v6 appendFormat:@"hasRemainingShares: '%@'; ", v8];

  v9 = PKSharingCapabilityShareabilitiesToStringArray(self->_shareability);
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"shareability: '%@'; ", v10];

  v11 = PKSharingCapabilityManageabilitiesToStringArray(self->_manageability);
  v12 = [v11 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"manageability: '%@'; ", v12];

  v13 = PKSharingCapabilityVisibilitiesToStringArray(self->_visibility);
  v14 = [v13 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"visibility: '%@'; ", v14];

  [v6 appendFormat:@"value: '%@'; ", self->_value];
  [v6 appendFormat:@"subcredentialIdentifier: '%@'; ", self->_subcredentialIdentifier];
  if (self->_active)
  {
    [v6 appendFormat:@"activeCapabilityRole: '%@'; ", self->_activeCapabilityRole];
    activeShareability = self->_activeShareability;
    if (activeShareability)
    {
      v16 = PKSharingCapabilityShareabilityToString([(NSNumber *)activeShareability unsignedIntegerValue]);
      [v6 appendFormat:@"activeShareability: '%@'; ", v16];
    }

    else
    {
      [v6 appendFormat:@"activeShareability: '%@'; ", @"nil"];
    }

    activeManageability = self->_activeManageability;
    if (activeManageability)
    {
      v18 = PKSharingCapabilityManageabilityToString([(NSNumber *)activeManageability unsignedIntegerValue]);
      [v6 appendFormat:@"activeManageability: '%@'; ", v18];
    }

    else
    {
      [v6 appendFormat:@"activeManageability: '%@'; ", @"nil"];
    }

    activeVisibility = self->_activeVisibility;
    if (activeVisibility)
    {
      v20 = PKSharingCapabilityVisibilityToString([(NSNumber *)activeVisibility unsignedIntegerValue]);
      [v6 appendFormat:@"activeVisibility: '%@'; ", v20];
    }

    else
    {
      [v6 appendFormat:@"activeVisibility: '%@'; ", @"nil"];
    }
  }

  [v6 appendFormat:@">"];
  v21 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v21;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_timeConfiguration)
  {
    [v4 addObject:?];
  }

  if (self->_entitlementTemplate)
  {
    [v4 addObject:?];
  }

  if (self->_templateFields)
  {
    [v4 addObject:?];
  }

  if (self->_shareability)
  {
    [v4 addObject:?];
  }

  if (self->_manageability)
  {
    [v4 addObject:?];
  }

  if (self->_visibility)
  {
    [v4 addObject:?];
  }

  if (self->_value)
  {
    [v4 addObject:?];
  }

  if (self->_activeCapabilityRole)
  {
    [v4 addObject:?];
  }

  if (self->_subcredentialIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_activeShareability)
  {
    [v4 addObject:?];
  }

  if (self->_activeManageability)
  {
    [v4 addObject:?];
  }

  if (self->_activeVisibility)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_active - v5 + 32 * v5;
  v7 = self->_hasRemainingShares - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
LABEL_76:

          goto LABEL_77;
        }

        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_75;
        }

        timeConfiguration = self->_timeConfiguration;
        v10 = v6->_timeConfiguration;
        if (timeConfiguration && v10)
        {
          if (![(PKPassShareTimeConfiguration *)timeConfiguration isEqual:?])
          {
            goto LABEL_75;
          }
        }

        else if (timeConfiguration != v10)
        {
          goto LABEL_75;
        }

        entitlementTemplate = self->_entitlementTemplate;
        v12 = v6->_entitlementTemplate;
        if (entitlementTemplate && v12)
        {
          if (([(NSString *)entitlementTemplate isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (entitlementTemplate != v12)
        {
          goto LABEL_75;
        }

        templateFields = self->_templateFields;
        v14 = v6->_templateFields;
        if (templateFields && v14)
        {
          if (([(NSDictionary *)templateFields isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (templateFields != v14)
        {
          goto LABEL_75;
        }

        shareability = self->_shareability;
        v16 = v6->_shareability;
        if (shareability && v16)
        {
          if (([(NSArray *)shareability isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (shareability != v16)
        {
          goto LABEL_75;
        }

        manageability = self->_manageability;
        v18 = v6->_manageability;
        if (manageability && v18)
        {
          if (([(NSArray *)manageability isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (manageability != v18)
        {
          goto LABEL_75;
        }

        visibility = self->_visibility;
        v20 = v6->_visibility;
        if (visibility && v20)
        {
          if (([(NSArray *)visibility isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (visibility != v20)
        {
          goto LABEL_75;
        }

        value = self->_value;
        v22 = v6->_value;
        if (value && v22)
        {
          if (([(NSNumber *)value isEqual:?]& 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (value != v22)
        {
          goto LABEL_75;
        }

        subcredentialIdentifier = v6->_subcredentialIdentifier;
        v24 = self->_subcredentialIdentifier;
        v25 = subcredentialIdentifier;
        v26 = v25;
        if (v24 == v25)
        {
        }

        else
        {
          if (!v24 || !v25)
          {

            goto LABEL_75;
          }

          v27 = [(NSString *)v24 isEqualToString:v25];

          if (!v27)
          {
            goto LABEL_75;
          }
        }

        if (self->_active == v6->_active)
        {
          activeCapabilityRole = self->_activeCapabilityRole;
          v29 = v6->_activeCapabilityRole;
          if (activeCapabilityRole && v29)
          {
            if (([(NSNumber *)activeCapabilityRole isEqual:?]& 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else if (activeCapabilityRole != v29)
          {
            goto LABEL_75;
          }

          activeShareability = self->_activeShareability;
          v31 = v6->_activeShareability;
          if (activeShareability && v31)
          {
            if (([(NSNumber *)activeShareability isEqual:?]& 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else if (activeShareability != v31)
          {
            goto LABEL_75;
          }

          activeManageability = self->_activeManageability;
          v33 = v6->_activeManageability;
          if (activeManageability && v33)
          {
            if (([(NSNumber *)activeManageability isEqual:?]& 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else if (activeManageability != v33)
          {
            goto LABEL_75;
          }

          activeVisibility = self->_activeVisibility;
          v35 = v6->_activeVisibility;
          if (activeVisibility && v35)
          {
            if (([(NSNumber *)activeVisibility isEqual:?]& 1) != 0)
            {
LABEL_73:
              LOBYTE(self) = self->_hasRemainingShares == v6->_hasRemainingShares;
              goto LABEL_76;
            }
          }

          else if (activeVisibility == v35)
          {
            goto LABEL_73;
          }
        }

LABEL_75:
        LOBYTE(self) = 0;
        goto LABEL_76;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_77:

  return self;
}

- (BOOL)hasCanonicallyEquivalentRightsToPassEntitlement:(id)a3
{
  v4 = a3;
  timeConfiguration = self->_timeConfiguration;
  v6 = v4[4];
  if (timeConfiguration)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (timeConfiguration != v6)
    {
      goto LABEL_25;
    }
  }

  else if (![(PKPassShareTimeConfiguration *)timeConfiguration isEqual:?])
  {
    goto LABEL_25;
  }

  if (self->_active != *(v4 + 16))
  {
    goto LABEL_25;
  }

  activeShareability = self->_activeShareability;
  v10 = v4[7];
  if (activeShareability && v10)
  {
    if (([(NSNumber *)activeShareability isEqual:?]& 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (activeShareability != v10)
  {
    goto LABEL_25;
  }

  activeManageability = self->_activeManageability;
  v12 = v4[8];
  if (activeManageability && v12)
  {
    if (([(NSNumber *)activeManageability isEqual:?]& 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (activeManageability != v12)
  {
    goto LABEL_25;
  }

  activeVisibility = self->_activeVisibility;
  v14 = v4[9];
  if (activeVisibility && v14)
  {
    if (([(NSNumber *)activeVisibility isEqual:?]& 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (activeVisibility != v14)
  {
    goto LABEL_25;
  }

  shareability = self->_shareability;
  v18 = v4[11];
  if (shareability != v18)
  {
    v15 = 0;
    if (!shareability || !v18)
    {
      goto LABEL_26;
    }

    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_shareability];
    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4[11]];
    v21 = v20;
    if (v19 && v20)
    {
      v22 = [v19 isEqual:v20];

      if ((v22 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {

      if (v19 != v21)
      {
        goto LABEL_25;
      }
    }
  }

  manageability = self->_manageability;
  v24 = v4[12];
  if (manageability == v24)
  {
    goto LABEL_43;
  }

  v15 = 0;
  if (!manageability || !v24)
  {
    goto LABEL_26;
  }

  v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_manageability];
  v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4[12]];
  v27 = v26;
  if (!v25 || !v26)
  {

    if (v25 == v27)
    {
      goto LABEL_43;
    }

LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  v28 = [v25 isEqual:v26];

  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_43:
  visibility = self->_visibility;
  v30 = v4[13];
  if (visibility == v30)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (visibility && v30)
    {
      v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_visibility];
      v32 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4[13]];
      v33 = v32;
      if (v31 && v32)
      {
        v15 = [v31 isEqual:v32];
      }

      else
      {
        v15 = v31 == v32;
      }
    }
  }

LABEL_26:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPassEntitlement allocWithZone:?]];
  v5 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [(PKPassShareTimeConfiguration *)self->_timeConfiguration copy];
  timeConfiguration = v4->_timeConfiguration;
  v4->_timeConfiguration = v7;

  v9 = [(NSString *)self->_entitlementTemplate copy];
  entitlementTemplate = v4->_entitlementTemplate;
  v4->_entitlementTemplate = v9;

  v11 = [(NSDictionary *)self->_templateFields copy];
  templateFields = v4->_templateFields;
  v4->_templateFields = v11;

  v13 = [(NSArray *)self->_shareability copy];
  shareability = v4->_shareability;
  v4->_shareability = v13;

  v15 = [(NSArray *)self->_manageability copy];
  manageability = v4->_manageability;
  v4->_manageability = v15;

  v17 = [(NSArray *)self->_visibility copy];
  visibility = v4->_visibility;
  v4->_visibility = v17;

  v19 = [(NSNumber *)self->_value copy];
  value = v4->_value;
  v4->_value = v19;

  v4->_active = self->_active;
  v4->_hasRemainingShares = self->_hasRemainingShares;
  v21 = [(NSString *)self->_subcredentialIdentifier copy];
  subcredentialIdentifier = v4->_subcredentialIdentifier;
  v4->_subcredentialIdentifier = v21;

  v23 = [(NSArray *)self->_rawRoles copy];
  rawRoles = v4->_rawRoles;
  v4->_rawRoles = v23;

  v25 = [(NSNumber *)self->_activeCapabilityRole copy];
  activeCapabilityRole = v4->_activeCapabilityRole;
  v4->_activeCapabilityRole = v25;

  objc_storeStrong(&v4->_activeShareability, self->_activeShareability);
  objc_storeStrong(&v4->_activeManageability, self->_activeManageability);
  objc_storeStrong(&v4->_activeVisibility, self->_activeVisibility);
  return v4;
}

- (id)copyWithSuppressedShareability
{
  v2 = [(PKPassEntitlement *)self copy];
  v3 = v2[11];
  v2[11] = MEMORY[0x1E695E0F0];

  v4 = v2[7];
  v2[7] = &unk_1F23B5948;

  v5 = v2[10];
  if (v5)
  {
    v6 = v5;
    v7 = -[PKPassEntitlementCapabilitySet initWithIntRole:]([PKMutablePassEntitlementCapabilitySet alloc], "initWithIntRole:", [v6 unsignedIntValue]);
    [(PKMutablePassEntitlementCapabilitySet *)v7 setShareability:0];
    v8 = [(PKPassEntitlementCapabilitySet *)v7 capabilityRoleValue];
    v9 = v2[10];
    v2[10] = v8;
  }

  return v2;
}

@end