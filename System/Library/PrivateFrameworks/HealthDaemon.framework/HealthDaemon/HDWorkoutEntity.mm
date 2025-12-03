@interface HDWorkoutEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)enumerateCondensedWorkoutsWithPredicate:(id)predicate profile:(id)profile error:(id *)error handler:(id)handler;
+ (BOOL)replaceExistingObject:(id)object existingObjectID:(id)d replacementObject:(id)replacementObject replacementObjectID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)workoutActivityType:(unint64_t *)type associatedWithRouteUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)_codableCondensedWorkoutProperties;
+ (id)_primaryActivityJoinClause;
+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)transaction;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)joinClausesForProperty:(id)property;
+ (id)maxValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
- (BOOL)getCondenserVersion:(int64_t *)version date:(id *)date profile:(id)profile error:(id *)error;
- (BOOL)isCondenserVersionLessThan:(int64_t)than transaction:(id)transaction;
- (BOOL)updateCondenserVersion:(int64_t)version date:(id)date transaction:(id)transaction error:(id *)error;
- (id)codableCondensedWorkoutWithTransaction:(id)transaction error:(id *)error;
- (id)mainWorkoutActivityTypeWithTransaction:(id)transaction error:(id *)error;
- (id)totalDistanceInCanonicalUnitWithTransaction:(id)transaction error:(id *)error;
- (id)workoutDurationWithTransaction:(id)transaction error:(id *)error;
- (id)workoutStartDateWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDWorkoutEntity

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  ascending = [descriptorCopy ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCF50]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"activities.duration";
LABEL_11:
    v10 = [v7 orderingTermWithProperty:v9 entityClass:v8 ascending:ascending];
    goto LABEL_12;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCF58]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"total_distance";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCF60]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"active_energy.quantity";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCF70]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"swimming_strokes.quantity";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCF68]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"flights_climbed.quantity";
    goto LABEL_11;
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  v10 = objc_msgSendSuper2(&v13, sel_orderingTermForSortDescriptor_, descriptorCopy);
LABEL_12:
  v11 = v10;

  return v11;
}

