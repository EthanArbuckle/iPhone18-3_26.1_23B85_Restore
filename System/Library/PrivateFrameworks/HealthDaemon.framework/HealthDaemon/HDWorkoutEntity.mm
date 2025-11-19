@interface HDWorkoutEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)enumerateCondensedWorkoutsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9;
+ (BOOL)workoutActivityType:(unint64_t *)a3 associatedWithRouteUUID:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)_codableCondensedWorkoutProperties;
+ (id)_primaryActivityJoinClause;
+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
+ (id)maxValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8;
+ (id)orderingTermForSortDescriptor:(id)a3;
- (BOOL)getCondenserVersion:(int64_t *)a3 date:(id *)a4 profile:(id)a5 error:(id *)a6;
- (BOOL)isCondenserVersionLessThan:(int64_t)a3 transaction:(id)a4;
- (BOOL)updateCondenserVersion:(int64_t)a3 date:(id)a4 transaction:(id)a5 error:(id *)a6;
- (id)codableCondensedWorkoutWithTransaction:(id)a3 error:(id *)a4;
- (id)mainWorkoutActivityTypeWithTransaction:(id)a3 error:(id *)a4;
- (id)totalDistanceInCanonicalUnitWithTransaction:(id)a3 error:(id *)a4;
- (id)workoutDurationWithTransaction:(id)a3 error:(id *)a4;
- (id)workoutStartDateWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDWorkoutEntity

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCF50]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"activities.duration";
LABEL_11:
    v10 = [v7 orderingTermWithProperty:v9 entityClass:v8 ascending:v6];
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

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  v10 = objc_msgSendSuper2(&v13, sel_orderingTermForSortDescriptor_, v4);
LABEL_12:
  v11 = v10;

  return v11;
}

+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v8, sel_deleteStatementsForRelatedEntitiesWithTransaction_, v3);
  v5 = [v4 mutableCopy];

  v6 = [HDWorkoutEventEntity deleteStatementForWorkoutEventsWithTransaction:v3];

  [v5 addObject:v6];

  return v5;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDWorkoutEntity.m" lineNumber:133 description:{@"Subclasses must override %s", "+[HDWorkoutEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v30[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v30[4] = a1;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__HDWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v27[3] = &unk_278613038;
  v16 = v14;
  v28 = v16;
  v17 = v12;
  v29 = v17;
  if ([v13 executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_1 error:a7 SQLGenerator:v30 bindingHandler:v27 enumerationHandler:0] && (objc_msgSend(v17, "_subActivities"), v18 = objc_claimAutoreleasedReturnValue(), v19 = +[HDWorkoutActivityEntity insertSubActivities:ownerID:database:error:](HDWorkoutActivityEntity, "insertSubActivities:ownerID:database:error:", v18, objc_msgSend(v16, "longLongValue"), v13, a7), v18, v19))
  {
    v20 = [v17 _primaryActivity];

    v21 = v16;
    if (v20)
    {
      v22 = [v17 _primaryActivity];
      v23 = +[HDWorkoutActivityEntity insertPrimaryActivity:ownerID:database:error:](HDWorkoutActivityEntity, "insertPrimaryActivity:ownerID:database:error:", v22, [v16 longLongValue], v13, a7);

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

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addWorkouts:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_HDWorkoutEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)joinClausesForProperty:(id)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isEqualToString:@"activities.activity_type"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"activities.duration"))
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

          if ([v4 isEqualToString:*(*(&v21 + 1) + 8 * i)])
          {
            v14 = [v5 objectForKeyedSubscript:v4];
            v15 = +[HDWorkoutEntity _primaryActivityJoinClause];
            v16 = v4;
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

    v20.receiver = a1;
    v20.super_class = &OBJC_METACLASS___HDWorkoutEntity;
    v6 = objc_msgSendSuper2(&v20, sel_joinClausesForProperty_, v4);
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

+ (id)maxValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
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
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 dictionaryWithObjects:v24 forKeys:v23 count:5];
  v15 = [v14 objectForKeyedSubscript:v13];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

  v22.receiver = a1;
  v22.super_class = &OBJC_METACLASS___HDWorkoutEntity;
  v19 = objc_msgSendSuper2(&v22, sel_maxValueForProperty_predicate_database_error_, v18, v12, v11, a6);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v66 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:a1 file:@"HDWorkoutEntity.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKWorkout class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    [v46 handleFailureInMethod:a2 object:a1 file:@"HDWorkoutEntity.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKWorkout class]]"}];
  }

  v16 = a9;
  v17 = v13;
  v53 = v14;
  v18 = [v53 _subActivities];
  v19 = [v18 count];

  if (v19)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = [v17 _subActivities];
    v52 = [v20 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v52)
    {
      v51 = *v60;
      v48 = v17;
      v49 = v15;
      obj = v20;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v59 + 1) + 8 * i);
          v23 = [v22 startDate];
          v24 = [v22 endDate];
          v25 = [v17 UUID];
          v26 = HDReferenceForAssociatableObject(v22);
          v27 = [HDAssociationEntity objectUUIDsAssociatedWithObjectUUID:v25 subObjectReference:v26 excludeDeleted:1 profile:v15 error:v16];

          if ([v27 count])
          {
            v54 = v27;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v28 = [v53 _subActivities];
            v29 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
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
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v55 + 1) + 8 * v32);
                v34 = [v33 startDate];
                v35 = [v33 endDate];
                [v23 timeIntervalSinceDate:v34];
                v37 = fabs(v36);
                [v24 timeIntervalSinceDate:v35];
                if (v37 <= 0.001 && fabs(v38) <= 0.001)
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
                  if (v30)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_21;
                }
              }

              v39 = [v53 UUID];
              v40 = HDReferenceForAssociatableObject(v33);
              v15 = v49;
              v27 = v54;
              v50 = [HDAssociationEntity associateSampleUUIDs:v54 withSampleUUID:v39 type:1 behavior:0 destinationSubObjectReference:v40 lastInsertedEntityID:0 profile:v49 error:a9];

              v16 = a9;
              v17 = v48;
              if (v50)
              {
                goto LABEL_23;
              }

              v42 = 0;
              v41 = obj;
              goto LABEL_29;
            }

