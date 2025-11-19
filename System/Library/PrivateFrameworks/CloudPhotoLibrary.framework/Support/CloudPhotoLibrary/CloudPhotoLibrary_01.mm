void sub_1000374A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL sub_1000374B8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_1000374F4(uint64_t a1)
{

  return [v1 initWithScopeIdentifier:v2 identifier:a1];
}

void sub_100037514(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10003752C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_10003789C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037934;
  v6[3] = &unk_1002720E0;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_100037934(uint64_t a1)
{
  v4 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v4)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    v3 = +[CPLCloudKitErrors CPLErrorForCloudKitError:withRequestUUIDs:description:](CPLCloudKitErrors, "CPLErrorForCloudKitError:withRequestUUIDs:description:", v4, v2, @"Error sending %lu feedback messages", [*(*(a1 + 32) + 272) count]);
  }

  else
  {
    v3 = 0;
  }

  (*(*(*(a1 + 32) + 280) + 16))();
}

uint64_t sub_1000380C4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!v11)
  {
    [v9 setObject:0 forKeyedSubscript:v10];
    v20 = 0;
LABEL_11:
    v26 = 1;
    goto LABEL_12;
  }

  v13 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [CKAssetReference alloc];
    v15 = a1[4];
    v16 = a1[7];
    v17 = [v13 signature];
    v18 = [v14 initWithExistingRecordID:v15 databaseScope:v16 fieldName:v10 fileSignature:v17];

    v19 = [[CKAsset alloc] initWithAssetReference:v18];
    [CPLFingerprintScheme configureAssetTransferOptionsForCKAsset:v19 fromReference:v18 scopeProvider:a1[5]];

    v20 = 0;
LABEL_8:
    v13 = v19;
LABEL_10:
    [v9 setObject:v13 forKeyedSubscript:v10];

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    goto LABEL_10;
  }

  v21 = [v13 recordID];
  v22 = [v21 recordName];

  v23 = a1[5];
  v29 = 0;
  v24 = [v23 recordNameInDestinationCKRecordFromRecordName:v22 error:&v29];
  v20 = v29;
  if (v24)
  {
    v25 = [[CKRecordID alloc] initWithRecordName:v24 zoneID:a1[6]];
    v19 = [[CKReference alloc] initWithRecordID:v25 action:{objc_msgSend(v13, "referenceAction")}];

    goto LABEL_8;
  }

  if (a5)
  {
    v28 = v20;
    v26 = 0;
    *a5 = v20;
  }

  else
  {
    v26 = 0;
  }

LABEL_12:

  return v26;
}

void sub_1000385D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  if (!v8)
  {
    sub_1001980C0(a1, v7);
  }

  v10 = v9;
  [*(a1 + 56) prepareCopyForCKRecordID:v7 fromCKRecord:v8];
  v11 = [v8 recordID];
  [*(a1 + 64) setObject:v11 forKeyedSubscript:v7];

  v12 = *(a1 + 112);
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v20 = 0;
  v15 = [CPLCloudKitTransportTask copiedRecordFromSourceRecord:v8 sourceDatabaseScope:v12 toRecordID:v10 helper:v13 action:v14 error:&v20];
  v16 = v20;
  v17 = v20;
  if (v15)
  {
    v18 = *(a1 + 80);
    v19 = [v8 recordID];
    [v18 addCopyMoveFromRecordID:v19 toRecordID:v10];

    [*(a1 + 88) addObject:v15];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v16);
    *a4 = 1;
  }
}

void sub_100038A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038B3C;
  v6[3] = &unk_1002720E0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_100038B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038BF8;
  v6[3] = &unk_1002720E0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_100038C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100038D10;
  v13[3] = &unk_100273BA0;
  v13[4] = v6;
  v14 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = v8;
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v15 = v11;
  v16 = v10;
  v12 = v5;
  [v6 dispatchAsync:v13];
}

void sub_100038D10(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001981B0(v2, a1);
    }

    v4 = *(a1 + 72);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100038E50;
    v8[3] = &unk_100273B78;
    v9 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 32) lastOperationRequestUUIDs];
    v7 = [CPLCloudKitErrors CPLErrorForCloudKitUploadError:v3 getDestinationRecordIDs:v8 scopeProvider:v5 withRequestUUIDs:v6 uploadAction:*(a1 + 64)];
    (*(v4 + 16))(v4, v7);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

id sub_100038E50(uint64_t a1)
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

void sub_100039234(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = [CPLCloudKitCopyMoveOperationContext alloc];
    v11 = [*(a1 + 32) firstObject];
    v12 = [v11 zoneID];
    v13 = [*(a1 + 40) firstObject];
    v14 = [v13 zoneID];
    v15 = [(CPLCloudKitCopyMoveOperationContext *)v10 initFromZoneID:v12 toZoneID:v14];

    v16 = *(a1 + 48);
    v17 = *(a1 + 72);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    v31 = 0;
    v32 = 0;
    v21 = [v16 _destinationRecordsFromSourceRecords:v7 recordIDs:v18 sourceType:v17 destinationRecordIDs:v19 helper:v20 sourceRecordIDs:&v32 operationContext:v15 action:@"Copy" error:&v31];
    v22 = v32;
    v23 = v31;
    if (v21)
    {
      v24 = [v22 count];
      if (v24 != [v7 count])
      {
        sub_1001982A0(a1, (a1 + 48));
      }

      v26 = *(a1 + 48);
      v25 = *(a1 + 56);
      v27 = *(a1 + 88);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100039478;
      v28[3] = &unk_1002724D0;
      v30 = *(a1 + 64);
      v29 = v22;
      [v26 _uploadDestinationRecords:v21 destinationType:v27 scopeProvider:v25 operationContext:v15 uploadAction:@"copy" completionHandler:v28];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

uint64_t sub_100039478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_1000398C0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) didModifyRecordWithID:?];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v7 = [v2 recordID];
    [v3 didModifyRecordWithID:?];
  }

  else
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      return;
    }

    v5 = *(a1 + 40);
    v7 = [v4 destinationRecord];
    v6 = [v7 recordID];
    [v5 didModifyRecordWithID:v6];
  }
}

void sub_100039978(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100039A58;
  v6[3] = &unk_100273C60;
  v6[4] = v4;
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_100039A58(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = *(a1 + 64);
  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100039B7C;
    v7[3] = &unk_100273B78;
    v8 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitUploadError:v2 getDestinationRecordIDs:v7 scopeProvider:v4 withRequestUUIDs:v5 uploadAction:@"move"];
    (*(v3 + 16))(v3, v6);
  }

  else
  {
    (*(v3 + 16))(*(a1 + 64), 0);
  }
}

void sub_10003A138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = [CPLCloudKitCopyMoveOperationContext alloc];
    v8 = [*(a1 + 32) firstObject];
    v9 = [v8 zoneID];
    v10 = [*(a1 + 40) firstObject];
    v11 = [v10 zoneID];
    v12 = [(CPLCloudKitCopyMoveOperationContext *)v7 initFromZoneID:v9 toZoneID:v11];

    v13 = *(a1 + 80);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v29 = 0;
    v30 = 0;
    v18 = [v16 _moveChangesFromSourceRecords:v6 recordIDs:v14 sourceType:v13 destinationRecordIDs:v15 helper:v17 sourceRecordIDs:&v30 operationContext:v12 error:&v29];
    v19 = v30;
    v20 = v29;
    if (v18)
    {
      v21 = (*(*(a1 + 72) + 16))();

      v22 = *(a1 + 80);
      v23 = *(a1 + 88);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10003A340;
      v26[3] = &unk_1002724D0;
      v28 = *(a1 + 64);
      v27 = v19;
      [v24 _applyMoveChanges:v21 sourceType:v22 destinationType:v23 helper:v25 operationContext:v12 completionHandler:v26];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

uint64_t sub_10003A340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_10003A578(uint64_t a1)
{
  v1 = [*(a1 + 32) mappingForMoveSteps];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003A654;
  v5[3] = &unk_100273D18;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v2 = v6;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = [v2 copy];
  v4 = qword_1002C5050;
  qword_1002C5050 = v3;
}

void sub_10003AB38(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.recordcopy");
  v3 = qword_1002C5068;
  qword_1002C5068 = v2;
}

void sub_10003ABB8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t CPLCKFeatureAvailabilityResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(CPLCKAvailabilityResponse);
        [a1 addFeatures:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLCKAvailabilityResponseReadFrom(v13, a2))
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

void sub_10003D098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10003D0D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 80) objectForKey:v5];
  v8 = [v6 integerValue];
  if (v8 > 100)
  {
    goto LABEL_4;
  }

  v9 = v8;
  if (v8 < 0)
  {
    v9 = 0;
    v11 = @" [error]";
  }

  else
  {
    if (v8 >= 0x64)
    {
LABEL_4:
      v10 = 0;
      ++*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_44;
    }

    v11 = &stru_10027C2F0;
  }

  if ([v7 supportsResources])
  {
    v12 = "";
    if ([v7 hasChangeType:8])
    {
      v13 = [*(*(a1 + 32) + 88) containsObject:v5];
      v14 = v13;
      if (v13)
      {
        v12 = "(-R)";
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = "";
  }

  v14 = 1;
LABEL_14:
  v44 = a1;
  v45 = v7;
  if (*(a1 + 72) == 1)
  {
    obja = [NSString alloc];
    v15 = objc_opt_class();
    v16 = [v7 scopedIdentifier];
    v17 = +[CPLRecordChange descriptionForChangeType:](CPLRecordChange, "descriptionForChangeType:", [v7 changeType]);
    v39 = v15;
    a1 = v44;
    v10 = [obja initWithFormat:@"\t%@[%@]%@%s [%ld%%]%@", v39, v16, v17, v12, v9, v11];

    [*(v44 + 40) addObject:v10];
    if (v14)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v10 = 0;
    if (v14)
    {
      goto LABEL_44;
    }
  }

  v18 = [v7 resources];
  v19 = [v18 count];
  *(*(*(a1 + 56) + 8) + 24) += v19;
  if (v19)
  {
    v40 = v19;
    v41 = v18;
    v46 = v10;
    v42 = v6;
    v43 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v7 resources];
    v20 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v51;
      do
      {
        v24 = 0;
        v47 = v21;
        do
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * v24);
          if ((+[CPLResource shouldIgnoreResourceTypeOnUpload:](CPLResource, "shouldIgnoreResourceTypeOnUpload:", [v25 resourceType]) & 1) == 0)
          {
            v26 = [v25 identity];
            v27 = [v26 fileSize];
            *(*(*(a1 + 64) + 8) + 24) += v27;
            v28 = [v7 resourceCopyFromScopedIdentifier];
            if (v28 && [v25 sourceResourceType])
            {
              v29 = [v26 fileURL];
              if (v29)
              {
                v30 = &stru_10027C2F0;
              }

              else
              {
                v30 = @"(server-copy)";
              }
            }

            else
            {
              v30 = &stru_10027C2F0;
            }

            if (*(a1 + 72) == 1)
            {
              v31 = [NSString alloc];
              v32 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v25 resourceType]);
              v33 = [v26 fileUTI];
              v34 = [NSByteCountFormatter stringFromByteCount:v27 countStyle:3];
              v35 = [v31 initWithFormat:@"\t\t%@ (%@) %@ %@", v32, v33, v34, v30];

              v7 = v45;
              a1 = v44;

              [*(v44 + 40) addObject:v35];
              v46 = v35;
            }

            v21 = v47;
            v22 += v27;
          }

          v24 = v24 + 1;
        }

        while (v21 != v24);
        v21 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v18 = v41;
    if (v40 == 1)
    {
      v6 = v42;
      v5 = v43;
      v10 = v46;
    }

    else
    {
      v6 = v42;
      v5 = v43;
      v10 = v46;
      if (*(a1 + 72))
      {
        v36 = [NSString alloc];
        v37 = [NSByteCountFormatter stringFromByteCount:v22 countStyle:3];
        v38 = [v36 initWithFormat:@"\t\t\tTotal for %lu resources in record: %@", v40, v37];

        [*(a1 + 40) addObject:v38];
        v10 = v38;
      }
    }
  }

LABEL_44:
}

__CFString *sub_10003DA8C(int a1)
{
  v2 = sub_10003DB00(a1);
  if (!v2)
  {
    if (a1)
    {
      v2 = [[NSString alloc] initWithFormat:@"Unkown #%lu", a1];
    }

    else
    {
      v2 = @"Unknown";
    }
  }

  return v2;
}

id sub_10003DB00(int a1)
{
  if (a1 == 1)
  {
    v2 = &CPLFeatureNameMomentShare;
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = &CPLFeatureNameEPP;
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

id sub_10003DB64(void *a1)
{
  v1 = a1;
  if (qword_1002C5078 != -1)
  {
    sub_100198564();
  }

  v2 = [qword_1002C5070 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10003DBE4(id a1)
{
  v3[0] = CPLFeatureNameMomentShare;
  v3[1] = CPLFeatureNameEPP;
  v4[0] = &off_10028ECC8;
  v4[1] = &off_10028ECE0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1002C5070;
  qword_1002C5070 = v1;
}

uint64_t CPLRemappedRecordReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___CPLRemappedRecord__recordID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___CPLRemappedRecord__createdByUserID;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_10003E5BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003E6BC;
  v10[3] = &unk_100273DF8;
  v10[4] = v7;
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_10003E6BC(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x2020000000;
  v16[2] = 0;
  if (v2)
  {
    v6 = v2;
    v5 = [CPLCloudKitErrors realErrorForError:v2];

    v7 = [v5 domain];
    if ([v7 isEqualToString:CKErrorDomain])
    {
      v8 = [v5 code];

      if (v8 == 15)
      {
        sub_100198864(a1, v5, v16);
        v4 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }

    if ([*(a1 + 32) _isCapabilityCheckIgnorableError:v5])
    {
      sub_1001987B8(_CPLSilentLogging, a1);
      v4 = [CPLErrors cplErrorWithCode:1002 underlyingError:v5 description:@"Failed to check capability"];
    }

    else
    {
      sub_10019870C(_CPLSilentLogging, a1);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) lastOperationRequestUUIDs];
      v4 = [CPLCloudKitErrors CPLErrorForCloudKitError:v9 withRequestUUIDs:v10 description:@"Failed to check account capability"];

      v5 = v10;
    }
  }

  else
  {
    sub_10019893C(a1);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003E8E4;
    v12[3] = &unk_100273DD0;
    v3 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = &v15;
    [v3 enumerateKeysAndObjectsUsingBlock:v12];
    v4 = 0;
    v5 = v13;
  }

LABEL_10:

  (*(*(a1 + 72) + 16))(*(a1 + 72), *(v16[0] + 24), v4, v11);
  _Block_object_dispose(&v15, 8);
}

void sub_10003E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003E8E4(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E978;
  v7[3] = &unk_100273DA8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_10003E978(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * v10) isEqual:*(a1 + 32)])
        {
          if ([v6 isSupported])
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          *(*(*(a1 + 40) + 8) + 24) = v11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10003EAA8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.checkdevicecapabilities");
  v3 = qword_1002C5088;
  qword_1002C5088 = v2;
}

void sub_10003F6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F6FC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained feedbackCompletionBlock];

  if (v5)
  {
    (v5)[2](v5, v7);
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setFeedbackCompletionBlock:0];
  }
}

void sub_10003F7E8(id a1)
{
  v1 = objc_alloc_init(CPLCKFeatureAvailabilityRequest);
  v2 = qword_1002C5090;
  qword_1002C5090 = v1;

  v3 = objc_alloc_init(CPLCKAvailabilityRequest);
  [(CPLCKAvailabilityRequest *)v3 setFeature:1];
  [qword_1002C5090 addFeatures:v3];
  v4 = objc_alloc_init(CPLCKAvailabilityRequest);

  [(CPLCKAvailabilityRequest *)v4 setFeature:2];
  [qword_1002C5090 addFeatures:v4];
}

void sub_10003F890(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained featureCheckAvailabilityCompletionBlock];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:CKErrorDomain])
      {
        v10 = [v6 code];

        if (v10 == 15)
        {

          goto LABEL_6;
        }
      }

      else
      {
      }

      (v8)[2](v8, 0, v6);
LABEL_22:
      [WeakRetained setFeatureCheckAvailabilityCompletionBlock:0];
      goto LABEL_23;
    }

LABEL_6:
    if (v5)
    {
      v11 = v5;
      v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "featuresCount")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = v11;
      v13 = [v11 features];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            v19 = sub_10003DB00([v18 feature]);
            if (v19 && ([v18 allowed] & 1) == 0)
            {
              [v12 addObject:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      (v8)[2](v8, v12, 0);
    }

    else
    {
      (v8)[2](v8, &__NSArray0__struct, 0);
    }

    v6 = 0;
    goto LABEL_22;
  }

LABEL_23:
}

id sub_10003FC10()
{
  if (qword_1002C50A0 != -1)
  {
    sub_100199044();
  }

  v1 = qword_1002C50A8;

  return v1;
}

void sub_10003FD90(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10003FDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FEE8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10003FEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FF1C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = a3;
  v6 = a2;
  v7 = [[NSString alloc] initWithFormat:@"'%@' -> '%@'", v6, v5];

  [v4 addObject:v7];
}