+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)transaction
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  transactionCopy = transaction;
  v4 = objc_msgSendSuper2(&v8, sel_deleteStatementsForRelatedEntitiesWithTransaction_, transactionCopy);
  v5 = [v4 mutableCopy];

  v6 = [HDWorkoutEventEntity deleteStatementForWorkoutEventsWithTransaction:transactionCopy];

  [v5 addObject:v6];

  return v5;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDWorkoutEntity.m" lineNumber:133 description:{@"Subclasses must override %s", "+[HDWorkoutEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v30[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v30[4] = self;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v27[3] = &unk_278613038;
  v16 = dCopy;
  v28 = v16;
  v17 = objectCopy;
  v29 = v17;
  if ([databaseCopy executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_1 error:error SQLGenerator:v30 bindingHandler:v27 enumerationHandler:0] && (objc_msgSend(v17, "_subActivities"), v18 = objc_claimAutoreleasedReturnValue(), v19 = +[HDWorkoutActivityEntity insertSubActivities:ownerID:database:error:](HDWorkoutActivityEntity, "insertSubActivities:ownerID:database:error:", v18, objc_msgSend(v16, "longLongValue"), databaseCopy, error), v18, v19))
  {
    _primaryActivity = [v17 _primaryActivity];

    v21 = v16;
    if (_primaryActivity)
    {
      _primaryActivity2 = [v17 _primaryActivity];
      v23 = +[HDWorkoutActivityEntity insertPrimaryActivity:ownerID:database:error:](HDWorkoutActivityEntity, "insertPrimaryActivity:ownerID:database:error:", _primaryActivity2, [v16 longLongValue], databaseCopy, error);

      if (v23)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = v21;

  return v21;
}

id __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v2, @"data_id", @"goal_type", @"total_distance", @"goal", 0];

  return v3;
}

uint64_t __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) _goalType]);
  v4 = [*(a1 + 40) totalDistance];

  if (v4)
  {
    v5 = [*(a1 + 40) totalDistance];
    v6 = _HKWorkoutCanonicalDistanceUnit();
    [v5 doubleValueForUnit:v6];
    v8 = v7;

    sqlite3_bind_double(a2, 3, v8);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v9 = [*(a1 + 40) _goal];
  if (v9 && (v10 = v9, [*(a1 + 40) _goalType], IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal(), v10, IsValidForGoal))
  {
    v12 = [*(a1 + 40) _goal];
    [*(a1 + 40) _goalType];
    v13 = _HKWorkoutCanonicalUnitForGoalType();
    [v12 doubleValueForUnit:v13];
    v15 = v14;

    return sqlite3_bind_double(a2, 4, v15);
  }

  else
  {

    return sqlite3_bind_null(a2, 4);
  }
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addWorkouts:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [[_HDWorkoutEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)joinClausesForProperty:(id)property
{
  v27[4] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if (([propertyCopy isEqualToString:@"activities.activity_type"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"activities.duration"))
  {
    v5 = +[HDWorkoutEntity _primaryActivityJoinClause];
    v6 = [MEMORY[0x277CBEB98] setWithObject:v5];
  }

  else
  {
    v26[0] = @"active_energy.quantity";
    v26[1] = @"basal_energy.quantity";
    v27[0] = @"active_energy";
    v27[1] = @"basal_energy";
    v26[2] = @"swimming_strokes.quantity";
    v26[3] = @"flights_climbed.quantity";
    v27[2] = @"swimming_strokes";
    v27[3] = @"flights_climbed";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v24 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v5);
          }

          if ([propertyCopy isEqualToString:*(*(&v21 + 1) + 8 * i)])
          {
            v14 = [v5 objectForKeyedSubscript:propertyCopy];
            v15 = +[HDWorkoutEntity _primaryActivityJoinClause];
            v16 = propertyCopy;
            objc_opt_self();
            if ([v16 isEqualToString:@"active_energy.quantity"])
            {
              v17 = 10;
            }

            else if ([v16 isEqualToString:@"basal_energy.quantity"])
            {
              v17 = 9;
            }

            else if ([v16 isEqualToString:@"swimming_strokes.quantity"])
            {
              v17 = 111;
            }

            else if ([v16 isEqualToString:@"flights_climbed.quantity"])
            {
              v17 = 12;
            }

            else
            {
              [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Property cannot be matched to a data type"];
              v17 = -1;
            }

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@ = %ld", v14, 0x283BF4B28, v17];
            v19 = [MEMORY[0x277D10B50] leftJoinClauseFromTable:@"activities" toTargetEntity:objc_opt_class() as:v14 localReference:*MEMORY[0x277D10A40] targetKey:0x283BF4B08 additionalPredicate:v18];
            v7 = [MEMORY[0x277CBEB98] setWithObjects:{v15, v19, 0}];

            goto LABEL_5;
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v20.receiver = self;
    v20.super_class = &OBJC_METACLASS___HDWorkoutEntity;
    v6 = objc_msgSendSuper2(&v20, sel_joinClausesForProperty_, propertyCopy);
  }

  v7 = v6;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_primaryActivityJoinClause
{
  objc_opt_self();
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ = 1)", @"is_primary_activity"];
  v1 = MEMORY[0x277D10B50];
  v2 = +[(HDSQLiteSchemaEntity *)HDWorkoutEntity];
  v3 = [v1 leftJoinClauseFromTable:v2 toTargetEntity:objc_opt_class() as:@"activities" localReference:*MEMORY[0x277D10A40] targetKey:@"owner_id" additionalPredicate:v0];

  return v3;
}

+ (id)maxValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v24[5] = *MEMORY[0x277D85DE8];
  v23[0] = @"duration";
  v23[1] = @"total_energy_burned";
  v24[0] = @"activities.duration";
  v24[1] = @"active_energy.quantity";
  v23[2] = @"total_basal_energy_burned";
  v23[3] = @"total_w_steps";
  v24[2] = @"basal_energy.quantity";
  v24[3] = @"swimming_strokes.quantity";
  v23[4] = @"total_flights_climbed";
  v24[4] = @"flights_climbed.quantity";
  v10 = MEMORY[0x277CBEAC0];
  databaseCopy = database;
  predicateCopy = predicate;
  propertyCopy = property;
  v14 = [v10 dictionaryWithObjects:v24 forKeys:v23 count:5];
  v15 = [v14 objectForKeyedSubscript:propertyCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = propertyCopy;
  }

  v18 = v17;

  v22.receiver = self;
  v22.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  v19 = objc_msgSendSuper2(&v22, sel_maxValueForProperty_predicate_database_error_, v18, predicateCopy, databaseCopy, error);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)replaceExistingObject:(id)object existingObjectID:(id)d replacementObject:(id)replacementObject replacementObjectID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  replacementObjectCopy = replacementObject;
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDWorkoutEntity.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKWorkout class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDWorkoutEntity.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKWorkout class]]"}];
  }

  errorCopy3 = error;
  v17 = objectCopy;
  v53 = replacementObjectCopy;
  _subActivities = [v53 _subActivities];
  v19 = [_subActivities count];

  if (v19)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    _subActivities2 = [v17 _subActivities];
    v52 = [_subActivities2 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v52)
    {
      v51 = *v60;
      v48 = v17;
      v49 = profileCopy;
      obj = _subActivities2;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v59 + 1) + 8 * i);
          startDate = [v22 startDate];
          endDate = [v22 endDate];
          uUID = [v17 UUID];
          v26 = HDReferenceForAssociatableObject(v22);
          v27 = [HDAssociationEntity objectUUIDsAssociatedWithObjectUUID:uUID subObjectReference:v26 excludeDeleted:1 profile:profileCopy error:errorCopy3];

          if ([v27 count])
          {
            v54 = v27;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            _subActivities3 = [v53 _subActivities];
            v29 = [_subActivities3 countByEnumeratingWithState:&v55 objects:v64 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v56;
LABEL_14:
              v32 = 0;
              while (1)
              {
                if (*v56 != v31)
                {
                  objc_enumerationMutation(_subActivities3);
                }

                v33 = *(*(&v55 + 1) + 8 * v32);
                startDate2 = [v33 startDate];
                endDate2 = [v33 endDate];
                [startDate timeIntervalSinceDate:startDate2];
                v37 = fabs(v36);
                [endDate timeIntervalSinceDate:endDate2];
                if (v37 <= 0.001 && fabs(v38) <= 0.001)
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [_subActivities3 countByEnumeratingWithState:&v55 objects:v64 count:16];
                  if (v30)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_21;
                }
              }

              uUID2 = [v53 UUID];
              v40 = HDReferenceForAssociatableObject(v33);
              profileCopy = v49;
              v27 = v54;
              v50 = [HDAssociationEntity associateSampleUUIDs:v54 withSampleUUID:uUID2 type:1 behavior:0 destinationSubObjectReference:v40 lastInsertedEntityID:0 profile:v49 error:error];

              errorCopy3 = error;
              v17 = v48;
              if (v50)
              {
                goto LABEL_23;
              }

              v42 = 0;
              dataManager = obj;
              goto LABEL_29;
            }