LABEL_21:

            v17 = v48;
            v15 = v49;
            v16 = a9;
            v27 = v54;
          }

LABEL_23:
        }

        v20 = obj;
        v52 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([HDAssociationEntity copyAssociationsFromObject:v17 toObject:v53 type:1 behavior:0 profile:v15 error:v16])
  {
    v41 = [v15 dataManager];
    v63 = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v42 = [v41 deleteDataObjects:v23 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:v16];
LABEL_29:
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8
{
  v63[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v48 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = 0;
    goto LABEL_35;
  }

  v47 = v14;
  v18 = [v47 _primaryActivity];

  if (v18)
  {
    v46 = [v16 databaseForEntityClass:objc_opt_class()];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v58 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __86__HDWorkoutEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke;
    v57[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v57[4] = a1;
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
        if (a7)
        {
          v37 = v36;
          *a7 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      else
      {
        v29 = [v19 _primaryActivity];
        v30 = v60[3];
        v52 = v25;
        v31 = [HDWorkoutActivityEntity insertPrimaryActivity:v29 ownerID:v30 database:v46 error:&v52];
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
          v33 = [a1 updateProperties:v44 predicate:v43 database:v46 error:&v51 bindingHandler:v49];
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
              if (a7)
              {
                v40 = v38;
                *a7 = v39;
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
          if (a7)
          {
            v35 = v34;
            *a7 = v25;
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
        if (a7)
        {
          v28 = v27;
          v26 = 0;
          *a7 = v24;
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

  [MEMORY[0x277CCA9B8] hk_assignError:a7 code:1401 description:@"Ignoring synced workout for merge because it does not have a primary activity"];
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

- (BOOL)updateCondenserVersion:(int64_t)a3 date:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v21[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v21[0] = @"condenser_version";
  v21[1] = @"condenser_date";
  v11 = MEMORY[0x277CBEA60];
  v12 = a5;
  v13 = [v11 arrayWithObjects:v21 count:2];
  v14 = [v12 databaseForEntity:self];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDWorkoutEntity_updateCondenserVersion_date_transaction_error___block_invoke;
  v18[3] = &unk_278616B10;
  v19 = v10;
  v20 = a3;
  v15 = v10;
  LOBYTE(a6) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:a6 bindingHandler:v18];

  v16 = *MEMORY[0x277D85DE8];
  return a6;
}

void __65__HDWorkoutEntity_updateCondenserVersion_date_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"condenser_version", *(a1 + 40));
  v3 = *(a1 + 32);

  JUMPOUT(0x22AAC6B50);
}

- (BOOL)isCondenserVersionLessThan:(int64_t)a3 transaction:(id)a4
{
  v6 = [a4 databaseForEntity:self];
  v7 = [(HDSQLiteEntity *)self numberForProperty:@"condenser_version" database:v6];

  if (v7)
  {
    v8 = [v7 integerValue] < a3;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)getCondenserVersion:(int64_t *)a3 date:(id *)a4 profile:(id)a5 error:(id *)a6
{
  v27[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
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
  v12 = [v10 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HDWorkoutEntity_getCondenserVersion_date_profile_error___block_invoke;
  v16[3] = &unk_278617F30;
  v16[4] = &v23;
  v16[5] = &v17;
  v13 = [(HDHealthEntity *)self getValuesForProperties:v11 healthDatabase:v12 error:a6 handler:v16];

  if (v13)
  {
    if (a3)
    {
      *a3 = v24[3];
    }

    if (a4)
    {
      *a4 = v18[5];
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

+ (BOOL)enumerateCondensedWorkoutsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDWorkoutEntity_enumerateCondensedWorkoutsWithPredicate_profile_error_handler___block_invoke;
  v16[3] = &unk_27861B6E8;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a5) = [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v16];

  return a5;
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

- (id)codableCondensedWorkoutWithTransaction:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD150];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = +[HDWorkoutEntity _codableCondensedWorkoutProperties];
  v10 = [v7 protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDWorkoutEntity_codableCondensedWorkoutWithTransaction_error___block_invoke;
  v15[3] = &unk_27861F670;
  v16 = v8;
  v11 = v8;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v9 database:v10 error:a4 handler:v15];

  if (a4)
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

- (id)mainWorkoutActivityTypeWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HDWorkoutActivityEntity activityTypeForPrimaryActivityOwnerID:[(HDSQLiteEntity *)self persistentID] transaction:v6 error:a4];

  return v7;
}

- (id)workoutStartDateWithTransaction:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__81;
  v18 = __Block_byref_object_dispose__81;
  v19 = 0;
  v20[0] = @"start_date";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [v6 databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDWorkoutEntity_workoutStartDateWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v13];

  if (a4)
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

- (id)workoutDurationWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HDWorkoutActivityEntity durationForPrimaryActivityOwnerID:[(HDSQLiteEntity *)self persistentID] transaction:v6 error:a4];

  return v7;
}

- (id)totalDistanceInCanonicalUnitWithTransaction:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @"total_distance";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [v6 databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutEntity_totalDistanceInCanonicalUnitWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v12];

  if (a4)
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

+ (BOOL)workoutActivityType:(unint64_t *)a3 associatedWithRouteUUID:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v21 = a4;
  v19 = MEMORY[0x277CCACA8];
  v20 = a5;
  v18 = [a1 disambiguatedDatabaseTable];
  v8 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v10 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v13 = [v19 stringWithFormat:@"SELECT %@ FROM %@ INNER JOIN %@ AS %@ ON %@ = %@ WHERE                                               %@ AND                                               (%@ IN (SELECT %@ FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@ = ?)                                                 OR                                                 %@ IN (SELECT %@ FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@ = ?))", @"activities.activity_type", v18, v8, @"activities", @"data_id", @"owner_id", @"is_primary_activity", @"data_id", @"destination_object_id", v9, v10, @"source_object_id", @"data_id", @"uuid", @"data_id", @"data_id", v11, v12, @"uuid", @"parent_uuid", @"child_uuid", 0];

  v14 = [v20 databaseForEntityClass:objc_opt_class()];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDWorkoutEntity_workoutActivityType_associatedWithRouteUUID_transaction_error___block_invoke;
  v25[3] = &unk_278614860;
  v26 = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__HDWorkoutEntity_workoutActivityType_associatedWithRouteUUID_transaction_error___block_invoke_2;
  v24[3] = &__block_descriptor_40_e26_B24__0__HDSQLiteRow__8__16l;
  v24[4] = a3;
  v15 = v21;
  v16 = [v14 executeSQL:v13 error:a6 bindingHandler:v25 enumerationHandler:v24];

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