@interface _HDWorkoutEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDWorkoutEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDWorkoutEntityEncoder

- (id)orderedProperties
{
  v12[9] = *MEMORY[0x277D85DE8];
  v12[0] = @"activities.activity_type";
  v12[1] = @"activities.duration";
  v12[2] = @"active_energy.quantity";
  v12[3] = @"basal_energy.quantity";
  v12[4] = @"total_distance";
  v12[5] = @"goal";
  v12[6] = @"goal_type";
  v12[7] = @"swimming_strokes.quantity";
  v12[8] = @"flights_climbed.quantity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:9];
  if (self->_includeCondenserInfo)
  {
    v11[0] = @"condenser_version";
    v11[1] = @"condenser_date";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];

    v3 = v5;
  }

  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v8 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (_HDWorkoutEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  v29 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = _HDWorkoutEntityEncoder;
  v16 = [(HDEntityEncoder *)&v26 initWithHealthEntityClass:class profile:profile transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v16)
  {
    v17 = [optionsCopy objectForKeyedSubscript:@"IncludeCondenserInfo"];
    v16->_includeCondenserInfo = [v17 BOOLValue];

    v18 = [transactionCopy databaseForEntityClass:class];
    v25 = 0;
    v19 = [HDWorkoutEventEntity statementForEnumeratingEventsForOwnerInDatabase:v18 error:&v25];
    v20 = v25;
    workoutEntryLookupStatement = v16->_workoutEntryLookupStatement;
    v16->_workoutEntryLookupStatement = v19;

    if (!v16->_workoutEntryLookupStatement)
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v20;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Unable to create statement to look up workout events: %{public}@", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (!v10)
  {
    v18 = 0;
    goto LABEL_46;
  }

  v11 = objc_alloc_init(HDCodableWorkout);
  [(HDCodableWorkout *)v11 setSample:v10];
  [(HDCodableWorkout *)v11 setType:HDSQLiteColumnWithNameAsInt64()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableWorkout *)v11 setDuration:?];
  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableWorkout *)v11 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableWorkout *)v11 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableWorkout *)v11 setTotalDistanceInCanonicalUnit:?];
  }

  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableWorkout *)v11 setTotalSwimmingStrokeCountInCanonicalUnit:?];
  }

  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableWorkout *)v11 setTotalFlightsClimbedInCanonicalUnit:?];
  }

  workoutEntryLookupStatement = self->_workoutEntryLookupStatement;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __74___HDWorkoutEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke;
  v51[3] = &unk_27861F698;
  v13 = v11;
  v52 = v13;
  if ([HDWorkoutEventEntity enumerateEventsForOwner:d withStatement:workoutEntryLookupStatement error:error eventHandler:v51])
  {
    database = [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
    v50 = 0;
    v15 = [HDWorkoutActivityEntity primaryWorkoutActivityForOwnerID:d database:database error:&v50];
    v16 = v50;

    v39 = v16;
    v40 = v15;
    if (v15)
    {
      v17 = [HDCodableWorkoutActivity codableForWorkoutActivity:v15];
      if (v17)
      {
        [(HDCodableWorkout *)v13 setPrimaryActivity:v17];
      }
    }

    else if (([v16 hk_isObjectNotFoundError] & 1) == 0)
    {
      v31 = v16;
      v21 = v16;
      if (v21)
      {
        v24 = 0;
        if (error)
        {
          v33 = v21;
          v18 = 0;
          *error = v21;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v24 = 0;
      }

      goto LABEL_44;
    }

    database2 = [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
    v49 = 0;
    v20 = [HDWorkoutActivityEntity subActivitiesWithOwnerID:d database:database2 error:&v49];
    v21 = v49;

    if (!v20)
    {
      v22 = 0;
      v30 = v21;
      v31 = v39;
      v24 = v40;
      if (v30)
      {
        if (error)
        {
          v32 = v30;
          *error = v30;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v18 = 0;
      goto LABEL_43;
    }

    v38 = v21;
    v22 = v20;
    v23 = [HDCodableWorkoutActivity codablesForWorkoutActivities:v20];
    [(HDCodableWorkout *)v13 setSubActivities:v23];

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableWorkout *)v13 setGoalType:HDSQLiteColumnWithNameAsInt64()];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableWorkout *)v13 setGoal:?];
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__81;
    v47 = __Block_byref_object_dispose__81;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [MEMORY[0x277CCDD30] sharedBehavior];
    v25 = v24 = v40;
    futureMigrationsEnabled = [v25 futureMigrationsEnabled];

    if (futureMigrationsEnabled)
    {
      [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
      v27 = v21 = v38;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __74___HDWorkoutEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke_2;
      v41[3] = &unk_27861F6C0;
      v41[4] = &v43;
      v42 = 0;
      v28 = [HDWorkoutZonesEntity enumerateZonesWithOwnerID:d database:v27 error:&v42 handler:v41];
      v29 = v42;

      if (!v28)
      {
        v34 = v29;
        v35 = v34;
        if (v34)
        {
          if (error)
          {
            v36 = v34;
            *error = v35;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v18 = 0;
        goto LABEL_42;
      }

      [(HDCodableWorkout *)v13 setZones:v44[5]];
    }

    v18 = v13;
    v21 = v38;
LABEL_42:
    _Block_object_dispose(&v43, 8);

    v31 = v39;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  v18 = 0;
LABEL_45:

LABEL_46:

  return v18;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDBE8]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v123 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v11 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v11)
  {
    [objectCopy _setWorkoutActivityType:HDSQLiteColumnWithNameAsInt64()];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy _setDuration:?];
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v13) & 1) == 0 && _HKWorkoutGoalTypeIsValidForGoal())
    {
      v14 = MEMORY[0x277CCD7E8];
      v15 = _HKWorkoutCanonicalUnitForGoalType();
      MEMORY[0x22AAC6C50](row, v13);
      v16 = [v14 quantityWithUnit:v15 doubleValue:?];

      [objectCopy _setGoal:v16];
      [objectCopy _setGoalType:v12];
    }

    v17 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v17) & 1) == 0)
    {
      v18 = MEMORY[0x22AAC6C50](row, v17);
      v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
      canonicalUnit = [v19 canonicalUnit];

      v21 = [MEMORY[0x277CCD7E8] quantityWithUnit:canonicalUnit doubleValue:v18];
      [objectCopy _setTotalSwimmingStrokeCount:v21];
    }

    v22 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v22) & 1) == 0)
    {
      v23 = MEMORY[0x22AAC6C50](row, v22);
      v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
      canonicalUnit2 = [v24 canonicalUnit];

      v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:canonicalUnit2 doubleValue:v23];
      [objectCopy _setTotalFlightsClimbed:v26];
    }

    if (self->_includeCondenserInfo)
    {
      metadata = [objectCopy metadata];
      v28 = [metadata mutableCopy];

      v29 = HDSQLiteColumnWithName();
      v30 = MEMORY[0x22AAC6CD0](row, v29);
      if ((v30 & 1) == 0)
      {
        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v31 = MEMORY[0x22AAC6C80](row, v29);
        [v28 setObject:v31 forKeyedSubscript:@"condenser_version"];
      }

      v32 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](row, v32) & 1) == 0)
      {
        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v33 = MEMORY[0x22AAC6C40](row, v32);
        [v28 setObject:v33 forKeyedSubscript:@"condenser_date"];

        v30 = 0;
      }

      if (v28 && (v30 & 1) == 0)
      {
        [objectCopy _setMetadata:v28];
      }
    }

    transaction = [(HDEntityEncoder *)self transaction];
    v98 = [transaction databaseForEntityClass:objc_opt_class()];

    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v116 = 0;
    v36 = [HDWorkoutEventEntity workoutEventsWithOwnerID:v35 database:v98 error:&v116];
    v96 = v116;

    if (!v36)
    {
      _HKInitializeLogging();
      v47 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v96;
        _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "Error retrieving workout events: %{public}@", &buf, 0xCu);
      }

      v97 = v96;
      if (!v97)
      {
        LOBYTE(v46) = 1;

LABEL_88:
        goto LABEL_89;
      }

      if (error)
      {
        v48 = v97;
        LOBYTE(v46) = 0;
        *error = v97;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(v46) = 0;
      }