void sub_100040000(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.groupmapping");
  v3 = qword_1002C50A8;
  qword_1002C50A8 = v2;
}

void sub_1000402D4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000402E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100040314(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v2 = [[_CPLCloudKitTaskGroupThrottler alloc] initWithGroupName:a1[5] minimumThrottlingInterval:*(a1[4] + 24)];
    [*(a1[4] + 16) setObject:v2 forKeyedSubscript:a1[5]];
  }

  v3 = a1[6];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [(_CPLCloudKitTaskGroupThrottler *)v2 shouldRunOperationsNow:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[7] + 8) + 24) = v5;
}

void sub_10004057C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000405A4(void *a1)
{
  v3 = [CPLCloudKitErrors bestErrorForUnderlyingError:a1[4]];
  v2 = [*(a1[5] + 16) objectForKeyedSubscript:a1[6]];
  [v2 operationDidFinishNow:a1[7] withError:v3];
}

void sub_100040754(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100040768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040788(void *a1)
{
  if ([*(a1[4] + 16) count])
  {
    v2 = [[NSString alloc] initWithFormat:@"\n%@", a1[5]];
    v3 = +[NSDate date];
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1[4] + 16), "count")}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1[4] + 16) allKeys];
    v6 = [v5 sortedArrayUsingSelector:"compare:"];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1[4] + 16) objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v10)];
          v12 = [v11 statusWithNow:v3];
          [v4 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [v4 componentsJoinedByString:v2];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_100040D1C(uint64_t a1)
{
  ++*(*(a1 + 32) + 56);
  v1 = *(a1 + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    v3 = dispatch_time(0, 30000000000);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100040DD8;
    block[3] = &unk_100271F40;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

void sub_100040DD8(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      if (qword_1002C50B0 != -1)
      {
        sub_100199058();
      }

      v3 = qword_1002C50B8;
      if (os_log_type_enabled(qword_1002C50B8, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 56);
        v6 = *(v4 + 72);
        v7 = 134218498;
        v8 = v5;
        v9 = 2114;
        v10 = v6;
        v11 = 1024;
        v12 = 30;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Throttled %lu operations for '%{public}@' in the last %ds", &v7, 0x1Cu);
      }

      v1 = *(a1 + 32);
    }

    *(v1 + 56) = 0;
  }
}

void sub_1000414F8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.task.throttling");
  v3 = qword_1002C50B8;
  qword_1002C50B8 = v2;
}

void sub_1000416AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041774;
  v10[3] = &unk_1002721A0;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_100041774(uint64_t a1)
{
  v8 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v8)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    v3 = [CPLCloudKitErrors CPLErrorForCloudKitError:v8 withRequestUUIDs:v2 description:@"Failed to get list of disabled features"];

    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = v4[36];
    v6 = *(a1 + 48);
    v7 = v4[35];
    (*(v4[34] + 16))();
  }
}

void sub_100041974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041A3C;
  v10[3] = &unk_1002721A0;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_100041A3C(uint64_t a1)
{
  v5 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v5)
  {
    v2 = [*(a1 + 32) lastOperationRequestUUIDs];
    v3 = [CPLCloudKitErrors CPLErrorForCloudKitError:v5 withRequestUUIDs:v2 description:@"Failed to get derivatives upload configuration"];

    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 280), *(a1 + 48));
    v4 = *(a1 + 32);
    if (*(v4 + 296) == 1)
    {
      [v4 fetchDisabledFeatures];
    }

    else
    {
      (*(*(v4 + 272) + 16))(*(v4 + 272), *(v4 + 288), 0, *(v4 + 280), 0);
    }
  }
}

void sub_100041BE0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    objc_storeStrong((v5 + 288), a2);
    [*(a1 + 32) fetchDerivativesFilter];
  }

  else
  {
    (*(*(v5 + 272) + 16))();
  }
}

void sub_100041F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041F50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042014;
  v8[3] = &unk_100274040;
  v8[4] = v4;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 dispatchAsync:v8];
}

id sub_100042014(id result)
{
  v2 = *(*(result + 7) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    v4 = [*(result + 4) callbackOperationDidFinishWithError:*(result + 5)];
    v5 = *(v3 + 4);
    if (*(v3 + 5))
    {
      (*(v5[34] + 16))();
    }

    else
    {
      [v5 fetchUserRecord];
    }

    [*(v3 + 6) setCompletedUnitCount:{objc_msgSend(*(v3 + 6), "totalUnitCount")}];
    v6 = *(v3 + 6);

    return [v6 setCancellationHandler:0];
  }

  return result;
}

void sub_1000420C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, v2);
}

void sub_1000421A4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.setup");
  v3 = qword_1002C50C8;
  qword_1002C50C8 = v2;
}

void sub_100042488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000424A8(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained hash];
  kdebug_trace();

  (*(*(a1 + 32) + 16))();
}

id sub_100042698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _runOperationsWithCurrentUserID:a2];
  }

  else
  {
    return (*(v2[34] + 16))();
  }
}

void sub_100042790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPLEnableWorkaroundFor101242629();
  if (v3 || (v4 & 1) != 0 || (v5 = (a1 + 32), v6 = *(*(a1 + 32) + 296), v6 != objc_opt_class()) || ([*(*v5 + 36) additionalInfo], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    (*(*(*(a1 + 32) + 272) + 16))();
  }

  else
  {
    v8 = [*(*v5 + 38) scopeIdentifier];
    v9 = [*v5 mainScopeIdentifier];
    if ([v8 isEqualToString:v9])
    {
      v10 = [v8 hasPrefix:CPLMainScopeIdentifierForAppPrefix];

      if ((v10 & 1) == 0)
      {
        sub_1001995E0((a1 + 32), 304, a1);
      }
    }

    else
    {
    }
  }
}

void sub_100042F7C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100042FB0(id a1)
{
  v1 = [CPLCloudKitQueryOptions alloc];
  v2 = [NSPredicate predicateWithFormat:@"TRUEPREDICATE"];
  v22 = [(CPLCloudKitQueryOptions *)v1 initWithRecordType:@"CPLAssetAndMasterByAssetDate" predicate:v2 resultsLimit:200];

  v3 = [CPLCloudKitQueryOptions alloc];
  v4 = [NSPredicate predicateWithFormat:@"TRUEPREDICATE"];
  v5 = [(CPLCloudKitQueryOptions *)v3 initWithRecordType:@"CPLAssetSparseByCreateTime" predicate:v4 resultsLimit:200];

  v6 = objc_opt_class();
  v7 = sub_100043240(v6, 0);
  v23[0] = v7;
  v24[0] = v22;
  v8 = objc_opt_class();
  v9 = sub_100043240(v8, @"Sparse");
  v23[1] = v9;
  v24[1] = v5;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v23[2] = v11;
  v12 = [CPLCloudKitQueryOptions alloc];
  v13 = [NSPredicate predicateWithFormat:@"type = %@", @"CPLAlbum"];
  v14 = [(CPLCloudKitQueryOptions *)v12 initWithRecordType:@"CPLRecordByType" predicate:v13 resultsLimit:5];
  v24[2] = v14;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v23[3] = v16;
  v17 = [CPLCloudKitQueryOptions alloc];
  v18 = [NSPredicate predicateWithFormat:@"type = %@", @"CPLFaceCrop"];
  v19 = [(CPLCloudKitQueryOptions *)v17 initWithRecordType:@"CPLRecordByType" predicate:v18 resultsLimit:25];
  v24[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v21 = qword_1002C50D0;
  qword_1002C50D0 = v20;
}

id sub_100043240(objc_class *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSString alloc];
    v5 = NSStringFromClass(a1);
    v6 = [v4 initWithFormat:@"%@_%@", v5, v3];
  }

  else
  {
    v6 = NSStringFromClass(a1);
  }

  return v6;
}

void sub_1000432E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      ++*(*(*(a1 + 72) + 8) + 24);
      v11 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100043694;
      v21[3] = &unk_1002740F8;
      v12 = *(a1 + 72);
      v21[4] = v11;
      v21[5] = v12;
      v21[6] = *(a1 + 88);
      [v11 dispatchAsync:v21];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_1000036BC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Pulled change (query) %@", buf, 0xCu);
        }
      }

      v20 = 0;
      v14 = [v8 cpl_recordChangeMissingResourceProperties:&v20 scopeIdentifier:*(a1 + 40) scopeProvider:*(a1 + 32) currentUserRecordID:*(a1 + 48)];
      v15 = v20;
      if (v14)
      {
        if ([*(a1 + 56) supportsDownloadOfChange:v14 scopeProvider:*(a1 + 32)])
        {
          [*(a1 + 56) finalizeRecord:v14 fromCKRecord:v8 currentUserID:*(a1 + 48)];
          if ([v14 inExpunged])
          {
            v16 = objc_opt_class();
            v17 = [v14 scopedIdentifier];
            v18 = [v16 newDeleteChangeWithScopedIdentifier:v17];

            v14 = v18;
          }

          [*(*(*(a1 + 80) + 8) + 40) addRecord:v14];
          goto LABEL_22;
        }

        if (_CPLSilentLogging)
        {
LABEL_22:

          objc_autoreleasePoolPop(v10);
          goto LABEL_23;
        }

        v19 = sub_1000036BC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring unsupported %@", buf, 0xCu);
        }
      }

      else
      {
        if (_CPLSilentLogging)
        {
          v14 = 0;
          goto LABEL_22;
        }

        v19 = sub_1000036BC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to translate CKRecord to CPLRecord: %@", buf, 0xCu);
        }

        v14 = 0;
      }

      goto LABEL_22;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10019996C(v7, v9);
  }

LABEL_23:
}

void sub_1000436C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 64) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    *(v8 + 24) = 1;
    v9 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000437E0;
    v12[3] = &unk_100274198;
    v12[4] = v9;
    v10 = v6;
    v11 = *(a1 + 72);
    v13 = v10;
    v18 = v11;
    v16 = *(a1 + 48);
    v14 = v5;
    v15 = *(a1 + 40);
    v17 = *(a1 + 56);
    [v9 dispatchAsync:v12];
  }
}

void sub_1000437E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    if (+[CPLCloudKitErrors isCloudKitOperationCancelledError:](CPLCloudKitErrors, "isCloudKitOperationCancelledError:", v3) || ([v3 isCPLOperationCancelledError] & 1) != 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_1000036BC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v12 = "Query was cancelled";
          v13 = v11;
          v14 = OS_LOG_TYPE_DEBUG;
          v15 = 2;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
        }

LABEL_28:
      }
    }

    else
    {
      v4 = [v3 domain];
      if ([v4 isEqual:CKErrorDomain])
      {
        if ([v3 code] == 11 || objc_msgSend(v3, "code") == 12)
        {

LABEL_12:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v8 = sub_1000036BC();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(*v2 + 37);
              *buf = 138412546;
              *&buf[4] = v9;
              v18 = 2048;
              v19 = [v3 code];
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Query for %@ failed because it is not supported (CloudKit error: %ld)", buf, 0x16u);
            }
          }

          v10 = *(a1 + 56);
          if (!v10)
          {
            v10 = @"Regular";
          }

          v6 = [CPLErrors cplErrorWithCode:255 description:@"Query for %@ - %@ is not supported for this user", *(*(a1 + 32) + 296), v10];
          goto LABEL_19;
        }

        v7 = [v3 code];

        if (v7 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_1000036BC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = *(*v2 + 37);
          *buf = 138412546;
          *&buf[4] = v16;
          v18 = 2112;
          v19 = v3;
          v12 = "Query for %@ failed with error: %@";
          v13 = v11;
          v14 = OS_LOG_TYPE_ERROR;
          v15 = 22;
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    sub_100199A2C(v3, v2, buf);
    v6 = *buf;
    goto LABEL_19;
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    v5 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

  v6 = 0;
LABEL_19:
  (*(*(a1 + 72) + 16))();
}

void sub_100043D30(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = qword_1002C50E0;
  qword_1002C50E0 = v3;
}

void sub_100043F84(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.query");
  v3 = qword_1002C50F8;
  qword_1002C50F8 = v2;
}

id CPLFuzziedFileUTI(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1002C5108 != -1)
    {
      sub_100199BC8();
    }

    if ([qword_1002C5100 containsObject:v1])
    {
      v2 = v1;
    }

    else
    {
      v3 = [UTType typeWithIdentifier:v1];
      v4 = v3;
      if (v3)
      {
        v5 = UTTypeImage;
        if (([v3 conformsToType:UTTypeImage] & 1) == 0)
        {
          v5 = UTTypeAudio;
          if (([v4 conformsToType:UTTypeAudio] & 1) == 0)
          {
            v5 = UTTypeMovie;
            if (([v4 conformsToType:UTTypeMovie] & 1) == 0)
            {
              v5 = UTTypeText;
              if (![v4 conformsToType:UTTypeText])
              {
                v5 = UTTypeItem;
              }
            }
          }
        }
      }

      else
      {
        v5 = UTTypeItem;
      }

      v2 = [(UTType *)v5 identifier];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10004410C(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"public.heic", @"public.jpeg", @"public.png", @"com.apple.quicktime-movie", @"public.mpeg-4", @"com.apple.photos.apple-adjustment-envelope", @"public.archive", 0}];
  v2 = qword_1002C5100;
  qword_1002C5100 = v1;
}

uint64_t CPLRemappedByReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      if ((sub_100199C78(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_100044B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    if (!v7)
    {
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) zoneID];
      v22 = [v21 cpl_zoneName];
      v23 = [CPLErrors cplErrorWithCode:25 description:@"%@ %@ not found in %@", v19, v20, v22];
      (*(v18 + 16))(v18, 0, v23);

LABEL_19:
      return;
    }

    v64 = 0;
    v8 = [*(a1 + 48) scopedIdentifier];
    v9 = [v8 scopeIdentifier];
    v10 = [v7 cpl_recordChangeMissingResourceProperties:&v64 scopeIdentifier:v9 scopeProvider:*(a1 + 48) currentUserRecordID:*(a1 + 56)];
    v11 = v64;

    if (v10)
    {
      if (([v10 inExpunged] & 1) != 0 || objc_msgSend(v10, "isDelete"))
      {
        v13 = *(a1 + 64);
        v12 = *(a1 + 72);
        v14 = *(a1 + 40);
        v15 = [*(a1 + 32) zoneID];
        v16 = [v15 cpl_zoneName];
        v17 = [CPLErrors cplErrorWithCode:25 description:@"%@ %@ is deleted or sparse in %@", v12, v14, v16];
        (*(v13 + 16))(v13, 0, v17);
      }

      else
      {
        v30 = *(a1 + 72);
        if (objc_opt_isKindOfClass())
        {
          if ([v10 supportsResources] && *(*(a1 + 48) + 288))
          {
            v56 = +[NSFileManager defaultManager];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            obj = [v10 resources];
            v58 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
            if (v58)
            {
              v57 = *v61;
              v55 = v7;
              while (2)
              {
                for (i = 0; i != v58; i = i + 1)
                {
                  if (*v61 != v57)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v32 = *(*(&v60 + 1) + 8 * i);
                  v33 = [v32 identity];
                  v34 = [v33 fileURL];

                  if (v34)
                  {
                    v35 = v11;
                    v36 = [NSString alloc];
                    v37 = *(a1 + 72);
                    v38 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v32 resourceType]);
                    v39 = [v36 initWithFormat:@"resource-%@-%@", v37, v38];

                    v40 = [*(*(a1 + 48) + 288) URLByAppendingPathComponent:v39 isDirectory:0];
                    v59 = 0;
                    LODWORD(v37) = [v56 moveItemAtURL:v34 toURL:v40 error:&v59];
                    v41 = v59;
                    if (!v37)
                    {
                      v49 = *(a1 + 64);
                      v50 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v32 resourceType]);
                      v51 = objc_opt_class();
                      v52 = [v10 scopedIdentifier];
                      v53 = [CPLErrors cplErrorWithCode:150 underlyingError:v41 description:@"Failed to move %@ of %@ %@ to its destination", v50, v51, v52];
                      (*(v49 + 16))(v49, 0, v53);

                      return;
                    }

                    v42 = [v32 identity];
                    [v42 setFileURL:v40];

                    v11 = v35;
                    v7 = v55;
                  }
                }

                v58 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }
            }
          }

          (*(*(a1 + 64) + 16))();
          goto LABEL_18;
        }

        v43 = *(a1 + 64);
        v44 = objc_opt_class();
        v45 = *(a1 + 72);
        v46 = *(a1 + 40);
        v15 = [*(a1 + 32) zoneID];
        v47 = [v15 cpl_zoneName];
        v48 = [CPLErrors cplErrorWithCode:25 description:@"%@ %@ is not the expected %@ in %@", v44, v46, v45, v47];
        (*(v43 + 16))(v43, 0, v48);
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        if (qword_1002C5110 != -1)
        {
          sub_100199D18();
        }

        v24 = qword_1002C5118;
        if (os_log_type_enabled(qword_1002C5118, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v66 = v7;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to translate CKRecord to CPLRecord: %@", buf, 0xCu);
        }
      }

      v25 = *(a1 + 64);
      v26 = *(a1 + 40);
      v27 = [*(a1 + 32) zoneID];
      v28 = [v27 cpl_zoneName];
      v29 = [CPLErrors cplErrorWithCode:150 description:@"Failed to translate record %@ in %@ to %@", v26, v28, *(a1 + 72)];
      (*(v25 + 16))(v25, 0, v29);
    }

