void sub_100072CD8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 || !a3)
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }

  else
  {
    v4 = [CKRecordZoneID alloc];
    v5 = [*(a1 + 32) zoneName];
    v6 = [*(a1 + 32) ownerName];
    v7 = [v4 initWithZoneName:v5 ownerName:v6];

    v8 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100072E04;
    v12[3] = &unk_100275890;
    v9 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v9 _fetchZoneForZoneID:v7 operationType:v8 completionHandler:v12];
  }
}

void sub_100072FA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) addObjectsFromArray:v8];
  if (v9)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 48)];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100004470;
    v21 = sub_10000531C;
    v22 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007318C;
    v12[3] = &unk_1002758E0;
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v16 = &v17;
    v15 = *(a1 + 64);
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    if ([v18[5] count])
    {
      v10 = *(a1 + 72);
      v11 = [v18[5] allObjects];
      [v10 _fetchRecordsFollowRemappingWithIDs:v11 alreadyFetchRecordIDs:*(a1 + 40) remappedRecordIDs:*(a1 + 56) realRecords:*(a1 + 64) type:*(a1 + 88) storeRequestUUIDsIn:*(a1 + 32) completionHandler:*(a1 + 80)];
    }

    else
    {
      (*(*(a1 + 80) + 16))();
    }

    _Block_object_dispose(&v17, 8);
  }
}

void sub_100073174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007318C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 objectForKey:@"remappedRef"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 recordID];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v13];
    if (([*(a1 + 40) containsObject:v8] & 1) == 0)
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      if (!v9)
      {
        v10 = objc_alloc_init(NSMutableSet);
        v11 = *(*(a1 + 56) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v9 addObject:v8];
    }
  }

  else
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v13];
  }
}

void sub_1000737A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 72) + 16);

    v5();
    return;
  }

  if ([*(a1 + 40) count])
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [*(a1 + 64) _recordWithRecordID:v13 usingRealRecords:*(a1 + 56) remappedRecordIDs:*(a1 + 40) wantsAllRecords:*(a1 + 80)];
          if (v14)
          {
            [v6 setObject:v14 forKeyedSubscript:v13];
          }

          else
          {
            v11 = 0;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v9);

      if (!(v11 & 1 | ((*(a1 + 80) & 1) == 0)))
      {
        v15 = *(a1 + 72);
        v16 = *(a1 + 32);
        v17 = [CPLErrors cplErrorWithCode:25 description:@"Record not found"];
        (*(v15 + 16))(v15, 0, v16, v17);

LABEL_25:
        return;
      }
    }

    else
    {
    }

    v22 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
    goto LABEL_25;
  }

  if (*(a1 + 80) == 1 && (v18 = [*(a1 + 48) count], v18 != objc_msgSend(*(a1 + 56), "count")))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = *(a1 + 48);
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      v35 = 138543362;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v40 + 1) + 8 * j);
          v29 = [*(a1 + 56) objectForKeyedSubscript:{v28, v35}];

          if (!v29 && (_CPLSilentLogging & 1) == 0)
          {
            v30 = sub_100003898();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v46 = v28;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ record not found on server", buf, 0xCu);
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v25);
    }

    v31 = *(a1 + 72);
    v32 = *(a1 + 32);
    v33 = [CPLErrors cplErrorWithCode:25 description:@"Record not found"];
    (*(v31 + 16))(v31, 0, v32, v33);
  }

  else
  {
    v19 = *(a1 + 72);
    v20 = [*(a1 + 56) copy];
    v21 = *(a1 + 32);
    v34 = v20;
    (*(v19 + 16))(v19);
  }
}

void sub_100073BF0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.recordfetch");
  v3 = qword_1002C5390;
  qword_1002C5390 = v2;
}

void sub_100074170(id a1)
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v1 = [v3 integerForKey:@"CPLDefaultServerFeatureVersion"];
  if (v1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  qword_1002BFA98 = v2;
}

void sub_100074D0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074DE0;
  v8[3] = &unk_100274D88;
  v8[4] = v6;
  v9 = v5;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100074DE0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    v4 = *v2;
    v5 = [*v2 lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v3 scopeProvider:v4 withRequestUUIDs:v5 description:@"Error uploading records"];

    if (!v6)
    {
      sub_1001A4C3C(a1, v2, v3);
    }

    if (([v6 isCPLOperationCancelledError] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_1000038DC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fix-up records: %@", &v10, 0xCu);
        }
      }

      if ([v6 isCPLErrorWithCode:18] && (_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_1000038DC();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 48);
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejected CK updates: %@", &v10, 0xCu);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100075078(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100075144;
    v6[3] = &unk_100275080;
    v6[4] = v5;
    v7 = v3;
    [v5 _fetchSparseRecordsWithCompletionHandler:v6];
  }

  else
  {
    (*(v5[35] + 16))();
  }
}

id sub_100075144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = *(v6[35] + 16);

    return v7();
  }

  else
  {
    v10[5] = v3;
    v10[6] = v4;
    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000751EC;
    v10[3] = &unk_100272468;
    v10[4] = v6;
    return [v6 _updateSparseRecords:a2 currentUserRecordID:v9 completionHandler:v10];
  }
}

void sub_10007527C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.sparserecordsfixup");
  v3 = qword_1002C53A8;
  qword_1002C53A8 = v2;
}

id sub_1000753E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _fetchSharedScopeWithCurrentUserID:a2];
  }

  else
  {
    return (*(v2[35] + 16))();
  }
}

void sub_1000756E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100075714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000757BC;
  v6[3] = &unk_100275A08;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_1000757BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 48) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  v6 = a1 + 40;
  v7 = [*(a1 + 40) operationDidFinishWithError:*(*(*(a1 + 48) + 8) + 40)];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 48) + 8) + 40);
  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100003920();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(*(a1 + 40) + 272) cpl_redactedShareURL];
        v13 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error fetching share metadata for %{public}@: %@", buf, 0x16u);
      }

      v10 = *(*(*(a1 + 48) + 8) + 40);
    }

    v14 = [v10 domain];
    v15 = CKUnderlyingErrorDomain;
    if ([v14 isEqualToString:CKUnderlyingErrorDomain])
    {
      v16 = [*(*(*(a1 + 48) + 8) + 40) code];

      if (v16 == 1017)
      {
        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = [*(*(a1 + 40) + 272) cpl_redactedShareURL];
        v19 = [CPLErrors cplErrorWithCode:34 underlyingError:v17 description:@"Share url not found %@: %@", v18, *(*(*(a1 + 48) + 8) + 40)];
LABEL_18:

LABEL_21:
        (*(*(*v6 + 280) + 16))();

        return;
      }
    }

    else
    {
    }

    v20 = [*(*(*(a1 + 48) + 8) + 40) domain];
    if ([v20 isEqualToString:v15])
    {
      if ([*(*(*(a1 + 48) + 8) + 40) code] == 7)
      {

LABEL_20:
        v19 = [CPLErrors cplErrorWithCode:35 underlyingError:*(*(*(a1 + 48) + 8) + 40) description:?];
        goto LABEL_21;
      }

      v23 = [*(*(*(a1 + 48) + 8) + 40) code];

      if (v23 == 2008)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v21 = *(*(*(a1 + 48) + 8) + 40);
    v18 = [*(a1 + 40) lastOperationRequestUUIDs];
    v22 = [*(*(a1 + 40) + 272) cpl_redactedShareURL];
    v19 = [CPLCloudKitErrors CPLErrorForCloudKitError:v21 withRequestUUIDs:v18 description:@"Error fetching metadata for %@: %@", v22, *(*(*(a1 + 48) + 8) + 40)];

    goto LABEL_18;
  }

  sub_1001A4F2C(_CPLSilentLogging, a1, a1 + 40);
}

void sub_100075FD0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.share");
  v3 = qword_1002C53B8;
  qword_1002C53B8 = v2;
}

void sub_100076380(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v38 = v5;
  if (a3)
  {
    v6 = [*(a1 + 32) engineLibrary];
    BYTE4(v33) = 0;
    LODWORD(v33) = 0;
    [v6 setHasCellularBudget:0 hasBatteryBudget:0 hasLowBatteryLevel:0 isConstrainedNetwork:1 isBlockedByLowPowerMode:0 hasHeavyResourceUsage:0 hasPoorNetworkQuality:v33 hasModerateThermalPressure:0 hasThermalPressure:0 hasPoorSystemConditions:? isBudgetValid:? blockedReason:? unBlockedReason:?];
  }

  else
  {
    v7 = [v5 objectForKey:CPLStatusHasCellularBudgetKey];
    v37 = [v7 BOOLValue];

    v8 = [v38 objectForKey:CPLStatusHasBatteryBudgetKey];
    v9 = [v8 BOOLValue];

    v10 = [v38 objectForKey:CPLStatusHasLowBatteryLevelKey];
    v36 = [v10 BOOLValue];

    v11 = [v38 objectForKey:CPLStatusHasConstrainedNetworkKey];
    v35 = [v11 BOOLValue];

    v12 = [v38 objectForKey:CPLStatusIsBlockedByLowPowerModeKey];
    v34 = [v12 BOOLValue];

    v13 = [v38 objectForKey:CPLStatusHasHeavyResourceUsageKey];
    v14 = [v13 BOOLValue];

    v15 = [v38 objectForKey:CPLStatusHasPoorNetworkQualityKey];
    v16 = [v15 BOOLValue];

    v17 = [v38 objectForKey:CPLStatusHasModerateThermalPressureKey];
    v18 = [v17 BOOLValue];

    v19 = [v38 objectForKey:CPLStatusHasThermalPressureKey];
    v20 = [v19 BOOLValue];

    v21 = [v38 objectForKey:CPLStatusHasPoorSystemConditionsKey];
    v22 = [v21 BOOLValue];

    v23 = 1;
    if ((v9 & 1) == 0)
    {
      v24 = [*(a1 + 32) engineLibrary];
      v25 = [v24 systemMonitor];
      v26 = [v25 hasEnoughPowerForAutomaticOverride];

      if (v26)
      {
        v27 = [*(a1 + 32) engineLibrary];
        v28 = [v27 systemMonitor];
        [v28 startAutomaticOverridingSystemBudgets:2];

        v23 = 1;
      }

      else
      {
        v23 = 0;
      }
    }

    v29 = [v38 objectForKey:CPLStatusBlockedReasonKey];
    v30 = [v29 integerValue];

    v31 = [v38 objectForKey:CPLStatusUnBlockedReasonKey];
    v32 = [v31 integerValue];

    v6 = [*(a1 + 32) engineLibrary];
    BYTE4(v33) = 1;
    BYTE3(v33) = v22;
    BYTE2(v33) = v20;
    BYTE1(v33) = v18;
    LOBYTE(v33) = v16;
    [v6 setHasCellularBudget:v37 hasBatteryBudget:v23 hasLowBatteryLevel:v36 isConstrainedNetwork:v35 isBlockedByLowPowerMode:v34 hasHeavyResourceUsage:v14 hasPoorNetworkQuality:v33 hasModerateThermalPressure:v30 hasThermalPressure:v32 hasPoorSystemConditions:? isBudgetValid:? blockedReason:? unBlockedReason:?];
  }
}

id sub_1000767AC(uint64_t a1)
{
  result = [*(a1 + 32) opened];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateBudgets];
  }

  return result;
}

void sub_10007691C(uint64_t a1)
{
  if (os_variant_has_internal_content())
  {
    [CPLCloudKitFakeDynamicDerivatives setAllowsFakeDerivatives:1];
  }

  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100077090;
  v64[3] = &unk_100275AA0;
  v64[4] = v3;
  v5 = [v2 addObserverForName:CKIdentityUpdateNotification object:0 queue:v4 usingBlock:v64];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = [*(a1 + 32) abstractObject];
  v9 = [v8 engineLibrary];
  v10 = [v9 containerHasBeenWiped];

  if (v10)
  {
    [*(a1 + 32) _failAllFutureOperationsWithContainerHasBeenWipedError];
  }

  *(*(a1 + 32) + 32) = 0;
  if (os_variant_has_internal_content())
  {
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 stringForKey:@"CPLRejectVideoStreamingIntents"];

    if (v12)
    {
      v54 = a1;
      v56 = objc_alloc_init(NSMutableIndexSet);
      v13 = +[NSCharacterSet whitespaceCharacterSet];
      v14 = objc_alloc_init(NSMutableArray);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v53 = v12;
      obj = [v12 componentsSeparatedByString:{@", "}];
      v15 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v61;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v61 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v60 + 1) + 8 * i);
            v20 = [v19 stringByTrimmingCharactersInSet:v13];
            v21 = [&off_100291580 objectForKeyedSubscript:v20];
            v22 = v21;
            if (v21)
            {
              [v56 addIndex:{objc_msgSend(v21, "unsignedIntegerValue")}];
              [v14 addObject:v20];
            }

            else if ((_CPLSilentLogging & 1) == 0)
            {
              v23 = v14;
              v24 = sub_1000770DC();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v19;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid intent name: %@", &buf, 0xCu);
              }

              v14 = v23;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v16);
      }

      v12 = v53;
      a1 = v54;
      if ([v14 count])
      {
        objc_storeStrong((*(v54 + 32) + 56), v14);
        *(*(v54 + 32) + 32) = 1;
        objc_storeStrong((*(v54 + 32) + 40), v56);
        v25 = +[NSUserDefaults standardUserDefaults];
        *(*(v54 + 32) + 48) = [v25 BOOLForKey:@"CPLRejectVideoStreamingAtContentLevel"];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v26 = sub_1000770DC();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v14 componentsJoinedByString:{@", "}];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Will automatically reject video streaming for the following intents: %@", &buf, 0xCu);
          }
        }
      }
    }

    if (!*(*(a1 + 32) + 64))
    {
      v28 = [CPLCloudKitOperationGroupMapper alloc];
      v29 = [*(a1 + 32) engineLibrary];
      v30 = [v29 clientLibraryBaseURL];
      v31 = [(CPLCloudKitOperationGroupMapper *)v28 initWithMappingInFolderWithURL:v30];
      v32 = *(a1 + 32);
      v33 = *(v32 + 64);
      *(v32 + 64) = v31;
    }
  }

  v34 = [*(a1 + 32) engineLibrary];
  v35 = [v34 cloudLibraryResourceStorageURL];

  v36 = [v35 URLByAppendingPathComponent:@"CloudKit" isDirectory:1];
  v37 = *(a1 + 32);
  v38 = *(v37 + 192);
  *(v37 + 192) = v36;

  v39 = +[NSFileManager defaultManager];
  [v39 removeItemAtURL:*(*(a1 + 32) + 192) error:0];

  v40 = dispatch_get_global_queue(0, 0);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100077120;
  v58[3] = &unk_100271F40;
  v41 = v35;
  v59 = v41;
  v42 = v58;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v67 = sub_100002AD4;
  v68 = &unk_100271E98;
  v69 = v42;
  v43 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v40, v43);

  [*(*(a1 + 32) + 240) registerClient:?];
  v44 = [*(a1 + 32) duetTicketProvider];
  [v44 addBudgetDelegate:*(a1 + 32)];

  [*(a1 + 32) _updateBudgets];
  v45 = *(a1 + 32);
  if (!v45[28])
  {
    v46 = +[CPLFingerprintContext sharedContext];
    v47 = *(a1 + 32);
    v48 = *(v47 + 224);
    *(v47 + 224) = v46;

    v45 = *(a1 + 32);
  }

  if (!v45[29])
  {
    v49 = +[CPLCloudKitDefaultZoneManager sharedInstance];
    v50 = *(a1 + 32);
    v51 = *(v50 + 232);
    *(v50 + 232) = v49;

    v45 = *(a1 + 32);
  }

  [v45 setOpened:1];
  v57 = *(a1 + 32);
  [CPLCallObserver observeAsyncCallOn:"observeAsyncCallOn:selector:block:" selector:? block:?];
  [*(*(a1 + 32) + 208) setDelegate:?];
  v52 = *(a1 + 40);
  if (v52)
  {
    (*(v52 + 16))(v52, 0);
  }
}

void sub_100077090(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  if (v6[13])
  {
    sub_1001A5D20(v5, v4);
  }
}

id sub_1000770DC()
{
  if (qword_1002C5408 != -1)
  {
    sub_1001A5DD0();
  }

  v1 = qword_1002C5410;

  return v1;
}

void sub_100077120(uint64_t a1)
{
  v2 = [*(a1 + 32) URLByAppendingPathComponent:@"TempCKAssetsForUpload" isDirectory:1];
  v1 = +[NSFileManager defaultManager];
  [v1 removeItemAtURL:v2 error:0];
}

void sub_100077198(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100077230;
  v6[3] = &unk_1002720E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 _startWatchingAccountInfoChangesWithCompletionHandler:v6];
}

id sub_100077230(uint64_t a1)
{
  [*(a1 + 32) callDidFinish];
  result = [*(a1 + 40) opened];
  if (result)
  {
    v3 = objc_opt_class();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000772E4;
    v4[3] = &unk_100271F40;
    v4[4] = *(a1 + 40);
    return [CPLCallObserver observeSyncCallOn:v3 selector:"registerForFeatureChangeNotificationsUsingBlock:" block:v4];
  }

  return result;
}

