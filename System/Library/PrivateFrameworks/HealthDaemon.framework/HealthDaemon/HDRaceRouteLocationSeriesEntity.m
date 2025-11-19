@interface HDRaceRouteLocationSeriesEntity
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)enumerateRoutePointsForSeries:(int64_t)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 startDuration:(double)a6 finishDuration:(double)a7 transaction:(id)a8 error:(id *)a9 handler:(id)a10;
+ (BOOL)insertCodableRoutePoints:(id)a3 seriesKey:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)_allEntityProperties;
+ (id)_maxSeriesIdentifierWithDatabase:(uint64_t)a3 error:;
+ (id)createRoutePointsFromWorkout:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)indicesWithBehavior:(id)a3;
+ (id)insertCodableRoutePoints:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)primaryKeyColumns;
+ (id)triggersWithBehavior:(id)a3;
+ (uint64_t)_insertRoutePoint:(uint64_t)a3 seriesIdentifier:(void *)a4 database:(uint64_t)a5 error:;
@end

@implementation HDRaceRouteLocationSeriesEntity

+ (id)createRoutePointsFromWorkout:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6
{
  v135[1] = *MEMORY[0x277D85DE8];
  v66 = a3;
  v10 = a4;
  v65 = a5;
  v68 = v10;
  v11 = [v10 databaseForEntityClass:a1];
  v64 = v11;
  v12 = [(HDRaceRouteLocationSeriesEntity *)a1 _maxSeriesIdentifierWithDatabase:v11 error:a6];
  v63 = v12;
  if (v12)
  {
    v13 = [v12 longLongValue];
    v14 = v66;
    v67 = v11;
    objc_opt_self();
    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277D10B80]);
    v16 = [MEMORY[0x277CCD920] workoutRouteType];
    v17 = HDSampleEntityPredicateForDataType(v16);

    v18 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v14 persistentID]);
    v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v18];
    [v15 setPredicate:v19];

    [v15 setEntityClass:objc_opt_class()];
    v20 = MEMORY[0x277D10B68];
    objc_opt_class();
    v21 = [v20 orderingTermWithProperty:? entityClass:? ascending:?];
    v56 = v13;
    v133[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:1];
    [v15 setOrderingTerms:v22];

    v23 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v67 descriptor:v15];
    v127 = @"hfd_key";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
    v110 = MEMORY[0x277D85DD0];
    v111 = 3221225472;
    v112 = __84__HDRaceRouteLocationSeriesEntity__routeSeriesIdentifiersForWorkout_database_error___block_invoke;
    v113 = &unk_278615A48;
    v25 = v61;
    v114 = v25;
    LODWORD(v19) = [v23 enumerateProperties:v24 error:a6 enumerationHandler:&v110];

    if (v19)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v62 = v26;

    if (v62)
    {
      v57 = [v14 totalDistanceInCanonicalUnitWithTransaction:v68 error:a6];
      if (v57)
      {
        v55 = [v14 workoutDurationWithTransaction:v68 error:a6];
        if (v55)
        {
          v53 = [v14 workoutStartDateWithTransaction:v68 error:a6];
          if (v53)
          {
            v52 = [v14 mainWorkoutActivityTypeWithTransaction:v68 error:a6];
            if (v52 && ([MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "persistentID")}], v27 = objc_claimAutoreleasedReturnValue(), +[HDWorkoutEventEntity workoutEventsWithOwnerID:database:error:](HDWorkoutEventEntity, "workoutEventsWithOwnerID:database:error:", v27, v67, a6), v28 = objc_claimAutoreleasedReturnValue(), v27, v28))
            {
              v29 = [v28 hk_filter:&__block_literal_global_17];
              v59 = [v29 sortedArrayUsingComparator:&__block_literal_global_317_1];

              [v52 integerValue];
              v58 = _HKWorkoutDistanceTypeForActivityType();
              v60 = [HDSampleEntity entityEnumeratorWithType:"entityEnumeratorWithType:profile:" profile:?];
              v30 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
              v135[0] = v30;
              v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:1];
              [v60 setOrderingTerms:v31];

              v51 = HDSampleEntityPredicateForDataType(v58);
              v50 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v14 persistentID]);
              v32 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v51 otherPredicate:v50];
              [v60 setPredicate:v32];

              v122 = 0;
              v123 = &v122;
              v124 = 0x2020000000;
              v125 = 0;
              v133[0] = 0;
              v133[1] = v133;
              v133[2] = 0x3032000000;
              v133[3] = __Block_byref_object_copy__17;
              v133[4] = __Block_byref_object_dispose__17;
              v134 = v53;
              v121[0] = 0;
              v121[1] = v121;
              v121[2] = 0x2020000000;
              v121[3] = 0;
              [v55 doubleValue];
              v34 = v33;
              objc_opt_self();
              v35 = fmax(ceil(v34 / 2.5), 1.0);
              if (v35 >= 0x1388)
              {
                v36 = 5000;
              }

              else
              {
                v36 = v35;
              }

              v110 = 0;
              v111 = &v110;
              v112 = 0x6012000000;
              v113 = __Block_byref_object_copy__323;
              v114 = __Block_byref_object_dispose__324;
              v115 = &unk_22929BC4D;
              v116 = v36;
              v117 = 0;
              __src = 0u;
              v119 = 0u;
              v120 = 0;
              if (v35)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v36);
              }

              *(&v119 + 1) = 0;
              v127 = 0;
              v128 = &v127;
              v129 = 0x3032000000;
              v130 = __Block_byref_object_copy__17;
              v131 = __Block_byref_object_dispose__17;
              v109[0] = MEMORY[0x277D85DD0];
              v109[1] = 3221225472;
              v109[2] = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_325;
              v109[3] = &unk_278615980;
              v109[4] = v133;
              v132 = [v59 hk_firstObjectPassingTest:v109];
              v107[0] = 0;
              v107[1] = v107;
              v107[2] = 0x3032000000;
              v107[3] = __Block_byref_object_copy__17;
              v107[4] = __Block_byref_object_dispose__17;
              v38 = [(__CFString *)v128[5] dateInterval];
              v108 = [v38 endDate];

              v103 = 0;
              v104 = &v103;
              v105 = 0x2020000000;
              v106 = [v59 indexOfObject:v128[5]];
              v101[0] = 0;
              v101[1] = v101;
              v101[2] = 0x2020000000;
              v39 = v104[3];
              v102 = v39 < [v59 count];
              v99[0] = 0;
              v99[1] = v99;
              v99[2] = 0x2020000000;
              v100 = 1;
              v98[0] = 0;
              v98[1] = v98;
              v98[2] = 0x2020000000;
              v98[3] = 0;
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              obj = v62;
              v40 = [obj countByEnumeratingWithState:&v94 objects:v126 count:16];
              if (v40)
              {
                v41 = *v95;
                while (2)
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v95 != v41)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v43 = *(*(&v94 + 1) + 8 * i);
                    v88 = 0;
                    v89 = &v88;
                    v90 = 0x3032000000;
                    v91 = __Block_byref_object_copy__17;
                    v92 = __Block_byref_object_dispose__17;
                    v93 = 0;
                    v69[0] = MEMORY[0x277D85DD0];
                    v69[1] = 3221225472;
                    v69[2] = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2_327;
                    v69[3] = &unk_2786159D0;
                    v75 = v133;
                    v86 = a1;
                    v70 = v60;
                    v71 = v58;
                    v76 = &v110;
                    v72 = v68;
                    v77 = &v88;
                    v78 = v121;
                    v79 = v98;
                    v80 = v101;
                    v81 = v107;
                    v82 = v99;
                    v83 = &v127;
                    v84 = &v103;
                    v73 = v59;
                    v85 = &v122;
                    v87 = v56 + 1;
                    v74 = v67;
                    v44 = [HDLocationSeriesSampleEntity enumerateLocationDataInDatabase:v74 HFDKey:v43 error:a6 handler:v69];
                    v45 = v89[5];
                    v46 = v45;
                    if (v45)
                    {
                      if (a6)
                      {
                        v47 = v45;
                        *a6 = v46;
                      }

                      else
                      {
                        _HKLogDroppedError();
                      }
                    }

                    _Block_object_dispose(&v88, 8);
                    if (!v44)
                    {

                      v37 = 0;
                      goto LABEL_39;
                    }
                  }

                  v40 = [obj countByEnumeratingWithState:&v94 objects:v126 count:16];
                  if (v40)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (*(v123 + 24) == 1)
              {
                [MEMORY[0x277CCABB0] numberWithLongLong:v56 + 1];
              }

              else
              {
                [MEMORY[0x277CCABB0] numberWithLongLong:0];
              }
              v37 = ;