LABEL_87:

      goto LABEL_88;
    }

    if ([v36 count])
    {
      [objectCopy _setWorkoutEvents:v36];
    }

    transaction2 = [(HDEntityEncoder *)self transaction];
    v94 = [transaction2 databaseForEntityClass:objc_opt_class()];

    v115 = 0;
    v95 = [HDWorkoutActivityEntity subActivitiesWithOwnerID:d database:v94 error:&v115];
    v97 = v115;
    if (!v95)
    {
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v97;
        _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "Error retrieving workout activities: %{public}@", &buf, 0xCu);
      }

      v50 = v97;
      v44 = v50;
      if (v50)
      {
        if (error)
        {
          v51 = v50;
          LOBYTE(v46) = 0;
          *error = v44;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(v46) = 0;
        }
      }

      else
      {
        LOBYTE(v46) = 1;
      }

      goto LABEL_86;
    }

    if ([v95 count])
    {
      if ([v36 count])
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v38 = v95;
        v39 = [v38 countByEnumeratingWithState:&v111 objects:v122 count:16];
        if (v39)
        {
          v40 = *v112;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v112 != v40)
              {
                objc_enumerationMutation(v38);
              }

              [*(*(&v111 + 1) + 8 * i) _filterAndSetWorkoutEvents:v36];
            }

            v39 = [v38 countByEnumeratingWithState:&v111 objects:v122 count:16];
          }

          while (v39);
        }
      }

      [objectCopy _setSubActivities:v95];
    }

    v110 = 0;
    v42 = [HDWorkoutActivityEntity primaryWorkoutActivityForOwnerID:d database:v94 error:&v110];
    v43 = v110;
    v44 = v43;
    if (v42)
    {
      workoutEvents = [objectCopy workoutEvents];
      [v42 _filterAndSetWorkoutEvents:workoutEvents];
    }

    else
    {
      if (([v43 hk_isObjectNotFoundError] & 1) == 0)
      {
        v84 = v44;
        v42 = v84;
        if (v84)
        {
          if (error)
          {
            v85 = v84;
            LOBYTE(v46) = 0;
            *error = v42;
          }

          else
          {
            _HKLogDroppedError();
            LOBYTE(v46) = 0;
          }
        }

        else
        {
          LOBYTE(v46) = 1;
        }

LABEL_85:

LABEL_86:
        goto LABEL_87;
      }

      v52 = objectCopy;
      workoutEvents = v52;
      if (self)
      {
        [v52 workoutActivityType];
        metadata2 = [workoutEvents metadata];
        v91 = _HKWorkoutConfigurationWithActivityTypeAndMetadata();

        v54 = objc_alloc(MEMORY[0x277CCDBF0]);
        uUID = [workoutEvents UUID];
        startDate = [workoutEvents startDate];
        endDate = [workoutEvents endDate];
        v45WorkoutEvents = [workoutEvents workoutEvents];
        [workoutEvents duration];
        v42 = [v54 _initWithUUID:uUID workoutConfiguration:v91 startDate:startDate endDate:endDate workoutEvents:v45WorkoutEvents startsPaused:0 duration:0 metadata:0 statisticsPerType:?];

        v57 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v57) & 1) == 0)
        {
          v58 = MEMORY[0x22AAC6C50](row, v57);
          v59 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
          canonicalUnit3 = [v59 canonicalUnit];

          v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:canonicalUnit3 doubleValue:v58];
          [workoutEvents _setTotalEnergyBurned:v61];
        }

        v62 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v62) & 1) == 0)
        {
          v63 = MEMORY[0x22AAC6C50](row, v62);
          v64 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
          canonicalUnit4 = [v64 canonicalUnit];

          v66 = [MEMORY[0x277CCD7E8] quantityWithUnit:canonicalUnit4 doubleValue:v63];
          [workoutEvents _setTotalBasalEnergyBurned:v66];
        }

        v67 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v67) & 1) == 0)
        {
          v68 = MEMORY[0x22AAC6C50](row, v67);
          v69 = MEMORY[0x277CCD7E8];
          v70 = _HKWorkoutCanonicalDistanceUnit();
          v71 = [v69 quantityWithUnit:v70 doubleValue:v68];

          [workoutEvents _setTotalDistance:v71];
        }
      }

      else
      {
        v42 = 0;
      }
    }

    [objectCopy _setPrimaryActivity:v42];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v118 = 0x3032000000;
    v119 = __Block_byref_object_copy__81;
    v120 = __Block_byref_object_dispose__81;
    v121 = 0;
    profile = [(HDEntityEncoder *)self profile];
    transaction3 = [(HDEntityEncoder *)self transaction];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke;
    v108[3] = &unk_27861F6E8;
    v108[4] = &buf;
    v109 = 0;
    v74 = [HDWorkoutZonesAssociationEntity enumerateZonesSamplesWithWorkoutPersistentID:d profile:profile transaction:transaction3 error:&v109 handler:v108];
    v75 = v109;

    if (v74)
    {
      [objectCopy _setZonesByType:*(*(&buf + 1) + 40)];
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      futureMigrationsEnabled = [mEMORY[0x277CCDD30] futureMigrationsEnabled];

      if (!futureMigrationsEnabled)
      {
        goto LABEL_83;
      }

      v102 = 0;
      v103 = &v102;
      v104 = 0x3032000000;
      v105 = __Block_byref_object_copy__81;
      v106 = __Block_byref_object_dispose__81;
      v107 = 0;
      v46 = HDWorkoutZonesEntity;
      transaction4 = [(HDEntityEncoder *)self transaction];
      v100[4] = &v102;
      v101 = 0;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke_2;
      v100[3] = &unk_27861F6C0;
      v79 = [HDWorkoutZonesEntity enumerateZonesWithOwnerID:d transaction:transaction4 error:&v101 handler:v100];
      v80 = v101;

      if (v79)
      {
        [objectCopy _setWorkoutZonesByType:v103[5]];
      }

      else
      {
        v86 = v80;
        v87 = v86;
        LOBYTE(v46) = v86 == 0;
        if (v86)
        {
          if (error)
          {
            v88 = v86;
            *error = v87;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      _Block_object_dispose(&v102, 8);
      if (v79)
      {
LABEL_83:
        LOBYTE(v46) = 1;
      }
    }

    else
    {
      v81 = v75;
      v82 = v81;
      LOBYTE(v46) = v81 == 0;
      if (v81)
      {
        if (error)
        {
          v83 = v81;
          *error = v82;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    _Block_object_dispose(&buf, 8);
    goto LABEL_85;
  }

  LOBYTE(v46) = 0;
LABEL_89:

  v89 = *MEMORY[0x277D85DE8];
  return v46 & 1;
}

@end