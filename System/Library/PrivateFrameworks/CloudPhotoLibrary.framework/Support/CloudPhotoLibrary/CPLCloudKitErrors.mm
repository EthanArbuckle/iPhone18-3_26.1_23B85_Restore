@interface CPLCloudKitErrors
+ (BOOL)_isCKErrorForRejectedRecord:(id)a3;
+ (BOOL)getCloudKitErrorCode:(int64_t *)a3 internalCode:(int64_t *)a4 fromError:(id)a5;
+ (BOOL)isContainerHasBeenWipedError:(id)a3;
+ (BOOL)isFeatureDisabledError:(id)a3;
+ (BOOL)isOperationCancelledOrDeferredError:(id)a3;
+ (BOOL)isOperationThrottledError:(id)a3;
+ (BOOL)isPartialFailureError:(id)a3;
+ (BOOL)isRecordNotFoundError:(id)a3;
+ (id)CPLErrorForCloudKitError:(id)a3 scopeProvider:(id)a4 withRequestUUIDs:(id)a5 description:(id)a6;
+ (id)CPLErrorForCloudKitError:(id)a3 scopeProvider:(id)a4 withRequestUUIDs:(id)a5 description:(id)a6 arguments:(char *)a7;
+ (id)CPLErrorForCloudKitError:(id)a3 withRequestUUIDs:(id)a4 description:(id)a5;
+ (id)CPLErrorForCloudKitUploadError:(id)a3 getDestinationRecordIDs:(id)a4 scopeProvider:(id)a5 withRequestUUIDs:(id)a6 uploadAction:(id)a7;
+ (id)_bestErrorForUnderlyingError:(id)a3 scopeProvider:(id)a4;
+ (id)_betterErrorForRecordId:(id)a3 recordError:(id)a4;
+ (id)_errorForCancelledError:(id)a3;
+ (id)_filteredPartialFailureError:(id)a3 itemClass:(Class)a4;
+ (id)_rejectionReasonFromPartialError:(id)a3 identifier:(id)a4;
+ (id)errorsPerRecordIDForPartialFailureError:(id)a3;
+ (id)errorsPerZoneIDForPartialFailureError:(id)a3;
+ (id)realErrorForError:(id)a3;
@end

@implementation CPLCloudKitErrors

+ (BOOL)_isCKErrorForRejectedRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 code] - 1;
  if (v4 >= 0x1F || ((0x4405EE01u >> v4) & 1) == 0)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:NSUnderlyingErrorKey];

    v7 = [v6 domain];
    v8 = [v7 isEqualToString:CKUnderlyingErrorDomain];

    if ((v8 & 1) == 0)
    {

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    v9 = [v6 code];

    if (v9 != 2038 && v9 != 3006)
    {
      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

+ (id)_betterErrorForRecordId:(id)a3 recordError:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 || (v9 = v8) == 0)
  {
    sub_1001AC6C0(a2, a1);
  }

  v10 = [v8 localizedDescription];
  if (v10)
  {
    v11 = [NSString stringWithFormat:@"%@ (for record %@)", v10, v7];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"record %@", v7];
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [v9 userInfo];

  if (v13)
  {
    v14 = [v9 userInfo];
    [v12 setDictionary:v14];

    [v12 setObject:v11 forKey:NSLocalizedDescriptionKey];
  }

  v15 = [v9 domain];
  v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v15, [v9 code], v12);

  return v16;
}