LABEL_18:

    goto LABEL_19;
  }

  v5 = *(a1 + 64);
  v6 = *(*(a1 + 64) + 16);

  v6();
}

void sub_1000451FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) scopedIdentifier];
    v6 = [v5 identifier];
    v7 = objc_opt_class();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004531C;
    v8[3] = &unk_100274298;
    v8[4] = *(a1 + 32);
    v9 = v3;
    [v4 _fetchRecordWithIdentifier:v6 expectedClass:v7 currentUserRecordID:v9 completionHandler:v8];
  }

  else
  {
    (*(v4[37] + 16))();
  }
}

void sub_10004531C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 masterIdentifier];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = objc_opt_class();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000454AC;
      v13[3] = &unk_100274270;
      v8 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v4;
      [v6 _fetchRecordWithIdentifier:v5 expectedClass:v7 currentUserRecordID:v8 completionHandler:v13];
    }

    else
    {
      v9 = v6[37];
      v10 = objc_opt_class();
      v11 = [v4 scopedIdentifier];
      v12 = [CPLErrors cplErrorWithCode:150 description:@"%@ %@ has no master", v10, v11];
      (*(v9 + 16))(v9, 0, 0, v12);
    }
  }

  else
  {
    (*(*(*(a1 + 32) + 296) + 16))();
  }
}

uint64_t sub_1000454AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 296);
  if (a2)
  {
    return (*(v4 + 16))(v4, a2, *(a1 + 40), 0);
  }

  else
  {
    return (*(v4 + 16))(v4, 0, 0, a3);
  }
}

void sub_1000457F0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.fetch-asset-master");
  v3 = qword_1002C5118;
  qword_1002C5118 = v2;
}

uint64_t CPLCKFeatureAvailabilityRequestReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(CPLCKAvailabilityRequest);
        [a1 addFeatures:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CPLCKAvailabilityRequestReadFrom(v13, a2))
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

void sub_100047254(id a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100047314;
  v4[3] = &unk_100274300;
  v1 = objc_alloc_init(NSMutableDictionary);
  v5 = v1;
  [CPLResource enumerateResourceTypesWithBlock:v4];
  v2 = qword_1002C5130;
  qword_1002C5130 = v1;
  v3 = v1;
}

void sub_100047314(uint64_t a1, uint64_t a2)
{
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = *(a1 + 32);
  v5 = [CPLResource shortDescriptionForResourceType:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_100047E38(id a1)
{
  v1 = qword_1002C5150;
  qword_1002C5150 = &off_100291558;
}

void sub_100048140(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!*(a1 + 32))
    {
      sub_10019A038(a1);
      goto LABEL_13;
    }

    v9 = *(*(a1 + 40) + 272);
  }

  else
  {
    if ([v7 isCPLErrorWithCode:23])
    {
      if (*(a1 + 32) && (_CPLSilentLogging & 1) == 0)
      {
        sub_10019A130((a1 + 32));
      }

      v10 = *(*(*(a1 + 40) + 272) + 16);
      goto LABEL_12;
    }

    v9 = *(*(a1 + 40) + 272);
    if (*(a1 + 32))
    {
      v11 = *(a1 + 32);
    }
  }

  v10 = *(v9 + 16);
LABEL_12:
  v10();
LABEL_13:
}

id sub_100048290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3[34] + 16))();
  }

  else
  {
    return [v3 _deleteZoneWithCurrentUserID:a2];
  }
}

void sub_1000488E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000489B0;
  v11[3] = &unk_1002721A0;
  v11[4] = v8;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 dispatchAsync:v11];
}

void sub_1000489B0(uint64_t a1)
{
  v5 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v2 = [*(a1 + 48) count];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _didFinishDeleteWithError:0];
  }

  else
  {
    v4 = [v3 _errorForDeleteError:v5];
    [v3 _didFinishDeleteWithError:v4];
  }
}

void sub_100048A44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100048B0C;
  v11[3] = &unk_1002721A0;
  v11[4] = v8;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 dispatchAsync:v11];
}

void sub_100048B0C(uint64_t a1)
{
  v5 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v2 = [*(a1 + 48) count];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _didFinishDeleteWithError:0];
  }

  else
  {
    v4 = [v3 _errorForDeleteError:v5];
    [v3 _didFinishDeleteWithError:v4];
  }
}

void sub_100048C48(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.deletezone");
  v3 = qword_1002C5168;
  qword_1002C5168 = v2;
}

id sub_100049790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userIdentity];
  v5 = [v4 lookupInfo];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10019A7B0(v3);
  }

  sub_10019A854(v4, a1, &v8);
  v6 = v8;
LABEL_3:

  return v6;
}

void sub_100049854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049924;
  v8[3] = &unk_100274408;
  v8[4] = v4;
  v9 = v3;
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v4 dispatchAsync:v8];
}

void sub_100049924(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    sub_10019A8B4(_CPLSilentLogging, a1);
  }

  else
  {
    sub_10019A97C(_CPLSilentLogging, v2, a1);
  }
}

void sub_100049E0C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    objc_storeStrong((v5 + 312), a2);
    [*(a1 + 32) _runOperations];
  }

  else
  {
    (*(*(v5 + 304) + 16))();
  }
}

void sub_100049FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(v3[38] + 16);

    v4();
    return;
  }

  v5 = [v3 scopeType];
  v6 = *(a1 + 32);
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v7 = [*(a1 + 32) scope];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004A3E0;
      v13[3] = &unk_100274480;
      v13[4] = *(a1 + 32);
      [v6 _createLibraryShareWithScopeChange:v7 completionHandler:v13];
      goto LABEL_17;
    }

    if (v5 == 7)
    {
      v7 = [*(a1 + 32) scope];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004A4BC;
      v12[3] = &unk_100274480;
      v12[4] = *(a1 + 32);
      [v6 _createCollectionShareWithScopeChange:v7 completionHandler:v12];
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 == 1)
    {
      v7 = [*(a1 + 32) scope];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004A598;
      v11[3] = &unk_100274480;
      v11[4] = *(a1 + 32);
      [v6 _createLibraryWithScopeChange:v7 completionHandler:v11];
      goto LABEL_17;
    }

    if (v5 == 2)
    {
      v7 = [*(a1 + 32) scope];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004A304;
      v14[3] = &unk_100274480;
      v14[4] = *(a1 + 32);
      [v6 _createMomentShareWithScopeChange:v7 completionHandler:v14];
LABEL_17:

      return;
    }
  }

  v8 = v6[38];
  v10 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v6 scopeType]);
  v9 = [CPLErrors cplErrorWithCode:38 description:@"%@ is an unsupported scope type to create", v10];
  (*(v8 + 16))(v8, 0, 0, v9);
}

void sub_10004A304(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _clearPartiallyCreatedZoneIfNecessary];
    (*(*(*(a1 + 32) + 304) + 16))();
  }

  else
  {
    v7 = v6[38];
    v8 = [v6 cloudKitScope];
    v9 = [v8 transportScope];
    (*(v7 + 16))(v7, v10, v9, 0);
  }
}

void sub_10004A3E0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _clearPartiallyCreatedZoneIfNecessary];
    (*(*(*(a1 + 32) + 304) + 16))();
  }

  else
  {
    v7 = v6[38];
    v8 = [v6 cloudKitScope];
    v9 = [v8 transportScope];
    (*(v7 + 16))(v7, v10, v9, 0);
  }
}

void sub_10004A4BC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _clearPartiallyCreatedZoneIfNecessary];
    (*(*(*(a1 + 32) + 304) + 16))();
  }

  else
  {
    v7 = v6[38];
    v8 = [v6 cloudKitScope];
    v9 = [v8 transportScope];
    (*(v7 + 16))(v7, v10, v9, 0);
  }
}

void sub_10004A598(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = v5[38];
  if (a3)
  {
    (*(v6 + 16))(v5[38], 0, 0, a3);
  }

  else
  {
    v7 = [v5 cloudKitScope];
    v8 = [v7 transportScope];
    (*(v6 + 16))(v6, v9, v8, 0);
  }
}

void sub_10004A878(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004A9C4;
  v16[3] = &unk_1002744A8;
  v16[4] = v8;
  v17 = v7;
  v18 = *(a1 + 40);
  v9 = *(a1 + 72);
  v19 = v6;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v20 = v13;
  v21 = v12;
  v14 = v6;
  v15 = v7;
  [v8 dispatchAsync:v16];
}

void sub_10004A9C4(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100003744();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 48);
        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save records %@: %@", buf, 0x16u);
      }
    }

    v5 = [v2 domain];
    if ([v5 isEqualToString:CKUnderlyingErrorDomain])
    {
      if ([v2 code] == 7)
      {

LABEL_23:
        v8 = [CPLErrors cplErrorWithCode:35 underlyingError:v2 description:@"Rate limited or throttled: %@", v2];
        goto LABEL_24;
      }

      v18 = [v2 code];

      if (v18 == 2008)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v17 = [*(a1 + 32) lastOperationRequestUUIDs];
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v2 withRequestUUIDs:v17 description:@"Failed to save records %@: %@", *(a1 + 48), v2];

LABEL_24:
    (*(*(a1 + 88) + 16))();
    goto LABEL_25;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003744();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved records %@", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 64) URL];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003744();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) scope];
      v11 = [v8 cpl_redactedShareURL];
      *buf = 138412546;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Share URL for %@ after publishing: %{public}@", buf, 0x16u);
    }
  }

  v12 = [*(a1 + 32) scope];
  v13 = [v12 copy];

  [v13 updateWithCKShare:*(a1 + 64) currentUserID:*(a1 + 72)];
  if (*(a1 + 80))
  {
    [v13 updateWithRootCKRecord:?];
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 288);
  *(v14 + 288) = v13;
  v16 = v13;

  (*(*(a1 + 88) + 16))();
LABEL_25:
}

void sub_10004ADA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    v41 = 0;
    v9 = [v7 shouldRunOperationsWithError:&v41];
    v10 = v41;
    if ((v9 & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
LABEL_17:

      goto LABEL_18;
    }

    v11 = [*v8 identification];
    v12 = [v11 shareRecordName];
    if (!v12)
    {
      sub_10019ACE0(a1, (a1 + 32));
    }

    v34 = v12;
    if ([v12 isEqualToString:CKRecordNameZoneWideShare])
    {
      v13 = [CKShare alloc];
      v14 = [*v8 cloudKitScope];
      v15 = [v14 zoneID];
      v16 = [v13 initWithRecordZoneID:v15];

      v17 = 0;
    }

    else
    {
      v18 = [*v8 scope];
      v19 = *(*v8 + 39);
      v20 = [*v8 cloudKitScope];
      v21 = [v20 zone];
      v17 = [v18 rootRecordUsingTempCKAssetURL:v19 inZone:v21];

      if (!v17)
      {
        v32 = *(a1 + 40);
        v16 = +[CPLErrors unknownError];
        (*(v32 + 16))(v32, 0, v16);
LABEL_16:

        goto LABEL_17;
      }

      v22 = [*v8 cloudKitScope];
      v14 = [v22 recordIDWithRecordName:v34];

      v16 = [[CKShare alloc] initWithRootRecord:v17 shareID:v14];
    }

    v23 = [*v8 scope];
    v24 = [v11 shareTypeForScopeChange:v23];

    if (!v24)
    {
      sub_10019ABDC(a1, (a1 + 32));
    }

    v33 = v11;
    [v16 setObject:v24 forKeyedSubscript:CKShareTypeKey];
    v25 = [*v8 scope];
    [v25 updateCKShare:v16];

    v26 = [*v8 scope];
    v27 = [v26 share];
    v28 = [v27 participants];

    if ([v16 publicPermission] == 1 && objc_msgSend(v28, "count"))
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10004B15C;
      v35[3] = &unk_1002744F8;
      v29 = *(a1 + 32);
      v40 = *(a1 + 40);
      v30 = v16;
      v31 = *(a1 + 32);
      v36 = v30;
      v37 = v31;
      v38 = v17;
      v39 = v5;
      [v29 fetchShareParticipantsForParticipants:v28 completionBlock:v35];
    }

    else
    {
      [*(a1 + 32) _createCKShare:v16 andRootRecord:v17 currentUserID:v5 withCompletionHandler:*(a1 + 40)];
    }

    v11 = v33;
    goto LABEL_16;
  }

  (*(*(a1 + 40) + 16))();
LABEL_18:
}

void sub_10004B15C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) addParticipant:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [*(a1 + 40) _createCKShare:*(a1 + 32) andRootRecord:*(a1 + 48) currentUserID:*(a1 + 56) withCompletionHandler:*(a1 + 64)];
  }
}

void sub_10004B4EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B5E0;
  v13[3] = &unk_100274548;
  v13[4] = v8;
  v14 = v7;
  v9 = *(a1 + 48);
  v15 = v6;
  v10 = *(a1 + 56);
  v17 = v9;
  v18 = v10;
  v16 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  [v8 dispatchAsync:v13];
}

void sub_10004B5E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v4 = [*v2 identification];
  v5 = *(*v2 + 37);
  *(*v2 + 37) = v4;

  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100003744();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*v2 cloudKitScope];
        v8 = [v7 zoneID];
        v9 = [*v2 scope];
        *buf = 138412802;
        *&buf[4] = v8;
        v38 = 2112;
        v39 = v9;
        v40 = 2112;
        v41 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create zone %@ for %@: %@", buf, 0x20u);
      }
    }

    v10 = [v3 domain];
    if ([v10 isEqualToString:CKUnderlyingErrorDomain])
    {
      if ([v3 code] == 7)
      {

LABEL_20:
        v12 = [CPLErrors cplErrorWithCode:35 underlyingError:v3 description:@"Rate limited or throttled: %@", v3];
        goto LABEL_21;
      }

      v30 = [v3 code];

      if (v30 == 2008)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v26 = [CPLCloudKitErrors realErrorForError:v3];
    v27 = [*v2 lastOperationRequestUUIDs];
    v28 = [*v2 cloudKitScope];
    v29 = [v28 zoneID];
    v12 = [CPLCloudKitErrors CPLErrorForCloudKitError:v26 withRequestUUIDs:v27 description:@"Failed to create zone %@: %@", v29, v3];

LABEL_21:
    (*(*(a1 + 64) + 16))();
    goto LABEL_29;
  }

  v11 = [*(a1 + 48) firstObject];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 zoneID];
    v14 = [v13 databaseScope];

    if (v14 && v14 != *(a1 + 72))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = sub_100003744();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [*(a1 + 32) scope];
          v33 = *(a1 + 72);
          *buf = 138412802;
          *&buf[4] = v32;
          v38 = 2048;
          v39 = v33;
          v40 = 2048;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "While trying to create zone for %@, expected database scope was %ld and CloudKit returned %ld", buf, 0x20u);
        }
      }

      v34 = *(a1 + 64);
      v21 = [CPLErrors cplErrorWithCode:150 description:@"CloudKit returned a wrong database scope"];
      v25 = *(v34 + 16);
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = sub_100003744();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [*(a1 + 56) zone];
          v36 = [*(a1 + 56) zone];
          v35 = [v36 zoneID];
          v17 = [v35 databaseScope];
          v18 = [v12 zoneID];
          v19 = [v18 databaseScope];
          v20 = [*(a1 + 32) scope];
          *buf = 138413314;
          *&buf[4] = v16;
          v38 = 2048;
          v39 = v17;
          v40 = 2112;
          v41 = v12;
          v42 = 2048;
          v43 = v19;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created from %@ (%ld) to new zone %@ (%ld) for %@", buf, 0x34u);
        }
      }

      v21 = -[CPLCloudKitScope initWithZone:options:]([CPLCloudKitScope alloc], "initWithZone:options:", v12, [*(a1 + 56) options]);
      [*(a1 + 32) resetCloudKitScope:v21];
      v22 = [*(a1 + 32) identification];
      v23 = *(a1 + 32);
      v24 = *(v23 + 296);
      *(v23 + 296) = v22;

      v25 = *(*(a1 + 64) + 16);
    }

    v25();
  }

  else
  {
    sub_10019ADE4(v2, a1, buf);
    v21 = *buf;
  }

LABEL_29:
}

id sub_10004BB78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _createCKShareWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_10004BC60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v6 = [*(a1 + 32) copy];
    [v6 setShare:0];
    v5 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

id sub_10004BD90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _createCKShareWithCompletionHandler:*(a1 + 40)];
  }
}

id sub_10004BE94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _createCKShareWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_10004C28C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) cloudKitScope];
    v10 = [v9 zoneID];
    v11 = [v10 cpl_zoneName];
    v12 = [CPLCloudKitErrors CPLErrorForCloudKitError:v7 withRequestUUIDs:v17 description:@"Error fetching %@ from %@", v8, v11];

    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  v12 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = *(a1 + 48);
    if (isKindOfClass)
    {
      (*(v14 + 16))(*(a1 + 48), v12, 0);
      goto LABEL_9;
    }

    v16 = [CPLErrors cplErrorWithCode:38 description:@"%@ is not a CKShare", *(a1 + 32)];
    (*(v14 + 16))(v14, 0, v16);
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [CPLErrors cplErrorWithCode:38 description:@"Scope has no %@ CKShare to update", *(a1 + 32)];
    (*(v15 + 16))(v15, 0, v16);
  }