LABEL_21:

            v17 = v48;
            profileCopy = v49;
            errorCopy3 = error;
            v27 = v54;
          }

LABEL_23:
        }

        _subActivities2 = obj;
        v52 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([HDAssociationEntity copyAssociationsFromObject:v17 toObject:v53 type:1 behavior:0 profile:profileCopy error:errorCopy3])
  {
    dataManager = [profileCopy dataManager];
    v63 = v17;
    startDate = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v42 = [dataManager deleteDataObjects:startDate restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:errorCopy3];
LABEL_29:
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler
{
  v63[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  provenanceCopy = provenance;
  profileCopy = profile;
  transactionCopy = transaction;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = 0;
    goto LABEL_35;
  }

  v47 = objectCopy;
  _primaryActivity = [v47 _primaryActivity];

  if (_primaryActivity)
  {
    v46 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v58 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke;
    v57[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v57[4] = self;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke_2;
    v55[3] = &unk_278614860;
    v19 = v47;
    v56 = v19;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke_3;
    v54[3] = &unk_278614620;
    v54[4] = &v59;
    v20 = [v46 executeCachedStatementForKey:&mergeDataObject_provenance_profile_transaction_error_insertHandler__searchKey error:&v58 SQLGenerator:v57 bindingHandler:v55 enumerationHandler:v54];
    v21 = v58;
    v22 = v21;
    if (v20)
    {
      v23 = v60[3];
      v53 = v21;
      v24 = [HDWorkoutActivityEntity primaryWorkoutActivityForOwnerID:v23 database:v46 error:&v53];
      v25 = v53;

      if (v24)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60[3]];
LABEL_33:

        _Block_object_dispose(&v59, 8);
        goto LABEL_34;
      }

      if (v25 && ([v25 hk_isObjectNotFoundError] & 1) == 0)
      {
        v36 = v25;
        v25 = v36;
        if (error)
        {
          v37 = v36;
          *error = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      else
      {
        _primaryActivity2 = [v19 _primaryActivity];
        v30 = v60[3];
        v52 = v25;
        v31 = [HDWorkoutActivityEntity insertPrimaryActivity:_primaryActivity2 ownerID:v30 database:v46 error:&v52];
        v45 = v52;

        if (v31)
        {
          v63[0] = @"total_distance";
          v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60[3]];
          v43 = HDDataEntityPredicateForRowID(v32, 1);

          v51 = v45;
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke_4;
          v49[3] = &unk_278614508;
          v50 = v19;
          v33 = [self updateProperties:v44 predicate:v43 database:v46 error:&v51 bindingHandler:v49];
          v25 = v51;

          if (v33)
          {
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60[3]];
          }

          else
          {
            v38 = v25;
            v39 = v38;
            if (v38)
            {
              if (error)
              {
                v40 = v38;
                *error = v39;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v26 = 0;
          }

          v24 = 0;
          goto LABEL_33;
        }

        v34 = v45;
        v25 = v34;
        if (v34)
        {
          if (error)
          {
            v35 = v34;
            *error = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      v24 = 0;
    }

    else
    {
      v27 = v21;
      v24 = v27;
      if (v27)
      {
        if (error)
        {
          v28 = v27;
          v26 = 0;
          *error = v24;
        }

        else
        {
          _HKLogDroppedError();
          v26 = 0;
        }

        v25 = v24;
        goto LABEL_33;
      }

      v25 = 0;
    }

    v26 = 0;
    goto LABEL_33;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:1401 description:@"Ignoring synced workout for merge because it does not have a primary activity"];
  v26 = 0;
LABEL_34:

LABEL_35:
  v41 = *MEMORY[0x277D85DE8];

  return v26;
}

id __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ INNER JOIN %@ USING(%@) WHERE %@=?", @"data_id", v2, v3, @"data_id", @"uuid"];

  return v4;
}

void __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

void __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) totalDistance];

  if (v2)
  {
    v3 = [*(a1 + 32) totalDistance];
    v4 = _HKWorkoutCanonicalDistanceUnit();
    [v3 doubleValueForUnit:v4];

    JUMPOUT(0x22AAC6B60);
  }

  JUMPOUT(0x22AAC6BA0);
}

- (BOOL)updateCondenserVersion:(int64_t)version date:(id)date transaction:(id)transaction error:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v21[0] = @"condenser_version";
  v21[1] = @"condenser_date";
  v11 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v13 = [v11 arrayWithObjects:v21 count:2];
  v14 = [transactionCopy databaseForEntity:self];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDWorkoutEntity_updateCondenserVersion_date_transaction_error___block_invoke;
  v18[3] = &unk_278616B10;
  v19 = dateCopy;
  versionCopy = version;
  v15 = dateCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:error bindingHandler:v18];

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