+ (id)_rejectionReasonFromPartialError:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:NSUnderlyingErrorKey];
  v9 = CKErrorServerDescriptionKey;
  v10 = [v7 objectForKeyedSubscript:CKErrorServerDescriptionKey];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [v8 userInfo];
    v11 = [v12 objectForKeyedSubscript:v9];

    if (!v11)
    {
LABEL_16:
      if (v8 && ([v8 domain], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", CKUnderlyingErrorDomain), v20, v21))
      {
        v22 = [NSString alloc];
        v23 = [v5 domain];
        v24 = [v22 initWithFormat:@"%@ %ld/%ld", v23, objc_msgSend(v5, "code"), objc_msgSend(v8, "code")];
      }

      else
      {
        v25 = [NSString alloc];
        v23 = [v5 domain];
        v24 = [v25 initWithFormat:@"%@ %ld", v23, objc_msgSend(v5, "code"), v27];
      }

      v18 = v24;

      v17 = 0;
      goto LABEL_21;
    }
  }

  if ([v11 hasPrefix:@"{"])
  {
    v13 = [v11 dataUsingEncoding:4];
    if (v13)
    {
      v14 = [NSJSONSerialization JSONObjectWithData:v13 options:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 objectForKeyedSubscript:@"title"];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;

            v11 = v16;
          }
        }
      }
    }
  }

  if ([v11 rangeOfString:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v11;
    v18 = v17;
    goto LABEL_21;
  }

  v19 = [v11 stringByReplacingOccurrencesOfString:v6 withString:@"<redacted>"];

  v17 = v19;
  v18 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_21:

  return v18;
}

+ (id)_bestErrorForUnderlyingError:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 domain];
  if ([v8 isEqual:CKErrorDomain])
  {
    v9 = [v6 code];

    if (v9 == 2)
    {
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v50 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_1000044D0;
      v47 = sub_10000534C;
      v48 = 0;
      v10 = [v6 userInfo];
      v11 = [v10 objectForKey:CKPartialErrorsByItemIDKey];
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = sub_1000044D0;
      v41 = sub_10000534C;
      v42 = 0;
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000A19FC;
      v30 = &unk_1002768E0;
      v35 = objc_opt_class();
      v36 = a1;
      v31 = v7;
      v32 = v49;
      v33 = &v43;
      v34 = &v37;
      [v11 enumerateKeysAndObjectsUsingBlock:&v27];
      v12 = v38[5];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        if (![v44[5] count])
        {
          v13 = v6;
LABEL_19:

          _Block_object_dispose(&v37, 8);
          _Block_object_dispose(&v43, 8);

          _Block_object_dispose(v49, 8);
          goto LABEL_20;
        }

        v19 = [v44[5] count];
        v20 = v44[5];
        if (v19 < 4)
        {
          v21 = [v20 allKeys];
          v23 = [v21 componentsJoinedByString:{@", "}];
        }

        else
        {
          v21 = [v20 allKeys];
          v22 = [v21 subarrayWithRange:{0, 3}];
          v23 = [v22 componentsJoinedByString:{@", "}];
        }

        v24 = v44[5];
        v51 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
        v52 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v13 = [CPLErrors cplErrorWithCode:18 underlyingError:v6 userInfo:v25 description:@"%@ were rejected by server", v23, v27, v28, v29, v30];

        v6 = v23;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([v6 code] == 20)
  {
    v14 = [v6 domain];
    v15 = [v14 isEqualToString:CKErrorDomain];

    if (v15)
    {
      v16 = [v6 userInfo];
      v17 = [v16 objectForKey:NSUnderlyingErrorKey];

      if (v17)
      {
        v18 = v17;

        v6 = v18;
      }
    }
  }

  v13 = v6;
LABEL_20:

  return v13;
}

+ (id)CPLErrorForCloudKitError:(id)a3 withRequestUUIDs:(id)a4 description:(id)a5
{
  v5 = [a1 CPLErrorForCloudKitError:a3 scopeProvider:0 withRequestUUIDs:a4 description:a5 arguments:&v8];

  return v5;
}

+ (id)CPLErrorForCloudKitError:(id)a3 scopeProvider:(id)a4 withRequestUUIDs:(id)a5 description:(id)a6
{
  v6 = [a1 CPLErrorForCloudKitError:a3 scopeProvider:a4 withRequestUUIDs:a5 description:a6 arguments:&v9];

  return v6;
}

+ (id)_errorForCancelledError:(id)a3
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:CKErrorDomain];

  if ((v7 & 1) == 0)
  {
    sub_1001AC794(a2, a1, v5);
  }

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v9 || ([v9 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", CKErrorDomain), v10, !v11) || (objc_msgSend(a1, "_errorForCancelledError:", v9), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [v9 code];
    if ((v13 - 132) >= 2)
    {
      if (v13 == 20)
      {
        v16[0] = NSLocalizedDescriptionKey;
        v16[1] = NSUnderlyingErrorKey;
        v17[0] = @"CloudKit operation has been cancelled by caller";
        v17[1] = v5;
        v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
        v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:v14];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = [CPLErrors cplErrorWithCode:257 underlyingError:v5 description:@"CloudKit operation has been deferred by system"];
    }
  }

  return v12;
}

