@interface MKFCKGuest
+ (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)model fromCloudModel:(id)cloudModel localRelationship:(id)relationship cloudAttributeName:(id)name parentRelationshipName:(id)relationshipName context:(id)context;
+ (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)model fromCloudModel:(id)cloudModel localRelationship:(id)relationship cloudAttributeName:(id)name parentRelationshipName:(id)relationshipName context:(id)context;
+ (id)_dictionaryRepresentationFromWeekDayScheduleRules:(id)rules cloudWeekDayScheduleRulesDictionary:(id)dictionary;
+ (id)_dictionaryRepresentationFromYearDayScheduleRules:(id)rules cloudYearDayScheduleRulesDictionary:(id)dictionary;
- (BOOL)_exportGuestAccessCodeFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportWeekDaySchedulesFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportYearDaySchedulesFromLocalModel:(id)model context:(id)context;
- (BOOL)_importGuestAccessCodeIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)model context:(id)context;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKGuest

+ (id)_dictionaryRepresentationFromYearDayScheduleRules:(id)rules cloudYearDayScheduleRulesDictionary:(id)dictionary
{
  v5 = MEMORY[0x277CBEB58];
  rulesCopy = rules;
  v7 = [v5 setWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __100__MKFCKGuest__dictionaryRepresentationFromYearDayScheduleRules_cloudYearDayScheduleRulesDictionary___block_invoke;
  v14 = &unk_278670EA8;
  v15 = v7;
  selfCopy = self;
  v8 = v7;
  [rulesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  allObjects = [v8 allObjects];

  return allObjects;
}

void __100__MKFCKGuest__dictionaryRepresentationFromYearDayScheduleRules_cloudYearDayScheduleRulesDictionary___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isValid])
  {
    v4 = [v3 dictionaryRepresentation];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 debugDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot export yearDayRule as it is not valid : %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_dictionaryRepresentationFromWeekDayScheduleRules:(id)rules cloudWeekDayScheduleRulesDictionary:(id)dictionary
{
  v5 = MEMORY[0x277CBEB58];
  rulesCopy = rules;
  v7 = [v5 setWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __100__MKFCKGuest__dictionaryRepresentationFromWeekDayScheduleRules_cloudWeekDayScheduleRulesDictionary___block_invoke;
  v14 = &unk_278670E80;
  v15 = v7;
  selfCopy = self;
  v8 = v7;
  [rulesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  allObjects = [v8 allObjects];

  return allObjects;
}

void __100__MKFCKGuest__dictionaryRepresentationFromWeekDayScheduleRules_cloudWeekDayScheduleRulesDictionary___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isValid])
  {
    v4 = [v3 dictionaryRepresentation];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 debugDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot export weekDayRule as it is not valid : %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)model fromCloudModel:(id)cloudModel localRelationship:(id)relationship cloudAttributeName:(id)name parentRelationshipName:(id)relationshipName context:(id)context
{
  modelCopy = model;
  relationshipNameCopy = relationshipName;
  contextCopy = context;
  relationshipCopy = relationship;
  v17 = [cloudModel valueForKey:name];
  name = [relationshipCopy name];

  v19 = [modelCopy valueForKey:name];

  v20 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v17, "count")}];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke;
  v40[3] = &unk_278670E30;
  v22 = v21;
  v41 = v22;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_2;
  v34[3] = &unk_278671EC0;
  v35 = v22;
  v23 = contextCopy;
  v36 = v23;
  v37 = modelCopy;
  v38 = relationshipNameCopy;
  v24 = v20;
  v39 = v24;
  v25 = relationshipNameCopy;
  v26 = modelCopy;
  v27 = v22;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_3;
  v31[3] = &unk_278670E58;
  v32 = v24;
  v33 = v23;
  v28 = v23;
  v29 = v24;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

  return 1;
}

