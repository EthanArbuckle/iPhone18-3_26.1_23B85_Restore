void sub_100002358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002380(uint64_t a1, void *a2, void *a3)
{
  v49 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v47 = v5;
    if ([*(a1 + 32) count])
    {
      v6 = 0;
      v48 = a1;
      do
      {
        v51 = v6;
        v7 = [*(a1 + 32) objectAtIndex:v6];
        v8 = [v49 mapItemsForSpatialLookupParameters:v7];
        v9 = [CLLocation alloc];
        [v7 coordinate];
        v11 = v10;
        [v7 coordinate];
        v56 = [v9 initWithLatitude:v11 longitude:?];
        [v7 coordinate];
        v13 = v12;
        v50 = v7;
        [v7 coordinate];
        v55 = [NSString stringWithFormat:@"[%.03f, %.03f]", v13, v14];
        ++WeakRetained[7];
        v15 = objc_alloc_init(NSMutableDictionary);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = v8;
        v57 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v57)
        {
          v53 = *v69;
          do
          {
            v16 = 0;
            do
            {
              if (*v69 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v59 = v16;
              v17 = *(*(&v68 + 1) + 8 * v16);
              v18 = [CLLocation alloc];
              [v17 centerCoordinate];
              v20 = v19;
              [v17 centerCoordinate];
              v58 = [v18 initWithLatitude:v20 longitude:?];
              [v58 distanceFromLocation:v56];
              v22 = [[NSDecimalNumber alloc] initWithDouble:v21];
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v23 = [v17 areasOfInterest];
              v24 = [v23 countByEnumeratingWithState:&v64 objects:v75 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v65;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v65 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v64 + 1) + 8 * i);
                    v29 = [v15 objectForKey:v28];
                    v30 = v29;
                    if (v29 && [v29 compare:v22] == -1)
                    {
                      v31 = v15;
                      v32 = v30;
                    }

                    else
                    {
                      v31 = v15;
                      v32 = v22;
                    }

                    [v31 setObject:v32 forKey:v28];
                  }

                  v25 = [v23 countByEnumeratingWithState:&v64 objects:v75 count:16];
                }

                while (v25);
              }

              v33 = objc_alloc_init(NSMutableArray);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v34 = v15;
              v35 = [v34 countByEnumeratingWithState:&v60 objects:v74 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v61;
                do
                {
                  for (j = 0; j != v36; j = j + 1)
                  {
                    if (*v61 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = *(*(&v60 + 1) + 8 * j);
                    v40 = [FHSmartCompoundFeatureRankedValue alloc];
                    v41 = [v34 objectForKey:v39];
                    v42 = [v40 initWithLabelAndRank:v39 featureRank:v41];

                    [v33 addObject:v42];
                  }

                  v36 = [v34 countByEnumeratingWithState:&v60 objects:v74 count:16];
                }

                while (v36);
              }

              v43 = WeakRetained[5];
              v44 = [v33 copy];
              [v43 setObject:v44 forKey:v55];

              v16 = v59 + 1;
            }

            while ((v59 + 1) != v57);
            v57 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
          }

          while (v57);
        }

        v6 = v51 + 1;
        a1 = v48;
      }

      while (v51 + 1 < [*(v48 + 32) count]);
    }

    v5 = v47;
    if (v47)
    {
      v45 = FinHealthLogObject();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v47 localizedDescription];
        *buf = 138412290;
        v73 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "error: %@", buf, 0xCu);
      }

      WeakRetained[9] = 1;
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100002F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002F5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002F74(uint64_t a1)
{
  v5 = TransactionFromPKPaymentTransaction();
  v2 = [*(a1 + 32) _insertOrUpdateTransactionPostDirtyState:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100003C70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  [v7 addStringValueForField:@"features_detailed_category.detailed_category" fieldValue:v3];
  v4 = *(a1 + 40);
  v5 = +[NSDecimalNumber defaultDatabaseAmountMultiplier];
  v6 = [v4 decimalNumberByMultiplyingBy:v5];
  [v7 addDecimalNumberValueForField:@"features_detailed_category.amount" fieldValue:v6];

  [v7 addIntegerValueForField:@"features_detailed_category.transaction_count" fieldValue:*(a1 + 72)];
  [v7 addStringValueForField:@"features_detailed_category.country_code" fieldValue:*(a1 + 48)];
  [v7 addDoubleValueForField:@"features_detailed_category.recurring_transaction_ratio" fieldValue:*(a1 + 80)];
  [v7 addIntegerValueForField:@"features_detailed_category.time_of_day" fieldValue:*(a1 + 88)];
  [v7 addIntegerValueForField:@"features_detailed_category.time_window" fieldValue:*(a1 + 96)];
  [v7 addDateValueForField:@"features_detailed_category.start_date" fieldValue:*(a1 + 56)];
  [v7 addDateValueForField:@"features_detailed_category.end_date" fieldValue:*(a1 + 64)];
}

void sub_100004040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000406C(void *a1, void *a2)
{
  v4 = a2;
  v3 = FHComparisonOperatorEquals;
  [v4 addIntegerClause:FHComparisonOperatorEquals fieldName:@"features_detailed_category.time_window" expression:a1[5]];
  [v4 addIntegerClause:v3 fieldName:@"features_detailed_category.time_of_day" expression:a1[6]];
  if (a1[4])
  {
    [v4 addStringClause:v3 fieldName:@"features_detailed_category.country_code" expression:?];
  }
}

void sub_100004104(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v22 = [v4 stringValue];

  v5 = [NSDecimalNumber alloc];
  v6 = [v3 objectAtIndex:1];
  v7 = [v5 initWithInteger:{objc_msgSend(v6, "intValue")}];
  v8 = +[NSDecimalNumber defaultDatabaseAmountMultiplier];
  v9 = [v7 decimalNumberByDividingBy:v8];

  v10 = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v11 = [v9 decimalNumberByRoundingAccordingToBehavior:v10];
  v12 = [v3 objectAtIndex:3];
  v13 = [v12 stringValue];

  v14 = [v3 objectAtIndex:2];
  v15 = [v14 intValue];

  v16 = [v3 objectAtIndex:4];

  [v16 doubleValue];
  v18 = v17;

  v19 = [[FHTransactionDetailedCategoryAggregateRecord alloc] initWithMapsCategory:v22 amountSpent:v11 countryCode:v13 transactionCount:v15 regularTransactionRatio:v18];
  if (!a1[4])
  {
    v20 = [NSString stringWithFormat:@"%@, %lu, %lu", v22, a1[7], a1[8]];
    v21 = [*(*(a1[5] + 8) + 40) objectForKey:v20];
    if (v21)
    {
      [*(*(a1[6] + 8) + 40) removeObject:v21];
      [v19 addRecord:v21];
    }

    [*(*(a1[5] + 8) + 40) setObject:v19 forKey:v20];
    [v19 setCountryCode:0];
  }

  [*(*(a1[6] + 8) + 40) addObject:v19];
}

int64_t sub_10000438C(id a1, FHTransactionDetailedCategoryAggregateRecord *a2, FHTransactionDetailedCategoryAggregateRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(FHTransactionDetailedCategoryAggregateRecord *)v4 transactionCount];
  if (v6 == [(FHTransactionDetailedCategoryAggregateRecord *)v5 transactionCount])
  {
    [(FHTransactionDetailedCategoryAggregateRecord *)v4 regularTransactionRatio];
    v8 = v7;
    [(FHTransactionDetailedCategoryAggregateRecord *)v5 regularTransactionRatio];
    if (v8 == v9)
    {
      v15 = [(FHTransactionDetailedCategoryAggregateRecord *)v5 amountSpent];
      v16 = [(FHTransactionDetailedCategoryAggregateRecord *)v4 amountSpent];
      v13 = [v15 compare:v16];
    }

    else
    {
      [(FHTransactionDetailedCategoryAggregateRecord *)v4 regularTransactionRatio];
      v11 = v10;
      [(FHTransactionDetailedCategoryAggregateRecord *)v5 regularTransactionRatio];
      v13 = v11 < v12;
    }
  }

  else
  {
    v14 = [(FHTransactionDetailedCategoryAggregateRecord *)v4 transactionCount];
    v13 = v14 < [(FHTransactionDetailedCategoryAggregateRecord *)v5 transactionCount];
  }

  return v13;
}