+ (id)CPLErrorForCloudKitError:(id)a3 scopeProvider:(id)a4 withRequestUUIDs:(id)a5 description:(id)a6 arguments:(char *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (![v12 isCPLError])
  {
    v23 = [v12 domain];
    v24 = [v23 isEqualToString:CKErrorDomain];

    if (!v24)
    {
      if ([v12 isCPLOperationCancelledError])
      {
        v34 = v12;
        v12 = v34;
      }

      else
      {
        v37 = [v12 cplUnderlyingError];
        v38 = [[NSString alloc] initWithFormat:v15 arguments:a7];
        v39 = [v37 localizedDescription];
        v34 = [CPLErrors cplErrorWithCode:80 underlyingError:v12 description:@"%@ (%@)", v38, v39];
      }

      goto LABEL_138;
    }

    v96 = v13;
    v25 = [v12 userInfo];
    v97 = [v25 objectForKey:CKErrorRetryAfterKey];

    v26 = [v12 code];
    if (v26 == 2)
    {
      v27 = [a1 _bestErrorForUnderlyingError:v12 scopeProvider:v13];
      v28 = v27;
      if (v27 == v12)
      {
        v32 = 2;
      }

      else
      {
        v29 = v27;

        v30 = [v29 domain];
        v31 = [v30 isEqualToString:CKErrorDomain];

        if (!v31)
        {
          if ([v29 isCPLError])
          {
            v46 = v29;
            v47 = v97;
            if (([v29 isCPLOperationCancelledError] & 1) == 0)
            {
              v34 = v29;
LABEL_137:

              v12 = v29;
              goto LABEL_138;
            }
          }

          else
          {

            v47 = v97;
            if (![v29 isCPLOperationCancelledError])
            {
              v57 = 0;
              v58 = 0;
              v54 = 80;
              goto LABEL_127;
            }

            v46 = 0;
          }

          v29 = v29;
          v34 = v29;
LABEL_136:

          goto LABEL_137;
        }

        v32 = [v29 code];
        if (!v97)
        {
          v33 = [v29 userInfo];
          v97 = [v33 objectForKey:CKErrorRetryAfterKey];
        }

        v12 = v29;
      }
    }

    else
    {
      v32 = v26;
    }

    v29 = v12;
    v40 = [v12 userInfo];
    v41 = [v40 objectForKey:NSUnderlyingErrorKey];

    if (!v41)
    {
      goto LABEL_90;
    }

    v42 = [v41 domain];
    v43 = [v42 isEqualToString:CKUnderlyingErrorDomain];

    if (!v43)
    {
      goto LABEL_90;
    }

    v44 = v41;
    v45 = [v41 code];
    if (v45 <= 2034)
    {
      if (v45 <= 2023)
      {
        if (v45 <= 2010)
        {
          if (v45 == 1002)
          {
            v57 = 0;
            v58 = 0;
            v54 = 28;
            goto LABEL_126;
          }

          if (v45 == 1020)
          {
LABEL_105:
            v57 = 0;
            v58 = 0;
            v54 = 1012;
            goto LABEL_126;
          }

          if (v45 != 2006)
          {
            goto LABEL_90;
          }

LABEL_98:
          v57 = 0;
          v58 = 0;
          v54 = 1000;
          goto LABEL_126;
        }

        if ((v45 - 2011) < 2)
        {
LABEL_101:
          v57 = 0;
          v58 = 0;
          v54 = 1006;
          goto LABEL_126;
        }

LABEL_90:
        v44 = v41;
        v57 = 0;
        v54 = 80;
        if (v32 <= 111)
        {
          v58 = 0;
          switch(v32)
          {
            case 2:
            case 4:
            case 22:
            case 23:
              v57 = 0;
              v58 = 0;
              v54 = 81;
              goto LABEL_126;
            case 3:
              v57 = 0;
              v58 = 0;
              v54 = 82;
              goto LABEL_126;
            case 5:
            case 8:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
            case 17:
            case 19:
            case 24:
              goto LABEL_126;
            case 6:
            case 7:
              goto LABEL_98;
            case 9:
              goto LABEL_101;
            case 11:
              v57 = 0;
              v58 = 0;
              v54 = 25;
              goto LABEL_126;
            case 16:
              v57 = 0;
              v58 = 0;
              v54 = 26;
              goto LABEL_126;
            case 18:
              goto LABEL_102;
            case 20:
              goto LABEL_95;
            case 21:
              v57 = 0;
              v58 = 0;
              v54 = 22;
              goto LABEL_126;
            case 25:
              goto LABEL_107;
            case 26:
              goto LABEL_108;
            case 27:
              goto LABEL_105;
            case 28:
              goto LABEL_116;
            case 29:
              goto LABEL_106;
            default:
              if (v32 != 111)
              {
                goto LABEL_126;
              }

              v68 = objc_alloc_init(NSMutableDictionary);
              v47 = v97;
              if (v97)
              {
                [v97 doubleValue];
                v54 = 1010;
                if (v72 >= 3600.0)
                {
                  goto LABEL_152;
                }

                v70 = &off_100291538;
              }

              else
              {
                v70 = &off_100291538;
                v54 = 1010;
              }

              break;
          }

          goto LABEL_155;
        }

        if (v32 > 131)
        {
          if ((v32 - 132) < 2)
          {
LABEL_95:
            v67 = [a1 _errorForCancelledError:v29];
            if (!v67)
            {
              v67 = +[CPLErrors operationCancelledError];
            }

            v34 = v67;
            v13 = v96;
            v47 = v97;
            v46 = v44;
            goto LABEL_136;
          }

          v71 = 1000;
          if (!v97)
          {
            v71 = 81;
          }

          v57 = 0;
          v58 = 0;
          if (v32 == 2008)
          {
            v54 = v71;
          }

          goto LABEL_126;
        }

        if (v32 == 112)
        {
          v57 = 0;
          v58 = 0;
          v54 = 1009;
          goto LABEL_126;
        }

        v58 = 0;
        if (v32 == 115)
        {
          goto LABEL_101;
        }

LABEL_126:

        v47 = v97;
LABEL_127:
        v68 = objc_alloc_init(NSMutableDictionary);
        if (!v47)
        {
LABEL_129:
          v95 = v14;
          if (v58)
          {
            v74 = [NSNumber numberWithInteger:v58];
            [v68 setObject:v74 forKeyedSubscript:CPLErrorScopeBusyKey];
          }

          v98 = v47;
          if (v57)
          {
            [v68 setObject:v57 forKeyedSubscript:CPLErrorResetReason];
          }

          v75 = [v29 cplUnderlyingError];
          v76 = [[NSString alloc] initWithFormat:v15 arguments:a7];
          v77 = v54;
          if (![v68 count])
          {

            v68 = 0;
          }

          v13 = v96;
          v78 = [v68 copy];
          [v75 localizedDescription];
          v79 = v46 = v68;
          v34 = [CPLErrors cplErrorWithCode:v77 underlyingError:v29 userInfo:v78 description:@"%@ (%@)", v76, v79];

          v47 = v98;
          v14 = v95;
          goto LABEL_136;
        }

LABEL_128:
        [v47 doubleValue];
        v73 = [NSDate dateWithTimeIntervalSinceNow:?];
        [v68 setObject:v73 forKeyedSubscript:CPLErrorRetryAfterDateKey];

        goto LABEL_129;
      }

      if (v45 > 2029)
      {
        if ((v45 - 2030) < 2)
        {
          goto LABEL_98;
        }

        goto LABEL_90;
      }

      if (v45 == 2024)
      {
        goto LABEL_98;
      }

      if (v45 != 2026)
      {
        if (v45 == 2029)
        {
          v55 = [v41 localizedDescription];
          v56 = [v55 rangeOfString:@"Snapshot in progress"];

          v57 = 0;
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v58 = 1;
          }

          else
          {
            v58 = 2;
          }

          v54 = 35;
          goto LABEL_126;
        }

        goto LABEL_90;
      }

      if (v32 != 26)
      {
        v58 = 0;
        v57 = @"Container reset by server";
        v54 = 21;
        goto LABEL_126;
      }

LABEL_108:
      v57 = 0;
      v58 = 0;
      if ([a1 isContainerHasBeenWipedError:v29])
      {
        v54 = 1011;
      }

      else
      {
        v54 = 23;
      }

      goto LABEL_126;
    }

    if (v45 <= 2046)
    {
      if (v45 > 2038)
      {
        if (v45 == 2039)
        {
LABEL_102:

          v68 = objc_alloc_init(NSMutableDictionary);
          v47 = v97;
          if (v97)
          {
            [v97 doubleValue];
            v54 = 1001;
            if (v69 >= 86400.0)
            {
LABEL_152:
              v58 = 0;
              v57 = 0;
              goto LABEL_128;
            }

            v70 = &off_100291528;
          }

          else
          {
            v70 = &off_100291528;
            v54 = 1001;
          }

LABEL_155:

          v58 = 0;
          v57 = 0;
          v47 = v70;
          goto LABEL_128;
        }

        if (v45 == 2045)
        {
LABEL_106:
          v57 = 0;
          v58 = 0;
          v54 = 37;
          goto LABEL_126;
        }

        goto LABEL_90;
      }

      if (v45 == 2035)
      {
LABEL_107:
        v57 = 0;
        v58 = 0;
        v54 = 30;
        goto LABEL_126;
      }

      if (v45 != 2036)
      {
        goto LABEL_90;
      }

      if (v32 != 26)
      {
LABEL_116:
        v57 = 0;
        v58 = 0;
        v54 = 23;
        goto LABEL_126;
      }

      goto LABEL_108;
    }

    if (v45 <= 2048)
    {
      v57 = 0;
      v58 = 0;
      if (v45 == 2047)
      {
        v54 = 2009;
      }

      else
      {
        v54 = 2008;
      }

      goto LABEL_126;
    }

    if (v45 == 2049)
    {
      v57 = 0;
      v58 = 0;
      v54 = 2011;
      goto LABEL_126;
    }

    if (v45 == 2057)
    {
      v57 = 0;
      v58 = 0;
      v54 = 2010;
      goto LABEL_126;
    }

    if (v45 != 6000)
    {
      goto LABEL_90;
    }

    v48 = [v41 userInfo];
    v49 = [v48 objectForKey:NSUnderlyingErrorKey];

    if (v49)
    {
      v50 = [v49 domain];
      v51 = [v50 isEqualToString:@"CPL"];

      if (v51)
      {
        v52 = [v49 code];
        if (v52 == 11)
        {
          v53 = 1002;
        }

        else
        {
          v53 = 80;
        }

        if (v52 == 1)
        {
          v54 = 33;
LABEL_88:

          v57 = 0;
          v58 = 0;
          goto LABEL_126;
        }

        goto LABEL_83;
      }

      v59 = [v49 domain];
      v60 = [v59 isEqualToString:@"completeMyMoment"];

      if (v60)
      {
        v61 = [v49 code];
        if (v61 == 11)
        {
          v53 = 1002;
        }

        else
        {
          v53 = 80;
        }

        if (v61 == 12)
        {
          v54 = 36;
          goto LABEL_88;
        }

LABEL_83:

        v62 = v53;
        v63 = v53 == 80;
        v41 = v44;
        if (!v63)
        {
          v57 = 0;
          v58 = 0;
          v54 = v62;
          goto LABEL_126;
        }

        goto LABEL_90;
      }

      v64 = [v49 domain];
      v65 = [v64 isEqualToString:@"sharedLibrary"];

      if (v65)
      {
        v66 = [v49 code];
        if ((v66 - 14) <= 3)
        {
          v54 = qword_100243F20[(v66 - 14)];
          goto LABEL_88;
        }
      }
    }

    v41 = v44;
    goto LABEL_90;
  }

  v16 = [[NSString alloc] initWithFormat:v15 arguments:a7];
  v17 = [v12 userInfo];
  v18 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (v18)
  {
    v19 = [[NSString alloc] initWithFormat:@"%@ (%@)", v16, v18];

    v16 = v19;
  }

  v20 = [v17 mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(NSMutableDictionary);
  }

  v35 = v22;

  [v35 setObject:v16 forKey:NSLocalizedDescriptionKey];
  v36 = [v12 domain];
  v34 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v36, [v12 code], v35);