void __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 copy];
  v6 = [_MKFYearDayScheduleRule populateYearDayScheduleRuleFromDictionary:v4 existingLocalModels:v5 context:*(a1 + 40)];

  if (v6)
  {
    [v6 setValue:*(a1 + 48) forKey:*(a1 + 56)];
    [*(a1 + 64) addObject:v6];
  }
}

void __139__MKFCKGuest__importYearDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v3];
  }
}

+ (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)model fromCloudModel:(id)cloudModel localRelationship:(id)relationship cloudAttributeName:(id)name parentRelationshipName:(id)relationshipName context:(id)context
{
  modelCopy = model;
  relationshipNameCopy = relationshipName;
  contextCopy = context;
  relationshipCopy = relationship;
  v17 = [cloudModel valueForKey:name];
  name = [relationshipCopy name];

  v19 = [modelCopy valueForKey:name];

  v20 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v17, "count")}];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke;
  v40[3] = &unk_278670DE0;
  v22 = v21;
  v41 = v22;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_2;
  v34[3] = &unk_278671EC0;
  v35 = v22;
  v23 = contextCopy;
  v36 = v23;
  v37 = modelCopy;
  v38 = relationshipNameCopy;
  v24 = v20;
  v39 = v24;
  v25 = relationshipNameCopy;
  v26 = modelCopy;
  v27 = v22;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_3;
  v31[3] = &unk_278670E08;
  v32 = v24;
  v33 = v23;
  v28 = v23;
  v29 = v24;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

  return 1;
}

void __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 copy];
  v6 = [_MKFWeekDayScheduleRule populateWeekDayScheduleRuleFromDictionary:v4 existingLocalModels:v5 context:*(a1 + 40)];

  if (v6)
  {
    [v6 setValue:*(a1 + 48) forKey:*(a1 + 56)];
    [*(a1 + 64) addObject:v6];
  }
}

void __139__MKFCKGuest__importWeekDayScheduleRulesIntoLocalModel_fromCloudModel_localRelationship_cloudAttributeName_parentRelationshipName_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v3];
  }
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  if ([(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _exportAllowedAccessoriesRelationshipFromGuestLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _exportGuestAccessCodeFromLocalModel:modelCopy context:contextCopy]&& (![(MKFCKModel *)self shouldExportUpdatedPropertyInSet:propertiesCopy name:@"weekDayScheduleRules_"]|| [(MKFCKGuest *)self _exportWeekDaySchedulesFromLocalModel:modelCopy context:contextCopy]))
  {
    if ([(MKFCKModel *)self shouldExportUpdatedPropertyInSet:propertiesCopy name:@"yearDayScheduleRules_"])
    {
      v11 = [(MKFCKGuest *)self _exportYearDaySchedulesFromLocalModel:modelCopy context:contextCopy];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_exportGuestAccessCodeFromLocalModel:(id)model context:(id)context
{
  accessCode = [model accessCode];
  v6 = accessCode;
  if (accessCode)
  {
    v5AccessCode = [accessCode accessCode];
    [(MKFCKGuest *)self setHomeAccessCode:v5AccessCode];
  }

  return 1;
}

- (BOOL)_exportYearDaySchedulesFromLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  v6 = objc_opt_class();
  yearDayScheduleRules = [modelCopy yearDayScheduleRules];

  yearDayScheduleRules2 = [(MKFCKGuest *)self yearDayScheduleRules];
  v9 = [v6 _dictionaryRepresentationFromYearDayScheduleRules:yearDayScheduleRules cloudYearDayScheduleRulesDictionary:yearDayScheduleRules2];

  yearDayScheduleRules3 = [(MKFCKGuest *)self yearDayScheduleRules];
  LOBYTE(yearDayScheduleRules) = HMFEqualObjects();

  if ((yearDayScheduleRules & 1) == 0)
  {
    [(MKFCKGuest *)self setYearDayScheduleRules:v9];
  }

  return 1;
}

- (BOOL)_exportWeekDaySchedulesFromLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  v6 = objc_opt_class();
  weekDayScheduleRules = [modelCopy weekDayScheduleRules];

  weekDayScheduleRules2 = [(MKFCKGuest *)self weekDayScheduleRules];
  v9 = [v6 _dictionaryRepresentationFromWeekDayScheduleRules:weekDayScheduleRules cloudWeekDayScheduleRulesDictionary:weekDayScheduleRules2];

  weekDayScheduleRules3 = [(MKFCKGuest *)self weekDayScheduleRules];
  LOBYTE(weekDayScheduleRules) = HMFEqualObjects();

  if ((weekDayScheduleRules & 1) == 0)
  {
    [(MKFCKGuest *)self setWeekDayScheduleRules:v9];
  }

  return 1;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _importAllowedAccessoriesRelationshipIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _importGuestAccessCodeIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _importWeekDayScheduleRulesIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKGuest *)self _importYearDayScheduleRulesIntoLocalModel:modelCopy context:contextCopy];

  return v9;
}

