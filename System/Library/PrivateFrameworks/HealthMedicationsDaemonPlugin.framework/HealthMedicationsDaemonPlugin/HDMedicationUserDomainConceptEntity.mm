@interface HDMedicationUserDomainConceptEntity
+ (BOOL)generateAPIObjectForUserDomainConcept:(id)a3 apiObjectOut:(id *)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)a3 userAnnotatedMedicationOut:(id *)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)_predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:(uint64_t)a1;
+ (id)_predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:(uint64_t)a1;
+ (id)_queryDescriptorForNonDeletedSchedules;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)a3 propertyCollection:(id)a4;
+ (id)predicateForHasSchedule:(BOOL)a3;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3;
+ (id)predicateMatchingSemanticIdentifier:(id)a3;
+ (id)refreshOntologyContentForUserDomainConcept:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (uint64_t)_isMedicationArchived:(void *)a3 transaction:(uint64_t)a4 error:;
+ (uint64_t)_isMedicationScheduled:(void *)a3 transaction:(uint64_t)a4 error:;
@end

@implementation HDMedicationUserDomainConceptEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"udc_id";
  v2 = [MEMORY[0x277D10920] defaultForeignKey];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDMedicationUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v8 = [a5 protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __109__HDMedicationUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a4;
  LOBYTE(a6) = [v8 executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_1 bindingHandler:v10 enumerationHandler:0];

  return a6;
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v39[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v12 UUID];
  v16 = [v13 dataManager];
  v17 = objc_opt_class();
  v18 = HDMedicationDoseEventEntityPredicateForMedicationUUID();
  LODWORD(v17) = [v16 deleteDataObjectsOfClass:v17 predicate:v18 limit:*MEMORY[0x277D10C08] deletedSampleCount:0 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:a8];

  if (v17 && [HDMedicationScheduleEntity updateMedicationSchedulesToBeDeletedWithMedicationUUID:v15 profile:v13 transaction:v14 error:a8])
  {
    v19 = [v13 healthMedicationsProfileExtension];
    v20 = [v19 medicationScheduleManager];

    [v20 rescheduleMedicationsSynchronously:a5 == 0];
    v21 = [v12 firstConceptIdentifier];

    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = [v12 firstConceptIdentifier];
    v23 = HDDismissedDrugInteractionResultPredicateForDrugClassAncestorIdentifier(v22);

    v24 = [v14 database];
    LODWORD(v22) = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity deleteEntitiesWithPredicate:v23 healthDatabase:v24 error:a8];

    if (v22)
    {
      v25 = [v12 firstConceptIdentifier];
      v39[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v27 = HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes(v26, 0);

      v28 = [v14 database];
      v29 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesWithPredicate:v27 healthDatabase:v28 error:a8];

      if (v29)
      {
        v30 = [v12 semanticIdentifier];
        v31 = [v30 stringValue];
        v38 = v31;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v37 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v32);

        v33 = [v14 database];
        v34 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v37 healthDatabase:v33 error:a8];

        if (!v34)
        {
LABEL_11:

          goto LABEL_12;
        }

LABEL_7:
        LOBYTE(v34) = 1;
        goto LABEL_11;
      }

      v23 = v27;
    }

    LOBYTE(v34) = 0;
    goto LABEL_11;
  }

  LOBYTE(v34) = 0;
LABEL_12:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (id)predicateMatchingSemanticIdentifier:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UUID];

  if (v4)
  {
    v5 = [v3 UUID];
    v6 = HDUserDomainConceptEntityPredicateForConceptUUID();
  }

  else
  {
    v7 = MEMORY[0x277D10B20];
    v5 = [v3 typeIdentifier];
    v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
    v14[0] = v8;
    v9 = [v3 medicalCoding];
    v10 = HDUserDomainConceptEntityPredicateForMedicalCoding();
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v6 = [v7 predicateMatchingAllPredicates:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)a3 propertyCollection:(id)a4
{
  v5 = MEMORY[0x277D115B8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCodingCollection:v7 supplementalPropertyCollection:v6];

  return v8;
}

+ (BOOL)generateAPIObjectForUserDomainConcept:(id)a3 apiObjectOut:(id *)a4 transaction:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 displayNameComponents];
  v11 = [v8 loggingUnit];
  v12 = objc_alloc(MEMORY[0x277CCD660]);
  v13 = [v8 semanticIdentifier];
  v14 = [v13 stringValue];
  v15 = [v12 initWithSemanticIdentifierString:v14];

  v16 = objc_alloc(MEMORY[0x277CCD0F0]);
  v17 = [v10 fullDisplayName];
  v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v19 = [v16 initWithText:v17 codings:v18];

  v20 = v11;
  v21 = v9;

  v22 = objc_alloc(MEMORY[0x277CCD620]);
  v23 = [v22 initWithIdentifier:v15 displayNameComponents:v10 loggingUnit:v20 components:MEMORY[0x277CBEBF8] codingCollection:v19];
  v24 = [(HDMedicationUserDomainConceptEntity *)a1 _isMedicationArchived:v8 transaction:v9 error:a6];
  if (v24)
  {
    v25 = [(HDMedicationUserDomainConceptEntity *)a1 _isMedicationScheduled:v8 transaction:v9 error:a6];
    if (v25)
    {
      v26 = v25;
      v34 = v21;
      v27 = v20;
      v28 = MEMORY[0x277CCDB70];
      v29 = [v8 userSpecifiedName];
      v24 = [v28 userTrackedMedicationWithNickname:v29 isArchived:v24 == 1 hasSchedule:v26 == 1 medication:v23 device:0];

      if (a4)
      {
        v30 = v24;
        *a4 = v24;
      }

      LOBYTE(v24) = 1;
      v20 = v27;
      v21 = v34;
    }

    else
    {
      LOBYTE(v24) = 0;
    }
  }

  return v24;
}