void sub_10000537C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000053A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7 = [v3 allValues];
    LOBYTE(v6) = [v6 insertFeaturesEvents:v7];

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = FinHealthLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "instance deallocated", buf, 2u);
    }
  }

  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [NSError errorWithDomain:FHErrorDomain code:10008 userInfo:0];
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "can not insert batch of event identifiers error: %@", buf, 0xCu);
  }

LABEL_10:
  v11 = *(a1 + 96);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005624;
  v19[3] = &unk_100020BA8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v18 = *(a1 + 56);
  v15 = *(&v18 + 1);
  *&v16 = v13;
  *(&v16 + 1) = v14;
  v20 = v16;
  v21 = v18;
  v22 = v5;
  v23 = v3;
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v17 = v3;
  [v12 evaluatePointsOfInterest:v13 bypassMapService:v11 completion:v19];
}

void sub_100005624(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v38 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v38)
  {
    v37 = *v46;
    v40 = FHSmartFeatureCompoundTypeEventTagging;
    v39 = FHSmartFeatureCompoundTypeTripEvents;
    v34 = FHErrorDomain;
    *&v4 = 136315394;
    v33 = v4;
    v36 = v3;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [v6 identifier];
        if ([*(a1 + 40) containsObject:v7])
        {
          v8 = [*(a1 + 48) compoundFeaturesForTransaction:v7];
          v9 = [v8 objectForKey:v40];

          v10 = [*(a1 + 48) compoundFeaturesForTransaction:v7];
          v41 = [v10 objectForKey:v39];
        }

        else
        {
          v41 = 0;
          v9 = 0;
        }

        v42 = v9;
        v11 = [*(a1 + 56) realtimeFeaturesForTransaction:v6];
        v12 = *(a1 + 64);
        if (v12)
        {
          [*(v12 + 8) insertFeatures:v6 realtimeFeatures:v11];
        }

        v13 = [v11 smartCompoundFeatures];
        v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

        v15 = objc_opt_new();
        v16 = objc_opt_new();
        v17 = [*(a1 + 72) objectForKey:v7];

        if (v17)
        {
          v18 = [*(a1 + 72) valueForKey:v7];
          v19 = [v18 objectForKey:v40];

          if (v19 && [v19 count])
          {
            [v15 addObjectsFromArray:v19];
          }

          v20 = [*(a1 + 72) valueForKey:v7];
          v21 = [v20 objectForKey:v39];

          if (v21 && [v21 count])
          {
            [v16 addObjectsFromArray:v21];
          }

          v3 = v36;
        }

        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100005C3C;
        v43[3] = &unk_100020B80;
        v44 = *(a1 + 80);
        v22 = [NSPredicate predicateWithBlock:v43];
        if (v42)
        {
          v23 = [v42 filteredArrayUsingPredicate:v22];
          [v15 addObjectsFromArray:v23];
        }

        if (v41)
        {
          v24 = [v41 filteredArrayUsingPredicate:v22];
          [v16 addObjectsFromArray:v24];
        }

        if ([v15 count])
        {
          [v14 setValue:v15 forKey:v40];
          [*(a1 + 88) addObject:v7];
        }

        if ([v16 count])
        {
          [v14 setValue:v16 forKey:v39];
          [*(a1 + 88) addObject:v7];
        }

        v25 = [v3 objectForKey:v7];

        if (v25)
        {
          v26 = FinHealthLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v50 = "[FinHealthStateController _processAggregateFeaturesWithHardReset:forceStalenessCheck:]_block_invoke";
            v51 = 2112;
            v52 = v3;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s: pointsOfInterestCompoundFeaturesForTransactionBatch :%@", buf, 0x16u);
          }

          v27 = [v3 valueForKey:v7];
          [v14 addEntriesFromDictionary:v27];
        }

        v28 = [NSDictionary dictionaryWithDictionary:v14];
        [v11 setSmartCompoundFeatures:v28];

        v29 = *(a1 + 64);
        if (v29)
        {
          if ([*(v29 + 8) insertFeaturesCompoundRealtimeWithoutEvents:v7 realtimeFeatures:v11])
          {
            goto LABEL_40;
          }
        }

        else
        {
          v30 = FinHealthLogObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "instance deallocated", buf, 2u);
          }
        }

        v31 = FinHealthLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = [NSError errorWithDomain:v34 code:10008 userInfo:0];
          *buf = 138412290;
          v50 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "error: %@", buf, 0xCu);

          v3 = v36;
        }