void sub_1000772E4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100077384;
  v5[3] = &unk_100271F40;
  v5[4] = *(a1 + 32);
  v2 = [CSFFeatureManager registerForFeatureChangeNotificationsUsingBlock:v5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
}

void sub_100077384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A5128;
  v6[3] = &unk_100271F40;
  v6[4] = v1;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = v2;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void sub_1000775A8(uint64_t a1)
{
  [*(a1 + 32) _stopWatchingAccountInfoChanges];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  [*(*(a1 + 32) + 240) unregisterClient:?];
  v4 = [*(a1 + 32) duetTicketProvider];
  [v4 removeBudgetDelegate:*(a1 + 32)];

  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 208) unregister];
  }

  [*(a1 + 32) setOpened:0];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 184), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = *(*(a1 + 32) + 184);
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v10)];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 176);
  *(v12 + 176) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 184);
  *(v14 + 184) = 0;

  v16 = *(*(a1 + 32) + 24);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100077864;
  v23 = &unk_1002723C8;
  v17 = v5;
  v24 = v17;
  v25 = *(a1 + 40);
  [v16 cancelAllOperationsWithCompletionHandler:&v20];
  if (*(*(a1 + 32) + 168))
  {
    [CSFFeatureManager unregisterForFeatureChangeNotificationsUsingObserver:v20, v21, v22, v23, v24];
    v18 = *(a1 + 32);
    v19 = *(v18 + 168);
    *(v18 + 168) = 0;
  }
}

uint64_t sub_100077864(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) shutdown];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100079610(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = qword_1002C53C8;
  qword_1002C53C8 = v3;
}

void sub_100079A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors notImplementedError];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10007BA5C(id a1)
{
  v1 = _CPLArrayFromColonSeparatedList();
  v2 = qword_1002C53D0;
  qword_1002C53D0 = v1;
}

void sub_10007BAFC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v4 = [v1 objectForKey:@"CPLAllowsOperationsOverExpensiveNetwork"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue];
    v2 = v4;
  }

  else
  {
    v3 = byte_1002BFB62;
  }

  byte_1002BFB62 = v3;
}

void sub_10007BC80(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  if (v6[14])
  {
    sub_1001A69FC(v5, v4);
  }
}

void sub_10007BE60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1[4];
  v10 = *(v9 + 8);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A5700;
  v17[3] = &unk_100275BD8;
  v17[4] = v9;
  v18 = v8;
  v11 = a1[5];
  v21 = a1[6];
  v22 = a2;
  v19 = v7;
  v20 = v11;
  v12 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v24 = v12;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

void sub_10007C540(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKey:v8];
  if (v6)
  {
    v7 = [a1[6] _betterErrorForRecordId:v8 recordError:v5];
    [a1[5] setObject:v7 forKey:v6];
  }
}

void sub_10007C8E4(uint64_t a1)
{
  v6 = objc_alloc_init(NSMutableArray);
  v2 = *(a1 + 32);
  v3 = +[NSDate date];
  [v2 _addBackgroundSchedulingStatusToStatusEntries:v6 now:v3];

  v4 = *(a1 + 40);
  v5 = [v6 componentsJoinedByString:@"\n"];
  (*(v4 + 16))(v4, v5, 0);
}

void sub_10007CABC(uint64_t a1)
{
  v2 = [*(a1 + 32) duetTicketProvider];
  v3 = [v2 duetStatuses];

  v4 = [v3 count];
  v5 = *(a1 + 40);
  if (v4)
  {
    v7 = @"duet";
    v8 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    (*(v5 + 16))(v5, &__NSDictionary0__struct, 0);
  }
}

void sub_10007CC5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007CD98;
  v10[3] = &unk_100272E20;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v10[4] = *(a1 + 32);
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_10007CD98(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CPLUseCompactCloudKitStatus"];

  if (v3)
  {
    v4 = *(a1 + 48);
    v62 = [*(*(a1 + 32) + 24) status];
    (*(v4 + 16))(v4, v62, 0);
    goto LABEL_71;
  }

  v62 = +[NSDate date];
  v5 = [[NSMutableArray alloc] initWithObjects:{*(a1 + 40), 0}];
  v6 = [*(a1 + 32) errorForAllOperations];
  if (v6)
  {
    v7 = [NSString alloc];
    v8 = [v6 localizedDescription];
    v9 = [v7 initWithFormat:@"Failing all operations with error: %@", v8];
    [v5 addObject:v9];
  }

  if (+[CPLFingerprintScheme supportsEPP])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [NSString stringWithFormat:@"EPP capable: %@", v10];
  [v5 addObject:v11];

  if (+[CPLFingerprintScheme supportsEPP])
  {
    v12 = [*(a1 + 32) fingerprintContext];
    if (+[CPLFingerprintScheme supportsEPPAutoEnable])
    {
      v13 = [NSString stringWithFormat:@"  EPP auto-enable: YES"];
      [v5 addObject:v13];

      if ([v12 usesMMCSv2AsDefault])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = [*(a1 + 32) abstractObject];
      v16 = [v15 engineLibrary];
      if ([v16 isWalrusEnabled])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = [NSString stringWithFormat:@"  EPP enabled: %@ (Walrus: %@)", v14, v17];
      [v5 addObject:v18];
    }

    else
    {
      if ([v12 usesMMCSv2AsDefault])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v15 = [NSString stringWithFormat:@"  EPP enabled: %@", v19];
      [v5 addObject:v15];
    }

    v20 = [v12 fingerprintSchemeForNewMasterAsset];
    v21 = [v20 isValid];
    if (v21)
    {
      v22 = [v20 fingerprintSchemeDescription];
    }

    else
    {
      v22 = @"waiting to be fetched";
    }

    v23 = [NSString stringWithFormat:@"  Default fingerprint scheme: %@", v22];
    [v5 addObject:v23];

    if (v21)
    {
    }

    v24 = [v12 mmcsv2FingerprintScheme];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = @"hardcoded";
    }

    else
    {
      v26 = [v24 isValid];
      v27 = +[CPLFingerprintContext sharedContext];

      if (v26)
      {
        if (v12 == v27)
        {
          v28 = [NSString alloc];
          v29 = [v24 boundaryKeyDescription];
          v25 = [v28 initWithFormat:@"fetched (hash: %@)", v29];
        }

        else
        {
          v25 = @"custom";
        }
      }

      else if (v12 == v27)
      {
        v25 = @"not fetched";
      }

      else
      {
        v25 = @"invalid";
      }
    }

    v30 = [NSString stringWithFormat:@"  Boundary key: %@", v25];
    [v5 addObject:v30];
  }

  [v5 addObject:@"Account status:"];
  if (*(*(a1 + 32) + 144))
  {
    v31 = [NSString alloc];
    if ([*(*(a1 + 32) + 144) hasValidCredentials])
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = [v31 initWithFormat:@"  has valid credentials: %@", v32];
    [v5 addObject:v33];

    v34 = [NSString alloc];
    v35 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 160) now:v62];
    v36 = [v34 initWithFormat:@"  last account info update request: %@", v35];
    [v5 addObject:v36];
  }

  else
  {
    [v5 addObject:@"  Waiting for Account Info"];
  }

  if (+[CPLEngineScheduler shouldShowBackgroundSchedulingStatusInTransport])
  {
    [*(a1 + 32) _addBackgroundSchedulingStatusToStatusEntries:v5 now:v62];
  }

  v37 = [*(*(a1 + 32) + 24) status];
  [v5 addObject:v37];

  v38 = +[CPLCloudKitFakeDynamicDerivatives fakeDerivativesDescription];
  if (v38)
  {
    v39 = [[NSString alloc] initWithFormat:@"Fake derivatives: %@", v38];
    [v5 addObject:v39];
  }

  if (!CPLCloudKitUseGateKeeper())
  {
    if (CPLCloudKitGateKeeperDisabledByServer())
    {
      v41 = @"DDC: Off (disabled by server)";
    }

    else
    {
      v41 = @"DDC: Off";
    }

LABEL_56:
    [v5 addObject:v41];
    goto LABEL_57;
  }

  if (CPLCloudKitGateKeeperDefaultDownloadType)
  {
    v40 = @"DDC: On (invalid transcode type)";
    if (CPLCloudKitGateKeeperDefaultDownloadType == 2)
    {
      v40 = @"DDC: On (always transcode if possible)";
    }

    if (CPLCloudKitGateKeeperDefaultDownloadType == 1)
    {
      v41 = @"DDC: On (never transcode)";
    }

    else
    {
      v41 = v40;
    }

    goto LABEL_56;
  }

LABEL_57:
  v42 = [*(*(a1 + 32) + 80) statusWithIndent:@"  "];
  if (v42)
  {
    v43 = [[NSString alloc] initWithFormat:@"Resource downloads:\n  %@", v42];
    [v5 addObject:v43];
  }

  v44 = [*(*(a1 + 32) + 96) statusWithIndent:@"  "];
  if (v44)
  {
    v45 = [[NSString alloc] initWithFormat:@"Compute state operations:\n  %@", v44];
    [v5 addObject:v45];
  }

  v46 = *(*(a1 + 32) + 64);
  if (v46)
  {
    v47 = [v46 mappingList];
    if ([v47 count])
    {
      v48 = [NSString alloc];
      v49 = [v47 componentsJoinedByString:@"\n  "];
      v50 = [v48 initWithFormat:@"Group mapping:\n  %@", v49];
      [v5 addObject:v50];
    }
  }

  [v5 addObject:@"Video streaming:"];
  v51 = *(a1 + 32);
  if (*(v51 + 32) == 1)
  {
    v52 = [NSString alloc];
    v53 = [*(*(a1 + 32) + 56) componentsJoinedByString:{@", "}];
    v54 = [v52 initWithFormat:@"  automatically reject %@", v53];
    [v5 addObject:v54];

    v51 = *(a1 + 32);
  }

  v55 = [*(v51 + 72) status];
  v56 = [*(*(a1 + 32) + 88) statusWithIndent:@"    "];
  v57 = [NSString alloc];
  if (v56)
  {
    v58 = [v57 initWithFormat:@"  cache: %@\n  requests:\n    %@", v55, v56];
  }

  else
  {
    v58 = [v57 initWithFormat:@"  cache: %@", v55, v61];
  }

  v59 = v58;
  [v5 addObject:v58];

  v60 = [v5 componentsJoinedByString:@"\n"];
  (*(*(a1 + 48) + 16))();

LABEL_71:
}

void sub_10007D748(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) statusDictionary];
  if (+[CPLEngineScheduler shouldShowBackgroundSchedulingStatusInTransport])
  {
    v2 = [v5 mutableCopy];
    v3 = [*(a1 + 32) duetTicketProvider];
    v4 = [v3 duetStatuses];

    if ([v4 count])
    {
      [v2 setObject:v4 forKeyedSubscript:@"duet"];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10007DA74(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10007DAFC;
  v2[3] = &unk_100271E98;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateAccountInfoWithCompletionHandler:v2];
}

void sub_10007DC40(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v3 = [v1 objectForKey:@"CPLDelayRecoveredDataClean"];

  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v3 BOOLValue];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  byte_1002C53F8 = v2;

  _objc_release_x2();
}

void sub_10007DCE0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_10007E130(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) opened])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_1000770DC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        v6 = @"Unknown record type";
        if (*(a1 + 56))
        {
          v6 = *(a1 + 56);
        }

        *buf = 138412802;
        v39 = v4;
        v40 = 2112;
        v41 = v5;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudKit Data Recovery is looking for CKAsset stored in %@.%@ (%@)", buf, 0x20u);
      }
    }

    v7 = (a1 + 48);
    if ([*(a1 + 48) isEqualToString:@"previewData"] && (objc_msgSend(*(a1 + 40), "recordName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"cmm-root"), v8, v9))
    {
      sub_1001A7218(v2, (a1 + 40), v37, a1);
    }

    else if (([*v7 isEqualToString:@"resFaceCropRes"] & 1) != 0 || objc_msgSend(*v7, "isEqualToString:", @"resCustomUserAssetList"))
    {
      v10 = [*(a1 + 48) isEqualToString:@"resFaceCropRes"];
      v11 = *(a1 + 56);
      if (v10)
      {
        if (v11)
        {
          v12 = [CKRecord cpl_recordChangeClassForRecordType:?];
        }

        else
        {
          v12 = objc_opt_class();
        }

        v14 = v12;
        if (([(objc_class *)v12 isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v15 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = *(a1 + 56);
              *buf = 138412546;
              v39 = v14;
              v40 = 2112;
              v41 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid record class %@ for record type %@", buf, 0x16u);
            }
          }

          v17 = +[NSAssertionHandler currentHandler];
          v18 = *(a1 + 88);
          v19 = *(a1 + 32);
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
          [v17 handleFailureInMethod:v18 object:v19 file:v20 lineNumber:2104 description:{@"Invalid record class %@ for record type %@", v14, *(a1 + 56)}];
          goto LABEL_37;
        }
      }

      else
      {
        if (v11)
        {
          v13 = [CKRecord cpl_recordChangeClassForRecordType:?];
        }

        else
        {
          v13 = objc_opt_class();
        }

        v14 = v13;
        if (([(objc_class *)v13 isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v27 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = *(a1 + 56);
              *buf = 138412546;
              v39 = v14;
              v40 = 2112;
              v41 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid record class %@ for record type %@", buf, 0x16u);
            }
          }

          v17 = +[NSAssertionHandler currentHandler];
          v29 = *(a1 + 88);
          v30 = *(a1 + 32);
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
          [v17 handleFailureInMethod:v29 object:v30 file:v20 lineNumber:2109 description:{@"Invalid record class %@ for record type %@", v14, *(a1 + 56)}];
LABEL_37:

          abort();
        }
      }

      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) zoneID];
      v23 = [v21 scopeIdentifierFromZoneID:v22];

      v24 = [*(a1 + 40) recordName];
      v25 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v23 identifier:v24];
      v26 = [*(a1 + 32) engineLibrary];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10007E978;
      v32[3] = &unk_100275D10;
      v32[4] = *(a1 + 32);
      v35 = *(a1 + 80);
      v36 = v14;
      v33 = *(a1 + 56);
      v34 = *(a1 + 64);
      [v26 provideRecordWithCloudScopeIdentifier:v25 completionHandler:v32];
    }

    else if (sub_1001A7038((a1 + 48), v2, a1, v31))
    {
      sub_1001A6F8C(a1);
    }
  }

  else
  {
    sub_1001A6EE0(_CPLSilentLogging, a1);
  }
}

void sub_10007E634(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007E7B4;
  v15[3] = &unk_100275C98;
  v19 = a3;
  v7 = *(a1 + 56);
  v16 = v5;
  v14 = *(a1 + 32);
  v8 = *(&v14 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v17 = v14;
  v18 = v9;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v21 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v13);
}

void sub_10007E7B4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 64);
      v4 = *(*(a1 + 64) + 16);
    }

    else
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = *(a1 + 64);
      v4 = *(*(a1 + 64) + 16);
    }

    v4();
  }

  else
  {
    v7 = (a1 + 32);
    v6 = *(a1 + 32);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([*v7 previewImageData], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10007E908;
      v12[3] = &unk_100275C70;
      v13 = *(a1 + 64);
      [v10 _withTempCKAssetForData:v9 tempFolderURL:v11 block:v12];
    }

    else
    {
      sub_1001A7310(a1, (a1 + 32));
    }
  }
}

void sub_10007E908(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    sub_1001A73D8(v6, a1);
  }
}

void sub_10007E978(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007EB0C;
  v15[3] = &unk_100275CE8;
  v19 = a3;
  v7 = *(a1 + 56);
  v20 = *(a1 + 64);
  v16 = v5;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v14 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v17 = v14;
  v18 = v9;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v22 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v13);
}

void sub_10007EB0C(uint64_t a1)
{
  v2 = *(a1 + 72);
  switch(v2)
  {
    case 0:
      if (*(a1 + 80))
      {
        v6 = *(a1 + 32);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_1001A7498(a1, (a1 + 32));
          return;
        }

        v7 = *(a1 + 80);
      }

      else
      {
        v7 = 0;
      }

      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      if (v7 == v8)
      {
        v11 = [v9 resourceData];
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = [v9 customUserAssetList];
        v11 = [v10 data];

        if (v11)
        {
LABEL_15:
          v12 = *(a1 + 48);
          v13 = *(a1 + 56);
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10007ECAC;
          v14[3] = &unk_100275C70;
          v15 = *(a1 + 64);
          [v12 _withTempCKAssetForData:v11 tempFolderURL:v13 block:v14];

LABEL_16:
          return;
        }
      }

      sub_1001A7560((a1 + 32), a1);
      goto LABEL_16;
    case 2:
      v5 = *(a1 + 64);
      v4 = *(*(a1 + 64) + 16);
      break;
    case 1:
      v3 = *(a1 + 64);
      v4 = *(*(a1 + 64) + 16);
      break;
    default:
      return;
  }

  v4();
}

