@interface PKDisplayablePassEntitlement
+ (id)_displayableEntitlementFromEntitlementTemplateType:(void *)type carKeyEntitlementValue:(void *)value templateFields:(void *)fields entitlementTemplates:(void *)templates sharedEntitlement:(void *)entitlement entitlement:(void *)a8 pass:;
+ (id)localizedEntitlementFromCarKeyEntitlement:(id)entitlement pass:(id)pass;
+ (id)localizedEntitlementFromCarKeySharedEntitlement:(id)entitlement;
+ (id)localizedEntitlementsFromDisplayableEntitlements:(id)entitlements pass:(id)pass;
+ (void)_entitlementTemplatesUsingCachedTemplates:(void *)templates completion:;
+ (void)localizedEntitlementsFromDisplayableEntitlements:(id)entitlements pass:(id)pass useCachedTemplates:(BOOL)templates completion:(id)completion;
+ (void)localizedEntitlementsFromEntitlements:(id)entitlements pass:(id)pass useCachedTemplates:(BOOL)templates completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (NSString)entitlementIdentifier;
- (PKDisplayablePassEntitlement)initWithCoder:(id)coder;
- (PKDisplayablePassEntitlement)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)replaceEntitlementWithSharedEntitlement:(id)entitlement;
- (void)replaceSharedEntitlementWithEntitlement:(id)entitlement;
@end

@implementation PKDisplayablePassEntitlement

+ (id)localizedEntitlementFromCarKeyEntitlement:(id)entitlement pass:(id)pass
{
  passCopy = pass;
  entitlementCopy = entitlement;
  entitlementTemplate = [entitlementCopy entitlementTemplate];
  value = [entitlementCopy value];
  templateFields = [entitlementCopy templateFields];
  v11 = [(PKDisplayablePassEntitlement *)self _displayableEntitlementFromEntitlementTemplateType:entitlementTemplate carKeyEntitlementValue:value templateFields:templateFields entitlementTemplates:0 sharedEntitlement:0 entitlement:entitlementCopy pass:passCopy];

  return v11;
}

