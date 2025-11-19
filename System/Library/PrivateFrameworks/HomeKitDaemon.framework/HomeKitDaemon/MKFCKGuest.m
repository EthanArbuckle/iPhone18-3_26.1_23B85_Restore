@interface MKFCKGuest
+ (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)a3 fromCloudModel:(id)a4 localRelationship:(id)a5 cloudAttributeName:(id)a6 parentRelationshipName:(id)a7 context:(id)a8;
+ (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)a3 fromCloudModel:(id)a4 localRelationship:(id)a5 cloudAttributeName:(id)a6 parentRelationshipName:(id)a7 context:(id)a8;
+ (id)_dictionaryRepresentationFromWeekDayScheduleRules:(id)a3 cloudWeekDayScheduleRulesDictionary:(id)a4;
+ (id)_dictionaryRepresentationFromYearDayScheduleRules:(id)a3 cloudYearDayScheduleRulesDictionary:(id)a4;
- (BOOL)_exportGuestAccessCodeFromLocalModel:(id)a3 context:(id)a4;
- (BOOL)_exportWeekDaySchedulesFromLocalModel:(id)a3 context:(id)a4;
- (BOOL)_exportYearDaySchedulesFromLocalModel:(id)a3 context:(id)a4;
- (BOOL)_importGuestAccessCodeIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKGuest

+ (id)_dictionaryRepresentationFromYearDayScheduleRules:(id)a3 cloudYearDayScheduleRulesDictionary:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a3;
  v7 = [v5 setWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __100__MKFCKGuest__dictionaryRepresentationFromYearDayScheduleRules_cloudYearDayScheduleRulesDictionary___block_invoke;
  v14 = &unk_278670EA8;
  v15 = v7;
  v16 = a1;
  v8 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  v9 = [v8 allObjects];

  return v9;
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

+ (id)_dictionaryRepresentationFromWeekDayScheduleRules:(id)a3 cloudWeekDayScheduleRulesDictionary:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a3;
  v7 = [v5 setWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __100__MKFCKGuest__dictionaryRepresentationFromWeekDayScheduleRules_cloudWeekDayScheduleRulesDictionary___block_invoke;
  v14 = &unk_278670E80;
  v15 = v7;
  v16 = a1;
  v8 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  v9 = [v8 allObjects];

  return v9;
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

+ (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)a3 fromCloudModel:(id)a4 localRelationship:(id)a5 cloudAttributeName:(id)a6 parentRelationshipName:(id)a7 context:(id)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = [a4 valueForKey:a6];
  v18 = [v16 name];

  v19 = [v13 valueForKey:v18];

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
  v23 = v15;
  v36 = v23;
  v37 = v13;
  v38 = v14;
  v24 = v20;
  v39 = v24;
  v25 = v14;
  v26 = v13;
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

+ (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)a3 fromCloudModel:(id)a4 localRelationship:(id)a5 cloudAttributeName:(id)a6 parentRelationshipName:(id)a7 context:(id)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = [a4 valueForKey:a6];
  v18 = [v16 name];

  v19 = [v13 valueForKey:v18];

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
  v23 = v15;
  v36 = v23;
  v37 = v13;
  v38 = v14;
  v24 = v20;
  v39 = v24;
  v25 = v14;
  v26 = v13;
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

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MKFCKModel *)self copyPropertiesFromLocalModel:v8 context:v10]&& [(MKFCKGuest *)self _exportAllowedAccessoriesRelationshipFromGuestLocalModel:v8 context:v10]&& [(MKFCKGuest *)self _exportGuestAccessCodeFromLocalModel:v8 context:v10]&& (![(MKFCKModel *)self shouldExportUpdatedPropertyInSet:v9 name:@"weekDayScheduleRules_"]|| [(MKFCKGuest *)self _exportWeekDaySchedulesFromLocalModel:v8 context:v10]))
  {
    if ([(MKFCKModel *)self shouldExportUpdatedPropertyInSet:v9 name:@"yearDayScheduleRules_"])
    {
      v11 = [(MKFCKGuest *)self _exportYearDaySchedulesFromLocalModel:v8 context:v10];
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

- (BOOL)_exportGuestAccessCodeFromLocalModel:(id)a3 context:(id)a4
{
  v5 = [a3 accessCode];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accessCode];
    [(MKFCKGuest *)self setHomeAccessCode:v7];
  }

  return 1;
}

- (BOOL)_exportYearDaySchedulesFromLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 yearDayScheduleRules];

  v8 = [(MKFCKGuest *)self yearDayScheduleRules];
  v9 = [v6 _dictionaryRepresentationFromYearDayScheduleRules:v7 cloudYearDayScheduleRulesDictionary:v8];

  v10 = [(MKFCKGuest *)self yearDayScheduleRules];
  LOBYTE(v7) = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    [(MKFCKGuest *)self setYearDayScheduleRules:v9];
  }

  return 1;
}

- (BOOL)_exportWeekDaySchedulesFromLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 weekDayScheduleRules];

  v8 = [(MKFCKGuest *)self weekDayScheduleRules];
  v9 = [v6 _dictionaryRepresentationFromWeekDayScheduleRules:v7 cloudWeekDayScheduleRulesDictionary:v8];

  v10 = [(MKFCKGuest *)self weekDayScheduleRules];
  LOBYTE(v7) = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    [(MKFCKGuest *)self setWeekDayScheduleRules:v9];
  }

  return 1;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:v8]&& [(MKFCKGuest *)self _importAllowedAccessoriesRelationshipIntoLocalModel:v7 context:v8]&& [(MKFCKGuest *)self _importGuestAccessCodeIntoLocalModel:v7 context:v8]&& [(MKFCKGuest *)self _importWeekDayScheduleRulesIntoLocalModel:v7 context:v8]&& [(MKFCKGuest *)self _importYearDayScheduleRulesIntoLocalModel:v7 context:v8];

  return v9;
}

- (BOOL)_importGuestAccessCodeIntoLocalModel:(id)a3 context:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MKFCKGuest *)self homeAccessCode];
  v9 = [v8 length];

  v10 = [v6 accessCode];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = [[_MKFUserAccessCode alloc] initWithContext:v7];
      v12 = [(MKFCKGuest *)self modelID];
      v13 = [HMDUserAccessCodeModel modelUUIDWithUUID:v12];
      [(_MKFUserAccessCode *)v11 setModelID:v13];
    }

    v14 = [(_MKFUserAccessCode *)v11 accessCode];
    v15 = [(MKFCKGuest *)self homeAccessCode];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      v17 = [(MKFCKGuest *)self homeAccessCode];
      [(_MKFUserAccessCode *)v11 setAccessCode:v17];
    }

    v18 = [(_MKFUserAccessCode *)v11 guest];
    v19 = HMFEqualObjects();

    if ((v19 & 1) == 0)
    {
      [(_MKFUserAccessCode *)v11 setGuest:v6];
    }

    v20 = [v6 accessCode];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      [v6 setAccessCode:v11];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v11)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v6 accessCode];
      v27 = [v6 debugDescription];
      v30 = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Deleting the MKFUserAccessCode %@ for Guest %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v11 = [v6 accessCode];
    [v7 deleteObject:v11];
    goto LABEL_14;
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_importYearDayScheduleRulesIntoLocalModel:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 entity];
  v10 = [v9 relationshipsByName];
  v11 = [v10 objectForKeyedSubscript:@"yearDayScheduleRules_"];
  LOBYTE(self) = [v8 _importYearDayScheduleRulesIntoLocalModel:v7 fromCloudModel:self localRelationship:v11 cloudAttributeName:@"yearDayScheduleRules" parentRelationshipName:@"guest" context:v6];

  return self;
}

- (BOOL)_importWeekDayScheduleRulesIntoLocalModel:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 entity];
  v10 = [v9 relationshipsByName];
  v11 = [v10 objectForKeyedSubscript:@"weekDayScheduleRules_"];
  LOBYTE(self) = [v8 _importWeekDayScheduleRulesIntoLocalModel:v7 fromCloudModel:self localRelationship:v11 cloudAttributeName:@"weekDayScheduleRules" parentRelationshipName:@"guest" context:v6];

  return self;
}

@end