+ (uint64_t)_isMedicationArchived:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10B20];
  v9 = [v7 UUID];

  v10 = HDUserDomainConceptEntityPredicateForConceptUUID();
  v11 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v12 = [v8 compoundPredicateWithPredicate:v10 otherPredicate:v11];

  v13 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v12 options:0 transaction:v6 error:a4];

  if (v13)
  {
    if ([v13 intValue])
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (uint64_t)_isMedicationScheduled:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10B20];
  v9 = HDMedicationSchedulePredicateForDeleted(0, 1);
  v10 = [v7 semanticIdentifier];

  v11 = [v10 stringValue];
  v12 = HDMedicationSchedulePredicateForMedicationIdentifier(v11);
  v13 = [v8 compoundPredicateWithPredicate:v9 otherPredicate:v12];

  v14 = [v6 protectedDatabase];

  v15 = [(HDSQLiteEntity *)HDMedicationScheduleEntity countDistinctForProperty:@"uuid" predicate:v13 database:v14 error:a4];

  if (v15)
  {
    if ([v15 intValue] > 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)a3 userAnnotatedMedicationOut:(id *)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 medicationConcept];
  v13 = [(HDMedicationUserDomainConceptEntity *)a1 _isMedicationArchived:v10 transaction:v11 error:a6];
  if (v13 && (v14 = v13, (v15 = [(HDMedicationUserDomainConceptEntity *)a1 _isMedicationScheduled:v10 transaction:v11 error:a6]) != 0))
  {
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277CCDAE0]);
    v18 = [v10 userSpecifiedName];
    v19 = [v17 initWithNickname:v18 isArchived:v14 == 1 hasSchedule:v16 == 1 medication:v12];

    if (a4)
    {
      v20 = v19;
      *a4 = v19;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)predicateForHasSchedule:(BOOL)a3
{
  v3 = a3;
  v5 = +[HDMedicationUserDomainConceptEntity _queryDescriptorForNonDeletedSchedules];
  v6 = [(HDMedicationUserDomainConceptEntity *)a1 _predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:v5];
  v7 = [(HDMedicationUserDomainConceptEntity *)a1 _predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:v5];
  v8 = [MEMORY[0x277D10B20] disjunctionWithPredicate:v6 otherPredicate:v7];
  v9 = MEMORY[0x277D10B20];
  v10 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = [v9 compoundPredicateWithPredicate:v8 otherPredicate:v10];

  if (v3)
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277D10B20] negatedPredicate:v11];
  }

  v13 = v12;

  return v13;
}

+ (id)_queryDescriptorForNonDeletedSchedules
{
  objc_opt_self();
  v0 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v0 setEntityClass:objc_opt_class()];
  v1 = HDMedicationSchedulePredicateForDeleted(0, 1);
  [v0 setPredicate:v1];

  [v0 setReturnsDistinctEntities:1];

  return v0;
}

+ (id)_predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:(uint64_t)a1
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = *MEMORY[0x277D10520];
  v4 = *MEMORY[0x277D10518];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"'medication' || ? || '0' || ? || %@ || ? || %@", *MEMORY[0x277D10520], *MEMORY[0x277D10518]];
  v6 = MEMORY[0x277D10B90];
  v18[0] = v3;
  v18[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17[0] = *MEMORY[0x277CCCE50];
  v17[1] = v17[0];
  v17[2] = v17[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v9 = [v6 predicateWithSQL:@"(1=1)" overProperties:v7 values:v8];

  v10 = MEMORY[0x277D10B18];
  v16 = @"medication_identifier";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v12 = [v10 predicateWithProperty:v5 comparisonType:7 subqueryDescriptor:v2 subqueryProperties:v11];

  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v9];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:(uint64_t)a1
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = *MEMORY[0x277D10558];
  v9[0] = @"medication_uuid";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v3 predicateWithProperty:v4 comparisonType:7 subqueryDescriptor:v2 subqueryProperties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 firstOntologyCoding];
  if (v4 && (HDUserDomainConceptEntityPredicateForMedicalCoding(), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v21 = MEMORY[0x277D10B20];
    v7 = MEMORY[0x277D10B18];
    v8 = *MEMORY[0x277D10558];
    v22 = [v3 UUID];
    v9 = [v7 predicateWithProperty:v8 notEqualToValue:v22];
    v23[0] = v9;
    v10 = MEMORY[0x277D10B18];
    v11 = *MEMORY[0x277D10548];
    v12 = MEMORY[0x277CCABB0];
    v13 = [v3 semanticIdentifier];
    v14 = [v13 typeIdentifier];
    v15 = [v12 numberWithInteger:{objc_msgSend(v14, "code")}];
    v16 = [v10 predicateWithProperty:v11 equalToValue:v15];
    v23[1] = v16;
    v23[2] = v6;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
    v18 = [v21 predicateMatchingAllPredicates:v17];
  }

  else
  {
    v18 = [MEMORY[0x277D10B70] falsePredicate];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)refreshOntologyContentForUserDomainConcept:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [a1 evaluateIsCanonicalConcept:v12 entityClass:a1 transaction:v11 error:a6];
  if (v13 == 1)
  {
    v14 = [(HDUserDomainConceptOntologyContentRefresher *)HDMedicationUserDomainConceptGenerator refreshOntologyContentForUserDomainConcept:v12 profile:v10 transaction:v11 error:a6];
  }

  else
  {
    if (v13 == 2)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v14 = v15;
  }

  v16 = v14;

  return v16;
}

@end