+ (id)_displayableEntitlementFromEntitlementTemplateType:(void *)type carKeyEntitlementValue:(void *)value templateFields:(void *)fields entitlementTemplates:(void *)templates sharedEntitlement:(void *)entitlement entitlement:(void *)a8 pass:
{
  v14 = a2;
  typeCopy = type;
  valueCopy = value;
  fieldsCopy = fields;
  templatesCopy = templates;
  entitlementCopy = entitlement;
  v19 = a8;
  objc_opt_self();
  v20 = [PKDisplayablePassEntitlement alloc];
  if (v20)
  {
    v57.receiver = v20;
    v57.super_class = PKDisplayablePassEntitlement;
    v21 = objc_msgSendSuper2(&v57, sel_init, templatesCopy);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(v21 + 11, templates);
  objc_storeStrong(v21 + 12, entitlement);
  v21[10] = 0;
  v22 = v14;
  v23 = @"legacyCarKeyEntitlementTemplate";
  v24 = v23;
  if (v23 == v22)
  {

    goto LABEL_9;
  }

  if (v22 && v23)
  {
    v25 = [(__CFString *)v22 isEqualToString:v23];

    if (!v25)
    {
      goto LABEL_11;
    }

LABEL_9:
    v26 = PKAppletSubcredentialEntitlementTypeFromValue([typeCopy unsignedIntegerValue]);
    v27 = CarKeyLocalizedTitle(valueCopy, v26, v19);
    [v21 setLocalizedTitle:v27];

    v28 = CarKeyLocalizedDescriptionTitle(valueCopy, v26, v19);
    [v21 setLocalizedSubtitle:v28];

    v29 = PKLocalizedCredentialString(&cfstr_CarKeyEntitlem.isa, 0);
    [v21 setLocalizedGroup:v29];

    goto LABEL_18;
  }

LABEL_11:
  v30 = v22;
  v31 = @"carKeyEntitlementTemplateV2";
  v32 = v31;
  if (v31 == v30)
  {
  }

  else
  {
    if (!v22 || !v31)
    {

LABEL_20:
      v38 = [fieldsCopy objectForKeyedSubscript:{v30, templatesCopy}];
      v39 = v38;
      if (v38)
      {
        [v38 setFieldInserts:valueCopy];
        localizedTitle = [v39 localizedTitle];
        [v21 setLocalizedTitle:localizedTitle];

        localizedDescription = [v39 localizedDescription];
        [v21 setLocalizedSubtitle:localizedDescription];

        localizedGroup = [v39 localizedGroup];
        [v21 setLocalizedGroup:localizedGroup];

        icon = [v39 icon];
        [v21 setIconName:icon];

        [v21 setDisplayStyle:{objc_msgSend(v39, "displayStyle")}];
        [v21 setClearGroupWhenSelected:{objc_msgSend(v39, "clearGroupWhenSelected")}];
        [v21 setGroupPriority:{objc_msgSend(v39, "groupRenderingPriority")}];
      }

      else
      {
        v44 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __177__PKDisplayablePassEntitlement__displayableEntitlementFromEntitlementTemplateType_carKeyEntitlementValue_templateFields_entitlementTemplates_sharedEntitlement_entitlement_pass___block_invoke;
        v55[3] = &unk_1E79C8F80;
        v56 = v44;
        v45 = v44;
        [valueCopy enumerateKeysAndObjectsUsingBlock:v55];
        [v21 setLocalizedTitle:v30];
        v46 = [v45 copy];
        [v21 setLocalizedSubtitle:v46];

        [v21 setLocalizedGroup:&stru_1F227FD28];
        [v21 setDisplayStyle:1];
      }

      goto LABEL_24;
    }

    v33 = [(__CFString *)v30 isEqualToString:v31];

    if (!v33)
    {
      goto LABEL_20;
    }
  }

  v34 = PKAppletSubcredentialEntitlementTypeFromValue([typeCopy unsignedIntegerValue]);
  v35 = CarKeyLocalizedTitle(valueCopy, v34, v19);
  [v21 setLocalizedTitle:v35];

  v36 = CarKeyLocalizedDescriptionTitle(valueCopy, v34, v19);
  [v21 setLocalizedSubtitle:v36];

  v37 = PKLocalizedCredentialString(&cfstr_CarKeyEntitlem_0.isa, 0);
  [v21 setLocalizedGroup:v37];

LABEL_18:
  [v21 setDisplayStyle:2];
LABEL_24:
  v47 = v21[7];
  v21[7] = typeCopy;
  v48 = typeCopy;

  v49 = v21[1];
  v21[1] = v22;
  v50 = v22;

  v51 = v21[2];
  v21[2] = valueCopy;

  return v21;
}

+ (id)localizedEntitlementFromCarKeySharedEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlementIdentifier = [entitlementCopy entitlementIdentifier];
  v6 = [entitlementIdentifier containsString:@"CarKeyEntitlement-"];

  if (v6)
  {
    creationVersion = [entitlementCopy creationVersion];
    v8 = PKCarKeyEntitlementTemplateV2Identifier;
    if (creationVersion <= 1)
    {
      v8 = PKCarKeyLegacyEntitlementTemplateIdentifier;
    }

    v9 = *v8;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(entitlementCopy, "carKeyEntitlementValue")}];
    v11 = [(PKDisplayablePassEntitlement *)self _displayableEntitlementFromEntitlementTemplateType:v9 carKeyEntitlementValue:v10 templateFields:0 entitlementTemplates:0 sharedEntitlement:entitlementCopy entitlement:0 pass:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)localizedEntitlementsFromEntitlements:(id)entitlements pass:(id)pass useCachedTemplates:(BOOL)templates completion:(id)completion
{
  templatesCopy = templates;
  entitlementsCopy = entitlements;
  passCopy = pass;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__PKDisplayablePassEntitlement_localizedEntitlementsFromEntitlements_pass_useCachedTemplates_completion___block_invoke;
  v16[3] = &unk_1E79C8F08;
  v17 = entitlementsCopy;
  v18 = passCopy;
  v19 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  v14 = passCopy;
  v15 = entitlementsCopy;
  [(PKDisplayablePassEntitlement *)self _entitlementTemplatesUsingCachedTemplates:templatesCopy completion:v16];
}

void __105__PKDisplayablePassEntitlement_localizedEntitlementsFromEntitlements_pass_useCachedTemplates_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__PKDisplayablePassEntitlement_localizedEntitlementsFromEntitlements_pass_useCachedTemplates_completion___block_invoke_2;
  v7[3] = &unk_1E79C8EE0;
  v10 = *(a1 + 56);
  v8 = v3;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 pk_createArrayBySafelyApplyingBlock:v7];
  (*(*(a1 + 48) + 16))();
}