LABEL_40:
      }

      v38 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v38);
  }
}

uint64_t sub_100005C3C(uint64_t a1, void *a2)
{
  v3 = [a2 eventIdentifiers];
  v4 = [NSMutableSet setWithArray:v3];

  v5 = [NSSet setWithArray:*(a1 + 32)];
  LODWORD(v3) = [v4 intersectsSet:v5];

  return v3 ^ 1;
}

void *sub_100005CC8(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (result[4] == a2)
  {
    result = [*(result[5] + 8) computeAllAggregateFeatures];
    *a4 = 1;
  }

  return result;
}

void sub_100005D10(id a1)
{
  v1 = FinHealthLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Finished computing trends..", v2, 2u);
  }
}

void sub_100006D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006E2C;
  v8[3] = &unk_100020C60;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  v9 = v6;
  v10 = v3;
  v7 = v3;
  [v4 deleteAllDataForTransactionSourceIdentifier:v7 force:v5 completion:v8];
}

void sub_100006E2C(void *a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v5 = a1[4];
    v6 = [a3 description];
    [v5 setValue:v6 forKey:a1[5]];
  }
}

void sub_1000075A8(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) count] == *(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) copy];
    (*(v3 + 16))(v3, v4);

    [*(a1 + 32) removeAllObjects];
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_1000079F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = FinHealthLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[FinHealthStateController _newClientConnection]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%s]: connection invalidated", &v3, 0xCu);
  }

  [WeakRetained setConnection:0];
}