LABEL_138:
  v80 = [v14 count];
  if (v80 && v34)
  {
    v81 = v80;
    if (v80 < 6)
    {
      v85 = [v14 componentsJoinedByString:{@", "}];
    }

    else
    {
      v82 = [NSString alloc];
      v83 = [v14 subarrayWithRange:{v81 - 5, 5}];
      v84 = [v83 componentsJoinedByString:{@", "}];
      v85 = [v82 initWithFormat:@"..., %@", v84];
    }

    v86 = [v34 userInfo];
    v87 = [v86 mutableCopy];
    v88 = v87;
    if (v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = objc_alloc_init(NSMutableDictionary);
    }

    v90 = v89;

    [v90 setObject:v85 forKey:CPLErrorRequestUUIDs];
    v91 = [NSError alloc];
    v92 = [v34 domain];
    v93 = [v91 initWithDomain:v92 code:objc_msgSend(v34 userInfo:{"code"), v90}];

    v34 = v93;
  }

  if (!v34)
  {
    v34 = +[CPLErrors unknownError];
  }

  return v34;
}

+ (id)CPLErrorForCloudKitUploadError:(id)a3 getDestinationRecordIDs:(id)a4 scopeProvider:(id)a5 withRequestUUIDs:(id)a6 uploadAction:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 domain];
  if ([v17 isEqualToString:CKErrorDomain])
  {
    v18 = [v12 code];

    if (v18 == 12)
    {
      v19 = v13[2](v13);
      if ([v19 count] >= 2)
      {
        v45 = a1;
        v20 = [[NSCountedSet alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v44 = v19;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v51;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v51 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [v20 addObject:*(*(&v50 + 1) + 8 * i)];
            }

            v23 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
          }

          while (v23);
        }

        v26 = [v20 count];
        if (v26 != [v21 count])
        {
          v41 = v15;
          v42 = v13;
          v43 = v12;
          v27 = v16;
          v28 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
          v40 = v27;
          v29 = [[NSString alloc] initWithFormat:@"Tried to %@ the same record twice in the same batch", v27];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v30 = v20;
          v31 = [v30 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v47;
            do
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v47 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v46 + 1) + 8 * j);
                if ([v30 countForObject:v35] >= 2)
                {
                  v36 = [v14 rejectedScopedIdentifierForRejectedCKRecordID:v35];
                  [v28 setObject:v29 forKeyedSubscript:v36];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v32);
          }

          if ([v28 count])
          {
            v54 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
            v55 = v28;
            v37 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            v38 = [CPLErrors cplErrorWithCode:18 underlyingError:v43 userInfo:v37 description:@"Tried to %@ the same record twice in the same batch", v40];

            v16 = v40;
            v12 = v43;

            v15 = v41;
            v13 = v42;
            goto LABEL_28;
          }

          v13 = v42;
          v12 = v43;
          v16 = v40;
          v15 = v41;
        }

        v19 = v44;
        a1 = v45;
      }
    }
  }

  else
  {
  }

  v38 = [a1 CPLErrorForCloudKitError:v12 scopeProvider:v14 withRequestUUIDs:v15 description:{@"Failed to %@ some records", v16}];