LABEL_39:
              _Block_object_dispose(v98, 8);
              _Block_object_dispose(v99, 8);
              _Block_object_dispose(v101, 8);
              _Block_object_dispose(&v103, 8);
              _Block_object_dispose(v107, 8);

              _Block_object_dispose(&v127, 8);
              _Block_object_dispose(&v110, 8);
              if (__src)
              {
                *(&__src + 1) = __src;
                operator delete(__src);
              }

              _Block_object_dispose(v121, 8);
              _Block_object_dispose(v133, 8);

              _Block_object_dispose(&v122, 8);
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)_maxSeriesIdentifierWithDatabase:(uint64_t)a3 error:
{
  v4 = a2;
  v5 = objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = v5;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke_2;
  v9[3] = &unk_278615530;
  v9[4] = &v11;
  if ([v4 executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity _maxSeriesIdentifierWithDatabase:error:]::HDRaceRouteLocationSeriesEntityCacheKeyMaxIdentifier error:a3 SQLGenerator:v6 bindingHandler:0 enumerationHandler:v9])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v12[3]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

BOOL __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 2;

  return v3;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];
  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 endDate];
  v5 = [v4 hk_isAfterOrEqualToDate:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2_327(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timestamp];
  if (([v4 hk_isBeforeDate:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
  {
    v61 = v4;
    v62 = v3;
    v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(*(*(a1 + 72) + 8) + 40) endDate:v4];
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
    v7 = *(a1 + 160);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 80) + 8);
    v11 = *(*(a1 + 88) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    v14 = *(a1 + 48);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v67 = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_3;
    v68 = &unk_2786159A8;
    v69 = *(a1 + 96);
    obj = v13;
    v64 = v8;
    v15 = v6;
    v60 = v9;
    v63 = v14;
    v16 = v66;
    objc_opt_self();
    v17 = &v77;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v18 = *(v10 + 80);
    if (v18 == *(v10 + 64))
    {
      v19 = v64;
LABEL_9:
      if (*(v10 + 52) != 1)
      {
        v21 = [v19 predicate];
        v59 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v10 + 88)];
        if (v59)
        {
          v22 = HDSampleEntityPredicateForStartDate(5);
          v23 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v21 otherPredicate:v22];
          [v19 setPredicate:v23];
        }

        v24 = *(v10 + 56);
        *(v10 + 64) = v24;
        *(v10 + 80) = v24;
        v25 = [MEMORY[0x277CCDAB0] meterUnit];
        v26 = *(v10 + 48);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __124__HDRaceRouteLocationSeriesEntity__distanceWithEnumerator_dateInterval_distanceType_sampleBuffer_transaction_error_handler___block_invoke;
        v71[3] = &unk_278615A70;
        v71[4] = v25;
        v72 = v15;
        v73 = &v77;
        v74 = v10 + 56;
        v75 = v26;
        v27 = [v64 enumerateInTransaction:v63 error:&obj handler:v71];
        [v64 setPredicate:v21];
        if (v27 && 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 64) - *(v10 + 56)) >> 3) < v26)
        {
          *(v10 + 52) = 1;
        }

        v67(v16, v78[3]);

        _Block_object_dispose(&v77, 8);
        objc_storeStrong(v12, obj);
        if ((v27 & 1) == 0)
        {
          v5 = 0;
          v4 = v61;
          v3 = v62;
LABEL_37:

          goto LABEL_38;
        }