LABEL_9:
}

void sub_10004C520(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [v6 shouldRunOperationsWithError:&v19];
    v8 = v19;
    if (v7)
    {
      v9 = [CKModifyRecordsOperation alloc];
      v20 = *(a1 + 40);
      v10 = [NSArray arrayWithObjects:&v20 count:1];
      v11 = [v9 initWithRecordsToSave:v10 recordIDsToDelete:0];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10004C704;
      v15[3] = &unk_1002745C0;
      v12 = *(a1 + 40);
      v15[4] = *(a1 + 32);
      v16 = v12;
      v18 = *(a1 + 48);
      v17 = v5;
      [v11 setModifyRecordsCompletionBlock:v15];
      v13 = *(a1 + 32);
      v14 = [v13 cloudKitScope];
      [v13 launchOperation:v11 type:CPLCloudKitOperationTypeForScope(v14) withContext:0];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10004C704(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004C808;
  v11[3] = &unk_100273BA0;
  v11[4] = v8;
  v12 = v7;
  v13 = *(a1 + 40);
  v16 = *(a1 + 56);
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v7;
  [v8 dispatchAsync:v11];
}

void sub_10004C808(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100003744();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 48);
        *buf = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save record %@: %@", buf, 0x16u);
      }
    }

    v5 = [v2 domain];
    if ([v5 isEqualToString:CKUnderlyingErrorDomain])
    {
      if ([v2 code] == 7)
      {

LABEL_21:
        v8 = [CPLErrors cplErrorWithCode:35 underlyingError:v2 description:@"Rate limited or throttled: %@", v2];
        goto LABEL_22;
      }

      v15 = [v2 code];

      if (v15 == 2008)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v14 = [*(a1 + 32) lastOperationRequestUUIDs];
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v2 withRequestUUIDs:v14 description:@"Failed to save recor %@: %@", *(a1 + 48), v2];

LABEL_22:
    (*(*(a1 + 72) + 16))();
    goto LABEL_23;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003744();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved records %@", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 48) URL];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003744();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) scope];
      v11 = [v8 cpl_redactedShareURL];
      *buf = 138412546;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Share URL for %@ after publishing: %{public}@", buf, 0x16u);
    }
  }

  v12 = [*(a1 + 32) scope];
  v13 = [v12 copy];

  [v13 updateWithCKShare:*(a1 + 48) currentUserID:*(a1 + 64)];
  (*(*(a1 + 72) + 16))();

LABEL_23:
}

id sub_10004D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }

  else
  {
    [*(a1 + 32) _modifyParticipantsOfCKShare:*(a1 + 40) newParticipants:a2];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);

    return [v8 _uploadCKShare:v9 completionHandler:v10];
  }
}

void sub_10004D8A8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[36];
  if (!v9 || v5)
  {
    if (v5)
    {
      (*(v7 + 16))(v6[36], 0, v5);
    }

    else
    {
      v8 = +[CPLErrors unknownError];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  else
  {
    [v6 _updateCKShare:v9 completionHandler:v6[36]];
  }
}

void sub_10004D9D0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.scopecreation");
  v3 = qword_1002C5178;
  qword_1002C5178 = v2;
}

void sub_10004DA10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10004DD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004DE04;
    v9[3] = &unk_100272268;
    v6 = v5;
    v7 = *(a1 + 32);
    v10 = v6;
    v11 = v7;
    [v2 _acceptShareWithURL:v6 currentUserID:a2 completionHandler:v9];
  }

  else
  {
    v8 = *(v2[39] + 16);

    v8();
  }
}

void sub_10004DE04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_10019B21C(a1, v3, buf);
    v9 = *buf;
  }

  else if ([*(*(a1 + 40) + 280) isCoherent])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100003788();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) cpl_redactedShareURL];
        *buf = 138543362;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accepted share from shareURL %{public}@", buf, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    v7 = *(v6 + 312);
    v8 = *(v6 + 272);
    v9 = [*(v6 + 280) transportScope];
    (*(v7 + 16))(v7, v8, v9, *(*(a1 + 40) + 304), 0);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100003788();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 32) cpl_redactedShareURL];
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Accepted share from shareURL %{public}@ is incoherent (CloudKit bug)", buf, 0xCu);
      }
    }

    v12 = *(a1 + 40);
    v13 = *(v12 + 312);
    v9 = [*(v12 + 272) scopeIdentifier];
    v14 = [CPLErrors cplErrorWithCode:38 description:@"CloudKit scope for %@ is incoherent", v9];
    (*(v13 + 16))(v13, 0, 0, 0, v14);
  }
}

void sub_10004E2F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 48) + 16);
LABEL_5:
    v5();
    goto LABEL_6;
  }

  if (([*(*(a1 + 32) + 280) options] & 2) == 0)
  {
    v5 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  [*(a1 + 32) _acceptShareWithMetadata:v6 currentUserID:*(a1 + 40) completionHandler:*(a1 + 48)];
LABEL_6:
}

void sub_10004E668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_10004E694(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) processErrorIfNeeded:v9];
  if (v9)
  {
    sub_10019B504(v7, v9, a1);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }
}

void sub_10004E728(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004E81C;
  v8[3] = &unk_1002746D0;
  v8[4] = v4;
  v9 = v3;
  v13 = *(a1 + 72);
  v7 = *(a1 + 56);
  v5 = v7;
  v12 = v7;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = v3;
  [v4 dispatchAsync:v8];
}

void sub_10004E81C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v4 = v3;
  v5 = *(*(*(v2 + 40) + 8) + 40);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = v5;
  v7 = [*(*(*(v2 + 48) + 8) + 40) share];
  v8 = [v7 recordID];
  v9 = [v8 zoneID];

  if (v6)
  {
    sub_10019B5F4(v6, a1);
    goto LABEL_33;
  }

  v10 = [*v2 controller];
  v11 = [v10 shouldIgnoreZoneWithZoneID:v9];

  if (!v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_100003788();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(*(*(a1 + 80) + 8) + 40) rootRecord];
        v16 = [*(a1 + 48) cpl_redactedShareURL];
        *buf = 138412546;
        *&buf[4] = v15;
        v65 = 2114;
        v66 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetched share metadata root record %@ for %{public}@", buf, 0x16u);
      }
    }

    v17 = [[CPLCloudKitScope alloc] initWithZoneID:v9 currentUserID:*(a1 + 56)];
    v18 = *(a1 + 32);
    v19 = *(v18 + 280);
    *(v18 + 280) = v17;

    if (([*(*(a1 + 32) + 280) isCoherent] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v20 = sub_100003788();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(*(a1 + 80) + 8) + 40);
        v22 = [v9 databaseScope];
        v23 = [*(*(a1 + 32) + 280) databaseScope];
        *buf = 138412802;
        *&buf[4] = v21;
        v65 = 2048;
        v66 = v22;
        v67 = 2048;
        v68 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ database scope is %ld but we expected %ld", buf, 0x20u);
      }
    }

    v24 = [*(*(*(a1 + 80) + 8) + 40) share];
    if (v24)
    {
      v59 = v4;
      v25 = [*(*(*(a1 + 80) + 8) + 40) rootRecord];
      v26 = [v24 recordID];
      v27 = v26;
      if (v25)
      {
        v62[0] = v26;
        v63[0] = v24;
        v28 = [v25 recordID];
        v62[1] = v28;
        v63[1] = v25;
        v29 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
      }

      else
      {
        v60 = v26;
        v61 = v24;
        v29 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      }

      v48 = [*(a1 + 32) controller];
      v49 = [v48 scopeTypeForCloudKitScope:*(*(a1 + 32) + 280) proposedScopeType:0 fetchedRecords:v29 currentUserID:*(a1 + 56)];

      if (v49)
      {
        v6 = 0;
        if (v49 == [*(*v2 + 272) scopeType])
        {
          v13 = 0;
        }

        else
        {
          v50 = &CPLFeatureNameEPP_ptr;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v51 = sub_100003788();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = *(*(a1 + 32) + 272);
              v57 = [*(a1 + 48) cpl_redactedShareURL];
              v58 = v24;
              v53 = [CPLScopeChange descriptionForScopeType:v49];
              *buf = 138412802;
              *&buf[4] = v52;
              v50 = &CPLFeatureNameEPP_ptr;
              v65 = 2112;
              v66 = v57;
              v67 = 2112;
              v68 = v53;
              v54 = v53;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Trying to accept %@ but the metadata at %@ is for a scope with scope type %@", buf, 0x20u);

              v24 = v58;
            }
          }

          v55 = [v50[135] descriptionForScopeType:v49];
          v56 = [v50[135] descriptionForScopeType:{objc_msgSend(*(*v2 + 272), "scopeType")}];
          v13 = [CPLErrors cplErrorWithCode:50 description:@"Accepting a %@ share with a %@ scope", v55, v56];

          v6 = 0;
        }
      }

      else
      {
        sub_10019B6B8(v2, a1, buf);
        v13 = *buf;
        v6 = 0;
      }

      v4 = v59;
      if (v13)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = [CPLErrors cplErrorWithCode:150 description:@"Failed to get share from URL"];
      if (v13)
      {
LABEL_30:
        v47 = *(*(a1 + 64) + 16);
        goto LABEL_31;
      }
    }

    v30 = [CPLEngineScope alloc];
    v31 = [*(*(a1 + 32) + 272) scopeIdentifier];
    v32 = [v30 initWithScopeIdentifier:v31 scopeType:{objc_msgSend(*(*(a1 + 32) + 272), "scopeType")}];
    v33 = *(a1 + 32);
    v34 = *(v33 + 288);
    *(v33 + 288) = v32;

    v35 = [*(a1 + 32) controller];
    v36 = [v35 zoneIdentificationForCloudKitScope:*(*(a1 + 32) + 280) engineScope:*(*(a1 + 32) + 288)];
    v37 = *(a1 + 32);
    v38 = *(v37 + 296);
    *(v37 + 296) = v36;

    v39 = [*(*(a1 + 32) + 296) cloudKitScope];
    v40 = *(a1 + 32);
    v41 = *(v40 + 280);
    *(v40 + 280) = v39;

    v42 = *(a1 + 32);
    v43 = [*(*(*(a1 + 80) + 8) + 40) share];
    [v42 _updateScopeAndFlagsWithCKRecord:v43 currentUserID:*(a1 + 56)];

    v44 = *(a1 + 32);
    v45 = [*(*(*(a1 + 80) + 8) + 40) rootRecord];
    [v44 _updateScopeAndFlagsWithCKRecord:v45 currentUserID:*(a1 + 56)];

    v46 = *(*(*(a1 + 80) + 8) + 40);
    v47 = *(*(a1 + 64) + 16);
LABEL_31:
    v47();

    goto LABEL_32;
  }

  v12 = [v9 cpl_zoneName];
  v13 = [CPLErrors cplErrorWithCode:38 description:@"Zone %@ is not supported by this engine", v12];

  (*(*(a1 + 64) + 16))();
LABEL_32:

LABEL_33:
}

void sub_10004F050(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v19 = 0;
    v5 = [v4 shouldRunOperationsWithError:&v19];
    v6 = v19;
    if (v5)
    {
      v7 = [CKAcceptSharesOperation alloc];
      v20 = *(a1 + 40);
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      v9 = [v7 initWithShareMetadatas:v8];

      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x3032000000;
      v17[3] = sub_100004410;
      v17[4] = sub_1000052EC;
      v18 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10019AF88;
      v14[3] = &unk_100274720;
      v10 = *(a1 + 32);
      v16 = v17;
      v14[4] = v10;
      v15 = *(a1 + 48);
      [v9 setPerShareCompletionBlock:v14];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004F2CC;
      v11[3] = &unk_100274770;
      v11[4] = *(a1 + 32);
      v13 = v17;
      v12 = *(a1 + 56);
      [v9 setAcceptSharesCompletionBlock:v11];
      [*(a1 + 32) launchOperation:v9 type:0 withContext:0];

      _Block_object_dispose(v17, 8);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_10004F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004F2CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004F390;
  v8[3] = &unk_100274748;
  v8[4] = v4;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 dispatchAsync:v8];
}

void sub_10004F390(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = v2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (!v4)
  {
    v4 = v2;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    sub_10019B8B4(v5, a1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004F56C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.share");
  v3 = qword_1002C5188;
  qword_1002C5188 = v2;
}

void sub_10004F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004F7F8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained hash];
  kdebug_trace();

  (*(*(a1 + 32) + 16))();
}

id sub_10004FE94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _downloadBatchWithCurrentUserID:a2];
  }

  else
  {
    return (*(v2[34] + 16))();
  }
}

void sub_10005086C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1000508F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = ++*(*(*(a1 + 72) + 8) + 24);
      v12 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100050CC8;
      v24[3] = &unk_100271F68;
      v24[4] = v12;
      v24[5] = v11;
      [v12 dispatchAsync:v24];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_1000037CC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Pulled change %@", buf, 0xCu);
        }
      }

      v23 = 0;
      v14 = [v8 cpl_recordChangeMissingResourceProperties:&v23 scopeIdentifier:*(a1 + 40) scopeProvider:*(a1 + 32) currentUserRecordID:*(a1 + 48)];
      v15 = v23;
      if (v14)
      {
        if ([*(a1 + 56) supportsDownloadOfChange:v14 scopeProvider:*(a1 + 32)])
        {
          [*(a1 + 56) finalizeRecord:v14 fromCKRecord:v8 currentUserID:*(a1 + 48)];
          if ([v14 inExpunged])
          {
            v16 = objc_opt_class();
            v17 = [v14 scopedIdentifier];
            v18 = [v16 newDeleteChangeWithScopedIdentifier:v17];

            v14 = v18;
          }

          [*(*(*(a1 + 80) + 8) + 40) addRecord:v14];
          goto LABEL_23;
        }

        if (_CPLSilentLogging)
        {
LABEL_23:

          objc_autoreleasePoolPop(v10);
          goto LABEL_24;
        }

        v20 = sub_1000037CC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Ignoring unsupported %@", buf, 0xCu);
        }
      }

      else
      {
        v19 = *(*(*(a1 + 88) + 8) + 40);
        if (!v19)
        {
          v19 = *(*(a1 + 32) + 320);
        }

        v20 = v19;
        v21 = [*(a1 + 56) updatedScopeChangeFromScopeChange:v20 currentUserID:*(a1 + 48) withCKRecord:v8];
        if (v21)
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v21);
        }

        v22 = [*(a1 + 56) updatedFlagsFromCKRecord:v8];
        sub_10019BE24(v22, v21, a1);
        v14 = 0;
      }

      goto LABEL_23;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10019BE68();
  }

LABEL_24:
}

void sub_100050C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(exception_object);
    if ((*v18 & 1) == 0)
    {
      v20 = sub_1000037CC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v19 reason];
        sub_100199904(v21, v17, &buf, v20);
      }
    }

    objc_end_catch();
    JUMPOUT(0x100050BECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050CE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = ++*(*(*(a1 + 72) + 8) + 24);
    v9 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100050F14;
    v20[3] = &unk_100271F68;
    v20[4] = v9;
    v20[5] = v8;
    [v9 dispatchAsync:v20];
    v10 = [CKRecord cpl_recordChangeClassForRecordType:v6];
    if (v10)
    {
      goto LABEL_12;
    }

    v11 = *(*(*(a1 + 80) + 8) + 40);
    if (!v11)
    {
      v11 = *(*(a1 + 32) + 320);
    }

    v12 = v11;
    v13 = [*(a1 + 40) updatedScopeChangeFromScopeChange:v12 currentUserID:*(a1 + 48) withDeletedCKRecordID:v5 recordType:v6];
    if (v13)
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v13);
    }

    v14 = [*(a1 + 40) updatedFlagsFromDeletedCKRecordID:v5 recordType:v6];
    if (v14)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v14);
    }

    else if (!v13)
    {
      v10 = objc_opt_class();
LABEL_11:

      if (!v10)
      {
LABEL_13:
        objc_autoreleasePoolPop(v7);
        goto LABEL_14;
      }

LABEL_12:
      v15 = [CPLScopedIdentifier alloc];
      v16 = *(a1 + 56);
      v17 = [v5 recordName];
      v18 = [v15 initWithScopeIdentifier:v16 identifier:v17];

      v19 = [(objc_class *)v10 newDeleteChangeWithScopedIdentifier:v18];
      [*(*(*(a1 + 96) + 8) + 40) addRecord:v19];

      goto LABEL_13;
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_14:
}

void sub_100050F34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051000;
    v7[3] = &unk_100274858;
    v7[4] = v6;
    v8 = v3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    [v6 dispatchAsync:v7];
  }
}