void sub_100007AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = FinHealthLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[FinHealthStateController _newClientConnection]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%s]: connection interrupted", &v3, 0xCu);
  }

  [WeakRetained setConnection:0];
}

void sub_100007CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = FinHealthLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 localizedDescription];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Error getting remote proxy object: %@, [%@]", &v8, 0x16u);
  }
}

int64_t sub_100008A48(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = messagingQueryKeyAmount;
  v5 = a3;
  v6 = [(NSDictionary *)a2 objectForKey:v4];
  v7 = [(NSDictionary *)v5 objectForKey:v4];

  v8 = [v7 compare:v6];
  return v8;
}

int64_t sub_100009104(id a1, FHPeerPaymentForecastingSignal *a2, FHPeerPaymentForecastingSignal *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = FHPeerPaymentForecastingSignalPriority();
  v7 = [NSNumber numberWithUnsignedInteger:[(FHPeerPaymentForecastingSignal *)v4 forecastingType]];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 integerValue];

  v10 = FHPeerPaymentForecastingSignalPriority();
  v11 = [NSNumber numberWithUnsignedInteger:[(FHPeerPaymentForecastingSignal *)v5 forecastingType]];
  v12 = [v10 objectForKey:v11];
  v13 = [v12 integerValue];

  if (v9 == v13)
  {
    v14 = [(FHPeerPaymentForecastingSignal *)v5 signalDate];
    v15 = [(FHPeerPaymentForecastingSignal *)v4 signalDate];
    v16 = [v14 compare:v15];
  }

  else
  {
    v16 = v9 > v13;
  }

  return v16;
}

void sub_100009638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000965C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = FinHealthLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[FinHealthStateController predictAndPersistCardPreselectPropensityModel]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s pkDiscoveryFeatureResults %@", &v6, 0x16u);
  }

  [*(a1 + 32) predict:v3];
}