LABEL_28:

  return v38;
}

+ (BOOL)getCloudKitErrorCode:(int64_t *)a3 internalCode:(int64_t *)a4 fromError:(id)a5
{
  v8 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = [v8 code];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = [v8 domain];
  v10 = [v9 isEqualToString:CKErrorDomain];

  if (v10)
  {
    v11 = [v8 code];
    v31[3] = v11;
    if (v11 == 2)
    {
      v12 = [v8 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000A31C8;
      v21[3] = &unk_100276908;
      v21[4] = &v30;
      v21[5] = &v26;
      v21[6] = &v22;
      v21[7] = a1;
      [v13 enumerateKeysAndObjectsUsingBlock:v21];
    }

    if ((v23[3] & 1) == 0)
    {
      *(v23 + 24) = 1;
      v14 = [v8 userInfo];
      v15 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v15 && ([v15 domain], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", CKUnderlyingErrorDomain), v16, v17))
      {
        v18 = [v15 code];
      }

      else
      {
        v18 = 0;
      }

      v27[3] = v18;
    }
  }

  v19 = *(v23 + 24);
  if (v19 == 1)
  {
    *a3 = v31[3];
    *a4 = v27[3];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

+ (BOOL)isPartialFailureError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:CKErrorDomain])
  {
    v5 = [v3 code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_filteredPartialFailureError:(id)a3 itemClass:(Class)a4
{
  v7 = a3;
  if (([a1 isPartialFailureError:v7] & 1) == 0)
  {
    sub_1001AC870(a2, a1, v7);
  }

  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A33F8;
  v15[3] = &unk_100276930;
  v18 = a4;
  v19 = a2;
  v16 = v7;
  v20 = a1;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v17 = v10;
  v11 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)errorsPerRecordIDForPartialFailureError:(id)a3
{
  v4 = a3;
  v5 = [a1 _filteredPartialFailureError:v4 itemClass:objc_opt_class()];

  return v5;
}

+ (id)errorsPerZoneIDForPartialFailureError:(id)a3
{
  v4 = a3;
  v5 = [a1 _filteredPartialFailureError:v4 itemClass:objc_opt_class()];

  return v5;
}

+ (id)realErrorForError:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000044D0;
  v16 = sub_10000534C;
  v4 = a3;
  v17 = v4;
  if ([a1 isPartialFailureError:v4])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A3720;
    v9[3] = &unk_100276958;
    v10 = v4;
    v11 = &v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (BOOL)isRecordNotFoundError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:CKErrorDomain])
  {
    v5 = [v3 code] == 11;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isFeatureDisabledError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:NSUnderlyingErrorKey];

  if (v4)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:CKUnderlyingErrorDomain];

    if (v6)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKey:NSUnderlyingErrorKey];

      if (v8)
      {
        v9 = [v8 domain];
        LOBYTE(v6) = (([v9 isEqualToString:@"CPL"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"completeMyMoment")) && objc_msgSend(v8, "code") == 11;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isOperationCancelledOrDeferredError:(id)a3
{
  v4 = a3;
  if ([v4 isCPLOperationCancelledError] & 1) != 0 || (objc_msgSend(v4, "isCPLOperationDeferredError"))
  {
    v5 = 1;
    goto LABEL_4;
  }

  v7 = [v4 domain];
  v8 = [v7 isEqualToString:CKErrorDomain];

  if (!v8)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_4;
  }

  v9 = [v4 code];
  v5 = 1;
  if ((v9 - 132) >= 2 && v9 != 20)
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v11)
    {
      v5 = [a1 isOperationCancelledOrDeferredError:v11];

      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_4:

  return v5;
}

+ (BOOL)isOperationThrottledError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:CKErrorDomain])
  {
    if ([v3 code] == 7)
    {

LABEL_7:
      v5 = 1;
      goto LABEL_8;
    }

    v6 = [v3 code];

    if (v6 == 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = [v3 isCPLThrottlingError];
LABEL_8:

  return v5;
}

+ (BOOL)isContainerHasBeenWipedError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 26)
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:CKErrorUserDidResetEncryptedDataKey];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end