void sub_100051000(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v14 = v2;
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = [*(a1 + 32) lastOperationRequestUUIDs];
    v6 = [v4 localizedDescription];
    v7 = [CPLCloudKitErrors CPLErrorForCloudKitError:v4 withRequestUUIDs:v5 description:@"Error downloading batch: %@", v6];

    goto LABEL_5;
  }

  v4 = [CPLCloudKitErrors realErrorForError:v2];
  if (v4)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = [NSKeyedArchiver cpl_archivedDataWithRootObject:?];
    if (v7)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v10 = *(*(*(a1 + 64) + 8) + 24);
  if (![*(*(a1 + 32) + 296) count])
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 32);
  v12 = [v11 currentFetchRecordZoneChangesOperation];
  v13 = [v12 recordZoneIDsWithSyncObligations];
  v9 = [v11 _processFinalSyncObligationsWithZoneIDs:v13];

LABEL_11:
  (*(*(*(a1 + 32) + 272) + 16))();
  [*(a1 + 32) setCurrentFetchRecordZoneChangesOperation:0];
}

void sub_1000511E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    sub_10019BF08(a1, v3);
  }
}

void sub_100051234(uint64_t *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    if ([v11 isEqual:a1[4]])
    {
      if (v14)
      {
        objc_storeStrong((*(a1[8] + 8) + 40), a6);
      }

      else
      {
        if (a5)
        {
          sub_10019C13C(a1);
        }

        sub_10019C2D4(a1, &v15);
      }

      *(*(a1[9] + 8) + 24) = a5;
    }

    else
    {
      sub_10019C214(v11, a1 + 4);
    }
  }
}

void sub_100051454(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.downloadbatch");
  v3 = qword_1002C51A0;
  qword_1002C51A0 = v2;
}

void sub_1000514D8(id a1)
{
  v1 = objc_alloc_init(CPLCloudKitCoordinator);
  v2 = qword_1002C51A8;
  qword_1002C51A8 = v1;
}

void sub_1000516FC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002C51B8 = [v1 BOOLForKey:@"CPLUsesSandboxEnvironment"];
}

id sub_10005189C()
{
  if (qword_1002C51D8 != -1)
  {
    sub_10019C79C();
  }

  v1 = qword_1002C51E0;

  return v1;
}

void sub_1000518E0(uint64_t a1)
{
  v1 = [*(a1 + 32) container];
  [v1 unregisterFromUploadRequestsWithMachServiceName:@"com.apple.aps.photos.cloud.datarepair"];
}

void sub_100051BBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_100051BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 recordID];
    v9 = [v5 fieldName];
    v10 = [v5 fileSignature];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100051D10;
    v11[3] = &unk_100274980;
    v12 = v6;
    [WeakRetained provideCKAssetWithRecordID:v8 fieldName:v9 recordType:0 signature:v10 completionHandler:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 2);
  }
}

void sub_100051D10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 2)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = v5;
  }

  else if (a3 == 1)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = v5;
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v6 = *(*(a1 + 32) + 16);
    v7 = v5;
  }

  v6();
  v5 = v7;
LABEL_8:
}

char *sub_100051E84(char *result)
{
  v1 = *(result + 4);
  v2 = (result + 32);
  if (*(v1 + 16) == *(result + 5))
  {
    result = [*(v1 + 24) count];
    if (!result)
    {
      return sub_10019C7B0(v2);
    }
  }

  return result;
}

id sub_100052038(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [objc_opt_class() shouldRegisterClient];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _coordinatorWontBeUsed];
  }

  return result;
}

void sub_1000525F8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    if ([v5 count] == 1)
    {
      [*(a1 + 40) addObject:v6];
    }

    else
    {
      [v5 removeObject:*(a1 + 32)];
    }
  }
}

id sub_100052890(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  result = [objc_opt_class() shouldRegisterClient];
  if (result)
  {
    [*(a1 + 32) _addClientToInterestingZones:*(a1 + 40)];
    v4 = *(a1 + 32);

    return [v4 _coordinatorWillBeUsed];
  }

  return result;
}

id sub_100052A0C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    [*(a1 + 32) _removeClientFromInterestingZones:*(a1 + 40)];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (*(v4 + 64) == v3)
    {
      v5 = [_CPLCloudKitUnregisteredClient alloc];
      v6 = [*(a1 + 40) cloudKitClientIdentifier];
      v7 = [*(a1 + 40) defaultSourceBundleIdentifier];
      v8 = [(_CPLCloudKitUnregisteredClient *)v5 initWithCloudKitClientIdentifier:v6 defaultSourceBundleIdentifier:v7];
      v9 = *(a1 + 32);
      v10 = *(v9 + 64);
      *(v9 + 64) = v8;

      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    [*(v4 + 24) removeObject:v3];
    [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
    [*(a1 + 32) _waitForClientsIfNecessaryLocked];
    v11 = *(a1 + 32);

    return [v11 _moveToBackgroundIfNecessary];
  }

  return result;
}

id sub_100052B8C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  if (!result)
  {
    result = [*(*(a1 + 32) + 88) clientIsForeground];
    if (result)
    {
      v3 = *(*(a1 + 32) + 88);

      return [v3 setClientIsForeground:0];
    }
  }

  return result;
}

id sub_100052D70(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 48);
    result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
    if (v3 == 1)
    {
      if ((result & 1) == 0)
      {
        [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
        v4 = *(a1 + 32);

        return [v4 _moveToForeground];
      }
    }

    else if (result)
    {
      [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
      v5 = *(a1 + 32);

      return [v5 _moveToBackgroundIfNecessary];
    }
  }

  return result;
}

void sub_1000534A4(void *a1)
{
  if ([*(a1[4] + 24) containsObject:a1[5]])
  {
    v2 = [*(a1[4] + 80) containerID];
    v3 = [v2 environment];

    v4 = [NSMutableString alloc];
    v5 = [*(a1[4] + 80) containerIdentifier];
    v6 = v5;
    v7 = &stru_10027C2F0;
    if (v3 == 2)
    {
      v7 = @" (Sandbox)";
    }

    v8 = [v4 initWithFormat:@"Container: %@%@", v5, v7];

    if ([*(a1[4] + 24) count] >= 2)
    {
      [v8 appendFormat:@" (%lu clients)", objc_msgSend(*(a1[4] + 24), "count")];
    }

    v9 = [*(a1[4] + 80) options];
    v10 = [v9 supportedDeviceCapabilities];
    if ([v10 count])
    {
      v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = CPLCloudKitDescriptionForCapability(*(*(&v20 + 1) + 8 * v16));
            [v11 addObject:v17];

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      v18 = [v11 componentsJoinedByString:{@", "}];
      [v8 appendFormat:@" - Capabilities: %@", v18];
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v19 = *(a1[6] + 16);

    v19();
  }
}

void sub_100053A80(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    if (!a3)
    {
      (*(*(a1 + 80) + 16))();
      goto LABEL_7;
    }

    v5 = *(a1 + 88);
  }

  [*(a1 + 32) _askNextClient:*(a1 + 40) toProvideCKAssetWithRecordID:*(a1 + 48) fieldName:*(a1 + 56) recordType:*(a1 + 64) signature:*(a1 + 72) bestResponseYet:v5 completionHandler:*(a1 + 80)];
LABEL_7:
}

void sub_100053CC4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) copy];
    v4 = [v2 objectEnumerator];

    [*(a1 + 32) _askNextClient:v4 toProvideCKAssetWithRecordID:*(a1 + 40) fieldName:*(a1 + 48) recordType:*(a1 + 56) signature:*(a1 + 64) bestResponseYet:1 completionHandler:*(a1 + 72)];
  }

  else
  {
    v3 = *(*(a1 + 72) + 16);

    v3();
  }
}

void sub_100054260(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3 == v2[8])
  {
    v4 = [v2 _clientsInterestedToReceiveAPushNotificationForZoneID:a1[6]];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 138543618;
      v15 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = a1[5];
          if (v10 != *(v11 + 64))
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v12 = sub_10005189C();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v10 cloudKitClientIdentifier];
                v14 = a1[6];
                *buf = v15;
                v21 = v13;
                v22 = 2114;
                v23 = v14;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notifying client %{public}@ that %{public}@ has changes", buf, 0x16u);
              }

              v11 = a1[5];
            }

            [v10 coordinatorDidReceiveAPushNotification:{v11, v15}];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }
  }
}

void sub_1000544D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100054590;
  v6[3] = &unk_100274A20;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 accountInfoWithCompletionHandler:v6];
}

void sub_100054590(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) callDidFinish];
  if (v8 && [v8 accountStatus])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    if (v5)
    {
      (*(v6 + 16))(v6, 0, 0, v5);
    }

    else
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, 0, v7);
    }
  }
}

void sub_100054B2C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.coordinator");
  v3 = qword_1002C51E0;
  qword_1002C51E0 = v2;
}

uint64_t CPLCloudKitResourceInfoImageDimensionsReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
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
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___CPLCloudKitResourceInfoImageDimensions__height;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___CPLCloudKitResourceInfoImageDimensions__height;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___CPLCloudKitResourceInfoImageDimensions__width;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___CPLCloudKitResourceInfoImageDimensions__width;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id CPLSimplifiedStringFromClass(uint64_t a1)
{
  if (qword_1002C51F8 != -1)
  {
    sub_10019CDFC();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100004430;
  v9 = sub_1000052FC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000553F0;
  v4[3] = &unk_100274AB0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_1002C51E8, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10005537C(id a1)
{
  v1 = CPLCopyDefaultSerialQueueAttributes();
  v2 = dispatch_queue_create("com.apple.cpl.cloudkit.classnames", v1);
  v3 = qword_1002C51E8;
  qword_1002C51E8 = v2;

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = qword_1002C51F0;
  qword_1002C51F0 = v4;
}

void sub_1000553F0(uint64_t a1)
{
  v2 = [qword_1002C51F0 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = NSStringFromClass(*(a1 + 40));
    v11 = [v5 mutableCopy];

    [v11 replaceOccurrencesOfString:@"CPL" withString:&stru_10027C2F0 options:0 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"CK" withString:&stru_10027C2F0 options:0 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"Operation" withString:&stru_10027C2F0 options:0 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"Task" withString:&stru_10027C2F0 options:0 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"CloudKit" withString:&stru_10027C2F0 options:0 range:{0, objc_msgSend(v11, "length")}];
    if ([v11 length])
    {
      v6 = *(*(a1 + 32) + 8);
      v7 = v11;
      v8 = *(v6 + 40);
      *(v6 + 40) = v7;
    }

    else
    {
      v9 = NSStringFromClass(*(a1 + 40));
      v10 = *(*(a1 + 32) + 8);
      v8 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    [qword_1002C51F0 setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_1000558AC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addObject:v5];
}

void sub_100055950(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 componentsJoinedByString:@"\n    "];
  [v4 appendFormat:@"\n  %@:\n    %@", v5, v6];
}

void sub_100055B2C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) trackingContext];

  if (v3)
  {
    sub_10019CE24(a1, v2);
  }

  v4 = [[_CPLCloudKitTaskContext alloc] initWithTask:*(a1 + 32)];
  [(_CPLCloudKitTaskContext *)v4 setStartDate:*(a1 + 48)];
  [*(a1 + 32) setTrackingContext:v4];
  [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
}

void sub_100055F4C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) trackingContext];
  if (!v3)
  {
    sub_10019CF28(a1, v2);
  }

  v4 = v3;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a1 + 56);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [CPLNetworkIndicator showNetworkIndicatorForBundleWithIdentifier:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 operationWillStart:*(a1 + 40) context:*(a1 + 64)];
  [*(a1 + 48) _emitLogForCurrentTasks];
}

void sub_10005626C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _contextForOperation:*(a1 + 40)];
  if (!v3)
  {
    sub_10019D144(a1, v2, v2 + 8);
  }

  v4 = v3;
  [v3 setLastBatchDate:*(a1 + 48)];
}

void sub_1000563C0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _contextForOperation:*(a1 + 40)];
  if (!v3)
  {
    sub_10019D250(a1, v2, v2 + 8);
  }

  v4 = v3;
  *(*(*(a1 + 48) + 8) + 24) = [v3 mightBeBlocked];
}

void sub_100056584(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _contextForOperation:*(a1 + 40)];
  if (!v3)
  {
    sub_10019D35C(a1, v2, v2 + 8);
  }

  v4 = v3;
  [v3 setProgress:*(a1 + 56)];
}

void sub_100056768(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) cpl_task];
  if (!v3)
  {
    sub_10019D654(a1, v2);
  }

  v4 = v3;
  v5 = [v3 trackingContext];
  if (!v5)
  {
    sub_10019D554(a1, v4);
  }

  v6 = v5;
  v7 = [v5 contextForOperation:*v2];
  if (!v7)
  {
    sub_10019D468(a1, v2);
  }

  v8 = v7;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v7 bundleIdentifiers];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [CPLNetworkIndicator hideNetworkIndicatorForBundleWithIdentifier:*(*(&v14 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [v6 operationDidFinish:*v2];
}

void sub_100056A08(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _contextForOperation:*(a1 + 40)];
  if (!v3)
  {
    sub_10019D754(a1, v2, v2 + 1);
  }

  v4 = v3;
  [v3 setCancelled:1];
  [*v2 _emitLogForCurrentTasks];
}

void sub_100056BAC(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) trackingContext];
  if (!v3)
  {
    sub_10019D860(a1, v2);
  }

  v4 = v3;
  [v3 setCancelled:1];
  [*(a1 + 40) _emitLogForCurrentTasks];
}

void sub_100056D3C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) trackingContext];
  if (!v3)
  {
    sub_10019D960(a1, v2);
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v7 = [v3 countOfOperationClasses];
  v8 = [v4 countOfOperationWithCellularAccessClasses];
  [v6 endTask:v5 withOperationClasses:v7 operationsAllowingCellular:v8];

  [*(a1 + 32) setTrackingContext:0];
  [*(*(a1 + 40) + 16) removeObject:*(a1 + 32)];
  [*(a1 + 40) _emitLogForCurrentTasks];
  v9 = *(a1 + 40);
  if (*(v9 + 32) && ![*(v9 + 16) count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = *(*(a1 + 40) + 32);
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v17 + 1) + 8 * v14) + 16))(*(*(&v17 + 1) + 8 * v14));
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v15 = *(a1 + 40);
    v16 = *(v15 + 32);
    *(v15 + 32) = 0;
  }
}

uint64_t sub_100057008(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 16) count])
  {
    sub_10019DA60(v2, v4, v5);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100057188(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(*(a1 + 32) + 16);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isBoostable])
          {
            v10 = [v9 trackingContext];
            if ([v10 hasBlockedOperationsIncludingBackground:*(a1 + 40)])
            {
              [v10 cancelAllOperations];
              ++v6;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100004B38();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelling %lu blocked tasks", buf, 0xCu);
      }
    }

    return [*(a1 + 32) _emitLogForCurrentTasks];
  }

  return result;
}

void sub_10005742C(uint64_t a1)
{
  v12 = [*(a1 + 32) _pendingTaskStatus];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CPLUseCompactCloudKitStatus"];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v12;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 24) status];
    if (v6)
    {
      v7 = [[NSMutableString alloc] initWithFormat:@"%@\n%@", v6, v12];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = *(*(a1 + 40) + 8);
      v11 = v12;
      v9 = *(v10 + 40);
      *(v10 + 40) = v11;
    }
  }
}

void sub_100057624(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * i) trackingContext];
        v9 = [v8 operationStatusDictionaries];
        [v2 addObjectsFromArray:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v10 = [*(*(a1 + 32) + 24) statusObject];
  v11 = v10;
  if (v10)
  {
    v24[0] = @"operations";
    v24[1] = @"sessions";
    v25[0] = v2;
    v25[1] = v10;
    v12 = v25;
    v13 = v24;
    v14 = 2;
  }

  else
  {
    v22 = @"operations";
    v23 = v2;
    v12 = &v23;
    v13 = &v22;
    v14 = 1;
  }

  v15 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, v18];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_1000578FC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = *(*(a1 + 32) + 32);
    if (!v2)
    {
      v3 = objc_alloc_init(NSMutableArray);
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      *(v4 + 32) = v3;

      v2 = *(*(a1 + 32) + 32);
    }

    v7 = objc_retainBlock(*(a1 + 40));
    [v2 addObject:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void sub_10005877C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.operations");
  v3 = qword_1002C5208;
  qword_1002C5208 = v2;
}

id CPLLibraryShareSettingsRecordID(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSString alloc];
  v6 = [v3 recordName];

  v7 = [v5 initWithFormat:@"%@%@", @"PerUserScopeUserSettings-", v6];
  v8 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v4];

  return v8;
}

void sub_10005A170(id a1)
{
  v3[0] = &off_10028ECF8;
  v3[1] = &off_10028ED10;
  v4[0] = @"query";
  v4[1] = @"shared";
  v3[2] = &off_10028ED28;
  v4[2] = @"zoneish";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_1002C5210;
  qword_1002C5210 = v1;
}

void sub_10005A224(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 integerValue];
  if ((v5 & ~*(a1 + 48)) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) &= ~v5;
    [*(a1 + 32) addObject:v6];
  }
}

void sub_10005A9CC(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = qword_1002C5220;
  qword_1002C5220 = v3;
}