id __105__PKDisplayablePassEntitlement_localizedEntitlementsFromEntitlements_pass_useCachedTemplates_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v4 entitlementTemplate];
  v6 = [v4 value];
  v7 = [v4 templateFields];
  v8 = [(PKDisplayablePassEntitlement *)v3 _displayableEntitlementFromEntitlementTemplateType:v5 carKeyEntitlementValue:v6 templateFields:v7 entitlementTemplates:*(a1 + 32) sharedEntitlement:0 entitlement:v4 pass:*(a1 + 40)];

  return v8;
}

+ (void)_entitlementTemplatesUsingCachedTemplates:(void *)templates completion:
{
  templatesCopy = templates;
  objc_opt_self();
  v5 = objc_alloc_init(PKMAEntitlementTemplateManager);
  v6 = v5;
  if (a2)
  {
    cachedEntitlementTemplates = [(PKMAEntitlementTemplateManager *)v5 cachedEntitlementTemplates];
    templatesCopy[2](templatesCopy, cachedEntitlementTemplates);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__PKDisplayablePassEntitlement__entitlementTemplatesUsingCachedTemplates_completion___block_invoke;
    v8[3] = &unk_1E79C5688;
    v9 = templatesCopy;
    [(PKMAEntitlementTemplateManager *)v6 entitlementTemplates:v8];
  }
}

+ (id)localizedEntitlementsFromDisplayableEntitlements:(id)entitlements pass:(id)pass
{
  entitlementsCopy = entitlements;
  passCopy = pass;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKDisplayablePassEntitlement_localizedEntitlementsFromDisplayableEntitlements_pass___block_invoke;
  v10[3] = &unk_1E79C47C0;
  v10[4] = &v11;
  [self localizedEntitlementsFromDisplayableEntitlements:entitlementsCopy pass:passCopy useCachedTemplates:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

+ (void)localizedEntitlementsFromDisplayableEntitlements:(id)entitlements pass:(id)pass useCachedTemplates:(BOOL)templates completion:(id)completion
{
  templatesCopy = templates;
  entitlementsCopy = entitlements;
  passCopy = pass;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__PKDisplayablePassEntitlement_localizedEntitlementsFromDisplayableEntitlements_pass_useCachedTemplates_completion___block_invoke;
  v16[3] = &unk_1E79C8F08;
  v17 = entitlementsCopy;
  v18 = passCopy;
  v19 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  v14 = passCopy;
  v15 = entitlementsCopy;
  [(PKDisplayablePassEntitlement *)self _entitlementTemplatesUsingCachedTemplates:templatesCopy completion:v16];
}

void __116__PKDisplayablePassEntitlement_localizedEntitlementsFromDisplayableEntitlements_pass_useCachedTemplates_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__PKDisplayablePassEntitlement_localizedEntitlementsFromDisplayableEntitlements_pass_useCachedTemplates_completion___block_invoke_2;
  v7[3] = &unk_1E79C8F30;
  v10 = *(a1 + 56);
  v8 = v3;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 pk_createArrayBySafelyApplyingBlock:v7];
  (*(*(a1 + 48) + 16))();
}

id __116__PKDisplayablePassEntitlement_localizedEntitlementsFromDisplayableEntitlements_pass_useCachedTemplates_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2[1];
  v5 = a2;
  v6 = [v5 value];
  v7 = v5[2];
  v8 = *(a1 + 32);
  v9 = [v5 sharedEntitlement];
  v10 = [v5 entitlement];

  v11 = [(PKDisplayablePassEntitlement *)v3 _displayableEntitlementFromEntitlementTemplateType:v4 carKeyEntitlementValue:v6 templateFields:v7 entitlementTemplates:v8 sharedEntitlement:v9 entitlement:v10 pass:*(a1 + 40)];

  return v11;
}

void __177__PKDisplayablePassEntitlement__displayableEntitlementFromEntitlementTemplateType_carKeyEntitlementValue_templateFields_entitlementTemplates_sharedEntitlement_entitlement_pass___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __177__PKDisplayablePassEntitlement__displayableEntitlementFromEntitlementTemplateType_carKeyEntitlementValue_templateFields_entitlementTemplates_sharedEntitlement_entitlement_pass___block_invoke_2;
  v4[3] = &unk_1E79C8F58;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __177__PKDisplayablePassEntitlement__displayableEntitlementFromEntitlementTemplateType_carKeyEntitlementValue_templateFields_entitlementTemplates_sharedEntitlement_entitlement_pass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%@: %@", v6, v5];
}