int main(int argc, const char **argv, const char **envp)
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v3 = FinHealthLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to create temporary folder", &v11, 2u);
    }
  }

  v4 = NSTemporaryDirectory();
  v5 = FinHealthLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "temporary directory path: %@", &v11, 0xCu);
  }

  v6 = dispatch_get_global_queue(25, 0);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v6);

  dispatch_source_set_event_handler(v7, &stru_100020DF0);
  dispatch_resume(v7);
  v8 = objc_opt_new();
  v9 = +[NSXPCListener serviceListener];
  [v9 setDelegate:v8];
  [v9 resume];

  return 0;
}

void sub_100009FC0(id a1)
{
  v1 = FinHealthLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "SIGTERM - exiting FinHealthXPCServices", v2, 2u);
  }

  exit(0);
}

uint64_t sub_10000A6A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A6BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FinHealthLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v30 = [v6 count];
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received %lu transactions for %@", buf, 0x16u);
  }

  v19 = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 associatedReceiptUniqueID];
        v15 = v14;
        if (v14)
        {
          v16 = *(*(a1 + 32) + 8);
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10000A8F8;
          v20[3] = &unk_100020E18;
          v17 = v14;
          v18 = *(a1 + 32);
          v21 = v17;
          v22 = v18;
          v23 = v13;
          [v16 transactionReceiptWithUniqueID:v17 completion:v20];
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }
}

void sub_10000A8F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 lineItems];
  v36 = v2;
  v4 = [v2 summaryItems];
  v32 = v3;
  v33 = v4;
  if (v3)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = v3;
    v37 = [v5 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v37)
    {
      v35 = *v44;
      obj = v5;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v43 + 1) + 8 * i);
          v8 = FinHealthLogObject();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 32);
            *buf = 138412546;
            v49 = v9;
            v50 = 2112;
            v51 = v7;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "associatedReceiptUniqueID: %@, lineItem: %@", buf, 0x16u);
          }

          v10 = *(*(a1 + 40) + 40);
          v11 = [v36 receiptIdentifier];
          v12 = [v7 identifier];
          v13 = [v7 title];
          v14 = [v7 subtitle];
          v15 = [v7 quantity];
          v16 = [v7 amount];
          v17 = [v7 currencyCode];
          v18 = [v10 insertReceiptData:v11 identifier:v12 title:v13 subtitle:v14 quantity:v15 amount:v16 currencyCode:v17 adamIdentifier:{objc_msgSend(v7, "adamIdentifier"), v32}];

          if ((v18 & 1) == 0)
          {
            v19 = FinHealthLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [*(a1 + 48) identifier];
              *buf = 138412290;
              v49 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to save receipt data for transaction identifier = %@", buf, 0xCu);
            }
          }
        }

        v5 = obj;
        v37 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v37);
      v4 = v33;
    }
  }

  else
  {
    v5 = FinHealthLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No Line Items were Found", buf, 2u);
    }
  }

  if (v4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v4;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * j);
          v27 = FinHealthLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(a1 + 32);
            *buf = 138412546;
            v49 = v28;
            v50 = 2112;
            v51 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "associatedReceiptUniqueID: %@, summaryItem: %@", buf, 0x16u);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v21 = FinHealthLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "No Summary Items were Found", buf, 2u);
    }
  }

  v29 = FinHealthLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 32);
    v31 = [v36 debugDescription];
    *buf = 138412546;
    v49 = v30;
    v50 = 2112;
    v51 = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "associatedReceiptUniqueID: %@, receipt :%@", buf, 0x16u);
  }
}

void sub_10000AEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = FinHealthLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 identifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received transaction with identifier: %@", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000B178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 identifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received transaction with identifier: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000B59C(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = FinHealthLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = [(NSError *)v5 localizedDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received error %@", &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Transactions inserted with status: %@", &v9, 0xCu);
  }
}

void sub_10000CC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CC74(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) != a2)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_10000DEC8(id a1)
{
  qword_100026E00 = [[FinHealthDisputeDocumentProcessing alloc] _init];

  _objc_release_x1();
}