- (BOOL)_importGuestAccessCodeIntoLocalModel:(id)model context:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  homeAccessCode = [(MKFCKGuest *)self homeAccessCode];
  v9 = [homeAccessCode length];

  accessCode = [modelCopy accessCode];
  accessCode5 = accessCode;
  if (v9)
  {
    if (!accessCode)
    {
      accessCode5 = [[_MKFUserAccessCode alloc] initWithContext:contextCopy];
      modelID = [(MKFCKGuest *)self modelID];
      v13 = [HMDUserAccessCodeModel modelUUIDWithUUID:modelID];
      [(_MKFUserAccessCode *)accessCode5 setModelID:v13];
    }

    accessCode2 = [(_MKFUserAccessCode *)accessCode5 accessCode];
    homeAccessCode2 = [(MKFCKGuest *)self homeAccessCode];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      homeAccessCode3 = [(MKFCKGuest *)self homeAccessCode];
      [(_MKFUserAccessCode *)accessCode5 setAccessCode:homeAccessCode3];
    }

    guest = [(_MKFUserAccessCode *)accessCode5 guest];
    v19 = HMFEqualObjects();

    if ((v19 & 1) == 0)
    {
      [(_MKFUserAccessCode *)accessCode5 setGuest:modelCopy];
    }

    accessCode3 = [modelCopy accessCode];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      [modelCopy setAccessCode:accessCode5];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (accessCode5)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      accessCode4 = [modelCopy accessCode];
      v27 = [modelCopy debugDescription];
      v30 = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = accessCode4;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Deleting the MKFUserAccessCode %@ for Guest %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    accessCode5 = [modelCopy accessCode];
    [contextCopy deleteObject:accessCode5];
    goto LABEL_14;
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)model context:(id)context
{
  contextCopy = context;
  modelCopy = model;
  v8 = objc_opt_class();
  entity = [modelCopy entity];
  relationshipsByName = [entity relationshipsByName];
  v11 = [relationshipsByName objectForKeyedSubscript:@"yearDayScheduleRules_"];
  LOBYTE(self) = [v8 _importYearDayScheduleRulesIntoLocalModel:modelCopy fromCloudModel:self localRelationship:v11 cloudAttributeName:@"yearDayScheduleRules" parentRelationshipName:@"guest" context:contextCopy];

  return self;
}

- (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)model context:(id)context
{
  contextCopy = context;
  modelCopy = model;
  v8 = objc_opt_class();
  entity = [modelCopy entity];
  relationshipsByName = [entity relationshipsByName];
  v11 = [relationshipsByName objectForKeyedSubscript:@"weekDayScheduleRules_"];
  LOBYTE(self) = [v8 _importWeekDayScheduleRulesIntoLocalModel:modelCopy fromCloudModel:self localRelationship:v11 cloudAttributeName:@"weekDayScheduleRules" parentRelationshipName:@"guest" context:contextCopy];

  return self;
}

@end