void __85__PKDisplayablePassEntitlement__entitlementTemplatesUsingCachedTemplates_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to fetch entitlement templates: %@", &v10, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (PKDisplayablePassEntitlement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    if (self)
    {
      v31.receiver = self;
      v31.super_class = PKDisplayablePassEntitlement;
      self = [(PKDisplayablePassEntitlement *)&v31 init];
      if (self)
      {
        v5 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
        localizedTitle = self->_localizedTitle;
        self->_localizedTitle = v5;

        v7 = [dictionaryCopy PKStringForKey:@"localizedSubtitle"];
        localizedSubtitle = self->_localizedSubtitle;
        self->_localizedSubtitle = v7;

        v9 = [dictionaryCopy PKStringForKey:@"localizedGroup"];
        localizedGroup = self->_localizedGroup;
        self->_localizedGroup = v9;

        v11 = [dictionaryCopy PKNumberForKey:@"value"];
        value = self->_value;
        self->_value = v11;

        v13 = [PKPassEntitlement alloc];
        v14 = [dictionaryCopy PKDictionaryForKey:@"entitlement"];
        v15 = [(PKPassEntitlement *)v13 initWithDictionary:v14];
        entitlement = self->_entitlement;
        self->_entitlement = v15;

        v17 = [PKPassSharedEntitlement alloc];
        v18 = [dictionaryCopy PKDictionaryForKey:@"sharedEntitlement"];
        v19 = [(PKPassSharedEntitlement *)v17 initWithDictionary:v18];
        sharedEntitlement = self->_sharedEntitlement;
        self->_sharedEntitlement = v19;

        v21 = [dictionaryCopy PKStringForKey:@"entitlementTemplate"];
        entitlementTemplate = self->_entitlementTemplate;
        self->_entitlementTemplate = v21;

        v23 = [dictionaryCopy PKDictionaryForKey:@"templateFields"];
        templateFields = self->_templateFields;
        self->_templateFields = v23;

        v25 = [dictionaryCopy PKStringForKey:@"iconName"];
        iconName = self->_iconName;
        self->_iconName = v25;

        v27 = [dictionaryCopy PKStringForKey:@"displayStyle"];
        self->_displayStyle = PKPassEntitlementDisplayStyleFromString(v27);

        self->_clearGroupWhenSelected = [dictionaryCopy PKBoolForKey:@"clearGroupWhenSelected"];
        v28 = [dictionaryCopy PKNumberForKey:@"groupPriority"];
        self->_groupPriority = [v28 integerValue];
      }
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_localizedTitle forKeyedSubscript:@"localizedTitle"];
  [v3 setObject:self->_localizedSubtitle forKeyedSubscript:@"localizedSubtitle"];
  [v3 setObject:self->_localizedGroup forKeyedSubscript:@"localizedGroup"];
  [v3 setObject:self->_value forKeyedSubscript:@"value"];
  dictionaryRepresentation = [(PKPassEntitlement *)self->_entitlement dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"entitlement"];

  dictionaryRepresentation2 = [(PKPassSharedEntitlement *)self->_sharedEntitlement dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"sharedEntitlement"];

  [v3 setObject:self->_entitlementTemplate forKeyedSubscript:@"entitlementTemplate"];
  [v3 setObject:self->_templateFields forKeyedSubscript:@"templateFields"];
  [v3 setObject:self->_iconName forKeyedSubscript:@"iconName"];
  v6 = PKPassEntitlementDisplayStyleToString(self->_displayStyle);
  [v3 setObject:v6 forKeyedSubscript:@"displayStyle"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_clearGroupWhenSelected];
  [v3 setObject:v7 forKeyedSubscript:@"clearGroupWhenSelected"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_groupPriority];
  [v3 setObject:v8 forKeyedSubscript:@"groupPriority"];

  v9 = [v3 copy];

  return v9;
}

- (void)replaceEntitlementWithSharedEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlement = self->_entitlement;
  self->_entitlement = 0;

  sharedEntitlement = self->_sharedEntitlement;
  self->_sharedEntitlement = entitlementCopy;
}

- (void)replaceSharedEntitlementWithEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  sharedEntitlement = self->_sharedEntitlement;
  self->_sharedEntitlement = 0;

  entitlement = self->_entitlement;
  self->_entitlement = entitlementCopy;
}