void sub_10007ECAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    sub_1001A7620(v6, a1);
  }
}

void sub_10007ED1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007EE80;
  v15[3] = &unk_100275D38;
  v20 = a3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = v7;
  v21 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v5;
  v17 = v9;
  v18 = v10;
  v11 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v23 = v11;
  v12 = v6;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v14);
}

id sub_10007EE80(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 56);
      v4 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_9;
      }

      v3 = *(a1 + 56);
      v4 = *(*(a1 + 56) + 16);
    }

    v4();
  }

  else
  {
    v6 = [*(a1 + 32) identity];
    v7 = [v6 fileURL];

    if (!v7)
    {
      sub_1001A76E0(a1, (a1 + 32));
    }

    v8 = [[CKAsset alloc] initWithFileURL:v7];
    (*(*(a1 + 56) + 16))();
  }

LABEL_9:
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  return [v9 _cleanTempRecoveredDataURL:v10];
}

void sub_10007F0D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007F1C0;
    v11[3] = &unk_100274980;
    v12 = *(a1 + 80);
    [v4 _coordinator:v5 provideCKAssetWithRecordID:v6 fieldName:v7 recordType:v8 signature:v9 tempFolderURL:a2 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 80) + 16);

    v10();
  }
}

void sub_10007F2C8(uint64_t a1)
{
  if ([*(a1 + 32) opened])
  {
    v2 = [*(a1 + 32) abstractObject];
    v6 = [v2 engineLibrary];

    v3 = [v6 scheduler];
    [v3 noteServerHasChanges];

    v4 = [v6 supervisor];
    v5 = [*(a1 + 32) abstractObject];
    [v4 transportNotedServerHasChanges:v5];
  }
}

id sub_10007F820(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 engineLibrary];
  [v3 setContainerHasBeenWiped:1];

  v4 = *(a1 + 32);

  return [v4 _failAllFutureOperationsWithContainerHasBeenWipedError];
}

void sub_10007FC08(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v1 = [v2 engineLibrary];
  [v1 setICloudLibraryClientVersionTooOld:1];
}

void *sub_10007FC68(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[14])
  {
    return [result _forceUpdateAccountInfoWithReason:@"Walrus has been enabled"];
  }

  return result;
}

id sub_10008003C(void *a1)
{
  v2 = a1 + 4;
  v3 = *(a1[4] + 176);
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:a1[5]];

    if (v4)
    {
      sub_1001A7B60(a1, v2, a1 + 5);
    }
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(*v2 + 176);
    *(*v2 + 176) = v5;
  }

  v8 = a1[5];
  v7 = a1[6];
  v9 = *(a1[4] + 176);

  return [v9 setObject:v7 forKeyedSubscript:v8];
}

void sub_10008022C(uint64_t a1)
{
  if (([*(a1 + 32) opened] & 1) == 0)
  {
    v7 = *(a1 + 48);
    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
    v6 = *(v7 + 16);
LABEL_9:
    v6();
    goto LABEL_10;
  }

  v10 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(a1 + 40)];
  if (v10)
  {
    v2 = *(*(a1 + 32) + 184);
    if (!v2)
    {
      v3 = objc_alloc_init(NSMutableSet);
      v4 = *(a1 + 32);
      v5 = *(v4 + 184);
      *(v4 + 184) = v3;

      v2 = *(*(a1 + 32) + 184);
    }

    if (([v2 containsObject:*(a1 + 40)] & 1) == 0)
    {
      [*(*(a1 + 32) + 184) addObject:*(a1 + 40)];
      [v10 start];
    }

    v6 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  v8 = *(a1 + 48);
  v9 = +[CPLErrors notImplementedError];
  (*(v8 + 16))(v8, 0, v9);

LABEL_10:
}

void sub_1000804B8(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = v2;
  v5 = a1 + 4;
  v4 = a1[4];
  if (*(v4 + 200))
  {
    goto LABEL_4;
  }

  v6 = *(v4 + 192);
  v17 = 0;
  v7 = [v2 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    *(*v5 + 200) = 1;

    v4 = *v5;
LABEL_4:
    v16 = 0;
    v10 = [*(v4 + 192) URLByAppendingPathComponent:a1[5] isDirectory:1];
    v11 = [v10 path];
    v12 = [v3 fileExistsAtPath:v11 isDirectory:&v16];

    if (v12)
    {
      if (v16 == 1)
      {
        (*(a1[6] + 16))();
      }

      else
      {
        sub_1001A7DFC(a1 + 5, a1);
      }
    }

    else
    {
      v15 = 0;
      v13 = [v3 createDirectoryAtURL:v10 withIntermediateDirectories:0 attributes:0 error:&v15];
      v14 = v15;
      if (v13)
      {
        (*(a1[6] + 16))();
      }

      else
      {
        sub_1001A7D2C(a1 + 5, v14, a1);
      }
    }

    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001A7C54(a1 + 4, 192, v8);
  }

  (*(a1[6] + 16))();

LABEL_14:
}

void sub_100080818(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[201] == 1)
  {
    v5 = [v2 abstractObject];
    v3 = [v5 engineLibrary];
    v4 = [v3 scheduler];
    [v4 noteBlockedStateHasChanged:*(a1 + 40)];
  }
}

void sub_100080C2C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit");
  v3 = qword_1002C5410;
  qword_1002C5410 = v2;
}

void sub_100080DCC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 272) cancelDownloadTask:*(a1 + 40)])
  {
    if (([*(*(a1 + 32) + 272) hasDownloadTasks] & 1) == 0)
    {
      v6 = [*(a1 + 32) currentOperation];
      [v6 cancel];
    }
  }

  else
  {
    v2 = [*(a1 + 40) completionHandler];
    v3 = *(a1 + 40);
    v4 = +[CPLErrors operationCancelledError];
    (v2)[2](v2, v3, v4);

    v5 = *(*(a1 + 32) + 288);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100080F1C;
    v7[3] = &unk_100275E28;
    v8 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void sub_100081004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 completionHandler];
        (v10)[2](v10, v9, *(a1 + 32));
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_10008151C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v16 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v15 isCPLErrorWithCode:2002])
  {
    CPLDisableCloudKitUseGateKeeper();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000815EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCPLErrorWithCode:2002])
  {
    CPLDisableCloudKitUseGateKeeper();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100081654(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1[7];
  v8 = a1[4];
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v14 = [v11 objectForKeyedSubscript:v8];
  v12 = [v11 objectForKeyedSubscript:a1[5]];
  v13 = [v11 objectForKeyedSubscript:a1[6]];

  (*(v7 + 16))(v7, v14, v12, v13, v10, 0, v9);
}

void sub_100082148(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082224;
  v8[3] = &unk_100273738;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 32);
  v13 = a3;
  v12 = *(a1 + 48);
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100082224(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 48) + 272) resourceWithRecordScopedIdentifier:v2 didProgress:*(a1 + 64)];
  v3 = *(a1 + 48);
  [v3[34] downloadProgress];
  [v3 updateProgress:?];
  v4 = [*(*(a1 + 48) + 272) cloudResourceForRecordWithScopedIdentifier:v2];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100082338;
    v6[3] = &unk_1002733C8;
    v5 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(a1 + 64);
    v8 = v4;
    [v5 updateContextWithBlock:v6];
  }
}

void sub_100082348(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001A8428;
  v24[3] = &unk_100275EF0;
  v18 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = v16;
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  v29 = v17;
  v30 = v13;
  v31 = *(a1 + 56);
  v32 = v14;
  v33 = v15;
  v34 = a6;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v17;
  v23 = v16;
  [v18 dispatchAsync:v24];
}

void sub_1000824D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008258C;
  v6[3] = &unk_1002721A0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_10008258C(uint64_t a1)
{
  v8 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v8)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    v3 = [*(*(a1 + 32) + 272) resourceTypeDescription];
    v4 = [CPLCloudKitErrors CPLErrorForCloudKitError:v8 withRequestUUIDs:v2 description:@"Failed to download %@", v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 48) downloadedItemCount];
  if (v5 != [*(a1 + 48) requestedItemCount])
  {
    [*(a1 + 48) setError:v4];
  }

  if ([*(*(a1 + 32) + 272) hasDownloadTasks])
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [CPLErrors cplErrorWithCode:25 description:@"Record not found"];
    }

    v7 = v6;
    [*(*(a1 + 32) + 272) allDownloadsDidFailWithError:v6];

    if (v4)
    {
      [*(a1 + 32) _finishRemainingTasksWithError:v4];

      goto LABEL_14;
    }
  }

  else
  {
  }

  [*(a1 + 32) _downloadNextGroup];
LABEL_14:
}

void sub_100082C60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v33 = v7;
    v34 = v6;
    v32 = a1;
    v9 = (a1 + 32);
    objc_storeStrong((*(a1 + 32) + 320), a2);
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = *(*(a1 + 32) + 288);
    *(*(a1 + 32) + 288) = v10;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(*(a1 + 32) + 328);
    v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = *v42;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [*v9 _cloudKitScopeForTask:v15];
          if (!v17)
          {
            sub_1001A8918(v32, v9);
          }

          v18 = v17;
          v19 = CPLCloudKitOperationTypeForScope(v17);
          v20 = *(*v9 + 36);
          v21 = [NSNumber numberWithInteger:v19];
          v22 = [v20 objectForKeyedSubscript:v21];

          if (!v22)
          {
            v22 = objc_alloc_init(NSMutableArray);
            v23 = *(*v9 + 36);
            v24 = [NSNumber numberWithInteger:v19];
            [v23 setObject:v22 forKeyedSubscript:v24];
          }

          [v22 addObject:v15];

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    [*v9 _downloadNextOperationType];
    v8 = v33;
    v6 = v34;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = *(*(a1 + 32) + 328);
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v37 + 1) + 8 * j);
          v31 = [v30 completionHandler];
          (v31)[2](v31, v30, v8);
        }

        v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    (*(*(*(a1 + 32) + 336) + 16))();
  }
}

void sub_1000842C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 completionHandler];
        (v10)[2](v10, v9, *(a1 + 32));
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_100084618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100084630(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void sub_100084734(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 firstObject];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000849CC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.resourcesdownload");
  v3 = qword_1002C5420;
  qword_1002C5420 = v2;
}

id sub_100084A0C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (qword_1002C5518 != -1)
  {
    sub_1001A8CF8();
  }

  if ((a2 - 1) > 0x1B)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1002C5428[a2];
  }

  return v3;
}

uint64_t sub_100084A7C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (qword_1002C5518 != -1)
  {
    sub_1001A8CF8();
  }

  v3 = [qword_1002C5510 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100084F90(id a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085058;
  v4[3] = &unk_100274300;
  v1 = [[NSMutableDictionary alloc] initWithCapacity:29];
  v5 = v1;
  [CPLResource enumerateResourceTypesWithBlock:v4];
  v2 = qword_1002C5510;
  qword_1002C5510 = v1;
  v3 = v1;
}

uint64_t sub_100085058(uint64_t result, uint64_t a2)
{
  if (!(!v3 & v2))
  {
    v6 = result;
    v7 = [CPLCloudKitResourceKeys alloc];
    switch(v8)
    {
      case 0:
        v9 = 0;
        v10 = 0;
        break;
      case 1:
        v9 = @"resOriginal";
        v10 = 1;
        break;
      case 2:
        v9 = @"resJPEGFull";
        v10 = 2;
        break;
      case 3:
        v9 = @"resJPEGLarge";
        v10 = 3;
        break;
      case 4:
        v9 = @"resJPEGMed";
        v10 = 4;
        break;
      case 5:
        v9 = @"resJPEGThumb";
        v10 = 5;
        break;
      case 6:
        v9 = @"resVidMed";
        v10 = 6;
        break;
      case 7:
        v9 = @"resVidSmall";
        v10 = 7;
        break;
      case 8:
        v9 = @"resAudio";
        v10 = 8;
        break;
      case 9:
        v9 = @"resSidecar";
        v10 = 9;
        break;
      case 10:
        v9 = @"resMediaMetaData";
        v10 = 10;
        break;
      case 11:
        v9 = 0;
        v10 = 11;
        break;
      case 12:
        v9 = 0;
        v10 = 12;
        break;
      case 13:
        v9 = @"resAdjData";
        v10 = 13;
        break;
      case 14:
        v9 = @"resAdjSecondData";
        v10 = 14;
        break;
      case 15:
        v9 = @"resAdjBaseJPEG";
        v10 = 15;
        break;
      case 16:
        v9 = @"resVidFull";
        v10 = 16;
        break;
      case 17:
        v9 = @"resOriginalAlt";
        v10 = 17;
        break;
      case 18:
        v9 = @"resOriginalVidCompl";
        v10 = 18;
        break;
      case 19:
        v9 = @"resVidCompl";
        v10 = 19;
        break;
      case 20:
        v9 = @"resAdjBaseVid";
        v10 = 20;
        break;
      case 21:
        v9 = @"resVidLarge";
        v10 = 21;
        break;
      case 22:
        v9 = @"resSidecarOther";
        v10 = 22;
        break;
      case 23:
        v9 = @"resOriginalSpatialOverCapture";
        v10 = 23;
        break;
      case 24:
        v9 = @"resOriginalVidComplOverCapture";
        v10 = 24;
        break;
      case 25:
        v9 = @"resAdjBaseNormalVid";
        v10 = 25;
        break;
      case 26:
        v9 = @"resVideoMediaMetaData";
        v10 = 26;
        break;
      case 27:
        v9 = @"resAdjustedMediaMetaData";
        v10 = 27;
        break;
      case 28:
        v9 = @"resVidHDRMed";
        v10 = 28;
        break;
      default:
        JUMPOUT(0);
    }

    obj = [(CPLCloudKitResourceKeys *)v7 initWithPrefix:v9 resourceType:v10];
    objc_storeStrong(&qword_1002C5428[a2], obj);
    if (obj && obj->_resourceKey)
    {
      [*(v6 + 32) setObject:? forKeyedSubscript:?];
    }

    return _objc_release_x2();
  }

  return result;
}

void sub_100085754(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100004490;
    v32 = sub_10000532C;
    v33 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000859F8;
    v19[3] = &unk_100276020;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v27 = *(a1 + 88);
    v18 = *(a1 + 48);
    v13 = *(&v18 + 1);
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v21 = v18;
    v20 = v14;
    v22 = *(a1 + 64);
    v25 = &v28;
    v26 = &v34;
    v23 = *(a1 + 72);
    v15 = v10;
    v24 = v15;
    [v7 enumerateKeysAndObjectsUsingBlock:v19];
    v16 = *(a1 + 80);
    if (*(v35 + 24) == 1)
    {
      v17 = [v15 copy];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
      (*(v16 + 16))(v16, 0, v29[5]);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void sub_1000859D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000859F8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 recordType];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    v11 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if (!v11)
    {
      sub_1001A8FA4(a1, v7);
    }

    v12 = v11;
    v13 = -[CPLCKSplitCopyHelper initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:]([CPLCKSplitCopyHelper alloc], "initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:", 0, v7, 0, *(a1 + 112), [*(a1 + 56) databaseScope], v11, *(a1 + 64));
    v14 = *(*(a1 + 88) + 8);
    obj = *(v14 + 40);
    v15 = [(CPLCKSplitCopyHelper *)v13 copiedRecordFromSourceRecord:v8 action:@"Copy (pseudo sparse record)" error:&obj];
    objc_storeStrong((v14 + 40), obj);
    if (v15)
    {
      [v15 cpl_updatePrivateRecordSharedToRecordWithID:v7 currentUserRecordID:*(a1 + 72) setSparseRecordFlag:1 force:0];
      if ([v8 cpl_isEPPRecord])
      {
        [v15 cpl_markRecordAsEPP];
      }

      [*(a1 + 80) setObject:v15 forKeyedSubscript:v12];
    }

    else
    {
      *(*(*(a1 + 96) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001A8ED0((a1 + 32), v8);
  }
}

void sub_100085EA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [_CPLCloudKitSimpleRecordUpdatePlanner alloc];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v20 = v3;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [v5 controller];
    v11 = [v10 propertyMapping];
    v12 = [*(a1 + 32) fingerprintContext];
    v13 = v7;
    v3 = v20;
    v14 = [(_CPLCloudKitSimpleRecordUpdatePlanner *)v4 initWithTask:v5 scopedIdentifiers:v6 destinationZoneIdentification:v13 sharedZoneIdentification:v8 targetMapping:v9 propertyMapping:v11 fingerprintContext:v12];

    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000860D8;
    v21[3] = &unk_1002760E8;
    v30 = *(a1 + 88);
    v22 = v14;
    v23 = *(a1 + 72);
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v24 = v17;
    v25 = v18;
    v26 = *(a1 + 80);
    v31 = *(a1 + 96);
    v27 = v20;
    v28 = *(a1 + 64);
    v32 = *(a1 + 104);
    v29 = *(a1 + 40);
    v19 = v14;
    [v15 _createSparsePrivateRecordsIfNecessary:v19 recordClass:v16 userRecordID:v27 completionHandler:v21];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

void sub_1000860D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v30 = v5;
  if (v5)
  {
    v29 = v6;
    v8 = [*(a1 + 32) privateRecordIDs];
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v31 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          v14 = *(a1 + 48);
          v15 = [v13 recordName];
          v16 = [v14 scopedIdentifierWithIdentifier:v15];

          v17 = [*(a1 + 40) objectForKeyedSubscript:v16];
          v18 = v17;
          if (!v17)
          {
            goto LABEL_11;
          }

          v19 = [v17 recordChangeData];
          v20 = v19 == 0;

          if (v20)
          {
            goto LABEL_11;
          }

          v21 = [v18 recordChangeData];
          v22 = [CPLArchiver unarchiveObjectWithData:v21 ofClass:objc_opt_class()];

          if (v22)
          {
            [v31 setObject:v22 forKeyedSubscript:v13];
          }

          else
          {
LABEL_11:
            [v9 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v10);
    }

    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = [*(a1 + 48) operationType];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100086558;
    v33[3] = &unk_1002760C0;
    v42 = *(a1 + 96);
    v34 = v30;
    v35 = *(a1 + 40);
    v28 = *(a1 + 48);
    v26 = v28.i64[0];
    v36 = vextq_s8(v28, v28, 8uLL);
    v37 = v31;
    v43 = *(a1 + 104);
    v38 = *(a1 + 32);
    v39 = *(a1 + 72);
    v40 = *(a1 + 80);
    v44 = *(a1 + 112);
    v41 = *(a1 + 88);
    v27 = v31;
    [v23 fetchRecordsWithIDs:v9 fetchResources:0 desiredKeys:v24 wantsAllRecords:0 type:v25 completionHandler:v33];

    v7 = v29;
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

void sub_10008651C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100086528);
  }

  _Unwind_Resume(a1);
}

void sub_100086544(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x100086550);
}