void __65__HDWorkoutEntity_updateCondenserVersion_date_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"condenser_version", *(a1 + 40));
  v3 = *(a1 + 32);

  JUMPOUT(0x22AAC6B50);
}

- (BOOL)isCondenserVersionLessThan:(int64_t)than transaction:(id)transaction
{
  v6 = [transaction databaseForEntity:self];
  v7 = [(HDSQLiteEntity *)self numberForProperty:@"condenser_version" database:v6];

  if (v7)
  {
    v8 = [v7 integerValue] < than;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)getCondenserVersion:(int64_t *)version date:(id *)date profile:(id)profile error:(id *)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__81;
  v21 = __Block_byref_object_dispose__81;
  v22 = 0;
  v27[0] = @"condenser_version";
  v27[1] = @"condenser_date";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HDWorkoutEntity_getCondenserVersion_date_profile_error___block_invoke;
  v16[3] = &unk_278617F30;
  v16[4] = &v23;
  v16[5] = &v17;
  v13 = [(HDHealthEntity *)self getValuesForProperties:v11 healthDatabase:database error:error handler:v16];

  if (v13)
  {
    if (version)
    {
      *version = v24[3];
    }

    if (date)
    {
      *date = v18[5];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __58__HDWorkoutEntity_getCondenserVersion_date_profile_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)enumerateCondensedWorkoutsWithPredicate:(id)predicate profile:(id)profile error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDWorkoutEntity_enumerateCondensedWorkoutsWithPredicate_profile_error_handler___block_invoke;
  v16[3] = &unk_27861B6E8;
  v18 = handlerCopy;
  selfCopy = self;
  v17 = predicateCopy;
  v13 = handlerCopy;
  v14 = predicateCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __81__HDWorkoutEntity_enumerateCondensedWorkoutsWithPredicate_profile_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D10B20];
  v5 = MEMORY[0x277D10B60];
  v6 = a2;
  v7 = [v5 isNotNullPredicateWithProperty:@"condenser_version"];
  v24 = [v4 compoundPredicateWithPredicate:v7 otherPredicate:*(a1 + 32)];

  v8 = *(a1 + 48);
  v9 = [v6 protectedDatabase];

  v10 = HDWorkoutEntityOrderingTermsForCondenserDate();
  v23 = [v8 queryWithDatabase:v9 predicate:v24 limit:0 orderingTerms:v10 groupBy:0];

  v11 = +[HDWorkoutEntity _codableCondensedWorkoutProperties];
  v12 = [v11 indexOfObject:*MEMORY[0x277D10A40]];
  v13 = [v11 indexOfObject:@"uuid"];
  v14 = [v11 indexOfObject:@"creation_date"];
  v15 = [v11 indexOfObject:@"start_date"];
  v16 = [v11 indexOfObject:@"end_date"];
  v17 = [v11 indexOfObject:@"activities.duration"];
  v18 = [v11 indexOfObject:@"activities.activity_type"];
  v19 = [v11 indexOfObject:@"condenser_version"];
  v20 = [v11 indexOfObject:@"condenser_date"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__HDWorkoutEntity_enumerateCondensedWorkoutsWithPredicate_profile_error_handler___block_invoke_2;
  v26[3] = &unk_27861F648;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v27 = *(a1 + 40);
  v21 = [v23 enumerateProperties:v11 error:a3 enumerationHandler:v26];

  return v21;
}

+ (id)_codableCondensedWorkoutProperties
{
  v3[9] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = *MEMORY[0x277D10A40];
  v3[1] = @"uuid";
  v3[2] = @"creation_date";
  v3[3] = @"start_date";
  v3[4] = @"end_date";
  v3[5] = @"activities.duration";
  v3[6] = @"activities.activity_type";
  v3[7] = @"condenser_version";
  v3[8] = @"condenser_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __81__HDWorkoutEntity_enumerateCondensedWorkoutsWithPredicate_profile_error_handler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x277CCD150]);
  v6 = a1[5];
  [v5 setPersistentID:HDSQLiteColumnAsInt64()];
  v7 = MEMORY[0x22AAC6C30](a3, a1[6]);
  [v5 setUuid:v7];

  MEMORY[0x22AAC6C50](a3, a1[7]);
  [v5 setCreationDate:?];
  MEMORY[0x22AAC6C50](a3, a1[8]);
  [v5 setStartDate:?];
  MEMORY[0x22AAC6C50](a3, a1[9]);
  [v5 setEndDate:?];
  MEMORY[0x22AAC6C50](a3, a1[10]);
  [v5 setDuration:?];
  v8 = a1[11];
  [v5 setType:HDSQLiteColumnAsInt64()];
  v9 = a1[12];
  [v5 setCondenserVersion:HDSQLiteColumnAsInt64()];
  MEMORY[0x22AAC6C50](a3, a1[13]);
  [v5 setCondenserDate:?];
  v10 = (*(a1[4] + 16))();

  return v10;
}

- (id)codableCondensedWorkoutWithTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277CCD150];
  transactionCopy = transaction;
  v8 = objc_alloc_init(v6);
  v9 = +[HDWorkoutEntity _codableCondensedWorkoutProperties];
  protectedDatabase = [transactionCopy protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDWorkoutEntity_codableCondensedWorkoutWithTransaction_error___block_invoke;
  v15[3] = &unk_27861F670;
  v16 = v8;
  v11 = v8;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v9 database:protectedDatabase error:error handler:v15];

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