LABEL_17:
        v28 = *(*(*(a1 + 104) + 8) + 24);
        v4 = v61;
        v3 = v62;
        if (*(*(*(a1 + 112) + 8) + 24) == 1 && [*(*(*(a1 + 72) + 8) + 40) hk_isAfterDate:*(*(*(a1 + 120) + 8) + 40)])
        {
          v29 = [v15 startDate];
          do
          {
            if (*(*(*(a1 + 128) + 8) + 24) == 1)
            {
              [*(*(*(a1 + 120) + 8) + 40) timeIntervalSinceReferenceDate];
              v31 = v30;
              [v29 timeIntervalSinceReferenceDate];
              *(*(*(a1 + 104) + 8) + 24) = v31 - v32 + *(*(*(a1 + 104) + 8) + 24);
            }

            *(*(*(a1 + 128) + 8) + 24) = [*(*(*(a1 + 136) + 8) + 40) type] != 1;
            v33 = ++*(*(*(a1 + 144) + 8) + 24);
            *(*(*(a1 + 112) + 8) + 24) = v33 < [*(a1 + 56) count];
            v34 = *(*(*(a1 + 120) + 8) + 40);

            if (*(*(*(a1 + 112) + 8) + 24) != 1)
            {
              break;
            }

            v35 = [*(a1 + 56) objectAtIndexedSubscript:*(*(*(a1 + 144) + 8) + 24)];
            v36 = *(*(a1 + 136) + 8);
            v37 = *(v36 + 40);
            *(v36 + 40) = v35;

            v38 = [*(*(*(a1 + 136) + 8) + 40) dateInterval];
            v39 = [v38 endDate];
            v40 = *(*(a1 + 120) + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;

            if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
            {
              break;
            }

            v29 = v34;
          }

          while (([*(*(*(a1 + 72) + 8) + 40) hk_isAfterDate:*(*(*(a1 + 120) + 8) + 40)] & 1) != 0);
          if (*(*(*(a1 + 128) + 8) + 24) == 1)
          {
            v42 = [v15 endDate];
            [v42 timeIntervalSinceReferenceDate];
            v44 = v43;
            [v34 timeIntervalSinceReferenceDate];
            *(*(*(a1 + 104) + 8) + 24) = v44 - v45 + *(*(*(a1 + 104) + 8) + 24);
          }
        }

        else if (*(*(*(a1 + 128) + 8) + 24) == 1)
        {
          [v15 duration];
          *(*(*(a1 + 104) + 8) + 24) = v46 + *(*(*(a1 + 104) + 8) + 24);
        }

        if (*(*(*(a1 + 152) + 8) + 24) == 1 && *(*(*(a1 + 104) + 8) + 24) == v28)
        {
          v5 = 1;
        }

        else
        {
          v47 = objc_alloc(MEMORY[0x277CBFC78]);
          [v62 coordinate];
          v49 = v48;
          [v62 coordinate];
          v51 = v50;
          [v62 altitude];
          v53 = [v47 initWithLatitude:objc_msgSend(v62 longitude:"signalEnvironmentType") altitude:v49 odometer:v51 timestamp:v52 signalEnvironmentType:{*(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 104) + 8) + 24)}];
          v54 = *(a1 + 160);
          v55 = *(a1 + 168);
          v56 = *(a1 + 64);
          v57 = *(*(a1 + 88) + 8);
          v65 = *(v57 + 40);
          v5 = [(HDRaceRouteLocationSeriesEntity *)v54 _insertRoutePoint:v53 seriesIdentifier:v55 database:v56 error:&v65];
          objc_storeStrong((v57 + 40), v65);
          if (v5)
          {
            *(*(*(a1 + 152) + 8) + 24) = 1;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      v19 = v64;
      while (1)
      {
        v76 = 0;
        v20 = _overlappingSampleDistanceForInterval(v15, v18, &v76);
        v17 = v78;
        v78[3] = v20 + v78[3];
        *(v10 + 88) = *v18;
        if (!v76)
        {
          break;
        }

        v18 = (*(v10 + 80) + 24);
        *(v10 + 80) = v18;
        if (*(v10 + 64) == v18)
        {
          goto LABEL_9;
        }
      }
    }

    v67(v16, v17[3]);
    _Block_object_dispose(&v77, 8);

    objc_storeStrong(v12, obj);
    goto LABEL_17;
  }

  v5 = 1;