void sub_100086558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count") + objc_msgSend(v3, "count") + objc_msgSend(*(a1 + 40), "count")}];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000867DC;
    v20[3] = &unk_100276070;
    v5 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = *(a1 + 32);
    v23 = v3;
    v6 = *(a1 + 64);
    v27 = *(a1 + 112);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v24 = v11;
    v25 = v10;
    v28 = *(a1 + 120);
    v26 = v4;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086958;
    v15[3] = &unk_100276098;
    v12 = *(a1 + 96);
    v19 = *(a1 + 104);
    v13 = *(a1 + 56);
    v15[4] = *(a1 + 48);
    v16 = v26;
    v17 = v13;
    v18 = *(a1 + 72);
    v14 = v26;
    [v5 executeSynchronousWork:v20 onItems:v12 description:@"Preparing record updates" completionHandler:v15];
  }

  else
  {
    (*(*(a1 + 104) + 16))();
  }
}

uint64_t sub_1000867DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  v8 = [v6 recordIDWithRecordName:v7];

  v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
  if (v9 || ([*(a1 + 48) objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
  }

  else
  {
    v10 = [*(a1 + 56) objectForKeyedSubscript:v8];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (!(*(*(a1 + 96) + 16))())
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:v10 scopeProvider:*(a1 + 64) currentUserRecordID:*(a1 + 72) targetMapping:*(a1 + 80)];
  v12 = *(a1 + 104);
  v18 = 0;
  v13 = (*(v12 + 16))();
  v14 = v18;
  if (v13)
  {
    [*(a1 + 88) addObject:v10];

LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

  if (a3)
  {
    v15 = v14;
    v16 = 0;
    *a3 = v14;
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  return v16;
}

void sub_100086958(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) cloudKitScope];
    [v5 uploadRecords:v6 cloudKitScope:v7 scopeProvider:*(a1 + 56) completionHandler:*(a1 + 64)];
  }
}

void sub_100086C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100086D3C;
    v6[3] = &unk_100275670;
    v7 = v3;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
    [*(a1 + 48) uploadRecords:*(a1 + 32) cloudKitScope:*(a1 + 56) scopeProvider:0 completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100086D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [v7 setKnownToServer:1];
    v6 = [v5 etag];
    [v7 setEtag:v6];
  }
}

void sub_100086F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100087034;
  v8[3] = &unk_100274E78;
  v8[4] = v6;
  v9 = v5;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100087034(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = *(a1 + 56);
  v5 = v2;
  if (v2)
  {
    v4 = [*(a1 + 32) _errorForUpdateError:v2 scopeProvider:*(a1 + 48)];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

void sub_1000878D8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.recordupdate");
  v3 = qword_1002C5528;
  qword_1002C5528 = v2;
}

void sub_100087B94(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    objc_storeStrong((v5 + 280), a2);
    [*(a1 + 32) _getTemporaryFolder];
  }

  else
  {
    (*(*(v5 + 288) + 16))();
  }
}

id sub_100087C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _uploadComputeStatesWithTemporaryFolderURL:a2];
  }

  else
  {
    return (*(v2[36] + 16))();
  }
}

uint64_t sub_1000881D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 etag];

  if (v7)
  {
    v8 = [*(*(a1 + 32) + 320) objectForKeyedSubscript:v5];
    v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v10 = [CPLRecordComputeStateVersion alloc];
    v11 = [v9 version];
    v12 = [v10 initWithString:v11];

    v13 = [CPLRecordComputeStateVersion alloc];
    v14 = [v8 computeStateVersion];
    if (v14)
    {
      v15 = [v13 initWithString:v14];
    }

    else
    {
      v17 = [v6 objectForKeyedSubscript:@"computeStateVersion"];
      v15 = [v13 initWithString:v17];
    }

    v18 = [v9 adjustmentFingerprint];
    v19 = [v8 computeStateAdjustmentFingerprint];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [v6 cpl_decryptedObjectForKey:@"computeStateAdjustmentFingerprintEnc" validateClass:objc_opt_class()];
    }

    v22 = v21;

    v23 = [v12 compare:v15];
    if (v23 == -1)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_26;
      }

      v24 = sub_1000039EC();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412802;
        v30 = v9;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v15;
        v25 = "[CCSS] Dropping compute state %@ because %@(local) < %@(cloud)";
        v26 = v24;
        v27 = 32;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v29, v27);
      }
    }

    else
    {
      if (v23)
      {
        if (v23 == 1)
        {
LABEL_12:
          v16 = 1;
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (v18 && v22)
      {
        if (([v18 isEqual:v22] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v18 | v22)
      {
        goto LABEL_12;
      }

      if (_CPLSilentLogging)
      {
LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v24 = sub_1000039EC();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138413314;
        v30 = v9;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v22;
        v25 = "[CCSS] Dropping compute state %@ because %@(local) == %@(cloud) and %@(local) == %@(cloud)";
        v26 = v24;
        v27 = 52;
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  v16 = 1;
LABEL_28:

  return v16;
}

id sub_100088508(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v9 = [v8 fileURL];
  v10 = *(a1 + 40);
  v11 = [v6 safeFilename];
  v12 = [v9 lastPathComponent];
  v13 = [NSString stringWithFormat:@"%@:%@%@", v11, v12, @".photoscomputestate"];
  v14 = [v10 URLByAppendingPathComponent:v13 isDirectory:0];

  v15 = *(*(a1 + 48) + 280);
  v35 = 0;
  v16 = [v15 encryptFileAtURL:v9 outputFileURL:v14 error:&v35];
  v34 = v35;
  if (v16)
  {
    v17 = [[CKAsset alloc] initWithFileURL:v14];
    [v17 setItemTypeHint:@"fxd"];
    [v7 setCKAsset:v17 forKey:@"resComputeStateData"];
    v33 = [v8 version];
    [v7 setObject:v33 forKey:@"computeStateVersion"];
    v18 = [v8 adjustmentFingerprint];
    [v7 setEncryptedObject:v18 forKey:@"computeStateAdjustmentFingerprintEnc" validateClass:objc_opt_class()];
    [v8 lastUpdatedDate];
    v19 = v14;
    v20 = v9;
    v21 = v6;
    v23 = v22 = v16;
    [v7 setEncryptedObject:v23 forKey:@"computeStateLastUpdatedDateEnc" validateClass:objc_opt_class()];
    [*(a1 + 56) addObject:v8];

    v16 = v22;
    v6 = v21;
    v9 = v20;
    v14 = v19;
    v24 = v34;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = sub_1000039EC();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v9 path];
        v27 = [v14 path];
        *buf = 138413058;
        v37 = v6;
        v38 = 2112;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v34;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[CCSS] Failed to encrypt compute state %@ from %@ to %@: %@", buf, 0x2Au);
      }
    }

    v28 = [v9 path];
    v29 = [v14 path];
    v24 = v34;
    v17 = [CPLErrors cplErrorWithCode:70 underlyingError:v34 description:@"Failed to encrypt compute state %@ from %@ to %@", v6, v28, v29];

    if (a4)
    {
      v30 = v17;
      *a4 = v17;
    }
  }

  return v16;
}

void sub_1000889BC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.uploadcomputestates");
  v3 = qword_1002C5538;
  qword_1002C5538 = v2;
}

void sub_100088D84(id a1)
{
  v1 = [CKRecordZoneID alloc];
  v2 = [v1 initWithZoneName:CPLPrimaryScopeIdentifier ownerName:CKCurrentUserDefaultName databaseScope:2];
  v3 = qword_1002C5540;
  qword_1002C5540 = v2;
}

uint64_t CPLCKAvailabilityRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10008C178()
{
  if (qword_1002C5578 != -1)
  {
    sub_1001A9640();
  }

  v1 = qword_1002C5570;

  return v1;
}

void sub_10008E170(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:6];
  v2 = qword_1002C5550;
  qword_1002C5550 = v1;
}

void sub_10008E284(id a1)
{
  v1 = [[CPLCloudKitDefaultZoneManager alloc] init];
  v2 = qword_1002C5560;
  qword_1002C5560 = v1;
}

void sub_10008F028(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = qword_1002C5570;
  qword_1002C5570 = v3;
}

id sub_10008F0A4(id a1)
{

  return a1;
}

void sub_10008F380(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    objc_storeStrong((v5 + 280), a2);
    [*(a1 + 32) _downloadComputeStates];
  }

  else
  {
    (*(*(v5 + 288) + 16))();
  }
}

void sub_10008F52C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008F5BC;
  v2[3] = &unk_1002723C8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 dispatchAsync:v2];
}

void sub_10008F5BC(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackOperationDidFinishWithError:0];
  (*(*(a1 + 40) + 16))();
}

void sub_10008FC54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008FD90;
  v11[3] = &unk_1002762C0;
  v20 = *(a1 + 80);
  v7 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  v21 = *(a1 + 88);
  v8 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v6;
  v16 = v8;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v9 = v6;
  v10 = v5;
  [v7 dispatchSynchronousWork:v11];
}

void sub_10008FD90(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(*(*(a1 + 96) + 8) + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v4)
  {
    sub_1001A9E38(a1, v2);
  }

  v5 = v4;
  if (!v3)
  {
    if (sub_1001A9B84(a1, buf))
    {
      v6 = buf[0];
      goto LABEL_4;
    }

    sub_1001A9AF0();
  }

  v6 = 0;
LABEL_4:
  v7 = [*(a1 + 56) objectForKeyedSubscript:@"resComputeStateData"];
  v8 = v7;
  if (v6 && !v7)
  {
    sub_1001A9D94();
    goto LABEL_17;
  }

  if ((v6 & 1) == 0)
  {
LABEL_17:
    dispatch_group_leave(*(a1 + 64));
    goto LABEL_18;
  }

  v9 = [v7 fileURL];
  if (v9)
  {
    [*(a1 + 72) setObject:v9 forKeyedSubscript:v5];
    if (!*(*(*(a1 + 96) + 8) + 40))
    {
      v10 = [v5 scopeIdentifier];
      v11 = [*(a1 + 48) controller];
      v12 = [v11 mainScopeIdentifier];
      v13 = [v10 isEqualToString:v12];

      if (v13)
      {
        v14 = [v5 identifier];
        v15 = [v14 mutableCopy];

        [v15 replaceOccurrencesOfString:@"/" withString:@":" options:0 range:{0, objc_msgSend(v15, "length")}];
      }

      else
      {
        v15 = [v5 safeFilename];
      }

      v20 = [NSString alloc];
      v21 = +[NSUUID UUID];
      v22 = [v20 initWithFormat:@"%@:%@.photoscomputestate", v15, v21];

      v19 = [*(*(a1 + 48) + 320) URLByAppendingPathComponent:v22 isDirectory:0];
      [*(a1 + 80) addObject:v19];
      v23 = *(*(a1 + 48) + 280);
      v24 = *(*(a1 + 96) + 8);
      obj = *(v24 + 40);
      v25 = [v23 decryptFileAtURL:v9 outputFileURL:v19 error:&obj];
      objc_storeStrong((v24 + 40), obj);
      if (v25)
      {
        goto LABEL_33;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = sub_100003A30();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v9 path];
          v28 = [v19 path];
          v29 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 138413058;
          v47 = v5;
          v48 = 2112;
          v49 = v27;
          v50 = 2112;
          v51 = v28;
          v52 = 2112;
          v53 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[CCSS] Failed to decrypt downloaded compute state %@ from %@ to %@: %@", buf, 0x2Au);
        }
      }

      v30 = [*(*(*(a1 + 96) + 8) + 40) domain];
      v31 = [v30 isEqualToString:@"CPLComputeStateEncryptionError"];

      if (!v31)
      {
        goto LABEL_33;
      }

      v32 = [*(*(*(a1 + 96) + 8) + 40) code];
      if (v32 == 1)
      {
        v36 = *(*(*(a1 + 96) + 8) + 40);
        v35 = [v9 path];
        v34 = [v19 path];
        v37 = [CPLErrors cplErrorWithCode:70 underlyingError:v36 description:@"Failed to decrypt downloaded compute state %@ from %@ to %@", v5, v35, v34];
        v38 = *(*(a1 + 96) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = v37;
      }

      else
      {
        if (v32 != 3)
        {
LABEL_33:

          if (!*(*(*(a1 + 96) + 8) + 40) && v19)
          {
            v40 = [*(a1 + 56) cpl_decryptedObjectForKey:@"computeStateAdjustmentFingerprintEnc" validateClass:objc_opt_class()];
            v41 = [*(a1 + 56) cpl_decryptedObjectForKey:@"computeStateLastUpdatedDateEnc" validateClass:objc_opt_class()];
            v42 = [CPLRecordComputeState alloc];
            v43 = [*(a1 + 56) objectForKeyedSubscript:@"computeStateVersion"];
            v44 = [v42 initWithItemScopedIdentifier:v5 fileStorageIdentifier:0 version:v43 fileURL:v19 adjustmentFingerprint:v40 lastUpdatedDate:v41];

            [*(a1 + 88) setObject:v44 forKeyedSubscript:v5];
          }

          goto LABEL_15;
        }

        v33 = *(*(a1 + 96) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = 0;
        v35 = v19;
        v19 = 0;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001A9C00(v5);
    }

    v16 = +[CPLErrors unknownError];
    v17 = *(*(a1 + 96) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 96) + 8) + 40))
    {
      sub_1001A9CB8(v5, a1);
    }
  }

  v19 = 0;
LABEL_15:
  dispatch_group_leave(*(a1 + 64));

LABEL_18:
}

void sub_100090314(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009042C;
  v13[3] = &unk_100276338;
  v14 = v6;
  v15 = v7;
  v10 = *(a1 + 72);
  v16 = v9;
  v20 = v10;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v11 = v7;
  v12 = v6;
  [v9 _group:v8 dispatchWhenFinished:v13];
}

void sub_10009042C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v4 = *(*(a1 + 48) + 288);
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      (*(v4 + 16))(v4, 0);
    }

    else
    {
      v5 = [*(a1 + 56) copy];
      (*(v4 + 16))(v4, v5, 0);
    }
  }

  else
  {
    v3 = *(*(a1 + 48) + 288);
    (*(*(*(a1 + 48) + 288) + 16))();
  }

  v6 = +[NSFileManager defaultManager];
  v7 = *(a1 + 64);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001A99AC;
  v28[3] = &unk_100276310;
  v8 = v6;
  v29 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v28];
  if (!*(a1 + 32) || *(*(*(a1 + 80) + 8) + 40))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = *(a1 + 72);
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v25;
      *&v11 = 138412546;
      v22 = v11;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ((_CPLSilentLogging & 1) == 0)
          {
            v16 = sub_100003A30();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v15 path];
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[CCSS] Removing discarded decrypted payload at %@", buf, 0xCu);
            }
          }

          v23 = 0;
          v18 = [v8 removeItemAtURL:v15 error:{&v23, v22}];
          v19 = v23;
          if ((v18 & 1) == 0 && ([v8 cplIsFileDoesNotExistError:v19] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
          {
            v20 = sub_100003A30();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v15 path];
              *buf = v22;
              v31 = v21;
              v32 = 2112;
              v33 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[CCSS] Failed to delete discarded decrypted at %@: %@", buf, 0x16u);
            }
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v12);
    }
  }
}

void sub_100090878(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.downloadcomputestates");
  v3 = qword_1002C5588;
  qword_1002C5588 = v2;
}