void __64__HDWorkoutEntity_codableCondensedWorkoutWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D10A40];
  [*(a1 + 32) setPersistentID:HDSQLiteColumnWithNameAsInt64()];
  v3 = HDSQLiteColumnWithNameAsData();
  [*(a1 + 32) setUuid:v3];

  HDSQLiteColumnWithNameAsDouble();
  [*(a1 + 32) setCreationDate:?];
  HDSQLiteColumnWithNameAsDouble();
  [*(a1 + 32) setStartDate:?];
  HDSQLiteColumnWithNameAsDouble();
  [*(a1 + 32) setEndDate:?];
  HDSQLiteColumnWithNameAsDouble();
  [*(a1 + 32) setDuration:?];
  [*(a1 + 32) setType:HDSQLiteColumnWithNameAsInt64()];
  v6 = HDSQLiteColumnWithNameAsNumber();
  if (v6)
  {
    [*(a1 + 32) setCondenserVersion:{objc_msgSend(v6, "longLongValue")}];
  }

  v4 = HDSQLiteColumnWithNameAsNumber();
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    [*(a1 + 32) setCondenserDate:?];
  }
}

- (id)mainWorkoutActivityTypeWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [HDWorkoutActivityEntity activityTypeForPrimaryActivityOwnerID:[(HDSQLiteEntity *)self persistentID] transaction:transactionCopy error:error];

  return v7;
}

