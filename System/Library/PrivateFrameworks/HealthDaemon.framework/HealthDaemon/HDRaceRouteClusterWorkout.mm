@interface HDRaceRouteClusterWorkout
+ (id)clusterWorkoutWithWorkoutEntity:(id)entity transaction:(id)transaction metadataManager:(id)manager error:(id *)error;
+ (id)clusterWorkoutWithWorkoutUUID:(id)d transaction:(id)transaction metadataManager:(id)manager error:(id *)error;
@end

@implementation HDRaceRouteClusterWorkout

+ (id)clusterWorkoutWithWorkoutEntity:(id)entity transaction:(id)transaction metadataManager:(id)manager error:(id *)error
{
  entityCopy = entity;
  transactionCopy = transaction;
  managerCopy = manager;
  v12 = [HDMetadataValueStatement metadataValueStatementWithTransaction:transactionCopy];
  v13 = [managerCopy metadataForObjectID:objc_msgSend(entityCopy baseMetadata:"persistentID") keyFilter:0 statement:0 error:{v12, error}];

  if (!v13)
  {
    v25 = 0;
    goto LABEL_37;
  }

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0B0]];

  v15 = [transactionCopy databaseForEntity:entityCopy];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(entityCopy, "persistentID")}];
  v17 = HDDataEntityPredicateForRowID(v16, 1);

  v18 = v15;
  v67 = v17;
  v68 = 0;
  v19 = [(HDSQLiteEntity *)HDDataEntity propertyValueForAnyInDatabase:v15 property:@"uuid" predicate:v17 error:&v68];
  v20 = v68;
  v66 = v19;
  v21 = _HDUUIDForSQLiteValue();
  if (v21)
  {
    v22 = [entityCopy mainWorkoutActivityTypeWithTransaction:transactionCopy error:error];
    if (v22)
    {
      if (v14)
      {
        obj = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0B8]];
        if (obj)
        {
          goto LABEL_8;
        }
      }

      obj = [entityCopy workoutStartDateWithTransaction:transactionCopy error:error];
      if (obj)
      {
        if (!v14)
        {
          v60 = v20;
          v23 = 0;
LABEL_20:
          v63 = v23;
          v27 = [entityCopy totalDistanceInCanonicalUnitWithTransaction:transactionCopy error:error];
          if (!v27)
          {
            v25 = 0;
            goto LABEL_34;
          }

          v28 = v27;
          v57 = MEMORY[0x277CCD7E8];
          _HKWorkoutCanonicalDistanceUnit();
          v29 = v61 = v18;
          [v28 doubleValue];
          [v57 quantityWithUnit:v29 doubleValue:?];
          v30 = v58 = v21;

          v54 = MEMORY[0x277CCABB0];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          [v30 doubleValueForUnit:meterUnit];
          [v54 numberWithDouble:?];
          v32 = v55 = v28;

          v18 = v61;
          v21 = v58;

          v24 = v32;
          v23 = v63;
LABEL_22:
          v62 = v18;
          v59 = v24;
          [v24 doubleValue];
          v34 = v33;
          v64 = v23;
          [v23 doubleValue];
          v36 = v35;
          if (v14)
          {
            v37 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0C8]];
            v38 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0A8]];
            if (v38)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v37 = 0;
          }

          v38 = [entityCopy workoutDurationWithTransaction:transactionCopy error:error];
          if (!v38)
          {
            v50 = v37;
            v25 = 0;
LABEL_33:
            v23 = v64;

            v18 = v62;
LABEL_34:

            v20 = v60;
            goto LABEL_35;
          }

LABEL_27:
          v39 = v38;
          [v38 doubleValue];
          v41 = v40;
          [v37 doubleValue];
          v43 = v42;
          v25 = [HDRaceRouteClusterWorkout alloc];
          integerValue = [v22 integerValue];
          [v37 doubleValue];
          v45 = v44;
          [v39 doubleValue];
          v47 = v46;
          v48 = v21;
          v53 = obj;
          v56 = v48;
          if (v25 && (v69.receiver = v25, v69.super_class = HDRaceRouteClusterWorkout, v49 = objc_msgSendSuper2(&v69, sel_init), (v25 = v49) != 0))
          {
            v50 = v37;
            objc_storeStrong(v49 + 1, v21);
            v25->_activityType = integerValue;
            objc_storeStrong(&v25->_startDate, obj);
            v25->_distance = v34 - v36;
            v25->_duration = v41 - v43;
            v25->_startDuration = v45;
            v25->_finishDuration = v47;
          }

          else
          {
            v50 = v37;
          }

          goto LABEL_33;
        }

LABEL_8:
        v60 = v20;
        v23 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0C0]];
        v24 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0A0]];
        if (v24)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    v25 = 0;
  }

  else
  {
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Invalid reference workout UUID"];
      if (!v22)
      {
        v20 = 0;
        v25 = 0;
        goto LABEL_36;
      }
    }

    if (error)
    {
      v26 = v22;
      v25 = 0;
      *error = v22;
    }

    else
    {
      _HKLogDroppedError();
      v25 = 0;
    }

    v20 = v22;
  }

LABEL_35:

LABEL_36:
LABEL_37:

  return v25;
}

+ (id)clusterWorkoutWithWorkoutUUID:(id)d transaction:(id)transaction metadataManager:(id)manager error:(id *)error
{
  transactionCopy = transaction;
  managerCopy = manager;
  dCopy = d;
  v13 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v14 = HDDataEntityPredicateForDataUUID();

  v15 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:v13 predicate:v14 error:error];

  if (v15)
  {
    v16 = [self clusterWorkoutWithWorkoutEntity:v15 transaction:transactionCopy metadataManager:managerCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end