id CPLStagedZoneNameFromStagingZoneName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 hasPrefix:@"Exit-"])
  {
    v5 = [v4 recordName];
    if ([v3 hasSuffix:v5])
    {
      v6 = [v3 length];
      v7 = [@"Exit-" length];
      v8 = [v4 recordName];
      v9 = [v8 length] + v7 + 2;

      if (v6 > v9)
      {
        v10 = [@"Exit-" length];
        v11 = [v4 recordName];
        v12 = ~[v11 length];

        v13 = [v3 substringWithRange:{v10, objc_msgSend(v3, "length") + v12 - v10}];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

id CPLStagingZoneNameFromZoneName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSString alloc];
  v6 = [v3 recordName];

  v7 = [v5 initWithFormat:@"%@%@-%@", @"Exit-", v4, v6];

  return v7;
}

uint64_t CPLCloudKitOperationTypeForScope(void *a1)
{
  v1 = a1;
  v2 = [v1 databaseScope];
  v3 = [v1 databaseScope];
  if (v3 == 3)
  {
    if ([v1 isZoneish])
    {
      v4 = 4;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    if (v3 != 2)
    {
      sub_1001A03B0(v1, v2);
    }

    if ([v1 isZoneish])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t CPLCKDatabaseScopeForCPLCloudKitOperationType(uint64_t a1)
{
  if (a1 == 2 || a1 == 4)
  {
    return 3;
  }

  if (!a1)
  {
    sub_1001A044C();
  }

  return 2;
}

uint64_t CPLCloudKitUseGateKeeper()
{
  if (qword_1002C5248 != -1)
  {
    sub_1001A04D4();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B0F0;
  block[3] = &unk_100272000;
  block[4] = &v3;
  dispatch_sync(qword_1002C5238, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t CPLCloudKitGateKeeperDisabledByServer()
{
  if (qword_1002C5248 != -1)
  {
    sub_1001A04D4();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B1D0;
  block[3] = &unk_100272000;
  block[4] = &v3;
  dispatch_sync(qword_1002C5238, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void CPLDisableCloudKitUseGateKeeper()
{
  if (qword_1002C5248 != -1)
  {
    sub_1001A04D4();
  }

  v1 = qword_1002C5238;

  dispatch_sync(v1, &stru_100274C20);
}

void sub_10005B588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005B640;
  v6[3] = &unk_1002721A0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 dispatchAsync:v6];
}

id sub_10005B640(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 104))
  {
    v2 = result;
    v3 = *(result + 5);
    if (v3)
    {
      objc_storeStrong((v1 + 112), v3);
    }

    else
    {
      v4 = [*(result + 6) currentActivity];
      v5 = *(v2 + 4);
      v6 = *(v5 + 120);
      *(v5 + 120) = v4;

      [*(v2 + 4) setHasBackgroundActivity:*(*(v2 + 4) + 120) != 0];
    }

    v7 = *(v2 + 4);
    v8 = *(v7 + 104);
    *(v7 + 104) = 0;

    [*(v2 + 4) setIdleDescription:0];
    v9 = *(v2 + 4);

    return [v9 _reallyStartOperation];
  }

  return result;
}

void sub_10005B6E4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 80);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005B7A8;
  v3[3] = &unk_100274C48;
  objc_copyWeak(&v4, &location);
  [v2 setCancellationHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_10005B78C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10005B7A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_1001A06D4(WeakRetained);
  }
}

id *sub_10005B878(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = (a1 + 32);
  v2 = v3;
  if ((*(v3 + 128) & 1) == 0)
  {
    return sub_1001A0868(result, v2);
  }

  return result;
}

void *sub_10005BC10(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 32) + 64) == 0;
  }

  (*(*(a1 + 40) + 16))();
  result = [*(*(a1 + 32) + 8) count];
  if (!result)
  {
    result = *(a1 + 32);
    v4 = result[8] || v2;
    if ((v4 & 1) == 0 && *(result + 56) == 1)
    {

      return [result taskDidFinish];
    }
  }

  return result;
}

void *sub_10005BD88(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 32) + 64) == 0;
  }

  (*(*(a1 + 40) + 16))();
  result = [*(*(a1 + 32) + 8) count];
  if (!result)
  {
    result = *(a1 + 32);
    v4 = result[8] || v2;
    if ((v4 & 1) == 0 && *(result + 56) == 1)
    {

      return [result taskDidFinish];
    }
  }

  return result;
}

void sub_10005C154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requestUUID];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005C2A4;
    v12[3] = &unk_1002720E0;
    v12[4] = v6;
    v13 = v4;
    v8 = v12;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002A3C;
    block[3] = &unk_100271E98;
    v15 = v8;
    v9 = v7;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

id sub_10005C2A4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count] >= 0x64)
  {
    [*(*(a1 + 32) + 16) removeObjectAtIndex:0];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 addObject:v2];
}

void sub_10005C300(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C3AC;
  v5[3] = &unk_100274C98;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  [v2 dispatchAsync:v5];
}

void sub_10005C3AC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6) associatedOperationDidComplete:{*(*(*(a1 + 48) + 8) + 40), v10}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_10005C9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_10005C9DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[18])
  {
    return [result _cancelCallbackProgress];
  }

  return result;
}

void sub_10005C9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005CAA4;
  v6[3] = &unk_1002720E0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = WeakRetained;
  [v5 dispatchAsync:v6];
}

id *sub_10005CAA4(id *result)
{
  v1 = result + 4;
  if (*(result[4] + 18))
  {
    result = [result[5] shouldDefer];
    if (result)
    {
      return sub_1001A1064(v1);
    }
  }

  return result;
}

void sub_10005CDCC(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004440;
  v18 = sub_100005304;
  v19 = 0;
  v2 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005CFD0;
  v10[3] = &unk_100274CE8;
  v12 = &v20;
  v11 = *(a1 + 48);
  v13 = &v14;
  [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v10];
  v3 = v15[5];
  if (v21[3])
  {
    v15[5] = 0;
LABEL_5:

    goto LABEL_6;
  }

  if (!v3)
  {
    v4 = +[CPLErrors unknownError];
    v3 = v15[5];
    v15[5] = v4;
    goto LABEL_5;
  }

LABEL_6:
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D040;
  v6[3] = &unk_100272A38;
  v6[4] = v5;
  v9 = &v14;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v5 dispatchAsync:v6];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

void sub_10005CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10005CFD0(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void sub_10005D040(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackOperationDidFinishWithError:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  (*(*(a1 + 48) + 16))();
}

void sub_10005D0C0(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004440;
  v18 = sub_100005304;
  v19 = 0;
  if ([*(a1 + 32) isCancelled])
  {
    *(v21 + 24) = 0;
    v2 = +[CPLErrors operationCancelledError];
    v3 = v15[5];
    v15[5] = v2;
  }

  else
  {
    v4 = [*(a1 + 32) completedUnitCount];
    v3 = [[NSString alloc] initWithFormat:@"%@ (%lu/%lu)", *(a1 + 40), v4, objc_msgSend(*(a1 + 32), "totalUnitCount")];
    [*(a1 + 48) setIdleDescription:v3];
    v5 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005D31C;
    v9[3] = &unk_100274D38;
    v12 = &v20;
    v11 = *(a1 + 72);
    v10 = *(a1 + 56);
    v13 = &v14;
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];
    [*(a1 + 32) setCompletedUnitCount:v4 + 1];
  }

  if (*(v21 + 24) == 1)
  {
    sub_10019FA98(*(a1 + 48), *(a1 + 72), *(a1 + 64), *(a1 + 40), *(a1 + 32), *(a1 + 80));
  }

  else
  {
    if (!v15[5])
    {
      v6 = +[CPLErrors unknownError];
      v7 = v15[5];
      v15[5] = v6;

      v8 = v15[5];
    }

    (*(*(a1 + 80) + 16))();
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void sub_10005D2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10005D31C(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = (*(v2 + 16))();
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

void sub_10005D390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005D460;
  v9[3] = &unk_100274D88;
  v9[4] = v4;
  v10 = v3;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v13 = v6;
  v12 = v7;
  v8 = v3;
  [v4 dispatchAsync:v9];
}

void sub_10005D460(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackOperationDidFinishWithError:*(a1 + 40)];
  [*(a1 + 48) setCompletedUnitCount:*(a1 + 64)];
  (*(*(a1 + 56) + 16))();
}

void sub_10005D68C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 200);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005D744;
  v5[3] = &unk_100274E00;
  v5[4] = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v4 acquireHelperWithIdentifier:v3 completionHandler:v5];
}

void sub_10005D744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005D830;
  v11[3] = &unk_100274DD8;
  v11[4] = v7;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  [v7 dispatchAsync:v11];
}

void sub_10005D830(uint64_t a1)
{
  v4 = [*(a1 + 32) callbackOperationDidFinishWithError:*(a1 + 40)];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  if (v4)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10005DA04(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = CPLSimplifiedStringFromClass(v4);
  v6 = +[NSUUID UUID];
  v7 = [v2 initWithFormat:@"%@-%@", v5, v6];

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 200);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005DB14;
  v11[3] = &unk_100274E28;
  v11[4] = v9;
  v12 = v8;
  v13 = *(a1 + 48);
  [v10 getTemporaryFolderWithName:v7 completionHandler:v11];
}

void sub_10005DB14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005DC00;
  v11[3] = &unk_100274DD8;
  v11[4] = v7;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  [v7 dispatchAsync:v11];
}

void sub_10005DC00(uint64_t a1)
{
  v4 = [*(a1 + 32) callbackOperationDidFinishWithError:*(a1 + 40)];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  if (v4)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 136), *(a1 + 56));
    v3 = *(*(a1 + 32) + 136);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10005E4E4(uint64_t a1)
{
  [*(*(a1 + 32) + 80) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 80), "totalUnitCount")}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = [*(*(a1 + 32) + 200) operationTracker];
  [v4 taskDidFinish:*(a1 + 32)];
}

id sub_10005E674(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 allowsCellularAccess];
    v7 = [a1 _stringForQoS:{objc_msgSend(v4, "qualityOfService")}];
    v8 = [a1 _networkBehaviorForConfiguration:v4];
    v5 = [NSString stringWithFormat:@"(Cell: %d QoS: %@ %@)", v6, v7, v8];
  }

  return v5;
}

void sub_10005E8F8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    objc_storeStrong((*(a1 + 32) + 176), a2);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005EA98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005EB70;
  v11[3] = &unk_100274E78;
  v11[4] = v7;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  [v7 dispatchAsync:v11];
}

void sub_10005EB70(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100003810();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v9 = 138412290;
        *&v9[4] = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "failed to fetch user record: %@", v9, 0xCu);
      }
    }

    v4 = [*(a1 + 32) lastOperationRequestUUIDs];
    v5 = [CPLCloudKitErrors CPLErrorForCloudKitError:v2 withRequestUUIDs:v4 description:@"Failed to get user record"];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 48) allValues];
    v5 = [v6 firstObject];

    if (v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_100003810();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v9 = 138412290;
          *&v9[4] = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Active Apple Account, userRecord: %@", v9, 0xCu);
        }
      }

      v8 = [v5 recordID];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      sub_1001A19A0(_CPLSilentLogging, a1, v9);
      v8 = *v9;
    }
  }
}

void sub_10005EF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_10005F00C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005F0D8;
  v10[3] = &unk_100274EF0;
  v10[4] = v6;
  v11 = v5;
  v13 = *(a1 + 56);
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  [v6 dispatchAsync:v10];
}

void sub_10005F0D8(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (+[CPLCloudKitErrors isCloudKitOperationCancelledError:](CPLCloudKitErrors, "isCloudKitOperationCancelledError:", v2) || [v2 isCPLOperationCancelledError]))
  {

LABEL_12:
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(a1 + 48) + 16);

    v8();
    return;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 32);
  v9 = v2;
  v4 = [v3 lastOperationRequestUUIDs];
  if (*(a1 + 64))
  {
    v5 = "shared";
  }

  else
  {
    v5 = "private";
  }

  v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v9 withRequestUUIDs:v4 description:@"failed to fetch %s database changes", v5];

  (*(*(a1 + 48) + 16))();
}

void sub_10005F304(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v5 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005F3BC;
    v7[3] = &unk_100272F60;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 _enumerateAllZonesForSharedDatabase:1 block:v5 completionHandler:v7];
  }
}

void sub_10005F5C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 zoneID];
  if (v5)
  {
    [*(*(a1 + 32) + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

id sub_10005FD40()
{
  if (qword_1002C5260 != -1)
  {
    sub_1001A1A4C();
  }

  v1 = qword_1002C5268;

  return v1;
}

void sub_10005FD84(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.task");
  v3 = qword_1002C5258;
  qword_1002C5258 = v2;
}

void sub_10005FDC4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.task.ckcode");
  v3 = qword_1002C5268;
  qword_1002C5268 = v2;
}

void sub_10005FE28(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

void sub_10005FE5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_10005FE88(uint64_t result, float a2)
{
  *(v4 - 96) = a2;
  *(v3 + 4) = result;
  *(v4 - 84) = 2112;
  *(v3 + 14) = v2;
  return result;
}

id sub_10005FEA0()
{
  v2 = *v0;

  return [v2 count];
}

id sub_10005FEB8()
{
  v2 = *v0;

  return [v2 count];
}

void sub_10005FED0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 96), 0x16u);
}

void sub_1000601E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060290;
  v6[3] = &unk_1002720E0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 dispatchAsync:v6];
}

void sub_10006029C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060354;
  v8[3] = &unk_1002721A0;
  v8[4] = v6;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100060354(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100003854();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to delete source records: %@", buf, 0xCu);
      }
    }

    v4 = *(*(a1 + 32) + 344);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100060520;
    v8[3] = &unk_100273B78;
    v9 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = [v5 lastOperationRequestUUIDs];
    v7 = [CPLCloudKitErrors CPLErrorForCloudKitUploadError:v2 getDestinationRecordIDs:v8 scopeProvider:v5 withRequestUUIDs:v6 uploadAction:@"delete"];
    (*(v4 + 16))(v4, v7);
  }

  else
  {
    (*(*(*(a1 + 32) + 344) + 16))();
  }
}

void sub_10006095C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 272);
  v6 = a3;
  v7 = [a2 identifier];
  v14 = [v5 recordIDWithRecordName:v7];

  v8 = [v6 scopedIdentifier];
  v9 = *(*(a1 + 32) + 280);
  v10 = [v8 identifier];
  v11 = [v9 recordIDWithRecordName:v10];

  LOBYTE(v10) = [v6 isDelete];
  if (v10)
  {
    v12 = 40;
    v13 = v14;
  }

  else
  {
    [*(a1 + 48) addObject:v14];
    v12 = 56;
    v13 = v11;
  }

  [*(a1 + v12) addObject:v13];
  [*(*(a1 + 32) + 328) setObject:v8 forKeyedSubscript:v14];
  [*(*(a1 + 32) + 328) setObject:v8 forKeyedSubscript:v11];
}

void sub_100060AA4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 || ![*(a1 + 32) count])
  {
    (*(*(*(a1 + 40) + 344) + 16))();
  }

  else
  {
    [*(a1 + 40) _deleteSourceRecordIDs:*(a1 + 32)];
  }
}

void sub_100061178(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v5 = v4;
      v6 = v5;
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001A1C34(v5);
      }

      objc_end_catch();
      if (!v2)
      {
        JUMPOUT(0x10006104CLL);
      }

      JUMPOUT(0x100061060);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000615F0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.resharerecords");
  v3 = qword_1002C5278;
  qword_1002C5278 = v2;
}

void sub_100061674(id a1)
{
  v1 = [[CPLCKRecordPropertyMapping alloc] initSharedInstance];
  v2 = qword_1002C5280;
  qword_1002C5280 = v1;
}

id sub_1000616B8()
{
  if (qword_1002C52B8 != -1)
  {
    sub_1001A1D78();
  }

  v1 = qword_1002C52B0;

  return v1;
}

id sub_100061744()
{
  if (qword_1002C52D8 != -1)
  {
    sub_1001A1DA0();
  }

  v1 = qword_1002C52D0;

  return v1;
}

void sub_1000617CC(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  +[CPLPersonChange serverSupportsAssetSortOrder];
  +[CPLPersonChange serverSupportsDetectionType];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  +[CPLAssetChange serverSupportsSharedLibrarySharingState];
  +[CPLAssetChange serverSupportsLastViewedDate];
  +[CPLAssetChange serverSupportsDeletedByUserIdentifier];
  [v1 addObject:objc_opt_class()];
  [v1 addObject:objc_opt_class()];
  v2 = qword_1002C5290;
  qword_1002C5290 = v1;
}

id sub_100064978(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = objc_alloc_init(NSMutableSet);
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(a1 + 32) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:a2];
  [*(a1 + 40) setObject:*(*(*(a1 + 72) + 8) + 40) forKeyedSubscript:a2];
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  v10 = objc_alloc_init(NSMutableArray);
  v11 = *(*(a1 + 96) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 96) + 8) + 40);
  v14 = *(a1 + 48);

  return [v14 setObject:v13 forKeyedSubscript:a2];
}

void sub_100064A98(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 24) supportsResources])
  {
    v2 = objc_alloc_init(NSMutableSet);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100064B8C;
    v9 = &unk_100275130;
    v3 = *(a1 + 40);
    v10 = v2;
    v11 = v3;
    v4 = v2;
    [CPLResource enumerateResourceTypesWithBlock:&v6];
    v5 = [v4 copy];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 24)];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_100064B8C(uint64_t a1, uint64_t a2)
{
  if ([*(*(*(a1 + 40) + 8) + 24) supportsResourceType:a2])
  {
    v6 = sub_100084A0C(CPLCloudKitResourceKeys, a2);
    v4 = *(a1 + 32);
    v5 = sub_1001A8BFC(v6, *(*(*(a1 + 40) + 8) + 24));
    [v4 addObjectsFromArray:v5];
  }
}