- (id)workoutStartDateWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__81;
  v18 = __Block_byref_object_dispose__81;
  v19 = 0;
  v20[0] = @"start_date";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDWorkoutEntity_workoutStartDateWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __57__HDWorkoutEntity_workoutStartDateWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)workoutDurationWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [HDWorkoutActivityEntity durationForPrimaryActivityOwnerID:[(HDSQLiteEntity *)self persistentID] transaction:transactionCopy error:error];

  return v7;
}

- (id)totalDistanceInCanonicalUnitWithTransaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @"total_distance";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutEntity_totalDistanceInCanonicalUnitWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v12];

  if (error)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v14[3]];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __69__HDWorkoutEntity_totalDistanceInCanonicalUnitWithTransaction_error___block_invoke(uint64_t a1)
{
  result = HDSQLiteColumnWithNameAsDouble();
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

+ (BOOL)workoutActivityType:(unint64_t *)type associatedWithRouteUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v19 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v8 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v10 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v13 = [v19 stringWithFormat:@"SELECT %@ FROM %@ INNER JOIN %@ AS %@ ON %@ = %@ WHERE                                               %@ AND                                               (%@ IN (SELECT %@ FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@ = ?)                                                 OR                                                 %@ IN (SELECT %@ FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@ = ?))", @"activities.activity_type", disambiguatedDatabaseTable, v8, @"activities", @"data_id", @"owner_id", @"is_primary_activity", @"data_id", @"destination_object_id", v9, v10, @"source_object_id", @"data_id", @"uuid", @"data_id", @"data_id", v11, v12, @"uuid", @"parent_uuid", @"child_uuid", 0];

  v14 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDWorkoutEntity_workoutActivityType_associatedWithRouteUUID_transaction_error___block_invoke;
  v25[3] = &unk_278614860;
  v26 = dCopy;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__HDWorkoutEntity_workoutActivityType_associatedWithRouteUUID_transaction_error___block_invoke_2;
  v24[3] = &__block_descriptor_40_e26_B24__0__HDSQLiteRow__8__16l;
  v24[4] = type;
  v15 = dCopy;
  v16 = [v14 executeSQL:v13 error:error bindingHandler:v25 enumerationHandler:v24];

  return v16;
}

uint64_t __81__HDWorkoutEntity_workoutActivityType_associatedWithRouteUUID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 32);

  return HDSQLiteBindFoundationValueToStatement();
}

@end