@interface HDMedicationUserDomainConceptEntity
+ (BOOL)generateAPIObjectForUserDomainConcept:(id)concept apiObjectOut:(id *)out transaction:(id)transaction error:(id *)error;
+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)concept userAnnotatedMedicationOut:(id *)out transaction:(id)transaction error:(id *)error;
+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:(uint64_t)descriptor;
+ (id)_predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:(uint64_t)descriptor;
+ (id)_queryDescriptorForNonDeletedSchedules;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection;
+ (id)predicateForHasSchedule:(BOOL)schedule;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)of;
+ (id)predicateMatchingSemanticIdentifier:(id)identifier;
+ (id)refreshOntologyContentForUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (uint64_t)_isMedicationArchived:(void *)archived transaction:(uint64_t)transaction error:;
+ (uint64_t)_isMedicationScheduled:(void *)scheduled transaction:(uint64_t)transaction error:;
@end

@implementation HDMedicationUserDomainConceptEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"udc_id";
  defaultForeignKey = [MEMORY[0x277D10920] defaultForeignKey];
  v7[0] = defaultForeignKey;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDMedicationUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __109__HDMedicationUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = d;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_1 bindingHandler:v10 enumerationHandler:0];

  return error;
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  uUID = [conceptCopy UUID];
  dataManager = [profileCopy dataManager];
  v17 = objc_opt_class();
  v18 = HDMedicationDoseEventEntityPredicateForMedicationUUID();
  LODWORD(v17) = [dataManager deleteDataObjectsOfClass:v17 predicate:v18 limit:*MEMORY[0x277D10C08] deletedSampleCount:0 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:error];

  if (v17 && [HDMedicationScheduleEntity updateMedicationSchedulesToBeDeletedWithMedicationUUID:uUID profile:profileCopy transaction:transactionCopy error:error])
  {
    healthMedicationsProfileExtension = [profileCopy healthMedicationsProfileExtension];
    medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

    [medicationScheduleManager rescheduleMedicationsSynchronously:provenance == 0];
    firstConceptIdentifier = [conceptCopy firstConceptIdentifier];

    if (!firstConceptIdentifier)
    {
      goto LABEL_7;
    }

    firstConceptIdentifier2 = [conceptCopy firstConceptIdentifier];
    v23 = HDDismissedDrugInteractionResultPredicateForDrugClassAncestorIdentifier(firstConceptIdentifier2);

    database = [transactionCopy database];
    LODWORD(firstConceptIdentifier2) = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity deleteEntitiesWithPredicate:v23 healthDatabase:database error:error];

    if (firstConceptIdentifier2)
    {
      firstConceptIdentifier3 = [conceptCopy firstConceptIdentifier];
      v39[0] = firstConceptIdentifier3;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v27 = HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes(v26, 0);

      database2 = [transactionCopy database];
      v29 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesWithPredicate:v27 healthDatabase:database2 error:error];

      if (v29)
      {
        semanticIdentifier = [conceptCopy semanticIdentifier];
        stringValue = [semanticIdentifier stringValue];
        v38 = stringValue;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v37 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v32);

        database3 = [transactionCopy database];
        v34 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v37 healthDatabase:database3 error:error];

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

