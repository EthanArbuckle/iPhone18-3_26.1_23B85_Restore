@interface _HDWorkoutEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (_HDWorkoutEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
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

  v6 = [(HDEntityEncoder *)self superclassEncoder];
  v7 = [v6 orderedProperties];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (_HDWorkoutEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = _HDWorkoutEntityEncoder;
  v16 = [(HDEntityEncoder *)&v26 initWithHealthEntityClass:a3 profile:a4 transaction:v14 purpose:a6 encodingOptions:v15 authorizationFilter:a8];
  if (v16)
  {
    v17 = [v15 objectForKeyedSubscript:@"IncludeCondenserInfo"];
    v16->_includeCondenserInfo = [v17 BOOLValue];

    v18 = [v14 databaseForEntityClass:a3];
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

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [v9 codableRepresentationForPersistentID:a3 row:a4 error:a5];

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
  if ([HDWorkoutEventEntity enumerateEventsForOwner:a3 withStatement:workoutEntryLookupStatement error:a5 eventHandler:v51])
  {
    v14 = [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
    v50 = 0;
    v15 = [HDWorkoutActivityEntity primaryWorkoutActivityForOwnerID:a3 database:v14 error:&v50];
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
        if (a5)
        {
          v33 = v21;
          v18 = 0;
          *a5 = v21;
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

    v19 = [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
    v49 = 0;
    v20 = [HDWorkoutActivityEntity subActivitiesWithOwnerID:a3 database:v19 error:&v49];
    v21 = v49;

    if (!v20)
    {
      v22 = 0;
      v30 = v21;
      v31 = v39;
      v24 = v40;
      if (v30)
      {
        if (a5)
        {
          v32 = v30;
          *a5 = v30;
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
    v26 = [v25 futureMigrationsEnabled];

    if (v26)
    {
      [(HDSQLiteStatement *)self->_workoutEntryLookupStatement database];
      v27 = v21 = v38;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __74___HDWorkoutEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke_2;
      v41[3] = &unk_27861F6C0;
      v41[4] = &v43;
      v42 = 0;
      v28 = [HDWorkoutZonesEntity enumerateZonesWithOwnerID:a3 database:v27 error:&v42 handler:v41];
      v29 = v42;

      if (!v28)
      {
        v34 = v29;
        v35 = v34;
        if (v34)
        {
          if (a5)
          {
            v36 = v34;
            *a5 = v35;
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

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDBE8]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v123 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [(HDEntityEncoder *)self superclassEncoder];
  v11 = [v10 applyPropertiesToObject:v9 persistentID:a4 row:a5 error:a6];

  if (v11)
  {
    [v9 _setWorkoutActivityType:HDSQLiteColumnWithNameAsInt64()];
    HDSQLiteColumnWithNameAsDouble();
    [v9 _setDuration:?];
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v13) & 1) == 0 && _HKWorkoutGoalTypeIsValidForGoal())
    {
      v14 = MEMORY[0x277CCD7E8];
      v15 = _HKWorkoutCanonicalUnitForGoalType();
      MEMORY[0x22AAC6C50](a5, v13);
      v16 = [v14 quantityWithUnit:v15 doubleValue:?];

      [v9 _setGoal:v16];
      [v9 _setGoalType:v12];
    }

    v17 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v17) & 1) == 0)
    {
      v18 = MEMORY[0x22AAC6C50](a5, v17);
      v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
      v20 = [v19 canonicalUnit];

      v21 = [MEMORY[0x277CCD7E8] quantityWithUnit:v20 doubleValue:v18];
      [v9 _setTotalSwimmingStrokeCount:v21];
    }

    v22 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v22) & 1) == 0)
    {
      v23 = MEMORY[0x22AAC6C50](a5, v22);
      v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
      v25 = [v24 canonicalUnit];

      v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v25 doubleValue:v23];
      [v9 _setTotalFlightsClimbed:v26];
    }

    if (self->_includeCondenserInfo)
    {
      v27 = [v9 metadata];
      v28 = [v27 mutableCopy];

      v29 = HDSQLiteColumnWithName();
      v30 = MEMORY[0x22AAC6CD0](a5, v29);
      if ((v30 & 1) == 0)
      {
        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v31 = MEMORY[0x22AAC6C80](a5, v29);
        [v28 setObject:v31 forKeyedSubscript:@"condenser_version"];
      }

      v32 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a5, v32) & 1) == 0)
      {
        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v33 = MEMORY[0x22AAC6C40](a5, v32);
        [v28 setObject:v33 forKeyedSubscript:@"condenser_date"];

        v30 = 0;
      }

      if (v28 && (v30 & 1) == 0)
      {
        [v9 _setMetadata:v28];
      }
    }

    v34 = [(HDEntityEncoder *)self transaction];
    v98 = [v34 databaseForEntityClass:objc_opt_class()];

    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
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

      if (a6)
      {
        v48 = v97;
        LOBYTE(v46) = 0;
        *a6 = v97;
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
      [v9 _setWorkoutEvents:v36];
    }

    v37 = [(HDEntityEncoder *)self transaction];
    v94 = [v37 databaseForEntityClass:objc_opt_class()];

    v115 = 0;
    v95 = [HDWorkoutActivityEntity subActivitiesWithOwnerID:a4 database:v94 error:&v115];
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
        if (a6)
        {
          v51 = v50;
          LOBYTE(v46) = 0;
          *a6 = v44;
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

      [v9 _setSubActivities:v95];
    }

    v110 = 0;
    v42 = [HDWorkoutActivityEntity primaryWorkoutActivityForOwnerID:a4 database:v94 error:&v110];
    v43 = v110;
    v44 = v43;
    if (v42)
    {
      v45 = [v9 workoutEvents];
      [v42 _filterAndSetWorkoutEvents:v45];
    }

    else
    {
      if (([v43 hk_isObjectNotFoundError] & 1) == 0)
      {
        v84 = v44;
        v42 = v84;
        if (v84)
        {
          if (a6)
          {
            v85 = v84;
            LOBYTE(v46) = 0;
            *a6 = v42;
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

      v52 = v9;
      v45 = v52;
      if (self)
      {
        [v52 workoutActivityType];
        v53 = [v45 metadata];
        v91 = _HKWorkoutConfigurationWithActivityTypeAndMetadata();

        v54 = objc_alloc(MEMORY[0x277CCDBF0]);
        v93 = [v45 UUID];
        v92 = [v45 startDate];
        v55 = [v45 endDate];
        v56 = [v45 workoutEvents];
        [v45 duration];
        v42 = [v54 _initWithUUID:v93 workoutConfiguration:v91 startDate:v92 endDate:v55 workoutEvents:v56 startsPaused:0 duration:0 metadata:0 statisticsPerType:?];

        v57 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](a5, v57) & 1) == 0)
        {
          v58 = MEMORY[0x22AAC6C50](a5, v57);
          v59 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
          v60 = [v59 canonicalUnit];

          v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v60 doubleValue:v58];
          [v45 _setTotalEnergyBurned:v61];
        }

        v62 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](a5, v62) & 1) == 0)
        {
          v63 = MEMORY[0x22AAC6C50](a5, v62);
          v64 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
          v65 = [v64 canonicalUnit];

          v66 = [MEMORY[0x277CCD7E8] quantityWithUnit:v65 doubleValue:v63];
          [v45 _setTotalBasalEnergyBurned:v66];
        }

        v67 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](a5, v67) & 1) == 0)
        {
          v68 = MEMORY[0x22AAC6C50](a5, v67);
          v69 = MEMORY[0x277CCD7E8];
          v70 = _HKWorkoutCanonicalDistanceUnit();
          v71 = [v69 quantityWithUnit:v70 doubleValue:v68];

          [v45 _setTotalDistance:v71];
        }
      }

      else
      {
        v42 = 0;
      }
    }

    [v9 _setPrimaryActivity:v42];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v118 = 0x3032000000;
    v119 = __Block_byref_object_copy__81;
    v120 = __Block_byref_object_dispose__81;
    v121 = 0;
    v72 = [(HDEntityEncoder *)self profile];
    v73 = [(HDEntityEncoder *)self transaction];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke;
    v108[3] = &unk_27861F6E8;
    v108[4] = &buf;
    v109 = 0;
    v74 = [HDWorkoutZonesAssociationEntity enumerateZonesSamplesWithWorkoutPersistentID:a4 profile:v72 transaction:v73 error:&v109 handler:v108];
    v75 = v109;

    if (v74)
    {
      [v9 _setZonesByType:*(*(&buf + 1) + 40)];
      v76 = [MEMORY[0x277CCDD30] sharedBehavior];
      v77 = [v76 futureMigrationsEnabled];

      if (!v77)
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
      v78 = [(HDEntityEncoder *)self transaction];
      v100[4] = &v102;
      v101 = 0;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke_2;
      v100[3] = &unk_27861F6C0;
      v79 = [HDWorkoutZonesEntity enumerateZonesWithOwnerID:a4 transaction:v78 error:&v101 handler:v100];
      v80 = v101;

      if (v79)
      {
        [v9 _setWorkoutZonesByType:v103[5]];
      }

      else
      {
        v86 = v80;
        v87 = v86;
        LOBYTE(v46) = v86 == 0;
        if (v86)
        {
          if (a6)
          {
            v88 = v86;
            *a6 = v87;
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
        if (a6)
        {
          v83 = v81;
          *a6 = v82;
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