LABEL_38:

  return v5;
}

double __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

+ (uint64_t)_insertRoutePoint:(uint64_t)a3 seriesIdentifier:(void *)a4 database:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_self();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = v10;
  v11 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke_2;
  v15[3] = &unk_278615A20;
  v17 = a3;
  v12 = v8;
  v16 = v12;
  v13 = [v9 executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity _insertRoutePoint:seriesIdentifier:database:error:]::HDRaceRouteLocationSeriesEntityCacheKeyInsert error:a5 SQLGenerator:v11 bindingHandler:v15 enumerationHandler:0];

  return v13;
}

+ (BOOL)enumerateRoutePointsForSeries:(int64_t)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 startDuration:(double)a6 finishDuration:(double)a7 transaction:(id)a8 error:(id *)a9 handler:(id)a10
{
  v54[1] = *MEMORY[0x277D85DE8];
  v46 = a8;
  v45 = a10;
  v18 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v18 setEntityClass:a1];
  [v18 setLimitCount:a5];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"timestamp" entityClass:a1 ascending:1];
  v54[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  [v18 setOrderingTerms:v20];

  v21 = MEMORY[0x277D10B18];
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v47 = [v21 predicateWithProperty:@"series_id" equalToValue:v22];

  v23 = MEMORY[0x277D10B18];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v25 = [v23 predicateWithProperty:@"timestamp" greaterThanValue:v24];

  v53[0] = v47;
  v53[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v27 = [v26 mutableCopy];

  if (a6 > 0.0)
  {
    v28 = MEMORY[0x277D10B18];
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    v30 = [v28 predicateWithProperty:@"timestamp" greaterThanOrEqualToValue:v29];

    [v27 addObject:v30];
  }

  if (a7 > a6)
  {
    v31 = MEMORY[0x277D10B18];
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:a7];
    v33 = [v31 predicateWithProperty:@"timestamp" lessThanOrEqualToValue:v32];

    [v27 addObject:v33];
  }

  v34 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v27];
  [v18 setPredicate:v34];

  v35 = +[HDRaceRouteLocationSeriesEntity _allEntityProperties];
  v52 = @"series_id";
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v37 = [v35 arrayByExcludingObjectsInArray:v36];

  v38 = [v18 selectSQLForProperties:v37];
  v39 = [v46 databaseForEntityClass:a1];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke;
  v50[3] = &unk_278615580;
  v40 = v18;
  v51 = v40;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke_2;
  v48[3] = &unk_2786159F8;
  v41 = v45;
  v49 = v41;
  v42 = [v39 executeSQL:v38 error:a9 bindingHandler:v50 enumerationHandler:v48];

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