uint64_t sub_100064C34(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[4] + 16);

  return v8();
}

uint64_t sub_100064CB4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSMutableSet);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = objc_alloc_init(NSMutableSet);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(a1 + 32) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:a2];
  [*(a1 + 40) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:a2];
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

id sub_100064D6C(void *a1, void *a2)
{
  v3 = *(*(a1[4] + 8) + 40);
  v4 = a2;
  [v3 addObjectsFromArray:v4];
  v5 = [[CPLCKRecordPropertyPairing alloc] initWithProperties:v4];

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[6] + 8) + 40);
  v9 = *(*(a1[5] + 8) + 40);

  return [v8 addObject:v9];
}

void sub_100064E08(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t sub_100064E1C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100064E68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (!v4)
  {
    sub_1001A1DC8(a1, v3);
  }

  v9 = v3;
  [v4 addCKKeys:v3];
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v9];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = *(*(*(a1 + 72) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableSet);
      v7 = *(*(a1 + 72) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      [*(a1 + 40) setObject:*(*(*(a1 + 72) + 8) + 40) forKeyedSubscript:*(*(*(a1 + 80) + 8) + 24)];
      v5 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v5 addObjectsFromArray:v9];
  }
}

void sub_100064F58(void *a1, char a2)
{
  v4 = *(*(a1[5] + 8) + 40);
  if (!v4)
  {
    sub_1001A2018(a1);
  }

  v5 = *(a1[7] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7 == v4)
  {
    sub_1001A1EF0(a1, a2);
  }

  objc_storeStrong(v6, v4);
  objc_storeStrong((*(a1[8] + 8) + 40), *(*(a1[9] + 8) + 40));
  *(*(a1[10] + 8) + 24) = a2;
}

void sub_100064FDC(void *a1, int a2)
{
  v3 = *(a1[5] + 8);
  if (*(v3 + 24) != a2)
  {
    sub_1001A211C(a1, a2);
  }

  *(v3 + 24) = 0;
  objc_storeStrong((*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  v4 = *(*(a1[9] + 8) + 40);
  v5 = (*(a1[8] + 8) + 40);

  objc_storeStrong(v5, v4);
}

uint64_t sub_100065058(uint64_t result, uint64_t a2)
{
  *(*(*(result + 40) + 8) + 24) = a2;
  if (*(*(*(result + 40) + 8) + 24) == 8)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100065090(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == 8)
  {
    v2 = result;
    result = (*(*(result + 32) + 16))();
    v1 = *(*(v2 + 40) + 8);
  }

  *(v1 + 24) = 0;
  return result;
}

void sub_100065558(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"dateExpunged", @"remappedRef", @"contributors", 0}];
  v2 = qword_1002C52A0;
  qword_1002C52A0 = v1;
}

void sub_100065C70(id a1)
{
  v1 = [[CPLCKRecordPropertyPairing alloc] initWithProperties:&__NSArray0__struct];
  [(CPLCKRecordPropertyPairing *)v1 addCKKeys:&off_100291338];
  v13 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"inTrash" andKeys:&off_100291350];
  v15[0] = v13;
  v2 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"inExpunged" andKeys:&off_100291368];
  v15[1] = v2;
  v3 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"recordModificationDate" andKeys:&off_100291380];
  v15[2] = v3;
  v4 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"realIdentifier" andKeys:&off_100291398];
  v15[3] = v4;
  v5 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"resourceCopyFromScopedIdentifier" andKeys:&__NSArray0__struct];
  v15[4] = v5;
  v6 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"scopedIdentifier" andKeys:&off_1002913B0];
  v15[5] = v6;
  v7 = [[CPLCKRecordPropertyPairing alloc] initWithProperty:@"sharingScopeIdentifier" andKeys:&off_1002913C8];
  v15[6] = v7;
  v8 = [CPLCKRecordPropertyPairing alloc];
  v14 = @"linkedShareRecordName";
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  v10 = [(CPLCKRecordPropertyPairing *)v8 initWithProperty:@"sharingRecordIdentifier" andKeys:v9];
  v15[7] = v10;
  v15[8] = v1;
  v11 = [NSArray arrayWithObjects:v15 count:9];
  v12 = qword_1002C52B0;
  qword_1002C52B0 = v11;
}

void sub_100065EA4(id a1)
{
  v1 = sub_1000616B8();
  v2 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) properties];
        [v2 addObjectsFromArray:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = qword_1002C52C0;
  qword_1002C52C0 = v2;
}

void sub_100065FF4(id a1)
{
  v1 = sub_1000616B8();
  v2 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) ckKeys];
        [v2 addObjectsFromArray:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = qword_1002C52D0;
  qword_1002C52D0 = v2;
}

void sub_100066630(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002C52E0 = [v1 BOOLForKey:@"CPLSkipRampingRequest"];
}

void sub_100066A20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100066AE8;
  v10[3] = &unk_1002721A0;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_100066AE8(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v11 = v2;
  if (!v2)
  {
    v4 = *(a1 + 48);
    v5 = [v4 responses];
    v6 = [v5 firstObject];

    (*(*(*(a1 + 32) + 288) + 16))(*(*(a1 + 32) + 288), [v6 allowed], objc_msgSend(v6, "retryAfterMillis"), 0);
    goto LABEL_12;
  }

  v3 = [v2 domain];
  if (![v3 isEqualToString:CKErrorDomain])
  {

    goto LABEL_10;
  }

  if ([v11 code] == 7)
  {

    goto LABEL_8;
  }

  v7 = [v11 code];

  if (v7 != 6)
  {
LABEL_10:
    v10 = [*(a1 + 32) lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v11 withRequestUUIDs:v10 description:@"Failed to invoke ramping request function"];

    v9 = *(*(*(a1 + 32) + 288) + 16);
    goto LABEL_11;
  }

LABEL_8:
  v8 = [v11 userInfo];
  v6 = [v8 objectForKey:CKErrorRetryAfterKey];

  if (!v6)
  {
    goto LABEL_10;
  }

  [v6 doubleValue];
  v9 = *(*(*(a1 + 32) + 288) + 16);
LABEL_11:
  v9();
LABEL_12:
}

void sub_100066D14(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.ramping");
  v3 = qword_1002C52F8;
  qword_1002C52F8 = v2;
}

id CPLCloudKitEPPCapability()
{
  v0 = [[CKDeviceCapability alloc] initWithLevel:2 name:@"epp" value:@"1"];

  return v0;
}

void CPLCloudKitConfigurePhotosCapabilitiesOnContainerOptions(void *a1)
{
  v1 = a1;
  if (+[CPLFingerprintScheme supportsEPP])
  {
    v2 = CPLCloudKitEPPCapability();
    v4 = v2;
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [v1 setSupportedDeviceCapabilities:v3];
  }
}

id CPLCloudKitDescriptionForCapability(void *a1)
{
  v1 = a1;
  v2 = CPLCloudKitCapabilityLevelMapping();
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 level]);
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v4 = [[NSString alloc] initWithFormat:@"??%d??", objc_msgSend(v1, "level")];
  }

  v5 = [NSString alloc];
  v6 = [v1 name];
  v7 = [v1 value];
  v8 = [v5 initWithFormat:@"%@(%@:%@)", v4, v6, v7];

  return v8;
}

id CPLCloudKitCapabilityLevelMapping()
{
  if (qword_1002C5300 != -1)
  {
    sub_1001A2370();
  }

  v1 = qword_1002C5308;

  return v1;
}

void sub_100066FBC(id a1)
{
  v3[0] = &off_10028ED40;
  v3[1] = &off_10028ED58;
  v4[0] = @"zone";
  v4[1] = @"record";
  v3[2] = &off_10028ED70;
  v4[2] = @"field";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_1002C5308;
  qword_1002C5308 = v1;
}

id CPLRecordChangeClassForCKRecordType(void *a1)
{
  v1 = qword_1002C5330;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1001A2704();
  }

  v3 = [qword_1002C5310 objectForKeyedSubscript:v2];

  return v3;
}

id CKRecordTypeForCPLRecordChangeClass(uint64_t a1)
{
  if (qword_1002C5330 != -1)
  {
    sub_1001A2704();
  }

  v2 = [qword_1002C5318 objectForKeyedSubscript:a1];
  if (!v2)
  {
    sub_1001A2718(a1);
  }

  return v2;
}

id CPLCKRecord(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = CKRecordTypeForCPLRecordChangeClass(a1);
  v7 = [[CKRecord alloc] initWithRecordType:v6 recordID:v5];

  if (a3)
  {
    [v7 setKnownToServer:1];
    [v7 setEtag:@"-gateon"];
  }

  return v7;
}

id CPLBaseCKRecordFromCPLRecordChange(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = CKRecordTypeForCPLRecordChangeClass([v5 recordClass]);
  v9 = [v6 zoneID];
  v10 = [v7 scopedIdentifier];
  v11 = [v10 identifier];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [v5 scopedIdentifier];
    v12 = [v13 identifier];

    if (!v12)
    {
      sub_1001A2A28(v5);
    }
  }

  v14 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:v9];
  v15 = [v5 recordChangeData];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = [CPLArchiver unarchiveObjectWithData:v15 ofClass:objc_opt_class()];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_16;
  }

  v26 = v6;
  v18 = [v16 recordType];
  v19 = v18;
  if (!v18 || !v8)
  {

    if (v19 | v8)
    {
      goto LABEL_9;
    }

LABEL_11:
    v21 = [v17 recordID];
    v22 = v21;
    if (v21 && v14)
    {
      v23 = [v21 isEqual:v14];

      if ((v23 & 1) == 0)
      {
LABEL_14:
        sub_1001A295C(v17);
        goto LABEL_15;
      }
    }

    else
    {

      if (v22 | v14)
      {
        goto LABEL_14;
      }
    }

    v6 = v26;
    goto LABEL_23;
  }

  v20 = [v18 isEqual:v8];

  if (v20)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1001A2890(v17);
LABEL_15:
  v6 = v26;
LABEL_16:
  v17 = [[CKRecord alloc] initWithRecordType:v8 recordID:v14];
  v24 = [v7 targetState];
  if (v24 <= 3 && v24 != 2 && (![v5 isFullRecord] || objc_msgSend(v5, "isSparseFullChange")))
  {
    [v17 setKnownToServer:1];
    [v17 setEtag:@"-gateon"];
  }

LABEL_23:
  if ([v5 isEPPRecord])
  {
    [v17 cpl_markRecordAsEPP];
  }

  return v17;
}

id CPLBaseSharedCKRecordFromCPLRecordChange(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = CKRecordTypeForCPLRecordChangeClass([v5 recordClass]);
  v9 = [v6 zoneID];
  v10 = [v7 otherScopedIdentifier];
  v11 = [v10 identifier];

  if (!v11)
  {
    sub_1001A2D4C(v5);
  }

  v12 = [[CKRecordID alloc] initWithRecordName:v11 zoneID:v9];
  v13 = [v5 sharingRecordChangeData];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [CPLArchiver unarchiveObjectWithData:v13 ofClass:objc_opt_class()];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  v23 = v6;
  v16 = [v14 recordType];
  v17 = v16;
  if (!v16 || !v8)
  {

    if (v17 | v8)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = [v15 recordID];
    v20 = v19;
    if (v19 && v12)
    {
      v21 = [v19 isEqual:v12];

      if ((v21 & 1) == 0)
      {
LABEL_12:
        sub_1001A2C80(v15);
        goto LABEL_13;
      }
    }

    else
    {

      if (v20 | v12)
      {
        goto LABEL_12;
      }
    }

    v6 = v23;
    goto LABEL_18;
  }

  v18 = [v16 isEqual:v8];

  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1001A2BB4(v15);
LABEL_13:
  v6 = v23;
LABEL_14:
  v15 = [[CKRecord alloc] initWithRecordType:v8 recordID:v12];
  if (([v7 targetState] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [v15 setKnownToServer:1];
    [v15 setEtag:@"-gateon"];
  }

LABEL_18:
  if ([v5 isEPPRecord])
  {
    [v15 cpl_markRecordAsEPP];
  }

  return v15;
}

id CPLCKReferenceToUser(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && ![v3 isEqualToString:CKCurrentUserDefaultName])
  {
    v6 = [CKReference alloc];
    v7 = [[CKRecordID alloc] initWithRecordName:v3];
    v5 = [v6 initWithRecordID:v7 action:0];
  }

  else
  {
    v5 = [[CKReference alloc] initWithRecordID:v4 action:0];
  }

  return v5;
}

id sub_100068094()
{
  if (qword_1002C5338 != -1)
  {
    sub_1001A3080();
  }

  v1 = qword_1002C5340;

  return v1;
}

id sub_100069014()
{
  if (qword_1002C5348 != -1)
  {
    sub_1001A3460();
  }

  v1 = qword_1002C5350;

  return v1;
}

id CPLDynamicFingerPrintFromCloudKitFingerPrint(void *a1)
{
  if (a1)
  {
    a1 = [@"#" stringByAppendingString:a1];
    v1 = vars8;
  }

  return a1;
}

void sub_10006A364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A37C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) supportsResourceType:a2])
  {
    v9 = 1;
    v4 = [*(a1 + 40) cplResourceWithType:a2 scopedIdentifier:*(a1 + 48) forRecord:*(a1 + 32) isCoherent:&v9 scopeProvider:*(a1 + 56)];
    if (v4)
    {
      v5 = *(*(*(a1 + 64) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(NSMutableArray);
        v7 = *(*(a1 + 64) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 64) + 8) + 40);
      }

      [v5 addObject:v4];
      if ((v9 & 1) == 0)
      {
        **(a1 + 72) = 0;
      }
    }
  }
}

void sub_10006A9B0(id a1)
{
  if (qword_1002C5330 != -1)
  {
    sub_1001A2704();
  }

  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_1002C5318;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AA88;
  v6[3] = &unk_100275410;
  v3 = v1;
  v7 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = qword_1002C5328;
  qword_1002C5328 = v3;
  v5 = v3;
}

void sub_10006AA88(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 ckAssetProperties];
  if ([v6 count])
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    v8 = objc_alloc_init(CKAssetTransferOptions);
    [v8 setShouldFetchAssetContent:&__kCFBooleanTrue];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v7 setObject:v8 forKeyedSubscript:{*(*(&v14 + 1) + 8 * v13), v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

uint64_t CPLIsDynamicResource(void *a1)
{
  v1 = [a1 identity];
  v2 = [v1 fingerPrint];
  v3 = CPLIsDynamicResourceFingerprint();

  return v3;
}

BOOL sub_10006B8F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [a2 cachedRecordWithID:*(a1 + 32)];
  if (v8)
  {
    v9 = sub_1001A8CA4(*(a1 + 40));
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      if ([*(a1 + 48) isEqualToString:v10])
      {
        v11 = sub_1001A8CE0(*(a1 + 40));
        v12 = [v8 objectForKeyedSubscript:v11];

        v13 = v12 != 0;
        if (v12)
        {
          v27 = [CKAssetReference alloc];
          v14 = *(a1 + 32);
          v15 = [*(a1 + 64) databaseScope];
          v16 = sub_1001A8CE0(*(a1 + 40));
          v17 = [v12 signature];
          v18 = [v27 initWithExistingRecordID:v14 databaseScope:v15 fieldName:v16 fileSignature:v17];

          v19 = [[CKAsset alloc] initWithAssetReference:v18];
          [CPLFingerprintScheme configureAssetTransferOptionsForCKAsset:v19 fromReference:v18 scopeProvider:*(a1 + 72)];
          v20 = sub_1001A8CE0(*(a1 + 56));
          [v7 setCKAsset:v19 forKey:v20];
        }

        else
        {
          v25 = [NSString alloc];
          v18 = sub_1001A8CE0(*(a1 + 40));
          *a4 = [v25 initWithFormat:@"%@ not found on source record", v18];
        }
      }

      else
      {
        v23 = [NSString alloc];
        v12 = sub_1001A8CA4(*(a1 + 40));
        v24 = sub_1001A8CA4(*(a1 + 56));
        *a4 = [v23 initWithFormat:@"%@ on source record does not match %@ on destination record", v12, v24];

        v13 = 0;
      }
    }

    else
    {
      v21 = [NSString alloc];
      v12 = sub_1001A8CA4(*(a1 + 40));
      v22 = [v21 initWithFormat:@"%@ not found on source record", v12];
      v13 = 0;
      *a4 = v22;
    }
  }

  else
  {
    v13 = 0;
    *a4 = @"source record not found on server";
  }

  return v13;
}

void sub_10006BB9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 48) + a2) & 1) == 0 && ([*(a1 + 32) shouldProtectResourceTypeFromClearing:a2] & 1) == 0 && (+[CPLResource shouldIgnoreResourceTypeOnUpload:](CPLResource, "shouldIgnoreResourceTypeOnUpload:", a2) & 1) == 0 && objc_msgSend(*(a1 + 32), "supportsResourceType:", a2))
  {
    v4 = sub_100084A0C(CPLCloudKitResourceKeys, a2);
    if (v4)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = sub_1001A8BFC(v4, v6);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(a1 + 40) setObject:0 forKey:{*(*(&v12 + 1) + 8 * v11), v12}];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