void sub_100090988(id a1)
{
  v1 = [[NSRegularExpression alloc] initWithPattern:@"0x[0-9a-fA-F]*" options:0 error:0];
  v2 = qword_1002C5598;
  qword_1002C5598 = v1;
}

void sub_1000910FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091120(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002C55A0 = [v1 BOOLForKey:@"CPLSimulateRejection"];

  v2 = +[NSUserDefaults standardUserDefaults];
  byte_1002C55A1 = [v2 BOOLForKey:@"CPLSimulateOverQuota"];
}

void sub_1000911A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained && ([v3 isCPLErrorWithCode:18] & 1) == 0)
  {
    v6 = [NSMutableDictionary alloc];
    v7 = [v5 batch];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = [NSString alloc];
    v10 = [v3 localizedDescription];
    v11 = [v9 initWithFormat:@"record is rejected because of upload error (%@)", v10];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_100003A74();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 batch];
        v14 = [v13 summaryDescription];
        *buf = 138412546;
        v31 = v14;
        v32 = 2112;
        v33 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Replacing error uploading %@ with rejection error: %@", buf, 0x16u);
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v5 batch];
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * i) scopedIdentifier];
          [v8 setObject:v11 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v17);
    }

    v27 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v28 = v8;
    v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v21 description:@"Some records are rejected for testing purpose"];

    v3 = v22;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1000914F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _runModernOperationsWithCurrentUserID:a2];
  }

  else
  {
    return (*(v2[34] + 16))();
  }
}

void sub_100092160(uint64_t a1, void *a2)
{
  v6 = a2;
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) didFinishExecutingPlanWithError:v6];
  [*(a1 + 32) uploadedSize];
  v4 = v3;
  [*(a1 + 40) setUploadedSize:v3];
  if (v4 > 102400.0)
  {
    [*(a1 + 32) totalDurationOfUpload];
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    *(*(a1 + 48) + 320) = fmin(v4 / v5, 1073741820.0);
  }

  [*(a1 + 40) setError:v6];
  [*(a1 + 40) end];
}

id sub_100092330(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _fetchSharedRecordsFromPlanner:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

void sub_100092528(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000044B0;
    v19 = sub_10000533C;
    v20 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000926E4;
    v11[3] = &unk_1002763E8;
    v13 = &v21;
    v12 = *(a1 + 32);
    v14 = &v15;
    [v7 enumerateKeysAndObjectsUsingBlock:v11];
    if (v22[3])
    {
      [*(a1 + 40) _uploadBatchFromPlanner:*(a1 + 32) completionHandler:*(a1 + 48)];
    }

    else
    {
      v10 = v16[5];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000926C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000926E4(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v14 = 0;
  v10 = [v9 didFetchSharedCKRecord:v8 forRecordWithRecordID:v7 error:&v14];
  v11 = v14;
  v12 = v14;
  *(*(a1[5] + 8) + 24) = v10;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100003A74();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = v8;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Planner failed to ingest fetched shared record %@ for %@: %@", buf, 0x20u);
      }
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v11);
    *a4 = 1;
  }
}

void sub_100092A1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000044B0;
    v19 = sub_10000533C;
    v20 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100092BD8;
    v11[3] = &unk_1002763E8;
    v13 = &v21;
    v12 = *(a1 + 32);
    v14 = &v15;
    [v7 enumerateKeysAndObjectsUsingBlock:v11];
    if (v22[3])
    {
      [*(a1 + 40) _uploadSharedBatchFromPlanner:*(a1 + 32) completionHandler:*(a1 + 48)];
    }

    else
    {
      v10 = v16[5];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100092BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100092BD8(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v14 = 0;
  v10 = [v9 didFetchPrivateCKRecord:v8 forRecordWithRecordID:v7 error:&v14];
  v11 = v14;
  v12 = v14;
  *(*(a1[5] + 8) + 24) = v10;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100003A74();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = v8;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Planner failed to ingest fetched private record %@ for %@: %@", buf, 0x20u);
      }
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v11);
    *a4 = 1;
  }
}

void sub_1000930E8(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  [*(a1 + 40) didModifyRecordWithID:v2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000931E0;
  v6[3] = &unk_1002721A0;
  v3 = *(a1 + 48);
  v7 = *(a1 + 56);
  v4 = v2;
  v8 = v4;
  v9 = *(a1 + 64);
  [v3 updateContextWithBlock:v6];
  v5 = *(a1 + 72);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 1.0);
  }
}

void sub_1000931F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000932A0;
  v6[3] = &unk_1002720E0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_1000932AC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100093384;
  v9[3] = &unk_100274D88;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v14 = a3;
  v13 = *(a1 + 48);
  v8 = v5;
  [v7 dispatchAsync:v9];
}

void sub_100093384(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100093464;
  v6[3] = &unk_1002733C8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  v4 = v2;
  v8 = v4;
  [v3 updateContextWithBlock:v6];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, *(a1 + 64));
  }
}

void sub_100093474(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000935BC;
  v16[3] = &unk_1002764B0;
  v16[4] = v10;
  v17 = v9;
  v18 = *(a1 + 40);
  v19 = v7;
  v20 = *(a1 + 48);
  v21 = v8;
  v22 = *(a1 + 56);
  v15 = *(a1 + 64);
  v11 = v15;
  v23 = v15;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  [v10 dispatchAsync:v16];
}

void sub_1000935BC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000939C8;
    v21[3] = &unk_100276488;
    v22 = *(a1 + 48);
    v23 = *(a1 + 64);
    v4 = *(a1 + 80);
    v5 = [*(a1 + 32) lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitUploadError:v3 getDestinationRecordIDs:v21 scopeProvider:v4 withRequestUUIDs:v5 uploadAction:@"upload"];

    if (!v6)
    {
      sub_1001AA578(a1, v2, v3);
    }

    if (([v6 isCPLOperationCancelledError] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_100003A74();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to upload batch: %@", buf, 0xCu);
        }
      }

      if ([v6 isCPLErrorWithCode:18] && (_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_100003A74();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*v2 + 344);
          *buf = 138412290;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejected high level batch:\n%@", buf, 0xCu);
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = sub_100003A74();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v6 userInfo];
            v12 = [v11 objectForKeyedSubscript:CPLErrorRejectedRecordIdentifiersAndReasonsKey];
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Rejected scoped identifiers:\n%@", buf, 0xCu);
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v13 = sub_100003A74();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 48);
              v15 = *(a1 + 64);
              *buf = 138412546;
              v25 = v14;
              v26 = 2112;
              v27 = v15;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejected CK updates: %@\nDeletes: %@", buf, 0x16u);
            }
          }
        }
      }
    }

    v16 = v22;
LABEL_28:

    goto LABEL_29;
  }

  v17 = [*(a1 + 48) count];
  if (v17 != [*(a1 + 56) count])
  {
    sub_1001AA654((a1 + 48), (a1 + 56));
  }

  v18 = [*(a1 + 64) count];
  if (v18 != [*(a1 + 72) count] && (_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_100003A74();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      *buf = 138412546;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Requested deletions: %@. Deleted records by CloudKit: %@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_28;
  }

  v6 = 0;
LABEL_29:
  (*(*(a1 + 88) + 16))();
}

id sub_1000939C8(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count") + objc_msgSend(*(a1 + 40), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) recordID];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v2 addObjectsFromArray:*(a1 + 40)];

  return v2;
}

void sub_100093D44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1001AA134(1);
  (*(v1 + 16))(v1, v2);
}

id sub_100093DA4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) uploadOfRecordID:a2 didProgress:?];
  v3 = *(a1 + 40);
  [*(a1 + 32) planProgess];

  return [v3 updateProgress:?];
}

void sub_100093DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) didFinishUploadOfRecordsWithError:v3];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) updateTargetMappingAfterUpload];
    [*(a1 + 40) _fetchPrivateRecordsFromPlanner:*(a1 + 32) completionHandler:*(a1 + 48)];
  }
}

id sub_100094084(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) uploadOfSharedRecordID:a2 didProgress:?];
  v3 = *(a1 + 40);
  [*(a1 + 32) planProgess];

  return [v3 updateProgress:?];
}

void sub_1000940CC(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) didFinishUploadOfSharedRecordsWithError:v5];
  if (v5)
  {
    v3 = *(a1 + 48);
    v4 = [CPLErrors cplErrorCausedBySharedSyncForError:v5];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    [*(a1 + 40) _executeSharePlanFromPlanner:*(a1 + 32) completionHandler:*(a1 + 48)];
  }
}

void sub_100094360(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = *(a1 + 40);
    v6 = [CPLErrors cplErrorCausedBySharedSyncForError:a3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    [*(a1 + 32) didFinishUploadOfRecordsWithError:0];
    [*(a1 + 32) updateTargetMappingAfterUploadWithRealSourceRecordIDs:v7];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10009460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  else
  {
    [*(a1 + 32) updateTargetMappingAfterUploadWithRealSourceRecordIDs:a2];
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

void sub_100094B64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100094C1C;
  v8[3] = &unk_1002721A0;
  v8[4] = v6;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100094C1C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100094D44;
    v7[3] = &unk_100273B78;
    v8 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = [v4 lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitUploadError:v3 getDestinationRecordIDs:v7 scopeProvider:v4 withRequestUUIDs:v5 uploadAction:@"update contributors"];

    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    sub_1001AA828(a1, v2);
  }
}

id sub_100094D44(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) recordID];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100095084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009509C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 sharingRecordChangeData];
    if (v11)
    {
      v12 = [CPLArchiver unarchiveObjectWithData:v11 ofClass:objc_opt_class()];
      v13 = v12;
      if (v12)
      {
        v14 = *(a1 + 40);
        v15 = [v12 recordID];
        v16 = [v14 objectForKeyedSubscript:v15];

        v17 = [v8 updateSharingContributorUserIdentifiers];
        if (v16)
        {
          [v16 cpl_updateContributorsOnSharedRecord:v17];
        }

        else
        {
          [v13 cpl_updateContributorsOnSharedRecord:v17];
          v21 = *(a1 + 40);
          v22 = [v13 recordID];
          [v21 setObject:v13 forKeyedSubscript:v22];

          v23 = *(a1 + 48);
          v24 = [v13 recordID];
          [v23 setObject:v7 forKeyedSubscript:v24];
        }
      }

      else
      {
        sub_1001AA910();
        v18 = +[CPLErrors unknownError];
        v19 = *(*(a1 + 56) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        *a4 = 1;
      }
    }

    else
    {
      sub_1001AAA44(v7, 0, buf);
      v11 = *buf;
    }

LABEL_14:

    goto LABEL_15;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100003A74();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Won't update contributors for %@ as the record is not in the cloud", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void sub_1000952FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _BYTE *a10, void *a11)
{
  if (a2)
  {
    if (a2 == 2)
    {
      sub_1001AA984(exception_object, &a11);
      v12 = a11;
      v13 = +[CPLErrors unknownError];
      v14 = *(*(v11 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a10 = 1;
      objc_end_catch();
      JUMPOUT(0x1000952B0);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000956C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(v4[34] + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 40);
    v10 = 0;
    v7 = [v4 _computeUpdatedSharedCKRecordsFromFoundRecord:a2 usingUpdates:v6 error:&v10];
    v8 = v10;
    v9 = *(a1 + 32);
    if (v7)
    {
      [v9 _updateCKRecordsInSharedScope:v7];
    }

    else
    {
      (*(v9[34] + 16))();
    }
  }
}

void sub_100095D48(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.uploadbatch");
  v3 = qword_1002C55B8;
  qword_1002C55B8 = v2;
}

void sub_10009615C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (![*(a1 + 32) allowsFetchCache] || (objc_msgSend(*(a1 + 32), "fetchCache"), v4 = objc_claimAutoreleasedReturnValue(), v5 = *(*(a1 + 40) + 32), v4, v4 != v5))
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10009624C;
      v6[3] = &unk_100275670;
      v6[4] = *(a1 + 40);
      [v3 enumerateKeysAndObjectsUsingBlock:v6];
    }

    [*(a1 + 40) _fetchRecordsForNextOperationTypeInEnumerator:*(a1 + 48) task:*(a1 + 32) completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100096330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v5 = *(a1 + 32);
    v9 = 0;
    v6 = [v5 processedFetchedRequestedRecordsWithError:&v9];
    v7 = v9;
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      v4 = v7;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100096B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100096B6C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) resourceForType:a2];

  if (v4)
  {
    v5 = sub_100084A0C(CPLCloudKitResourceKeys, a2);
    if (v5)
    {
      v20 = v5;
      v6 = [CPLResource resourceTypeSupportsResourceExpunge:a2];
      v5 = v20;
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = sub_1001A8CC8(v20);
        v9 = [v7 objectForKey:v8];

        v10 = *(a1 + 40);
        v11 = sub_1001A8CD4(v20);
        v12 = [v10 objectForKey:v11];

        v13 = objc_alloc_init(CPLExpungeableResourceState);
        [v13 setResourceType:a2];
        if (v9)
        {
          v14 = [v9 unsignedIntegerValue];
        }

        else
        {
          v14 = 0;
        }

        [v13 setExpungedState:v14];
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }

        [v13 setExpungedDate:v15];
        v16 = *(*(*(a1 + 48) + 8) + 40);
        if (!v16)
        {
          v17 = +[NSMutableArray array];
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          v16 = *(*(*(a1 + 48) + 8) + 40);
        }

        [v16 addObject:v13];

        v5 = v20;
      }
    }
  }
}

id sub_10009712C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = +[NSDate date];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    [v2 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = round(v7) + 1.0;
    v9 = arc4random_uniform(0x3Bu);
    if (v8 + v9 <= v5 || v7 >= v5)
    {
      v5 = v8 + v9;
    }

    v11 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000972A8(id a1)
{
  v1 = [NSSet setWithArray:&off_100291458];
  v2 = qword_1002C55C8;
  qword_1002C55C8 = v1;
}

void sub_1000974CC(id a1)
{
  v1 = [NSSet setWithObject:@"resFaceCropRes"];
  v2 = qword_1002C55D8;
  qword_1002C55D8 = v1;
}

void sub_1000976A0(id a1)
{
  v1 = [NSSet setWithObject:@"resCustomUserAssetList"];
  v2 = qword_1002C55E8;
  qword_1002C55E8 = v1;
}

void sub_100097DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097E1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 isCPLErrorWithCode:2002])
  {
    CPLDisableCloudKitUseGateKeeper();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100097EBC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = *(*(a1 + 48) + 8);
  if ((*(v14 + 24) & 1) == 0)
  {
    *(v14 + 24) = 1;
    if (v12)
    {
      v15 = *(a1 + 40);
      v16 = [CPLErrors cplErrorWithCode:80 description:@"Failed to publish asset. Error: %@", v12];
      (*(v15 + 16))(v15, 0, 0, 0, 0, v16);
    }

    else
    {
      v28 = [v11 downloadURL];
      v17 = [v11 downloadURLExpiration];
      v18 = [v11 mediaItemMaker];
      if (v18)
      {
        v19 = [v11 mediaItemMaker];
        v29 = 0;
        v20 = [v19 dataRepresentationWithError:&v29];
        v27 = v29;

        if (!v20)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = sub_100003AB8();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [*(a1 + 32) recordID];
              v23 = [*(a1 + 32) filename];
              *buf = 138412802;
              v31 = v22;
              v32 = 2112;
              v33 = v23;
              v34 = 2112;
              v35 = v27;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to serialize media item maker for %@/%@: %@", buf, 0x20u);
            }
          }

          v20 = 0;
        }

        v24 = v27;
      }

      else
      {
        v20 = 0;
        v24 = 0;
      }

      v25 = *(a1 + 40);
      v26 = [*(a1 + 32) fingerPrint];
      (*(v25 + 16))(v25, v28, v20, v17, v26, 0);
    }
  }
}

void sub_10009814C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    v5 = *(a1 + 32);
    v8 = v3;
    if (v3)
    {
      [CPLErrors cplErrorWithCode:80 description:@"Failed to publish asset. Error: %@", v3];
    }

    else
    {
      [CPLErrors cplErrorWithCode:150 description:@"Failed to publish asset with no error", v7];
    }
    v6 = ;
    (*(v5 + 16))(v5, 0, 0, 0, 0, v6);

    v3 = v8;
  }
}

id sub_1000982E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return (*(v2[38] + 16))();
  }

  else
  {
    return [v2 _fetchStreamingURL];
  }
}

void sub_100098900(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100098A50;
  v22[3] = &unk_1002767B0;
  v22[4] = v16;
  v23 = v15;
  v24 = v11;
  v25 = v13;
  v26 = v12;
  v27 = *(a1 + 40);
  v28 = v14;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  v20 = v11;
  v21 = v15;
  [v16 dispatchAsync:v22];
}

void sub_100098A50(uint64_t a1)
{
  v14 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v14)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    v3 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [*(*(a1 + 32) + 280) resourceType]);
    v4 = [CPLCloudKitErrors CPLErrorForCloudKitError:v14 withRequestUUIDs:v2 description:@"Failed to get streaming url for %@", v3];