+ (id)_allEntityProperties
{
  v3[7] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"series_id";
  v3[1] = @"timestamp";
  v3[2] = @"latitude";
  v3[3] = @"longitude";
  v3[4] = @"altitude";
  v3[5] = @"distance";
  v3[6] = @"signal_type";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C50](a2, 0);
  v5 = MEMORY[0x22AAC6C50](a2, 1);
  v6 = MEMORY[0x22AAC6C50](a2, 2);
  v7 = MEMORY[0x22AAC6C50](a2, 3);
  v8 = MEMORY[0x22AAC6C50](a2, 4);
  v9 = [objc_alloc(MEMORY[0x277CBFC78]) initWithLatitude:HDSQLiteColumnAsInt64() longitude:v5 altitude:v6 odometer:v7 timestamp:v8 signalEnvironmentType:v4];
  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v9 = _Block_copy(aBlock);
  v10 = [v8 databaseForEntityClass:a1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke_2;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = a3;
  LOBYTE(a5) = [v10 executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity deleteSeriesDataWithIdentifier:transaction:error:]::deleteSQLCacheKey error:a5 SQLGenerator:v9 bindingHandler:v12 enumerationHandler:0];

  return a5;
}

id __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"series_id"];

  return v3;
}

id __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[HDRaceRouteLocationSeriesEntity _allEntityProperties];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timestamp_s];
  sqlite3_bind_double(a2, 2, v4);
  [*(a1 + 32) latitude_deg];
  sqlite3_bind_double(a2, 3, v5);
  [*(a1 + 32) longitude_deg];
  sqlite3_bind_double(a2, 4, v6);
  [*(a1 + 32) altitude_m];
  sqlite3_bind_double(a2, 5, v7);
  [*(a1 + 32) odometer_m];
  sqlite3_bind_double(a2, 6, v8);
  v9 = [*(a1 + 32) signalEnvironmentType];

  return sqlite3_bind_int(a2, 7, v9);
}

id __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"SELECT MAX(%@) FROM %@", @"series_id", v2, 0];

  return v3;
}

uint64_t __84__HDRaceRouteLocationSeriesEntity__routeSeriesIdentifiersForWorkout_database_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

