@interface HDRaceRouteClusterWorkout
+ (id)clusterWorkoutWithWorkoutEntity:(id)a3 transaction:(id)a4 metadataManager:(id)a5 error:(id *)a6;
+ (id)clusterWorkoutWithWorkoutUUID:(id)a3 transaction:(id)a4 metadataManager:(id)a5 error:(id *)a6;
@end

@implementation HDRaceRouteClusterWorkout

+ (id)clusterWorkoutWithWorkoutEntity:(id)a3 transaction:(id)a4 metadataManager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v10];
  v13 = [v11 metadataForObjectID:objc_msgSend(v9 baseMetadata:"persistentID") keyFilter:0 statement:0 error:{v12, a6}];

  if (!v13)
  {
    v25 = 0;
    goto LABEL_37;
  }

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCE0B0]];

  v15 = [v10 databaseForEntity:v9];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
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
    v22 = [v9 mainWorkoutActivityTypeWithTransaction:v10 error:a6];
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

      obj = [v9 workoutStartDateWithTransaction:v10 error:a6];
      if (obj)
      {
        if (!v14)
        {
          v60 = v20;
          v23 = 0;
LABEL_20:
          v63 = v23;
          v27 = [v9 totalDistanceInCanonicalUnitWithTransaction:v10 error:a6];
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
          v31 = [MEMORY[0x277CCDAB0] meterUnit];
          [v30 doubleValueForUnit:v31];
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

          v38 = [v9 workoutDurationWithTransaction:v10 error:a6];
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
          v52 = [v22 integerValue];
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
            v25->_activityType = v52;
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

    if (a6)
    {
      v26 = v22;
      v25 = 0;
      *a6 = v22;
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

+ (id)clusterWorkoutWithWorkoutUUID:(id)a3 transaction:(id)a4 metadataManager:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 databaseForEntityClass:objc_opt_class()];
  v14 = HDDataEntityPredicateForDataUUID();

  v15 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:v13 predicate:v14 error:a6];

  if (v15)
  {
    v16 = [a1 clusterWorkoutWithWorkoutEntity:v15 transaction:v10 metadataManager:v11 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end