int64_t sub_10000E908(id a1, FHSmartFeatureDisputeDocumentSuggestion *a2, FHSmartFeatureDisputeDocumentSuggestion *a3)
{
  v4 = a2;
  v5 = [(FHSmartFeatureDisputeDocumentSuggestion *)a3 rankScore];
  v6 = [(FHSmartFeatureDisputeDocumentSuggestion *)v4 rankScore];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F148(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v3 objectAtIndex:0];
  [v5 doubleValue];
  v7 = v6;

  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v9 = v8;
  [v4 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = vabdd_f64(v9, v11);
  [*(a1 + 40) timeIntervalSinceNow];
  v14 = fabs(v13);
  if (v12 >= v14)
  {
    v14 = v12;
  }

  obj = [[NSDecimalNumber alloc] initWithDouble:v7 * (1.0 - v12 / v14)];
  if ([*(*(*(a1 + 48) + 8) + 40) lessThan:?])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }
}

void sub_10000F254(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [NSDecimalNumber decimalNumberWithString:rankingDimensionsDefaultScore];
  v4 = *(a1 + 32);
  v5 = [v24 objectForKey:NSTextCheckingStreetKey];
  v6 = [*(a1 + 40) street];
  LODWORD(v4) = [v4 isTransactionAddressFieldPresentIn:v5 forTransactionAddressField:v6];

  if (v4)
  {
    v7 = [*(*(a1 + 32) + 16) objectAtIndex:2];
    v8 = [v3 decimalNumberByAdding:v7];

    v3 = v8;
  }

  v9 = *(a1 + 32);
  v10 = [v24 objectForKey:NSTextCheckingCityKey];
  v11 = [*(a1 + 40) city];
  LODWORD(v9) = [v9 isTransactionAddressFieldPresentIn:v10 forTransactionAddressField:v11];

  if (v9)
  {
    v12 = [*(*(a1 + 32) + 16) objectAtIndex:3];
    v13 = [v3 decimalNumberByAdding:v12];

    v3 = v13;
  }

  v14 = *(a1 + 32);
  v15 = [v24 objectForKey:NSTextCheckingStateKey];
  v16 = [*(a1 + 40) state];
  LODWORD(v14) = [v14 isTransactionAddressFieldPresentIn:v15 forTransactionAddressField:v16];

  if (v14)
  {
    v17 = [*(*(a1 + 32) + 16) objectAtIndex:4];
    v18 = [v3 decimalNumberByAdding:v17];

    v3 = v18;
  }

  v19 = *(a1 + 32);
  v20 = [v24 objectForKey:NSTextCheckingZIPKey];
  v21 = [*(a1 + 40) zip];
  LODWORD(v19) = [v19 isTransactionAddressFieldPresentIn:v20 forTransactionAddressField:v21];

  if (v19)
  {
    v22 = [*(*(a1 + 32) + 16) objectAtIndex:5];
    v23 = [v3 decimalNumberByAdding:v22];

    v3 = v23;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) lessThan:v3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }
}

void sub_10000FD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FD34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000FD4C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v9 = [NSString stringWithFormat:@"%.4f", *&a3];
  v6 = [FHSmartCompoundFeatureRankedValue alloc];
  v7 = [[NSDecimalNumber alloc] initWithString:v9];
  v8 = [v6 initWithLabelAndRank:v5 featureRank:v7];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
}

void sub_100010204(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) substringWithRange:{a3, a4}];
  if (([v7 isEqual:@" "] & 1) == 0)
  {
    v8 = *(a1 + 40);
    if (v10)
    {
      v9 = [v10 lowercaseString];
      [v8 addObject:v9];
    }

    else
    {
      [v8 addObject:v7];
    }
  }
}

void sub_100010C48(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a2;
  v7 = [v5 valueForKey:v6];
  v11 = v7;
  if (v7)
  {
    [v7 doubleValue];
    if (v8 <= a3)
    {
      a3 = v8;
    }
  }

  v9 = [NSString stringWithFormat:@"%.4f", *&a3];
  v10 = [[NSDecimalNumber alloc] initWithString:v9];
  [*(*(*(a1 + 32) + 8) + 40) setValue:v10 forKey:v6];
}