LABEL_3:

    goto LABEL_8;
  }

  if (*(a1 + 48) && *(a1 + 56))
  {
    v2 = objc_opt_new();
    [v2 setStreamingURL:*(a1 + 48)];
    [v2 setMediaItemMakerData:*(a1 + 64)];
    v5 = *(*(a1 + 32) + 296);
    v6 = *(a1 + 72);
    v7 = *(a1 + 56);
    v3 = +[NSDate date];
    [v5 setObject:v2 forKey:v6 expirationDate:v7 date:v3];
    v4 = 0;
    goto LABEL_3;
  }

  v4 = 0;
LABEL_8:
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  (*(*(*(a1 + 32) + 304) + 16))();
  v12 = *(a1 + 32);
  v13 = *(v12 + 304);
  *(v12 + 304) = 0;
}

void sub_100099080(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.resourcepublish");
  v3 = qword_1002C55F8;
  qword_1002C55F8 = v2;
}

uint64_t sub_1000990C0(uint64_t a1)
{
  *v1 = a1;
  v3 = *(v2 + 16);
  return v2;
}

void sub_1000990E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100099274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3[34] + 16))();
  }

  else
  {
    return [v3 _runOperationsWithCurrentUserID:a2];
  }
}

id sub_100099458(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [a1[5] scopeForScopeIdentifier:v3];
    v6 = [a1[6] cloudKitScopeForScopeIdentifier:v3];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v9 = [a1[6] controller];
      v4 = [v9 zoneIdentificationForCloudKitScope:v7 engineScope:v5];

      [a1[4] setObject:v4 forKeyedSubscript:v3];
    }
  }

  return v4;
}

void sub_10009953C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 scopedIdentifier];
  v9 = [v7 scopeIdentifier];

  v8 = (*(*(a1 + 40) + 16))();
  [v8 finalizeRecord:v6 fromCKRecord:v5 currentUserID:*(a1 + 32)];
}

uint64_t sub_1000A1028(uint64_t result)
{
  if (!result)
  {
    return v1;
  }

  return result;
}

void sub_1000A1044(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000A1064(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000A19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000A19FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 domain];
  v10 = [v9 isEqual:CKErrorDomain];

  if (v10)
  {
    if ([v8 code] == 22)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 64);
    if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 72) _isCKErrorForRejectedRecord:v8])
    {
      v12 = *(a1 + 32);
      v13 = [v7 zoneID];
      v14 = [v12 scopeIdentifierFromZoneID:v13];

      if (v14)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;
        }

        v18 = [*(a1 + 32) rejectedScopedIdentifierForRejectedCKRecordID:v7];
        v19 = v18;
        if (v18)
        {
          v20 = *(a1 + 72);
          v21 = [v18 identifier];
          v22 = [v20 _rejectionReasonFromPartialError:v8 identifier:v21];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:v19];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v23 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v27 = 138543362;
            v28 = v7;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to find a scoped identifier for %{public}@", &v27, 0xCu);
          }
        }
      }
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v24 = [*(a1 + 72) _betterErrorForRecordId:v7 recordError:v8];
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    *a4 = 1;
  }

LABEL_18:
}

void sub_1000A3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_1000A31C8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 56) getCloudKitErrorCode:*(*(a1 + 32) + 8) + 24 internalCode:*(*(a1 + 40) + 8) + 24 fromError:a3];
  if (result)
  {
    if (*(*(*(a1 + 32) + 8) + 24) != 22)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

void sub_1000A33F8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001AC94C(a1, (a1 + 48));
  }

  v7 = [*(a1 + 32) domain];
  if (![v7 isEqualToString:CKErrorDomain])
  {

    goto LABEL_6;
  }

  v8 = [*(a1 + 32) code];

  if (v8 != 22)
  {
LABEL_6:
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
  }
}

void sub_1000A3704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A3720(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) domain];
  if (![v7 isEqualToString:CKErrorDomain])
  {

    goto LABEL_5;
  }

  v8 = [*(a1 + 32) code];

  if (v8 != 22)
  {
LABEL_5:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1000A3C34(uint64_t a1, void *a2, void *a3, void *a4, int a5, unint64_t a6, void *a7, int a8, double a9, double a10)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  if (a1)
  {
    v22 = sub_1001A8CA4(*(a1 + 8));
    [v18 setObject:v19 forKey:v22];

    if ([*(a1 + 24) shouldUseEncryptedPropertiesIfPossible])
    {
      if (a5)
      {
        v23 = sub_1001A8CB0(*(a1 + 8));
        [v18 setEncryptedObject:v20 forKey:v23 validateClass:objc_opt_class()];
      }

      v82 = 0;
      v83 = &v82;
      v84 = 0x3032000000;
      v85 = sub_1000044E0;
      v86 = sub_100005354;
      v87 = 0;
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_1000A45AC;
      v81[3] = &unk_100276980;
      v81[4] = &v82;
      v24 = objc_retainBlock(v81);
      if (v20 && (a5 & 1) == 0)
      {
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000A4630;
        v78[3] = &unk_100272028;
        v80 = &v82;
        v79 = v20;
        (v24[2])(v24, v78);
      }

      if ((qword_1002C00A8 & 1) == 0)
      {
        v25 = [NSNumber numberWithUnsignedInteger:a6];
        v26 = sub_100194228(*(a1 + 8));
        [v18 setObject:v25 forKey:v26];

        goto LABEL_28;
      }

      if (!a6)
      {
        v36 = 0;
        goto LABEL_26;
      }

      if (a6 < 0x401)
      {
        v36 = 1024;
        goto LABEL_26;
      }

      if (a6 >> 11 < 5)
      {
        v36 = 10240;
        goto LABEL_26;
      }

      if (a6 >= 0x19000)
      {
        if (a6 >> 20)
        {
          v36 = (a6 + 0xFFFFF) & 0xFFFFFFFFFFF00000;
LABEL_26:
          v40 = [NSNumber numberWithUnsignedInteger:v36];
          v41 = sub_100194228(*(a1 + 8));
          [v18 setObject:v40 forKey:v41];

          if (v36 != a6)
          {
            v77[0] = _NSConcreteStackBlock;
            v77[1] = 3221225472;
            v77[2] = sub_1000A4640;
            v77[3] = &unk_100273540;
            v77[4] = &v82;
            v77[5] = a6;
            (v24[2])(v24, v77);
          }

LABEL_28:
          if ((qword_1002C00A8 & 2) != 0)
          {
            v46 = a9;
            v47 = a10;
            if (a9 != 0.0)
            {
              v46 = a9;
              v47 = a10;
              if (a10 != 0.0)
              {
                v48 = 20;
                v49 = &qword_100243F70;
                do
                {
                  v50 = *(v49 - 1);
                  if (a9 == v50 && a10 == *v49 || a10 == v50 && a9 == *v49)
                  {
                    v46 = a9;
                    v47 = a10;
                    goto LABEL_62;
                  }

                  v49 += 2;
                  --v48;
                }

                while (v48);
                if (a9 >= 1.0)
                {
                  v51 = a9;
                }

                else
                {
                  v51 = 1.0;
                }

                if (a10 >= 1.0)
                {
                  v52 = a10;
                }

                else
                {
                  v52 = 1.0;
                }

                v53 = v51 * v52;
                v54 = 250000.0;
                if (v51 * v52 < 250000.0)
                {
                  v53 = 250000.0;
                }

                if (v53 >= 500000.0)
                {
                  if (v53 >= 10000000.0)
                  {
                    v55 = 12000000.0;
                    if (v53 < 12000000.0)
                    {
                      v54 = 9500000.0;
                    }

                    else
                    {
                      v56 = &dword_100000008;
                      do
                      {
                        v54 = v55;
                        if (v56 == 32)
                        {
                          break;
                        }

                        v55 = *(&unk_1002440A8 + v56);
                        v56 += 8;
                      }

                      while (v53 >= v55);
                    }
                  }

                  else
                  {
                    v54 = floor(v53 / 500000.0) * 500000.0;
                  }
                }

                v57 = v51 / v52;
                v58 = floor(sqrt(v57 * v54));
                if (v58 >= 1.0)
                {
                  v46 = v58;
                }

                else
                {
                  v46 = 1.0;
                }

                v59 = floor(v46 / v57);
                if (v59 >= 1.0)
                {
                  v47 = v59;
                }

                else
                {
                  v47 = 1.0;
                }
              }
            }

LABEL_62:
            v60 = [NSNumber numberWithInteger:v46];
            v61 = sub_1001A8C8C(*(a1 + 8));
            [v18 setObject:v60 forKey:v61];

            v62 = [NSNumber numberWithInteger:v47];
            v63 = sub_1001A8C98(*(a1 + 8));
            [v18 setObject:v62 forKey:v63];

            if (v46 != a9 || v47 != a10)
            {
              v76[0] = _NSConcreteStackBlock;
              v76[1] = 3221225472;
              v76[2] = sub_1000A4650;
              v76[3] = &unk_1002769A8;
              *&v76[5] = a9;
              *&v76[6] = a10;
              v76[4] = &v82;
              (v24[2])(v24, v76);
            }
          }

          else
          {
            v42 = [NSNumber numberWithInteger:a9];
            v43 = sub_1001A8C8C(*(a1 + 8));
            [v18 setObject:v42 forKey:v43];

            v44 = [NSNumber numberWithInteger:a10];
            v45 = sub_1001A8C98(*(a1 + 8));
            [v18 setObject:v44 forKey:v45];
          }

          if (!a8)
          {
            goto LABEL_78;
          }

          if ((qword_1002C00A8 & 4) != 0)
          {
            v64 = 1;
            if (!v21)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v64 = ((sub_1001941F8(*(a1 + 8)) - 1) & 0xFFFFFFFFFFFFFFEFLL) == 0;
            if (!v21)
            {
              goto LABEL_74;
            }
          }

          if (v64)
          {
            v65 = CPLFuzziedFileUTI(v21);
            v66 = sub_1001A8C80(*(a1 + 8));
            [v18 setObject:v65 forKey:v66];

            v67 = v65;
            v68 = v21;
            if (v67 && ([v67 isEqual:v68] & 1) != 0)
            {

              v69 = v67;
            }

            else
            {

              v73[0] = _NSConcreteStackBlock;
              v73[1] = 3221225472;
              v73[2] = sub_1000A46CC;
              v73[3] = &unk_100272028;
              v75 = &v82;
              v74 = v68;
              (v24[2])(v24, v73);
              v69 = v74;
            }

            goto LABEL_77;
          }

LABEL_74:
          v67 = sub_1001A8C80(*(a1 + 8));
          [v18 setObject:v21 forKey:v67];
LABEL_77:

LABEL_78:
          v70 = [v83[5] data];
          v71 = sub_1001A8CBC(*(a1 + 8));
          [v18 setEncryptedObject:v70 forKey:v71 validateClass:objc_opt_class()];

          _Block_object_dispose(&v82, 8);
          goto LABEL_79;
        }

        v37 = a6 + 102399;
        v38 = (a6 + 102399) / 0x19000u;
        v39 = 102400;
      }

      else
      {
        v37 = a6 + 10239;
        v38 = (a6 + 10239) / 0x2800u;
        v39 = 10240;
      }

      v36 = v37 - (v37 - v38 * v39);
      goto LABEL_26;
    }

    v27 = [NSNumber numberWithUnsignedInteger:a6];
    v28 = sub_100194228(*(a1 + 8));
    [v18 setObject:v27 forKey:v28];

    v29 = [NSNumber numberWithInteger:a9];
    v30 = sub_1001A8C8C(*(a1 + 8));
    [v18 setObject:v29 forKey:v30];

    v31 = [NSNumber numberWithInteger:a10];
    v32 = sub_1001A8C98(*(a1 + 8));
    [v18 setObject:v31 forKey:v32];

    if (a8)
    {
      v33 = sub_1001A8C80(*(a1 + 8));
      [v18 setObject:v21 forKey:v33];
    }

    v34 = sub_1001A8CBC(*(a1 + 8));
    [v18 setEncryptedObject:0 forKey:v34 validateClass:objc_opt_class()];

    if (a5)
    {
      v35 = sub_1001A8CB0(*(a1 + 8));
      [v18 setEncryptedObject:0 forKey:v35 validateClass:objc_opt_class()];
    }
  }

LABEL_79:
}

void sub_1000A45AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = objc_alloc_init(CPLCloudKitResourceInfo);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }

  (*(v3 + 2))();
}

void sub_1000A4650(uint64_t a1)
{
  v2 = objc_alloc_init(CPLCloudKitResourceInfoImageDimensions);
  [(CPLCloudKitResourceInfoImageDimensions *)v2 setWidth:*(a1 + 40)];
  [(CPLCloudKitResourceInfoImageDimensions *)v2 setHeight:*(a1 + 48)];
  [*(*(*(a1 + 32) + 8) + 40) setImageDimensions:v2];
}

void sub_1000A4BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A4C10(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v8 = a3;
  v9 = a5;
  if ([v9 isCPLErrorWithCode:2002])
  {
    CPLDisableCloudKitUseGateKeeper();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000A4CB0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1[8] + 8) + 40);
  if (!v7)
  {
    v7 = v5;
  }

  v8 = v7;
  if (!v8)
  {
    v13 = [a2 objectForKey:a1[4]];
    v14 = [v13 objectForKey:a1[5]];
    v15 = v14;
    if (v14)
    {
      v12 = [v14 assetContent];
      if (v12)
      {
        v16 = sub_1001A8C80(a1[6]);
        v11 = [v13 objectForKey:v16];

        v10 = 0;
LABEL_8:

        goto LABEL_9;
      }

      sub_1001AD0F0(a1 + 5, a1 + 4, &v17);
      v11 = 0;
    }

    else
    {
      sub_1001AD1D8(a1 + 4, &v17);
      v11 = 0;
      v12 = 0;
    }

    v10 = v17;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [CPLErrors cplErrorWithCode:80 description:@"Error fetching record: %@ Error: %@", a1[4], v8];

  v11 = 0;
  v12 = 0;
LABEL_9:
  (*(a1[7] + 16))();
}

id sub_1000A4F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return (*(v2[37] + 16))();
  }

  else
  {
    return [v2 _startDownload];
  }
}

void sub_1000A508C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [v12 objectForKeyedSubscript:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 288);
    *(v7 + 288) = v6;

    v9 = *(a1 + 32);
    if (v9[36])
    {
      [v9 _startDownload];
    }

    else
    {
      v10 = v9[37];
      v11 = [CPLErrors cplErrorWithCode:25 description:@"Record not found"];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    (*(*(*(a1 + 32) + 296) + 16))();
  }
}

void sub_1000A5560(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001ACED0;
  v17[3] = &unk_100276A48;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v18 = v9;
  v19 = v13;
  v20 = v11;
  v24 = a4;
  v21 = v12;
  v22 = v10;
  v23 = *(a1 + 48);
  v14 = v10;
  v15 = v11;
  v16 = v9;
  [v13 dispatchAsync:v17];
}

void sub_1000A5728(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.inmemorydownload");
  v3 = qword_1002C5608;
  qword_1002C5608 = v2;
}

id sub_1000A58FC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000A5A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A5A20(void *a1, uint64_t a2, void *a3)
{
  result = [a3 isExpiredForNow:a1[4] withLeeway:*(a1[5] + 48)];
  if (result)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  return result;
}