id CPLCloudKitFingerPrintFromDynamicFingerPrint(void *a1)
{
  v1 = a1;
  if (CPLIsDynamicResourceFingerprint())
  {
    v2 = [v1 substringFromIndex:1];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

void sub_10006CC18(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = objc_alloc_init(NSMutableDictionary);
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLPerson"];
  [v2 setObject:@"CPLPerson" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLMaster"];
  [v2 setObject:@"CPLMaster" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLAsset"];
  [v2 setObject:@"CPLAsset" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLAlbum"];
  [v2 setObject:@"CPLAlbum" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLMemory"];
  [v2 setObject:@"CPLMemory" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLSocialGroup"];
  [v2 setObject:@"CPLSocialGroup" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLSuggestion"];
  [v2 setObject:@"CPLSuggestion" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLFaceCrop"];
  [v2 setObject:@"CPLFaceCrop" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLContainerRelation"];
  [v2 setObject:@"CPLContainerRelation" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLReact"];
  [v2 setObject:@"CPLReact" forKeyedSubscript:objc_opt_class()];
  [v1 setObject:objc_opt_class() forKeyedSubscript:@"CPLTextComment"];
  [v2 setObject:@"CPLTextComment" forKeyedSubscript:objc_opt_class()];
  v3 = qword_1002C5310;
  qword_1002C5310 = v1;
  v5 = v1;

  v4 = qword_1002C5318;
  qword_1002C5318 = v2;
}

void sub_10006CF30(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.translate");
  v3 = qword_1002C5340;
  qword_1002C5340 = v2;
}

void sub_10006CF70(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.encrypt");
  v3 = qword_1002C5350;
  qword_1002C5350 = v2;
}

void sub_10006CFB0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002C5360 = [v1 BOOLForKey:@"CPLDontAddBoundaryKeyToCKAssetReferences"] ^ 1;
}

void sub_10006D00C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_10006D044(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_10006D064(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

id sub_10006D084(id a1)
{

  return a1;
}

uint64_t sub_10006D09C()
{

  return objc_opt_class();
}

void sub_10006D230(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    (*(v6[34] + 16))();
  }

  else
  {
    v21 = 0;
    v7 = [v6 shouldRunOperationsWithError:&v21];
    v8 = v21;
    v9 = *(a1 + 32);
    if (v7)
    {
      if (!v9[35])
      {
        v10 = [v9 controller];
        v11 = [*(*(a1 + 32) + 288) scopeIdentifier];
        v12 = [v10 zoneIDFromScopeIdentifier:v11];

        v13 = [[CPLCloudKitScope alloc] initWithZoneID:v12 options:0];
        v14 = *(a1 + 32);
        v15 = *(v14 + 280);
        *(v14 + 280) = v13;

        v9 = *(a1 + 32);
      }

      v16 = [v9 controller];
      v17 = [v16 zoneIdentificationForCloudKitScope:*(*(a1 + 32) + 280) engineScope:*(*(a1 + 32) + 288)];

      v18 = [v17 recordsToUpdateFromScopeChange:*(*(a1 + 32) + 296) currentUserID:v5];
      v19 = [v18 count];
      v20 = *(a1 + 32);
      if (v19)
      {
        [v20 updateRecords:v18 cloudKitScope:v20[35] completionHandler:v20[34]];
      }

      else
      {
        (*(v20[34] + 16))();
      }
    }

    else
    {
      (*(v9[34] + 16))();
    }
  }
}

void sub_10006D504(id a1)
{
  v1 = [[CPLDuetTicketProvider alloc] initWithClientBundlerIdentifier:@"com.apple.mobileslideshow"];
  v2 = qword_1002C5368;
  qword_1002C5368 = v1;
}

void sub_10006D948(uint64_t a1)
{
  v2 = [*(a1 + 32) isBlocked];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _blockedReason];
    v20[0] = CPLStatusHasCellularBudgetKey;
    v5 = [NSNumber numberWithBool:(v4 & 1) == 0];
    v21[0] = v5;
    v20[1] = CPLStatusHasBatteryBudgetKey;
    v17 = [NSNumber numberWithBool:(v4 & 2) == 0];
    v21[1] = v17;
    v20[2] = CPLStatusHasLowBatteryLevelKey;
    v16 = [NSNumber numberWithBool:(v4 >> 3) & 1];
    v21[2] = v16;
    v20[3] = CPLStatusHasConstrainedNetworkKey;
    v15 = [NSNumber numberWithBool:(v4 >> 4) & 1];
    v21[3] = v15;
    v20[4] = CPLStatusIsBlockedByLowPowerModeKey;
    v14 = [NSNumber numberWithBool:(v4 >> 5) & 1];
    v21[4] = v14;
    v20[5] = CPLStatusHasHeavyResourceUsageKey;
    v6 = [NSNumber numberWithBool:(v4 & 0xC0) != 0];
    v21[5] = v6;
    v20[6] = CPLStatusHasPoorNetworkQualityKey;
    v7 = [NSNumber numberWithBool:(v4 >> 8) & 1];
    v21[6] = v7;
    v20[7] = CPLStatusHasModerateThermalPressureKey;
    v8 = [NSNumber numberWithBool:(v4 >> 11) & 1];
    v21[7] = v8;
    v20[8] = CPLStatusHasThermalPressureKey;
    v9 = [NSNumber numberWithBool:(v4 >> 12) & 1];
    v21[8] = v9;
    v20[9] = CPLStatusHasPoorSystemConditionsKey;
    v10 = [NSNumber numberWithBool:(v4 & 0x3FFA604) != 0];
    v21[9] = v10;
    v20[10] = CPLStatusBlockedReasonKey;
    v11 = [NSNumber numberWithUnsignedInteger:v4];
    v20[11] = CPLStatusUnBlockedReasonKey;
    v21[10] = v11;
    v21[11] = &__kCFBooleanFalse;
    v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:12];
  }

  else
  {
    v13 = [v3 _unBlockedReason];
    v18[0] = CPLStatusHasCellularBudgetKey;
    v18[1] = CPLStatusHasBatteryBudgetKey;
    v19[0] = &__kCFBooleanTrue;
    v19[1] = &__kCFBooleanTrue;
    v18[2] = CPLStatusHasLowBatteryLevelKey;
    v18[3] = CPLStatusHasConstrainedNetworkKey;
    v19[2] = &__kCFBooleanFalse;
    v19[3] = &__kCFBooleanFalse;
    v18[4] = CPLStatusIsBlockedByLowPowerModeKey;
    v18[5] = CPLStatusHasHeavyResourceUsageKey;
    v19[4] = &__kCFBooleanFalse;
    v19[5] = &__kCFBooleanFalse;
    v18[6] = CPLStatusHasPoorNetworkQualityKey;
    v18[7] = CPLStatusHasModerateThermalPressureKey;
    v19[6] = &__kCFBooleanFalse;
    v19[7] = &__kCFBooleanFalse;
    v18[8] = CPLStatusHasThermalPressureKey;
    v18[9] = CPLStatusHasPoorSystemConditionsKey;
    v19[8] = &__kCFBooleanFalse;
    v19[9] = &__kCFBooleanFalse;
    v19[10] = &__kCFBooleanFalse;
    v18[10] = CPLStatusBlockedReasonKey;
    v18[11] = CPLStatusUnBlockedReasonKey;
    v5 = [NSNumber numberWithUnsignedInteger:v13];
    v19[11] = v5;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:12];
  }

  (*(*(a1 + 40) + 16))();
}

unint64_t -[CPLDuetTicketProvider _blockedReason](CPLDuetTicketProvider *self, SEL a2)
{
  duetOverrideContext = self->_duetOverrideContext;
  v4 = [(CPLDuetTicketProvider *)self _isBlockedKeyPath];
  v5 = [(_CDClientContext *)duetOverrideContext objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  v7 = self->_duetOverrideContext;
  v8 = [(CPLDuetTicketProvider *)self _budgetOverrideKeyPath];
  v9 = [(_CDClientContext *)v7 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  v11 = v6 & 0xFFFFFFFFFFFFFFFELL;
  if ((v10 & 1) == 0)
  {
    v11 = v6;
  }

  if ((v10 & 2) != 0)
  {
    v11 &= ~2uLL;
  }

  if ((v10 & 4) != 0)
  {
    v11 &= ~4uLL;
  }

  if ((v10 & 0x10) != 0)
  {
    v11 &= ~0x10uLL;
  }

  if ((v10 & 0x20) != 0)
  {
    v11 &= ~0x20uLL;
  }

  if ((v10 & 0x800) != 0)
  {
    v11 &= ~0x800uLL;
  }

  if ((v10 & 0x4000) != 0)
  {
    return v11 & 0xFFFFFFFFFC00183FLL;
  }

  else
  {
    return v11;
  }
}

id -[CPLDuetTicketProvider _blockedReasonStatus](CPLDuetTicketProvider *self, SEL a2)
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CPLDuetTicketProvider *)self _blockedReason];
  v5 = v4;
  if (v4)
  {
    [v3 addObject:@"data"];
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"energy"];
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"lowBatteryLevel"];
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"significantWork"];
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"lowDataMode"];
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:@"lowPowerMode"];
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:@"cpu"];
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"memory"];
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"networkQuality"];
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"thermalModerate"];
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"thermalHeavyOrAbove"];
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:@"smartPowerNap"];
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:@"thunderingHerd"];
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"groupScheduling"];
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"deviceActivity"];
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"deviceActivityEarlyThermalWarning"];
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"consoleMode"];
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"bootTime"];
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"carPlay"];
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"inCarPolicy"];
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 addObject:@"activityRateLimit"];
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 addObject:@"activityMotionState"];
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 addObject:@"powerNap"];
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 addObject:@"internetSharing"];
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_54:
  [v3 addObject:@"application"];
  if ((v5 & 0x2000) != 0)
  {
LABEL_27:
    [v3 addObject:@"other"];
  }

LABEL_28:
  if ([v3 count])
  {
    v6 = [NSString alloc];
    v7 = [v3 componentsJoinedByString:@" "];
    v8 = [v6 initWithFormat:@"(%@)", v7];
  }

  else
  {
    v8 = @"(no reasons)";
  }

  return v8;
}

id sub_10006E74C()
{
  if (qword_1002C5378 != -1)
  {
    sub_1001A408C();
  }

  v1 = qword_1002C5380;

  return v1;
}

void sub_10006E974(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.duet");
  v3 = qword_1002C5380;
  qword_1002C5380 = v2;
}

void sub_10006EF3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006F01C;
  v9[3] = &unk_1002733F0;
  v11 = *(a1 + 56);
  v9[4] = v7;
  v10 = *(a1 + 40);
  [v7 dispatchAsync:v9];
  if (v5)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v5);
    }
  }
}

id sub_10006F01C(uint64_t a1)
{
  v1 = ++*(*(*(a1 + 48) + 8) + 24);
  v2 = *(a1 + 32);
  v3 = v1 / [*(a1 + 40) count];

  return [v2 updateProgress:v3];
}

void sub_10006F088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A40A0;
  v10[3] = &unk_100275620;
  v10[4] = v7;
  v11 = v6;
  v12 = *(a1 + 40);
  v17 = *(a1 + 72);
  v13 = *(a1 + 48);
  v14 = v5;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_10006F1A4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (![CPLCloudKitErrors isRecordNotFoundError:v8])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100003898();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 recordName];
        v11 = *(a1 + 32);
        v12 = [v7 zoneID];
        v13 = [v11 scopeIdentifierFromZoneID:v12];
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch %@ in %@: %@", &v14, 0x20u);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10006F320(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 didFetchRecordWithID:v7 record:v6];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
}

void sub_10006F62C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = a4;
    v9 = a3;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006F77C;
    v14[3] = &unk_100275670;
    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v10 = v15;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];
    (*(*(a1 + 32) + 16))();

    v11 = v15;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a4;
    v10 = a3;
    v13(v12, 0, v10, v11);
  }
}

void sub_10006F77C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 recordName];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void sub_10006FB1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  [*(a1 + 32) addObjectsFromArray:a3];
  if (v7)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10006FC28;
    v12 = &unk_1002755F8;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v7 enumerateKeysAndObjectsUsingBlock:&v9];
    [*(a1 + 56) removeObjectForKey:{*(a1 + 64), v9, v10, v11, v12}];
    [*(a1 + 72) _fetchNextOperationType:*(a1 + 56) followRemapping:*(a1 + 88) recordIDMapping:*(a1 + 48) inResult:*(a1 + 40) storeRequestUUIDsIn:*(a1 + 32) completionHandler:*(a1 + 80)];
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void sub_10006FC28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

uint64_t sub_1000700A0(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a1[4], a2);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5], a1[4]);
  }
}

void sub_100071740(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a2;
  v7 = a3;
  if (v13)
  {
    v8 = [v13 scopedIdentifier];
    v9 = [v8 isEqual:*(a1 + 32)];

    if ((v9 & 1) == 0)
    {
      [v13 setScopedIdentifier:*(a1 + 32)];
      [v13 awakeFromStorage];
    }

    [*(a1 + 40) setObject:v13 forKeyedSubscript:*(a1 + 32)];
  }

  v10 = [CPLRecordTarget alloc];
  v11 = [*(a1 + 48) scopedIdentifier];
  v12 = [v10 initWithScopedIdentifier:v11 otherScopedIdentifier:v7 targetState:a4];

  [*(a1 + 56) setTarget:v12 forRecordWithScopedIdentifier:*(a1 + 32)];
  [*(a1 + 64) removeObject:*(a1 + 32)];
}

void sub_100071CA4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [v6 scopeIdentifier];
    v5 = [v3 cloudKitScopeForScopeIdentifier:v4];

    if (v5)
    {
      [*(a1 + 48) addObject:v6];
    }
  }
}

void sub_100071D40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = v10;
      [v11 addEntriesFromDictionary:v7];
    }

    else
    {
      v11 = [v7 mutableCopy];
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v21 = 0;
    v19 = [v12 _mergeFoundCKRecords:v11 updateFoundCPLRecords:v13 remainingScopedIdentifiers:v14 fetchedScopedIdentifiers:v15 userRecordID:v16 targetMapping:v17 postProcessRecord:v18 error:&v21];
    v20 = v21;
    if (v19)
    {
      [*(a1 + 40) _fetchRecordsForRemainingScopedIdentifiers:*(a1 + 56) alreadyFetchedScopedIdentifiers:*(a1 + 64) userRecordID:*(a1 + 72) foundCPLRecords:*(a1 + 48) foundCKRecords:v11 targetMapping:*(a1 + 80) postProcessRecord:*(a1 + 88) completionHandler:*(a1 + 96)];
    }

    else
    {
      (*(*(a1 + 96) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

void sub_100071F8C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [[NSMutableSet alloc] initWithArray:*(a1 + 32)];
    v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    [*(a1 + 40) _fetchRecordsForRemainingScopedIdentifiers:v3 alreadyFetchedScopedIdentifiers:v5 userRecordID:v6 foundCPLRecords:v4 foundCKRecords:0 targetMapping:*(a1 + 48) postProcessRecord:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000722C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [*(a1 + 40) targetForRecordWithScopedIdentifier:v10];
          v12 = [v11 resourceScopedIdentifier];

          if (!v4)
          {
            sub_1001A4854(a1, v10);
          }

          [v4 setObject:v10 forKeyedSubscript:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v13 = *(a1 + 48);
    v14 = [v4 allKeys];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100072504;
    v16[3] = &unk_100275840;
    v17 = v4;
    v18 = *(a1 + 56);
    v15 = v4;
    [v13 fetchRecordWithScopedIdentifiers:v14 completionHandler:v16];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100072504(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007261C;
    v7[3] = &unk_100275818;
    v8 = *(a1 + 32);
    v9 = v4;
    v5 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v5, 0, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10007261C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 objectForKeyedSubscript:a2];
  v7 = [[CPLPlaceholderRecord alloc] initWithCKRecord:v6 scopedIdentifier:v8];

  if (v7)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_100072884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100072984;
  v10[3] = &unk_100273DF8;
  v10[4] = v7;
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v7 dispatchAsync:v10];
}

void sub_100072984(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v2)
  {
    v3 = [CPLCloudKitErrors realErrorForError:v2];
    v4 = [*(a1 + 32) lastOperationRequestUUIDs];
    v5 = [*(a1 + 48) cpl_zoneName];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v3 withRequestUUIDs:v4 description:@"Error fetching zone %@", v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 56) objectForKey:*(a1 + 48)];
  if (v7)
  {
    if (v6)
    {

      v6 = 0;
    }
  }

  else if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_100003898();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 56);
        v9 = *(a1 + 64);
        v11 = *(a1 + 48);
        *buf = 138412802;
        v14 = v11;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch %@ yet CloudKit returned no error, operation %@ returned %@", buf, 0x20u);
      }
    }

    v12 = [*(a1 + 48) zoneName];
    v6 = [CPLErrors cplErrorWithCode:150 description:@"Failed to fetch zone %@ for unknown reasons", v12];
  }

  (*(*(a1 + 72) + 16))();
}