- (NSString)entitlementIdentifier
{
  identifier = [(PKPassEntitlement *)self->_entitlement identifier];
  v4 = identifier;
  if (identifier)
  {
    entitlementIdentifier = identifier;
  }

  else
  {
    entitlementIdentifier = [(PKPassSharedEntitlement *)self->_sharedEntitlement entitlementIdentifier];
  }

  v6 = entitlementIdentifier;

  return v6;
}

- (PKDisplayablePassEntitlement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PKDisplayablePassEntitlement;
  v5 = [(PKDisplayablePassEntitlement *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedGroup"];
    localizedGroup = v5->_localizedGroup;
    v5->_localizedGroup = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedEntitlement"];
    sharedEntitlement = v5->_sharedEntitlement;
    v5->_sharedEntitlement = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlement"];
    entitlement = v5->_entitlement;
    v5->_entitlement = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlementTemplate"];
    entitlementTemplate = v5->_entitlementTemplate;
    v5->_entitlementTemplate = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"templateFields"];
    templateFields = v5->_templateFields;
    v5->_templateFields = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconName"];
    iconName = v5->_iconName;
    v5->_iconName = v27;

    v5->_displayStyle = [coderCopy decodeIntegerForKey:@"displayStyle"];
    v5->_clearGroupWhenSelected = [coderCopy decodeBoolForKey:@"clearGroupWhenSelected"];
    v5->_groupPriority = [coderCopy decodeIntegerForKey:@"groupPriority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedTitle = self->_localizedTitle;
  coderCopy = coder;
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
  [coderCopy encodeObject:self->_localizedGroup forKey:@"localizedGroup"];
  [coderCopy encodeObject:self->_sharedEntitlement forKey:@"sharedEntitlement"];
  [coderCopy encodeObject:self->_entitlement forKey:@"entitlement"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_entitlementTemplate forKey:@"entitlementTemplate"];
  [coderCopy encodeObject:self->_templateFields forKey:@"templateFields"];
  [coderCopy encodeObject:self->_iconName forKey:@"iconName"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [coderCopy encodeBool:self->_clearGroupWhenSelected forKey:@"clearGroupWhenSelected"];
  [coderCopy encodeInteger:self->_groupPriority forKey:@"groupPriority"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  [v6 appendFormat:@"localizedSubtitle: '%@'; ", self->_localizedSubtitle];
  [v6 appendFormat:@"localizedGroup: '%@'; ", self->_localizedGroup];
  [v6 appendFormat:@"value: '%@'; ", self->_value];
  [v6 appendFormat:@"entitlementTemplate: '%@'; ", self->_entitlementTemplate];
  [v6 appendFormat:@"templateFields: '%@'; ", self->_templateFields];
  [v6 appendFormat:@"clearGroupWhenSelected: '%i'; ", self->_clearGroupWhenSelected];
  [v6 appendFormat:@"iconName: '%@'; ", self->_iconName];
  [v6 appendFormat:@"style: %lu; ", self->_displayStyle];
  if (self->_sharedEntitlement)
  {
    [v6 appendFormat:@"sharedEntitlement: '%@'; ", self->_sharedEntitlement];
  }

  else
  {
    [v6 appendFormat:@"entitlement: '%@'; ", self->_entitlement];
  }

  [v6 appendFormat:@"groupPriority: %lu; ", self->_groupPriority];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_localizedTitle)
  {
    [array addObject:?];
  }

  if (self->_localizedSubtitle)
  {
    [v4 addObject:?];
  }

  if (self->_localizedGroup)
  {
    [v4 addObject:?];
  }

  if (self->_sharedEntitlement)
  {
    [v4 addObject:?];
  }

  if (self->_entitlement)
  {
    [v4 addObject:?];
  }

  if (self->_value)
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

  if (self->_iconName)
  {
    [v4 addObject:?];
  }

  if (self->_displayStyle)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v4 addObject:v5];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_clearGroupWhenSelected];
  [v4 addObject:v6];

  v7 = PKCombinedHash(17, v4);
  v8 = self->_groupPriority - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
LABEL_56:

          goto LABEL_57;
        }

        localizedTitle = self->_localizedTitle;
        v8 = v6->_localizedTitle;
        if (localizedTitle && v8)
        {
          if (([(NSString *)localizedTitle isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (localizedTitle != v8)
        {
          goto LABEL_55;
        }

        localizedSubtitle = self->_localizedSubtitle;
        v10 = v6->_localizedSubtitle;
        if (localizedSubtitle && v10)
        {
          if (([(NSString *)localizedSubtitle isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (localizedSubtitle != v10)
        {
          goto LABEL_55;
        }

        localizedGroup = self->_localizedGroup;
        v12 = v6->_localizedGroup;
        if (localizedGroup && v12)
        {
          if (([(NSString *)localizedGroup isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (localizedGroup != v12)
        {
          goto LABEL_55;
        }

        sharedEntitlement = self->_sharedEntitlement;
        v14 = v6->_sharedEntitlement;
        if (sharedEntitlement && v14)
        {
          if (![(PKPassSharedEntitlement *)sharedEntitlement isEqual:?])
          {
            goto LABEL_55;
          }
        }

        else if (sharedEntitlement != v14)
        {
          goto LABEL_55;
        }

        entitlement = self->_entitlement;
        v16 = v6->_entitlement;
        if (entitlement && v16)
        {
          if (![(PKPassEntitlement *)entitlement isEqual:?])
          {
            goto LABEL_55;
          }
        }

        else if (entitlement != v16)
        {
          goto LABEL_55;
        }

        value = self->_value;
        v18 = v6->_value;
        if (value && v18)
        {
          if (([(NSNumber *)value isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (value != v18)
        {
          goto LABEL_55;
        }

        entitlementTemplate = self->_entitlementTemplate;
        v20 = v6->_entitlementTemplate;
        if (entitlementTemplate && v20)
        {
          if (([(NSString *)entitlementTemplate isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (entitlementTemplate != v20)
        {
          goto LABEL_55;
        }

        templateFields = self->_templateFields;
        v22 = v6->_templateFields;
        if (templateFields && v22)
        {
          if (([(NSDictionary *)templateFields isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (templateFields != v22)
        {
          goto LABEL_55;
        }

        if (self->_clearGroupWhenSelected == v6->_clearGroupWhenSelected)
        {
          iconName = self->_iconName;
          v24 = v6->_iconName;
          if (iconName && v24)
          {
            if (([(NSString *)iconName isEqual:?]& 1) == 0)
            {
              goto LABEL_55;
            }
          }

          else if (iconName != v24)
          {
            goto LABEL_55;
          }

          if (self->_displayStyle == v6->_displayStyle)
          {
            LOBYTE(self) = self->_groupPriority == v6->_groupPriority;
            goto LABEL_56;
          }
        }

LABEL_55:
        LOBYTE(self) = 0;
        goto LABEL_56;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_57:

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKDisplayablePassEntitlement allocWithZone:zone];
  if (v4)
  {
    v25.receiver = v4;
    v25.super_class = PKDisplayablePassEntitlement;
    v5 = [(PKDisplayablePassEntitlement *)&v25 init];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_localizedTitle copy];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v6;

  v8 = [(NSString *)self->_localizedSubtitle copy];
  localizedSubtitle = v5->_localizedSubtitle;
  v5->_localizedSubtitle = v8;

  v10 = [(NSString *)self->_localizedGroup copy];
  localizedGroup = v5->_localizedGroup;
  v5->_localizedGroup = v10;

  v12 = [(PKPassSharedEntitlement *)self->_sharedEntitlement copy];
  sharedEntitlement = v5->_sharedEntitlement;
  v5->_sharedEntitlement = v12;

  v14 = [(PKPassEntitlement *)self->_entitlement copy];
  entitlement = v5->_entitlement;
  v5->_entitlement = v14;

  v16 = [(NSNumber *)self->_value copy];
  value = v5->_value;
  v5->_value = v16;

  v18 = [(NSString *)self->_entitlementTemplate copy];
  entitlementTemplate = v5->_entitlementTemplate;
  v5->_entitlementTemplate = v18;

  v20 = [(NSDictionary *)self->_templateFields copy];
  templateFields = v5->_templateFields;
  v5->_templateFields = v20;

  v5->_clearGroupWhenSelected = self->_clearGroupWhenSelected;
  v22 = [(NSString *)self->_iconName copy];
  iconName = v5->_iconName;
  v5->_iconName = v22;

  v5->_displayStyle = self->_displayStyle;
  v5->_groupPriority = self->_groupPriority;
  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  value = [(PKPassEntitlement *)self->_entitlement value];
  entitlement = [compareCopy entitlement];
  value2 = [entitlement value];

  if (value)
  {
    v8 = value2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    localizedTitle = self->_localizedTitle;
    localizedTitle = [compareCopy localizedTitle];
    v11 = [(NSString *)localizedTitle compare:localizedTitle];
  }

  else
  {
    v11 = [value compare:value2];
  }

  return v11;
}

@end