id sub_1000A5B38(uint64_t a1)
{
  result = [*(a1 + 32) _expiredCountLockedWithDate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1000A5F08(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = [a2 key];
    [v5 removeObjectForKey:v6];
  }
}

void sub_1000A6114(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    v12 = v2;
    v4 = [v2 isExpiredForNow:a1[6] withLeeway:*(a1[4] + 48)];
    v3 = v12;
    if ((v4 & 1) == 0)
    {
      v5 = [v12 object];
      v6 = *(a1[7] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = [v12 expirationDate];
      v9 = *(a1[8] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v3 = v12;
    }
  }

  v11 = 32;
  if (!*(*(a1[7] + 8) + 40))
  {
    v11 = 40;
  }

  ++*(a1[4] + v11);
}

void sub_1000A6304(uint64_t a1)
{
  v10 = [*(a1 + 32) copyWithZone:0];
  v2 = [[_CPLCloudKitSimpleCacheEntry alloc] initWithKey:v10 object:*(a1 + 40) expirationDate:*(a1 + 48)];
  if (![(_CPLCloudKitSimpleCacheEntry *)v2 isExpiredForNow:*(a1 + 56) withLeeway:*(*(a1 + 64) + 48)])
  {
    v3 = [*(*(a1 + 64) + 16) objectForKeyedSubscript:v10];
    if (v3)
    {
      if ([(_CPLCloudKitSimpleCacheEntry *)v2 compare:v3]!= 1)
      {

        v2 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v4 = [*(*(a1 + 64) + 24) indexOfObjectIdenticalTo:v3];
      if (v4 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(a1 + 64) + 24) removeObjectAtIndex:v4];
      }
    }

    else
    {
      v5 = [*(*(a1 + 64) + 16) count];
      v6 = *(a1 + 64);
      if (v5 >= v6[7])
      {
        [v6 _removeExpiredEntriesLockedForNow:*(a1 + 56)];
        v7 = [*(*(a1 + 64) + 16) count];
        v8 = *(a1 + 64);
        v9 = v8[7];
        if (v7 >= v9)
        {
          [v8 _removeFirstEntriesCount:(v9 + 1) >> 1];
        }
      }
    }

    if (v2)
    {
      [*(*(a1 + 64) + 16) setObject:v2 forKeyedSubscript:v10];
      [*(*(a1 + 64) + 24) insertObject:v2 atIndex:{objc_msgSend(*(*(a1 + 64) + 24), "indexOfObject:inSortedRange:options:usingComparator:", v2, 0, objc_msgSend(*(*(a1 + 64) + 24), "count"), 1024, &stru_100276B48)}];
    }

    goto LABEL_12;
  }

LABEL_13:
}

id sub_1000A6524(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

void sub_1000A6658(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = [*(*(a1 + 32) + 16) count];
  v4 = *(a1 + 32);
  v5 = v4[7];
  v14 = +[NSDate date];
  v6 = [v4 _expiredCountLockedWithDate:v14];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = [CPLDateFormatter stringForTimeInterval:*(v7 + 48)];
  v11 = [v2 initWithFormat:@"%lu/%lu - expired: %lu - hit: %lu - miss: %lu - leeway: %@", v3, v5, v6, v8, v9, v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000A7468(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    v7 = [v15 unsignedIntegerValue];
    v8 = *(a1 + 40);
    v9 = [a2 cplOperationClassDescription];
    if (v6 == v7)
    {
      v12 = v9;
      v13 = v15;
      v10 = @"%@ x %@";
    }

    else
    {
      v13 = v15;
      v14 = ([v15 unsignedIntegerValue] - v6);
      v12 = v9;
      v10 = @"%@ x %@ [%lu no cell]";
    }

    [NSString stringWithFormat:v10, v12, v13, v14];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [a2 cplOperationClassDescription];
    [NSString stringWithFormat:@"%@ x %@ [no cell]", v9, v15, v14];
  }
  v11 = ;
  [v8 addObject:v11];
}

id sub_1000A77D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(_CPLCloudKitOperationSession);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    [*(*(a1 + 32) + 8) addObject:*(*(a1 + 32) + 16)];
    v2 = *(*(a1 + 32) + 16);
  }

  result = [v2 beginTask:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v7 = objc_alloc_init(_CPLCloudKitOperationSession);
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    if ([*(*(a1 + 32) + 8) count] >= 3)
    {
      do
      {
        [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
      }

      while ([*(*(a1 + 32) + 8) count] > 2);
    }

    [*(*(a1 + 32) + 8) addObject:*(*(a1 + 32) + 16)];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 16);

    return [v11 beginTask:v10];
  }

  return result;
}

void sub_1000A7B60(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(*(a1 + 32) + 8);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * v7) statusObject];
          if (v8)
          {
            [v2 addObject:v8];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v2;
  }
}

void sub_1000A7DD8(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) status];
        if (v8)
        {
          [v2 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = [v2 componentsJoinedByString:@"\n"];
    v10 = [NSString stringWithFormat:@"Sessions:\n%@", v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1000A7FC0(id a1)
{
  v3 = CPLCopyDefaultSerialQueueAttributes();
  v1 = dispatch_queue_create("com.apple.cpl.ckoperationcounter", v3);
  v2 = qword_1002C5610;
  qword_1002C5610 = v1;
}

id sub_1000A8140(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 queryUserDetailsWithCurrentUserID:a2];
  }

  else
  {
    return (*(v2[35] + 16))();
  }
}

void sub_1000A8668(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A8708;
  v6[3] = &unk_100273F80;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_1000A8708(uint64_t a1)
{
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(*(a1 + 32) + 280) + 16))();
}

void sub_1000A87D8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.share");
  v3 = qword_1002C5628;
  qword_1002C5628 = v2;
}

uint64_t CPLCloudKitResourceInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_42:
        *(a1 + 8) = v23;
        goto LABEL_43;
      }

      if (v13 != 2)
      {
        goto LABEL_26;
      }

      v14 = objc_alloc_init(CPLCloudKitResourceInfoImageDimensions);
      objc_storeStrong((a1 + 24), v14);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !CPLCloudKitResourceInfoImageDimensionsReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v15 = PBReaderReadString();
      v16 = 16;
      goto LABEL_38;
    }

    if (v13 == 4)
    {
      v15 = PBReaderReadString();
      v16 = 32;
LABEL_38:
      v24 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A9560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A957C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = *(WeakRetained + 39);
      *(WeakRetained + 39) = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000A9BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    sub_1001ADA54(a1, v6);
  }

  else
  {
    v7 = [*(a1 + 40) count];
    v8 = (a1 + 32);
    *(*(a1 + 32) + 312) += v7;
    if (*(a1 + 80))
    {
      sub_1001ADB54((a1 + 40), a1, v8);
    }

    else
    {
      (*(*(*v8 + 35) + 16))();
    }
  }
}

void sub_1000A9DB8(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A9EF0;
  v20[3] = &unk_100276A48;
  v20[4] = v15;
  v21 = v14;
  v22 = v11;
  v23 = *(a1 + 40);
  v24 = v12;
  v25 = v13;
  v26 = a5;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v14;
  [v15 dispatchAsync:v20];
}

void sub_1000A9EF0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    sub_1001ADC28();
  }

  else if ([*(a1 + 48) count])
  {
    sub_1001ADDC8((a1 + 48), v2, a1);
  }

  else
  {
    v4 = *(a1 + 32);
    if (*(a1 + 80) == 1)
    {
      [v4 _fetchAndMoveNextBatchWithUserRecordID:*(a1 + 56)];
    }

    else
    {
      (*(v4[35] + 16))();
    }
  }
}

void sub_1000AA154(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AA230;
  v10[3] = &unk_100273198;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_1000AA230(uint64_t a1)
{
  v2 = [*(a1 + 32) auxiliaryOperationDidFinishWithError:*(a1 + 40)];
  if ([*(a1 + 32) isAuxiliaryOperationResultRelevant])
  {
    v3 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    if (v3)
    {
      v4 = [CPLLibraryInfo alloc];
      v5 = [*(*(a1 + 32) + 320) zone];
      v6 = [v4 initWithCKRecord:v3 zone:v5];

      v7 = [v6 assetCounts];
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000AA3C4;
      v11[3] = &unk_100276CC8;
      v11[4] = &v12;
      [v7 enumerateKeysAndObjectsUsingBlock:v11];
      v8 = *(a1 + 32);
      v9 = v13[3];
      v10 = *(v8 + 312);
      (*(*(v8 + 272) + 16))();
      *(*(a1 + 32) + 312) = 0;
      _Block_object_dispose(&v12, 8);
    }
  }
}

void sub_1000AA3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AA3C4(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

id sub_1000AA624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3[35] + 16))();
  }

  else
  {
    return [v3 _fetchAndMoveNextBatchWithUserRecordID:a2];
  }
}

id sub_1000AA6FC(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v3 = v5;
  if (!*(v5 + 352))
  {
    v6 = *(v3 + 360);
    if (v6)
    {
      return sub_1001AE024(v4, 360, v6);
    }
  }

  return result;
}

void sub_1000AB06C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.cleanupstagedscope");
  v3 = qword_1002C5638;
  qword_1002C5638 = v2;
}

uint64_t CPLCloudKitFeatureVersionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 24;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000ABACC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC9F4;
  block[3] = &unk_100272000;
  block[4] = &v3;
  dispatch_sync(qword_1002C5648, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

id sub_1000ABB78()
{
  if (qword_1002C5658 != -1)
  {
    sub_1001AEA58();
  }

  v1 = qword_1002C5660;

  return v1;
}

uint64_t sub_1000AC9F4(uint64_t result)
{
  v1 = qword_1002C5650;
  *(*(*(result + 32) + 8) + 24) = qword_1002C5650;
  qword_1002C5650 = v1 + 1;
  return result;
}

void sub_1000ACA14(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.metrics");
  v3 = qword_1002C5660;
  qword_1002C5660 = v2;
}

uint64_t CPLCloudKitFeatureVersionHistoryReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(CPLCloudKitFeatureVersion);
        [a1 addFeatureVersion:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLCloudKitFeatureVersionReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000AD554(id a1)
{
  v3[0] = &off_10028EE90;
  v3[1] = &off_10028EEA8;
  v4[0] = @"none";
  v4[1] = @"initiateCopyInProgress";
  v3[2] = &off_10028EEC0;
  v3[3] = &off_10028EED8;
  v4[2] = @"recordCopyComplete";
  v4[3] = @"addedParticipantToExitShare";
  v3[4] = &off_10028EEF0;
  v3[5] = &off_10028EF08;
  v4[4] = @"removeParticipantFromSharedLibrary";
  v4[5] = @"removeParticipantFromExitState";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_1002C5668;
  qword_1002C5668 = v1;
}

void sub_1000AD974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v40 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v41 = [*(a1 + 32) currentUserID];
    if (!v41)
    {
      sub_1001AF048(a1, (a1 + 32));
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v37 = (a1 + 32);
      v38 = v5;
      v39 = a1;
      v10 = 0;
      v11 = *v43;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = [v13 participantUserID];
          if (v14)
          {
            v15 = [v41 recordName];
            v16 = [v15 isEqualToString:v14];

            if (v16)
            {
              v17 = v13;

              v10 = v17;
            }

            v18 = [v13 error];

            if (v18)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v19 = sub_100003BC8();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v20 = [v13 participantUserID];
                  v21 = [v13 error];
                  *buf = 138543618;
                  v47 = v20;
                  v48 = 2112;
                  v49 = v21;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to start exiting %{public}@: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              [v40 addObject:v14];
            }
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v22 = sub_100003BC8();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Received an exit response without a user identifier", buf, 2u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v9);

      v6 = 0;
      v5 = v38;
      a1 = v39;
      if (v10)
      {
        v23 = [v10 error];
        if (v23)
        {
          v24 = *(v39 + 48);
          v25 = [*(v39 + 32) _exitErrorFromError:v23];
          (*(v24 + 16))(v24, 0, 0, 0, v25);
        }

        else
        {
          v25 = [v10 stagingZoneID];
          if (v25)
          {
            v32 = [*v37 scopeIdentifierFromZoneID:v25];
            if (!v32)
            {
              sub_1001AEEAC(v39, v37, v25);
            }

            v33 = v32;
            v34 = -[CPLCloudKitScope initWithZoneID:options:]([CPLCloudKitScope alloc], "initWithZoneID:options:", v25, [*(*(v39 + 32) + 280) options]);
            v35 = *(v39 + 48);
            v36 = [(CPLCloudKitScope *)v34 transportScope];
            (*(v35 + 16))(v35, v33, v36, v40, 0);
          }

          else
          {
            sub_1001AEFA0(v39);
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (*(a1 + 64))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = sub_100003BC8();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 40);
          v28 = [v41 recordName];
          *buf = 138412546;
          v47 = v27;
          v48 = 2114;
          v49 = v28;
          v29 = "Trying to dismantle %@ but %{public}@ was not marked as an exiting user";
LABEL_35:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = sub_100003BC8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        v28 = [v41 recordName];
        *buf = 138412546;
        v47 = v30;
        v48 = 2114;
        v49 = v28;
        v29 = "Trying to self exit from %@ but %{public}@ was not marked as an exiting user";
        goto LABEL_35;
      }

LABEL_36:
    }

    v31 = *(a1 + 48);
    v10 = +[CPLErrors unknownError];
    (*(v31 + 16))(v31, 0, 0, 0, v10);
LABEL_42:

    goto LABEL_43;
  }

  (*(*(a1 + 48) + 16))();
LABEL_43:
}

void sub_1000ADFC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v19 = a1;
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 participantUserID];
          if (v13)
          {
            v14 = [v12 error];

            if (v14)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v15 = sub_100003BC8();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v16 = [v12 participantUserID];
                  v17 = [v12 error];
                  *buf = 138543618;
                  v26 = v16;
                  v27 = 2112;
                  v28 = v17;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to start exiting %{public}@: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              [v6 addObject:v13];
            }
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v18 = sub_100003BC8();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Received an exit response without a user identifier", buf, 2u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    (*(*(v19 + 32) + 16))();
    v5 = v20;
  }
}

void sub_1000AEA00(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AEAE8;
  v15[3] = &unk_100273198;
  v15[4] = v11;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  [v11 dispatchAsync:v15];
}

void sub_1000AEAE8(uint64_t a1)
{
  v19 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = *(*(&v20 + 1) + 8 * i);
          v8 = sub_100003BC8();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [v7 participantUserID];
            v10 = [v7 stagingZoneID];
            v11 = [v7 error];
            *buf = 138412802;
            v25 = v9;
            v26 = 2112;
            v27 = v10;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ParticipantUserID: %@ StagingZoneID: %@ error %@", buf, 0x20u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v4);
  }

  if (v19)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_100003BC8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 56);
        *buf = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Exit shared library operation %@ failed: %@", buf, 0x16u);
      }
    }

    v14 = [*(a1 + 32) lastOperationRequestUUIDs];
    v15 = [CPLCloudKitErrors CPLErrorForCloudKitError:v19 withRequestUUIDs:v14 description:@"Failed to request exit from shared library"];

    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_100003BC8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 56);
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Exit shared library operation %@ succeeded", buf, 0xCu);
      }
    }

    v18 = *(a1 + 48);
    (*(*(*(a1 + 32) + 272) + 16))();
  }
}

id sub_1000AEE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3[34] + 16))();
  }

  else
  {
    return [v3 _reallyExit];
  }
}

void sub_1000AEFC8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.exitsharedlibrary");
  v3 = qword_1002C5680;
  qword_1002C5680 = v2;
}

void sub_1000AF260(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 isCPLErrorWithCode:1002];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = v7[36];
    if (v8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000AF398;
      v10[3] = &unk_100276DD8;
      v12 = a2;
      v10[4] = v7;
      v11 = *(a1 + 40);
      [v7 checkEPPCapabilityIfNecessaryForCloudKitScope:v8 completionHandler:v10];
    }

    else
    {
      v9 = [*(a1 + 32) controller];
      [v9 updateAccountEPPCapability:a2];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_1000AF398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (!v5)
  {
    if (v6 >= a2)
    {
      v6 = a2;
    }

    goto LABEL_6;
  }

  v9 = v5;
  if ([v5 isCPLErrorWithCode:23])
  {

LABEL_6:
    v10 = [*(a1 + 32) controller];
    [v10 updateAccountEPPCapability:v6];
    v7 = v10;
LABEL_7:

    v7 = 0;
    goto LABEL_8;
  }

  v8 = [v9 isCPLErrorWithCode:1002];
  v7 = v9;
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = v7;
  (*(*(a1 + 40) + 16))();
}

id sub_1000AF5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AF660;
    v9[3] = &unk_100276E50;
    v9[4] = v4;
    return [v4 getScopeInfoWithCurrentUserID:a2 completionHandler:v9];
  }

  else
  {
    v6 = v4[35];
    v7 = *(v4[34] + 16);
    v8 = v4[34];

    return v7(v8, v6, 0, 0, 0, a3);
  }
}

void sub_1000AF660(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = *(a1 + 32);
  if (a6)
  {
    (*(v14[34] + 16))();
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AF78C;
    v15[3] = &unk_100276E28;
    v15[4] = v14;
    v19 = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    [v14 _checkAccountEPPCapabilityWithCompletionHandler:v15];
  }
}

void sub_1000AFA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFA20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = -[CPLCloudKitScope initWithZone:options:]([CPLCloudKitScope alloc], "initWithZone:options:", v6, [*(*(a1 + 32) + 296) options]);
    v9 = *(a1 + 32);
    v10 = *(v9 + 296);
    *(v9 + 296) = v8;

    v11 = [*(a1 + 32) controller];
    v12 = [v11 zoneIdentificationForCloudKitScope:*(*(a1 + 32) + 296) engineScope:*(*(a1 + 32) + 304)];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v7)
  {
    v15 = *(*(a1 + 32) + 280);
    v16 = *(a1 + 48);
    v17 = [*(*(*(a1 + 56) + 8) + 40) cloudKitScope];
    v18 = [v17 transportScope];
    (*(v16 + 16))(v16, v15, 0, 0, v18, v7);
  }

  else
  {
    v19 = *(a1 + 32);
    if (v19[35])
    {
      v20 = [*(*(*(a1 + 56) + 8) + 40) recordsToFetchForScopeInfoWithCurrentUserID:*(a1 + 40)];
      if ([v20 count])
      {
        v21 = *(a1 + 32);
        v22 = v21[37];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000AFCC0;
        v32[3] = &unk_100276E78;
        v23 = *(a1 + 48);
        v31 = *(a1 + 32);
        *&v24 = v23;
        *(&v24 + 1) = *(a1 + 56);
        v30 = v24;
        v25 = *(&v31 + 1);
        v33 = v31;
        v34 = v30;
        [v21 fetchRecordsWithIDs:v20 fetchResources:1 inScope:v22 completionHandler:v32];
      }

      else
      {
        v26 = *(*(a1 + 32) + 280);
        v27 = *(a1 + 48);
        v28 = [*(*(*(a1 + 56) + 8) + 40) cloudKitScope];
        v29 = [v28 transportScope];
        (*(v27 + 16))(v27, v26, 0, 0, v29, 0);
      }
    }

    else
    {
      [v19 _determineScopeTypeAndFetchLibraryInfoWithCurrentUserID:*(a1 + 40)];
    }
  }
}