+ (id)predicateMatchingSemanticIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  uUID = [identifierCopy UUID];

  if (uUID)
  {
    uUID2 = [identifierCopy UUID];
    v6 = HDUserDomainConceptEntityPredicateForConceptUUID();
  }

  else
  {
    v7 = MEMORY[0x277D10B20];
    uUID2 = [identifierCopy typeIdentifier];
    v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
    v14[0] = v8;
    medicalCoding = [identifierCopy medicalCoding];
    v10 = HDUserDomainConceptEntityPredicateForMedicalCoding();
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v6 = [v7 predicateMatchingAllPredicates:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection
{
  v5 = MEMORY[0x277D115B8];
  propertyCollectionCopy = propertyCollection;
  collectionCopy = collection;
  v8 = [[v5 alloc] initWithCodingCollection:collectionCopy supplementalPropertyCollection:propertyCollectionCopy];

  return v8;
}

+ (BOOL)generateAPIObjectForUserDomainConcept:(id)concept apiObjectOut:(id *)out transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  displayNameComponents = [conceptCopy displayNameComponents];
  loggingUnit = [conceptCopy loggingUnit];
  v12 = objc_alloc(MEMORY[0x277CCD660]);
  semanticIdentifier = [conceptCopy semanticIdentifier];
  stringValue = [semanticIdentifier stringValue];
  v15 = [v12 initWithSemanticIdentifierString:stringValue];

  v16 = objc_alloc(MEMORY[0x277CCD0F0]);
  fullDisplayName = [displayNameComponents fullDisplayName];
  v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v19 = [v16 initWithText:fullDisplayName codings:v18];

  v20 = loggingUnit;
  v21 = transactionCopy;

  v22 = objc_alloc(MEMORY[0x277CCD620]);
  v23 = [v22 initWithIdentifier:v15 displayNameComponents:displayNameComponents loggingUnit:v20 components:MEMORY[0x277CBEBF8] codingCollection:v19];
  v24 = [(HDMedicationUserDomainConceptEntity *)self _isMedicationArchived:conceptCopy transaction:transactionCopy error:error];
  if (v24)
  {
    v25 = [(HDMedicationUserDomainConceptEntity *)self _isMedicationScheduled:conceptCopy transaction:transactionCopy error:error];
    if (v25)
    {
      v26 = v25;
      v34 = v21;
      v27 = v20;
      v28 = MEMORY[0x277CCDB70];
      userSpecifiedName = [conceptCopy userSpecifiedName];
      v24 = [v28 userTrackedMedicationWithNickname:userSpecifiedName isArchived:v24 == 1 hasSchedule:v26 == 1 medication:v23 device:0];

      if (out)
      {
        v30 = v24;
        *out = v24;
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

+ (uint64_t)_isMedicationArchived:(void *)archived transaction:(uint64_t)transaction error:
{
  archivedCopy = archived;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10B20];
  uUID = [v7 UUID];

  v10 = HDUserDomainConceptEntityPredicateForConceptUUID();
  v11 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v12 = [v8 compoundPredicateWithPredicate:v10 otherPredicate:v11];

  v13 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v12 options:0 transaction:archivedCopy error:transaction];

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

+ (uint64_t)_isMedicationScheduled:(void *)scheduled transaction:(uint64_t)transaction error:
{
  scheduledCopy = scheduled;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10B20];
  v9 = HDMedicationSchedulePredicateForDeleted(0, 1);
  semanticIdentifier = [v7 semanticIdentifier];

  stringValue = [semanticIdentifier stringValue];
  v12 = HDMedicationSchedulePredicateForMedicationIdentifier(stringValue);
  v13 = [v8 compoundPredicateWithPredicate:v9 otherPredicate:v12];

  protectedDatabase = [scheduledCopy protectedDatabase];

  v15 = [(HDSQLiteEntity *)HDMedicationScheduleEntity countDistinctForProperty:@"uuid" predicate:v13 database:protectedDatabase error:transaction];

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

+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)concept userAnnotatedMedicationOut:(id *)out transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  medicationConcept = [conceptCopy medicationConcept];
  v13 = [(HDMedicationUserDomainConceptEntity *)self _isMedicationArchived:conceptCopy transaction:transactionCopy error:error];
  if (v13 && (v14 = v13, (v15 = [(HDMedicationUserDomainConceptEntity *)self _isMedicationScheduled:conceptCopy transaction:transactionCopy error:error]) != 0))
  {
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277CCDAE0]);
    userSpecifiedName = [conceptCopy userSpecifiedName];
    v19 = [v17 initWithNickname:userSpecifiedName isArchived:v14 == 1 hasSchedule:v16 == 1 medication:medicationConcept];

    if (out)
    {
      v20 = v19;
      *out = v19;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)predicateForHasSchedule:(BOOL)schedule
{
  scheduleCopy = schedule;
  v5 = +[HDMedicationUserDomainConceptEntity _queryDescriptorForNonDeletedSchedules];
  v6 = [(HDMedicationUserDomainConceptEntity *)self _predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:v5];
  v7 = [(HDMedicationUserDomainConceptEntity *)self _predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:v5];
  v8 = [MEMORY[0x277D10B20] disjunctionWithPredicate:v6 otherPredicate:v7];
  v9 = MEMORY[0x277D10B20];
  v10 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = [v9 compoundPredicateWithPredicate:v8 otherPredicate:v10];

  if (scheduleCopy)
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

+ (id)_predicateForSemanticIdsInSchedulesWithSubqueryDescriptor:(uint64_t)descriptor
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

+ (id)_predicateForSchedulesWithAMedicationsUUIDWithSubqueryDescriptor:(uint64_t)descriptor
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

+ (id)predicateMatchingSemanticDuplicatesOf:(id)of
{
  v23[3] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  firstOntologyCoding = [ofCopy firstOntologyCoding];
  if (firstOntologyCoding && (HDUserDomainConceptEntityPredicateForMedicalCoding(), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v21 = MEMORY[0x277D10B20];
    v7 = MEMORY[0x277D10B18];
    v8 = *MEMORY[0x277D10558];
    uUID = [ofCopy UUID];
    v9 = [v7 predicateWithProperty:v8 notEqualToValue:uUID];
    v23[0] = v9;
    v10 = MEMORY[0x277D10B18];
    v11 = *MEMORY[0x277D10548];
    v12 = MEMORY[0x277CCABB0];
    semanticIdentifier = [ofCopy semanticIdentifier];
    typeIdentifier = [semanticIdentifier typeIdentifier];
    v15 = [v12 numberWithInteger:{objc_msgSend(typeIdentifier, "code")}];
    v16 = [v10 predicateWithProperty:v11 equalToValue:v15];
    v23[1] = v16;
    v23[2] = v6;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
    falsePredicate = [v21 predicateMatchingAllPredicates:v17];
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  v19 = *MEMORY[0x277D85DE8];

  return falsePredicate;
}

+ (id)refreshOntologyContentForUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  conceptCopy = concept;
  v13 = [self evaluateIsCanonicalConcept:conceptCopy entityClass:self transaction:transactionCopy error:error];
  if (v13 == 1)
  {
    v14 = [(HDUserDomainConceptOntologyContentRefresher *)HDMedicationUserDomainConceptGenerator refreshOntologyContentForUserDomainConcept:conceptCopy profile:profileCopy transaction:transactionCopy error:error];
  }

  else
  {
    if (v13 == 2)
    {
      v15 = conceptCopy;
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