BOOL __124__HDRaceRouteLocationSeriesEntity__distanceWithEnumerator_dateInterval_distanceType_sampleBuffer_transaction_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  [v4 timeIntervalSinceReferenceDate];
  *&v39 = v5;
  v6 = [v3 endDate];
  [v6 timeIntervalSinceReferenceDate];
  *(&v39 + 1) = v7;
  v8 = [v3 quantity];
  [v8 doubleValueForUnit:*(a1 + 32)];
  v40 = v9;

  v38 = 0;
  v10 = [v3 startDate];
  v11 = [*(a1 + 40) endDate];
  LODWORD(v8) = [v10 hk_isAfterDate:v11];

  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = _overlappingSampleDistanceForInterval(*(a1 + 40), &v39, &v38) + *(*(*(a1 + 48) + 8) + 24);
    if (!v38)
    {
      v16 = *(a1 + 56);
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);
      if (v18 >= v17)
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v16) >> 3);
        v25 = v24 + 1;
        if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_32;
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v16) >> 3);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v27);
        }

        v33 = 24 * v24;
        *v33 = v39;
        *(v33 + 16) = v40;
        v19 = 24 * v24 + 24;
        v34 = *(v16 + 8) - *v16;
        v35 = 24 * v24 - v34;
        memcpy((v33 - v34), *v16, v34);
        v36 = *v16;
        *v16 = v35;
        *(v16 + 8) = v19;
        *(v16 + 16) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v18 = v39;
        *(v18 + 16) = v40;
        v19 = v18 + 24;
      }

      *(v16 + 8) = v19;
      if (!v38)
      {
        goto LABEL_26;
      }
    }

    v32 = 1;
    goto LABEL_31;
  }

  v12 = *(a1 + 56);
  v14 = *(v12 + 8);
  v13 = *(v12 + 16);
  if (v14 >= v13)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v12) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v23);
      }

      v28 = 24 * v20;
      *v28 = v39;
      *(v28 + 16) = v40;
      v15 = 24 * v20 + 24;
      v29 = *(v12 + 8) - *v12;
      v30 = 24 * v20 - v29;
      memcpy((v28 - v29), *v12, v29);
      v31 = *v12;
      *v12 = v30;
      *(v12 + 8) = v15;
      *(v12 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_25;
    }

LABEL_32:
    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *v14 = v39;
  *(v14 + 16) = v40;
  v15 = v14 + 24;
LABEL_25:
  *(v12 + 8) = v15;
LABEL_26:
  v32 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 56) + 8) - **(a1 + 56)) >> 3) < *(a1 + 64);
LABEL_31:

  return v32;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  {
    v5 = a3;
    a3 = v5;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_228986000);
      a3 = v5;
    }
  }

  *a3 = 7;
  return +[HDRaceRouteLocationSeriesEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)primaryKeyColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"series_id";
  v5[1] = @"timestamp";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertCodableRoutePoints:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [v9 databaseForEntityClass:a1];
    v11 = [(HDRaceRouteLocationSeriesEntity *)a1 _maxSeriesIdentifierWithDatabase:v10 error:a5];

    if (v11 && (v12 = [v11 longLongValue], objc_msgSend(a1, "insertCodableRoutePoints:seriesKey:transaction:error:", v8, v12 + 1, v9, a5)))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12 + 1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  }

  return v13;
}

+ (BOOL)insertCodableRoutePoints:(id)a3 seriesKey:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [a5 databaseForEntityClass:a1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v30 = v10;
    v13 = *v33;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CBFC78]);
        [v15 latitude];
        v18 = v17;
        [v15 longitude];
        v20 = v19;
        [v15 altitude];
        v22 = v21;
        [v15 odometer];
        v24 = v23;
        [v15 timestamp];
        v26 = [v16 initWithLatitude:objc_msgSend(v15 longitude:"signalEnvironmentType") altitude:v18 odometer:v20 timestamp:v22 signalEnvironmentType:{v24, v25}];
        LODWORD(v15) = [(HDRaceRouteLocationSeriesEntity *)a1 _insertRoutePoint:v26 seriesIdentifier:a4 database:v11 error:a6];

        if (!v15)
        {
          v27 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)createTableSQLWithBehavior:(id)a3
{
  v3 = [a1 createTableSQL];

  return v3;
}

+ (id)indicesWithBehavior:(id)a3
{
  v3 = [a1 indices];

  return v3;
}

+ (id)triggersWithBehavior:(id)a3
{
  v3 = [a1 triggers];

  return v3;
}

@end