void sub_1000AFCC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v16 = v7;
  if (a4)
  {
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:a4 withRequestUUIDs:a3 description:@"Error fetching scope-level info records"];
    v9 = *(*(a1 + 32) + 280);
    v10 = *(a1 + 48);
    v11 = [*(*(*(a1 + 56) + 8) + 40) cloudKitScope];
    v12 = [v11 transportScope];
    (*(v10 + 16))(v10, v9, 0, 0, v12, v8);
  }

  else
  {
    v8 = [*(*(*(a1 + 56) + 8) + 40) scopeChangeFromCKRecords:v7 currentUserID:*(a1 + 40) previousScopeChange:*(*(a1 + 32) + 312)];
    v11 = [*(*(*(a1 + 56) + 8) + 40) scopeFlagsUpdateFromCKRecords:v16];
    [*(a1 + 32) _determineSharedScopeFromFetchedRecords:v16 scopeChange:v8 zoneIdentification:*(*(*(a1 + 56) + 8) + 40) currentUserID:*(a1 + 40)];
    v13 = *(*(a1 + 32) + 280);
    v14 = *(a1 + 48);
    v12 = [*(*(*(a1 + 56) + 8) + 40) cloudKitScope];
    v15 = [v12 transportScope];
    (*(v14 + 16))(v14, v13, v8, v11, v15, 0);
  }
}

void sub_1000B007C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:a4 withRequestUUIDs:a3 description:@"Error fetching scope-level info records"];
    v9 = *(a1 + 32);
    v10 = *(v9 + 280);
    (*(*(v9 + 272) + 16))();
  }

  else
  {
    v11 = [*(a1 + 40) scopeTypeForCloudKitScope:*(*(a1 + 32) + 296) proposedScopeType:*(*(a1 + 32) + 280) fetchedRecords:v7 currentUserID:*(a1 + 48)];
    if (v11)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_100003C0C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(*(a1 + 32) + 304) scopeIdentifier];
          v14 = [CPLScopeChange descriptionForScopeType:v11];
          v24 = 138412546;
          v25 = v13;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Determined scope type for %@: %@", &v24, 0x16u);
        }
      }

      v15 = [CPLEngineScope alloc];
      v16 = [*(*(a1 + 32) + 304) scopeIdentifier];
      v17 = [v15 initWithScopeIdentifier:v16 scopeType:v11];

      v18 = [*(a1 + 40) zoneIdentificationForCloudKitScope:*(*(a1 + 32) + 296) engineScope:v17];
      v19 = [v18 scopeChangeFromCKRecords:v7 currentUserID:*(a1 + 48) previousScopeChange:0];
      v20 = [v18 scopeFlagsUpdateFromCKRecords:v7];
      [*(a1 + 32) _determineSharedScopeFromFetchedRecords:v7 scopeChange:v19 zoneIdentification:v18 currentUserID:*(a1 + 48)];
      v21 = *(*(a1 + 32) + 272);
      v22 = [v18 cloudKitScope];
      v23 = [v22 transportScope];
      (*(v21 + 16))(v21, v11, v19, v20, v23, 0);
    }

    else
    {
      sub_1001AF4E4(_CPLSilentLogging, a1 + 32, 280);
    }
  }
}

id sub_1000B05BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _fetchLibraryInfoAndStateWithCurrentSyncAnchor:*(a1 + 40) currentUserID:a2];
  }

  else
  {
    return (*(v3[34] + 16))();
  }
}

void sub_1000B0770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = [CPLCloudKitErrors CPLErrorForCloudKitError:a4 withRequestUUIDs:a3 description:@"Error fetching scope-level info records"];
    v6 = *(*(*(a1 + 32) + 272) + 16);
    v11 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) scopeChangeFromCKRecords:a2 currentUserID:*(a1 + 48) previousScopeChange:*(*(a1 + 32) + 304)];
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(v8 + 280);
    v6 = *(*(v8 + 272) + 16);
    v11 = v7;
  }

  v6();
}

void sub_1000B09BC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if (a3 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001AF5D8(a1, v7);
    }

    v9 = -[CPLCloudKitScope initWithZone:options:]([CPLCloudKitScope alloc], "initWithZone:options:", v7, [*(*(a1 + 32) + 288) options]);
    v10 = *(a1 + 32);
    v11 = *(v10 + 288);
    *(v10 + 288) = v9;

    v12 = [*(*(a1 + 32) + 288) transportScope];
    v13 = *(a1 + 32);
    v14 = *(v13 + 280);
    *(v13 + 280) = v12;

    v15 = [v7 currentServerChangeToken];
    if (v15)
    {
      v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v15];
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) _fetchLibraryInfoAndStateWithCurrentSyncAnchor:v16];
  }

  else
  {
    (*(*(*(a1 + 32) + 272) + 16))();
  }
}

void sub_1000B0F80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:a4 withRequestUUIDs:a3 description:@"Error fetching scope-level info records"];
    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    v9 = [*(a1 + 40) scopeTypeForCloudKitScope:*(a1 + 48) proposedScopeType:0 fetchedRecords:v7 currentUserID:*(a1 + 56)];
    if (v9)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_100003C0C();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 64) cpl_zoneName];
          v12 = [CPLScopeChange descriptionForScopeType:v9];
          *buf = 138543618;
          v21 = v11;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined scope type for %{public}@: %@", buf, 0x16u);
        }
      }

      v13 = *(a1 + 32);
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000B11E8;
        v14[3] = &unk_100276F40;
        v14[4] = v13;
        v15 = *(a1 + 64);
        v19 = v9;
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = v7;
        [v13 getUserRecordIDFetchIfNecessaryWithCompletionHandler:v14];
      }

      else
      {
        [*(a1 + 32) _validateLastZoneIDInArray:*(a1 + 72) currentUserID:*(a1 + 56)];
      }
    }

    else
    {
      sub_1001AF758(_CPLSilentLogging, a1, (a1 + 56));
    }
  }
}

void sub_1000B11E8(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if (v17)
  {
    v6 = [CPLEngineScope alloc];
    v7 = [*(a1 + 32) scopeIdentifierFromZoneID:*(a1 + 40)];
    v8 = [v6 initWithScopeIdentifier:v7 scopeType:*(a1 + 72)];

    v9 = [*(a1 + 48) zoneIdentificationForCloudKitScope:*(a1 + 56) engineScope:v8];
    v10 = [v9 scopeChangeFromCKRecords:*(a1 + 64) currentUserID:v17 previousScopeChange:0];
    v11 = [v9 scopeFlagsUpdateFromCKRecords:*(a1 + 64)];
    v12 = *(*(a1 + 32) + 272);
    v13 = [v9 cloudKitScope];
    v14 = [v13 transportScope];
    (*(v12 + 16))(v12, v10, v14, v11, 0);
  }

  else
  {
    v15 = *(*(a1 + 32) + 272);
    if (v5)
    {
      (*(v15 + 16))(v15, 0, 0, 0, v5);
    }

    else
    {
      v16 = +[CPLErrors unknownError];
      (*(v15 + 16))(v15, 0, 0, 0, v16);
    }
  }
}

void sub_1000B148C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [*(a1 + 32) mainScopeIdentifier];
    v8 = CPLSharingScopePrefixForScopeWithIdentifier();

    v9 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B162C;
    v15[3] = &unk_100276F90;
    v16 = v8;
    v17 = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B16A4;
    v12[3] = &unk_100272178;
    v12[4] = *(a1 + 32);
    v13 = v17;
    v14 = v5;
    v10 = v17;
    v11 = v8;
    [v9 enumerateAllZonesWithBlock:v15 completionHandler:v12];
  }
}

void sub_1000B162C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 zoneName];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_1000B16A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 32) + 272) + 16);

    v3();
  }

  else if ([*(a1 + 40) count])
  {
    sub_1001AF820(_CPLSilentLogging, (a1 + 40), a1);
  }

  else
  {
    sub_1001AF8DC(_CPLSilentLogging, a1);
  }
}

void sub_1000B1758(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.getlibraryinfo");
  v3 = qword_1002C5690;
  qword_1002C5690 = v2;
}

void sub_1000B17BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_1000B17DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void sub_1000B1D34(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldIgnoreZoneWithZoneID:v3])
  {
    sub_1001AFB24(v3, (a1 + 32));
  }

  else
  {
    sub_1001AF974(a1, v3);
  }
}

void sub_1000B1D98(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldIgnoreZoneWithZoneID:v3])
  {
    sub_1001AFCEC(_CPLSilentLogging, v3, (a1 + 32));
  }

  else
  {
    sub_1001AFC08(_CPLSilentLogging, v3, a1);
  }
}

CPLCloudKitScopeListSyncAnchor *sub_1000B1E08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [CPLCloudKitScopeListSyncAnchor alloc];
  v6 = *(*(a1 + 32) + 272);
  if (v3 == 1)
  {
    v7 = [v6 privateChangeToken];
    v8 = v5;
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v7 = [v6 sharedChangeToken];
    v8 = v5;
    v9 = v4;
    v10 = v7;
  }

  v11 = [(CPLCloudKitScopeListSyncAnchor *)v8 initWithPrivateChangeToken:v9 sharedChangeToken:v10];

  return v11;
}

void sub_1000B1EC0(void *a1, void *a2)
{
  v18 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = (*(a1[5] + 16))();
  v5 = a1[4];
  v6 = *(v5 + 272);
  *(v5 + 272) = v4;

  v7 = a1[4];
  v8 = *(v7 + 280);
  v9 = *(*(a1[6] + 8) + 40);
  v10 = *(*(a1[7] + 8) + 40);
  v11 = [*(v7 + 272) scopeListSyncAnchor];
  (*(v8 + 16))(v8, v9, v10, v11);

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = objc_alloc_init(NSMutableArray);
  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  objc_autoreleasePoolPop(v3);
}

void sub_1000B1FE8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B20C8;
  v12[3] = &unk_1002725B8;
  v12[4] = v8;
  v13 = v7;
  v16 = *(a1 + 48);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  [v8 dispatchAsync:v12];
}

void sub_1000B20C8(uint64_t a1)
{
  v14 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v14)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    if (*(a1 + 64))
    {
      v3 = "shared";
    }

    else
    {
      v3 = "private";
    }

    v4 = [CPLCloudKitErrors CPLErrorForCloudKitError:v14 withRequestUUIDs:v2 description:@"failed to fetch %s database changes", v3];

    v5 = *(*(*(a1 + 32) + 288) + 16);
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = (*(*(a1 + 56) + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 272);
    *(v8 + 272) = v7;

    if ((*(a1 + 64) & 1) == 0)
    {
      v10 = [*(a1 + 32) controller];
      v11 = [v10 supportsSharedDatabase];

      if (v11)
      {
        [*(a1 + 32) _launchOperationForSharedDatabase:1];
        goto LABEL_11;
      }
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 288);
    v4 = [*(v12 + 272) scopeListSyncAnchor];
    v5 = *(v13 + 16);
  }

  v5();

LABEL_11:
}

void sub_1000B2688(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.getscopelistchangees");
  v3 = qword_1002C56A0;
  qword_1002C56A0 = v2;
}

void sub_1000B2B48(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = objc_alloc_init(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem);
  v6 = *(*(a1 + 32) + 296);
  v7 = [*(*(a1 + 32) + 296) userInfo];
  v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v8)
  {
    v9 = [v8 domain];
    v10 = [v9 isEqualToString:CKErrorDomain];

    if (v10)
    {
      v11 = [*(a1 + 32) _itemErrorFromError:v8 forID:v21];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v8;
      }

      v14 = v13;

      v6 = v14;
    }
  }

  v15 = [v6 description];
  [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)v5 setErrorMessage:v15];

  v16 = [v6 domain];
  [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)v5 setErrorDomain:v16];

  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
  [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)v5 setErrorCode:v17];

  v18 = [v21 recordName];
  [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)v5 setOriginRecordID:v18];

  v19 = [*(*(a1 + 32) + 288) objectAtIndex:a3];
  v20 = [v19 recordName];
  [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)v5 setDestinationRecordID:v20];

  [*(a1 + 40) addObject:v5];
}

void sub_1000B2D50(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AFDB0;
  v8[3] = &unk_100273930;
  v8[4] = v6;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_1000B2F2C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.exitfeedback");
  v3 = qword_1002C56B0;
  qword_1002C56B0 = v2;
}

void sub_1000B30E8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, char a11, void *a12)
{
  v14 = a3;
  v15 = a12;
  v16 = *(a1 + 32);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001AFF18;
  v19[3] = &unk_100277108;
  v19[4] = v16;
  v20 = v15;
  v22 = a2;
  v21 = v14;
  v23 = a11;
  v17 = v14;
  v18 = v15;
  [v16 dispatchAsync:v19];
}

void sub_1000B31DC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.sharedlibraryserverramp");
  v3 = qword_1002C56C0;
  qword_1002C56C0 = v2;
}

uint64_t CPLCKAvailabilityResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_44;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 12) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000B4000(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    sub_1001B0060(_CPLSilentLogging, v6, a1);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100003C94();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Finished checking resources", buf, 2u);
      }
    }

    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 280), "count")}];
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B4258;
    v15[3] = &unk_100277178;
    v16 = v5;
    v11 = v9;
    v12 = *(a1 + 32);
    v17 = v11;
    v18 = v12;
    v13 = v8;
    v19 = v13;
    [v10 enumerateKeysAndObjectsUsingBlock:v15];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_100003C94();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = v13;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Matched resources %@ Mismatched resources %@", buf, 0x16u);
      }
    }

    (*(*(*(a1 + 32) + 272) + 16))(*(*(a1 + 32) + 272), v13, v11, 0);
  }
}

void sub_1000B4258(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (!v6)
        {
          [CPLErrors cplErrorWithCode:26 description:@"Unable to find cloud record for resource %@", *(*(&v18 + 1) + 8 * v11)];
          goto LABEL_10;
        }

        if ([v6 inExpunged])
        {
          [CPLErrors cplErrorWithCode:26 description:@"Record for %@ is expunged", v12];
          v13 = LABEL_10:;
LABEL_11:
          [*(a1 + 40) setObject:v13 forKey:v12];
          goto LABEL_12;
        }

        v14 = *(a1 + 48);
        v17 = 0;
        v15 = [v14 _checkResource:v12 record:v6 error:&v17];
        v13 = v17;
        if ((v15 & 1) == 0)
        {
          goto LABEL_11;
        }

        [*(a1 + 56) addObject:v12];
LABEL_12:

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v16 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v16;
    }

    while (v16);
  }
}

void sub_1000B46E8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.resourcescheck");
  v3 = qword_1002C56D0;
  qword_1002C56D0 = v2;
}

uint64_t Rpcproto_ErrorInfo.cloudDbErrorName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Rpcproto_ErrorInfo.cloudDbErrorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.clientCode.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.clientCode.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.serverCode.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.serverCode.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Goldilocks_ErrorInfo.ResultError.localizedErrorDescription.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Goldilocks_ErrorInfo.ResultError.localizedErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Rpcproto_ErrorInfo.loggingDetails.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Rpcproto_ErrorInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Rpcproto_ErrorInfo(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Rpcproto_ErrorInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Rpcproto_ErrorInfo(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Goldilocks_OperationControl.optionalUnshareOperationPercentage.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Goldilocks_OperationControl.optionalUnshareOperationPercentage.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Rpcproto_ErrorInfo.Client.Code.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_100244CB8[result];
  }

  return result;
}

uint64_t sub_1000B4C00@<X0>(uint64_t *a1@<X8>)
{
  result = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_1000B4C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA0CC();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000B4C7C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*a1, *(a1 + 8));
  return v4 == Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v2, v3);
}

uint64_t sub_1000B4D04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B4DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Rpcproto_ErrorInfo.Server.Code.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_100244F70[result];
  }

  return result;
}

uint64_t sub_1000B4ED4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000B4F0C()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_100244F70[result];
  }

  return result;
}

uint64_t sub_1000B4F44@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

void sub_1000B4F80(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_100244F70[v2];
  }

  *a1 = v2;
}

Swift::Int sub_1000B4FA4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B5010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA078();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000B505C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1000B50C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100244F70[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_100244F70[v3];
  }

  return v2 == v3;
}

uint64_t sub_1000B5114@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Rpcproto_ErrorInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Rpcproto_ErrorInfo(0) + 44);
  return UnknownStorage.init()();
}

uint64_t sub_1000B54D4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_1000B5584@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t sub_1000B55F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002440E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "message";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 6;
  *v8 = "cloudDbErrorName";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "clientCode";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "serverCode";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "stackTrace";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "retryAfterSeconds";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "loggingDetails";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}