void sub_100010D2C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) nlEmbedding];

  if (v6)
  {
    v7 = [*(a1 + 32) nlEmbedding];
    v8 = maxNeighborsToAddPerWord;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010E20;
    v9[3] = &unk_100021020;
    v11 = a3;
    v10 = *(a1 + 40);
    [v7 enumerateNeighborsForString:v5 maximumCount:v8 distanceType:0 usingBlock:v9];
  }
}

int64_t sub_100010E38(id a1, FHSmartCompoundFeatureRankedValue *a2, FHSmartCompoundFeatureRankedValue *a3)
{
  v4 = a3;
  v5 = [(FHSmartCompoundFeatureRankedValue *)a2 featureRank];
  v6 = [(FHSmartCompoundFeatureRankedValue *)v4 featureRank];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_100011A64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[NSDecimalNumber alloc] initWithInteger:300];
    v6 = [*(a1 + 32) tripEventTitleNomalization:v3];

    v4 = v6;
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [NSDecimalNumber alloc];
    if (isKindOfClass)
    {
      v9 = 200;
    }

    else
    {
      v9 = 100;
    }

    v5 = [v8 initWithInteger:v9];
  }

  v10 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v4 featureRank:v5];
  v11 = [v3 startDate];
  [v10 setEventStartDate:v11];

  v12 = [v3 endDate];
  [v10 setEventEndDate:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = a1;
    v13 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [v3 tripParts];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * i) eventIdentifiers];
          [v13 addObjectsFromArray:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v20 = [NSArray arrayWithArray:v13];
    [v10 setEventIdentifiers:v20];

    [*(*(*(v24 + 40) + 8) + 40) addObject:v10];
  }

  else
  {
    v21 = [v3 eventIdentifier];

    if (v21)
    {
      v22 = [v3 eventIdentifier];
      v23 = [NSArray arrayWithObject:v22];
      [v10 setEventIdentifiers:v23];
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
  }

LABEL_21:
}

void sub_100012690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 objectForKey:FHSmartFeatureCompoundTypeLostSavings];
    v5 = v4;
    if (v4 && [v4 count])
    {
      [*(*(*(a1 + 32) + 8) + 40) addEntriesFromDictionary:v6];
    }

    v3 = v6;
  }
}

void sub_100012718(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 objectForKey:FHSmartFeatureCompoundTypeRelatedMerchants];
    v5 = v4;
    if (v4 && [v4 count])
    {
      [*(*(*(a1 + 32) + 8) + 40) addEntriesFromDictionary:v6];
    }

    v3 = v6;
  }
}

void *sub_1000127A0(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(result[4] + 8) + 40) addEntriesFromDictionary:a2];
  }

  return result;
}

void sub_100012A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a2 mapItems];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = FinHealthLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v5 description];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "error: %@", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100012BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 placemark];
  v5 = [v4 areasOfInterest];

  if (v5)
  {
    v6 = [v3 placemark];
    v7 = [v6 location];
    [v7 distanceFromLocation:*(a1 + 32)];
    v9 = v8;

    v10 = [[NSDecimalNumber alloc] initWithDouble:v9];
    v11 = [v3 placemark];
    v12 = [v11 areasOfInterest];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100012D0C;
    v15[3] = &unk_100021128;
    v13 = *(a1 + 40);
    v16 = v10;
    v17 = v13;
    v14 = v10;
    [v12 enumerateObjectsUsingBlock:v15];
  }
}

void sub_100012D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v3];

  if (!v4)
  {
    v5 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v3 featureRank:*(a1 + 32)];
    v6 = FinHealthLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[FinHealthRealtimeFeaturesRequest _getLocalSearchResponse:transactionLocation:]_block_invoke_2";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%s] finHealthPointOfInterest: %@", &v9, 0x16u);
    }

    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v5 featureLabel];
    [v7 setObject:v5 forKey:v8];
  }
}

void sub_100013948(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FHTripEvent alloc] initWithPPTripEvent:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_1000139C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FHSuggestedEvent alloc] initWithPPSuggestedEvent:v3];

  [*(a1 + 32) addObject:v4];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}