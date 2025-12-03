@interface CPLCloudKitErrors
+ (BOOL)_isCKErrorForRejectedRecord:(id)record;
+ (BOOL)getCloudKitErrorCode:(int64_t *)code internalCode:(int64_t *)internalCode fromError:(id)error;
+ (BOOL)isContainerHasBeenWipedError:(id)error;
+ (BOOL)isFeatureDisabledError:(id)error;
+ (BOOL)isOperationCancelledOrDeferredError:(id)error;
+ (BOOL)isOperationThrottledError:(id)error;
+ (BOOL)isPartialFailureError:(id)error;
+ (BOOL)isRecordNotFoundError:(id)error;
+ (id)CPLErrorForCloudKitError:(id)error scopeProvider:(id)provider withRequestUUIDs:(id)ds description:(id)description;
+ (id)CPLErrorForCloudKitError:(id)error scopeProvider:(id)provider withRequestUUIDs:(id)ds description:(id)description arguments:(char *)arguments;
+ (id)CPLErrorForCloudKitError:(id)error withRequestUUIDs:(id)ds description:(id)description;
+ (id)CPLErrorForCloudKitUploadError:(id)error getDestinationRecordIDs:(id)ds scopeProvider:(id)provider withRequestUUIDs:(id)iDs uploadAction:(id)action;
+ (id)_bestErrorForUnderlyingError:(id)error scopeProvider:(id)provider;
+ (id)_betterErrorForRecordId:(id)id recordError:(id)error;
+ (id)_errorForCancelledError:(id)error;
+ (id)_filteredPartialFailureError:(id)error itemClass:(Class)class;
+ (id)_rejectionReasonFromPartialError:(id)error identifier:(id)identifier;
+ (id)errorsPerRecordIDForPartialFailureError:(id)error;
+ (id)errorsPerZoneIDForPartialFailureError:(id)error;
+ (id)realErrorForError:(id)error;
@end

@implementation CPLCloudKitErrors

+ (BOOL)_isCKErrorForRejectedRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy code] - 1;
  if (v4 >= 0x1F || ((0x4405EE01u >> v4) & 1) == 0)
  {
    userInfo = [recordCopy userInfo];
    v6 = [userInfo objectForKey:NSUnderlyingErrorKey];

    domain = [v6 domain];
    v8 = [domain isEqualToString:CKUnderlyingErrorDomain];

    if ((v8 & 1) == 0)
    {

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    code = [v6 code];

    if (code != 2038 && code != 3006)
    {
      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

+ (id)_betterErrorForRecordId:(id)id recordError:(id)error
{
  idCopy = id;
  errorCopy = error;
  if (!idCopy || (v9 = errorCopy) == 0)
  {
    sub_1001AC6C0(a2, self);
  }

  localizedDescription = [errorCopy localizedDescription];
  if (localizedDescription)
  {
    idCopy = [NSString stringWithFormat:@"%@ (for record %@)", localizedDescription, idCopy];
  }

  else
  {
    idCopy = [NSString stringWithFormat:@"record %@", idCopy];
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  userInfo = [v9 userInfo];

  if (userInfo)
  {
    userInfo2 = [v9 userInfo];
    [v12 setDictionary:userInfo2];

    [v12 setObject:idCopy forKey:NSLocalizedDescriptionKey];
  }

  domain = [v9 domain];
  v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v9 code], v12);

  return v16;
}

+ (id)_rejectionReasonFromPartialError:(id)error identifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKey:NSUnderlyingErrorKey];
  v9 = CKErrorServerDescriptionKey;
  v10 = [userInfo objectForKeyedSubscript:CKErrorServerDescriptionKey];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    userInfo2 = [v8 userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:v9];

    if (!v11)
    {
LABEL_16:
      if (v8 && ([v8 domain], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", CKUnderlyingErrorDomain), v20, v21))
      {
        v22 = [NSString alloc];
        domain = [errorCopy domain];
        v24 = [v22 initWithFormat:@"%@ %ld/%ld", domain, objc_msgSend(errorCopy, "code"), objc_msgSend(v8, "code")];
      }

      else
      {
        v25 = [NSString alloc];
        domain = [errorCopy domain];
        v24 = [v25 initWithFormat:@"%@ %ld", domain, objc_msgSend(errorCopy, "code"), v27];
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

  if ([v11 rangeOfString:identifierCopy] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v11;
    v18 = v17;
    goto LABEL_21;
  }

  v19 = [v11 stringByReplacingOccurrencesOfString:identifierCopy withString:@"<redacted>"];

  v17 = v19;
  v18 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_21:

  return v18;
}

+ (id)_bestErrorForUnderlyingError:(id)error scopeProvider:(id)provider
{
  errorCopy = error;
  providerCopy = provider;
  domain = [errorCopy domain];
  if ([domain isEqual:CKErrorDomain])
  {
    code = [errorCopy code];

    if (code == 2)
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
      userInfo = [errorCopy userInfo];
      v11 = [userInfo objectForKey:CKPartialErrorsByItemIDKey];
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
      selfCopy = self;
      v31 = providerCopy;
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
          v13 = errorCopy;
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
          allKeys = [v20 allKeys];
          v23 = [allKeys componentsJoinedByString:{@", "}];
        }

        else
        {
          allKeys = [v20 allKeys];
          v22 = [allKeys subarrayWithRange:{0, 3}];
          v23 = [v22 componentsJoinedByString:{@", "}];
        }

        v24 = v44[5];
        v51 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
        v52 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v13 = [CPLErrors cplErrorWithCode:18 underlyingError:errorCopy userInfo:v25 description:@"%@ were rejected by server", v23, v27, v28, v29, v30];

        errorCopy = v23;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([errorCopy code] == 20)
  {
    domain2 = [errorCopy domain];
    v15 = [domain2 isEqualToString:CKErrorDomain];

    if (v15)
    {
      userInfo2 = [errorCopy userInfo];
      v17 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

      if (v17)
      {
        v18 = v17;

        errorCopy = v18;
      }
    }
  }

  v13 = errorCopy;
LABEL_20:

  return v13;
}

+ (id)CPLErrorForCloudKitError:(id)error withRequestUUIDs:(id)ds description:(id)description
{
  v5 = [self CPLErrorForCloudKitError:error scopeProvider:0 withRequestUUIDs:ds description:description arguments:&v8];

  return v5;
}

+ (id)CPLErrorForCloudKitError:(id)error scopeProvider:(id)provider withRequestUUIDs:(id)ds description:(id)description
{
  v6 = [self CPLErrorForCloudKitError:error scopeProvider:provider withRequestUUIDs:ds description:description arguments:&v9];

  return v6;
}

+ (id)_errorForCancelledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:CKErrorDomain];

  if ((v7 & 1) == 0)
  {
    sub_1001AC794(a2, self, errorCopy);
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v9 || ([v9 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", CKErrorDomain), v10, !v11) || (objc_msgSend(self, "_errorForCancelledError:", v9), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    code = [v9 code];
    if ((code - 132) >= 2)
    {
      if (code == 20)
      {
        v16[0] = NSLocalizedDescriptionKey;
        v16[1] = NSUnderlyingErrorKey;
        v17[0] = @"CloudKit operation has been cancelled by caller";
        v17[1] = errorCopy;
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
      v12 = [CPLErrors cplErrorWithCode:257 underlyingError:errorCopy description:@"CloudKit operation has been deferred by system"];
    }
  }

  return v12;
}

+ (id)CPLErrorForCloudKitError:(id)error scopeProvider:(id)provider withRequestUUIDs:(id)ds description:(id)description arguments:(char *)arguments
{
  errorCopy = error;
  providerCopy = provider;
  dsCopy = ds;
  descriptionCopy = description;
  if (![errorCopy isCPLError])
  {
    domain = [errorCopy domain];
    v24 = [domain isEqualToString:CKErrorDomain];

    if (!v24)
    {
      if ([errorCopy isCPLOperationCancelledError])
      {
        v34 = errorCopy;
        errorCopy = v34;
      }

      else
      {
        cplUnderlyingError = [errorCopy cplUnderlyingError];
        v38 = [[NSString alloc] initWithFormat:descriptionCopy arguments:arguments];
        localizedDescription = [cplUnderlyingError localizedDescription];
        v34 = [CPLErrors cplErrorWithCode:80 underlyingError:errorCopy description:@"%@ (%@)", v38, localizedDescription];
      }

      goto LABEL_138;
    }

    v96 = providerCopy;
    userInfo = [errorCopy userInfo];
    v97 = [userInfo objectForKey:CKErrorRetryAfterKey];

    code = [errorCopy code];
    if (code == 2)
    {
      v27 = [self _bestErrorForUnderlyingError:errorCopy scopeProvider:providerCopy];
      v28 = v27;
      if (v27 == errorCopy)
      {
        code2 = 2;
      }

      else
      {
        v29 = v27;

        domain2 = [v29 domain];
        v31 = [domain2 isEqualToString:CKErrorDomain];

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

              errorCopy = v29;
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

        code2 = [v29 code];
        if (!v97)
        {
          userInfo2 = [v29 userInfo];
          v97 = [userInfo2 objectForKey:CKErrorRetryAfterKey];
        }

        errorCopy = v29;
      }
    }

    else
    {
      code2 = code;
    }

    v29 = errorCopy;
    userInfo3 = [errorCopy userInfo];
    v41 = [userInfo3 objectForKey:NSUnderlyingErrorKey];

    if (!v41)
    {
      goto LABEL_90;
    }

    domain3 = [v41 domain];
    v43 = [domain3 isEqualToString:CKUnderlyingErrorDomain];

    if (!v43)
    {
      goto LABEL_90;
    }

    v44 = v41;
    code3 = [v41 code];
    if (code3 <= 2034)
    {
      if (code3 <= 2023)
      {
        if (code3 <= 2010)
        {
          if (code3 == 1002)
          {
            v57 = 0;
            v58 = 0;
            v54 = 28;
            goto LABEL_126;
          }

          if (code3 == 1020)
          {
LABEL_105:
            v57 = 0;
            v58 = 0;
            v54 = 1012;
            goto LABEL_126;
          }

          if (code3 != 2006)
          {
            goto LABEL_90;
          }

LABEL_98:
          v57 = 0;
          v58 = 0;
          v54 = 1000;
          goto LABEL_126;
        }

        if ((code3 - 2011) < 2)
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
        if (code2 <= 111)
        {
          v58 = 0;
          switch(code2)
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
              if (code2 != 111)
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

        if (code2 > 131)
        {
          if ((code2 - 132) < 2)
          {
LABEL_95:
            v67 = [self _errorForCancelledError:v29];
            if (!v67)
            {
              v67 = +[CPLErrors operationCancelledError];
            }

            v34 = v67;
            providerCopy = v96;
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
          if (code2 == 2008)
          {
            v54 = v71;
          }

          goto LABEL_126;
        }

        if (code2 == 112)
        {
          v57 = 0;
          v58 = 0;
          v54 = 1009;
          goto LABEL_126;
        }

        v58 = 0;
        if (code2 == 115)
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
          v95 = dsCopy;
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

          cplUnderlyingError2 = [v29 cplUnderlyingError];
          v76 = [[NSString alloc] initWithFormat:descriptionCopy arguments:arguments];
          v77 = v54;
          if (![v68 count])
          {

            v68 = 0;
          }

          providerCopy = v96;
          v78 = [v68 copy];
          [cplUnderlyingError2 localizedDescription];
          v79 = v46 = v68;
          v34 = [CPLErrors cplErrorWithCode:v77 underlyingError:v29 userInfo:v78 description:@"%@ (%@)", v76, v79];

          v47 = v98;
          dsCopy = v95;
          goto LABEL_136;
        }

LABEL_128:
        [v47 doubleValue];
        v73 = [NSDate dateWithTimeIntervalSinceNow:?];
        [v68 setObject:v73 forKeyedSubscript:CPLErrorRetryAfterDateKey];

        goto LABEL_129;
      }

      if (code3 > 2029)
      {
        if ((code3 - 2030) < 2)
        {
          goto LABEL_98;
        }

        goto LABEL_90;
      }

      if (code3 == 2024)
      {
        goto LABEL_98;
      }

      if (code3 != 2026)
      {
        if (code3 == 2029)
        {
          localizedDescription2 = [v41 localizedDescription];
          v56 = [localizedDescription2 rangeOfString:@"Snapshot in progress"];

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

      if (code2 != 26)
      {
        v58 = 0;
        v57 = @"Container reset by server";
        v54 = 21;
        goto LABEL_126;
      }

LABEL_108:
      v57 = 0;
      v58 = 0;
      if ([self isContainerHasBeenWipedError:v29])
      {
        v54 = 1011;
      }

      else
      {
        v54 = 23;
      }

      goto LABEL_126;
    }

    if (code3 <= 2046)
    {
      if (code3 > 2038)
      {
        if (code3 == 2039)
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

        if (code3 == 2045)
        {
LABEL_106:
          v57 = 0;
          v58 = 0;
          v54 = 37;
          goto LABEL_126;
        }

        goto LABEL_90;
      }

      if (code3 == 2035)
      {
LABEL_107:
        v57 = 0;
        v58 = 0;
        v54 = 30;
        goto LABEL_126;
      }

      if (code3 != 2036)
      {
        goto LABEL_90;
      }

      if (code2 != 26)
      {
LABEL_116:
        v57 = 0;
        v58 = 0;
        v54 = 23;
        goto LABEL_126;
      }

      goto LABEL_108;
    }

    if (code3 <= 2048)
    {
      v57 = 0;
      v58 = 0;
      if (code3 == 2047)
      {
        v54 = 2009;
      }

      else
      {
        v54 = 2008;
      }

      goto LABEL_126;
    }

    if (code3 == 2049)
    {
      v57 = 0;
      v58 = 0;
      v54 = 2011;
      goto LABEL_126;
    }

    if (code3 == 2057)
    {
      v57 = 0;
      v58 = 0;
      v54 = 2010;
      goto LABEL_126;
    }

    if (code3 != 6000)
    {
      goto LABEL_90;
    }

    userInfo4 = [v41 userInfo];
    v49 = [userInfo4 objectForKey:NSUnderlyingErrorKey];

    if (v49)
    {
      domain4 = [v49 domain];
      v51 = [domain4 isEqualToString:@"CPL"];

      if (v51)
      {
        code4 = [v49 code];
        if (code4 == 11)
        {
          v53 = 1002;
        }

        else
        {
          v53 = 80;
        }

        if (code4 == 1)
        {
          v54 = 33;
LABEL_88:

          v57 = 0;
          v58 = 0;
          goto LABEL_126;
        }

        goto LABEL_83;
      }

      domain5 = [v49 domain];
      v60 = [domain5 isEqualToString:@"completeMyMoment"];

      if (v60)
      {
        code5 = [v49 code];
        if (code5 == 11)
        {
          v53 = 1002;
        }

        else
        {
          v53 = 80;
        }

        if (code5 == 12)
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

      domain6 = [v49 domain];
      v65 = [domain6 isEqualToString:@"sharedLibrary"];

      if (v65)
      {
        code6 = [v49 code];
        if ((code6 - 14) <= 3)
        {
          v54 = qword_100243F20[(code6 - 14)];
          goto LABEL_88;
        }
      }
    }

    v41 = v44;
    goto LABEL_90;
  }

  v16 = [[NSString alloc] initWithFormat:descriptionCopy arguments:arguments];
  userInfo5 = [errorCopy userInfo];
  v18 = [userInfo5 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (v18)
  {
    v19 = [[NSString alloc] initWithFormat:@"%@ (%@)", v16, v18];

    v16 = v19;
  }

  v20 = [userInfo5 mutableCopy];
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
  domain7 = [errorCopy domain];
  v34 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain7, [errorCopy code], v35);

LABEL_138:
  v80 = [dsCopy count];
  if (v80 && v34)
  {
    v81 = v80;
    if (v80 < 6)
    {
      v85 = [dsCopy componentsJoinedByString:{@", "}];
    }

    else
    {
      v82 = [NSString alloc];
      v83 = [dsCopy subarrayWithRange:{v81 - 5, 5}];
      v84 = [v83 componentsJoinedByString:{@", "}];
      v85 = [v82 initWithFormat:@"..., %@", v84];
    }

    userInfo6 = [v34 userInfo];
    v87 = [userInfo6 mutableCopy];
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
    domain8 = [v34 domain];
    v93 = [v91 initWithDomain:domain8 code:objc_msgSend(v34 userInfo:{"code"), v90}];

    v34 = v93;
  }

  if (!v34)
  {
    v34 = +[CPLErrors unknownError];
  }

  return v34;
}

+ (id)CPLErrorForCloudKitUploadError:(id)error getDestinationRecordIDs:(id)ds scopeProvider:(id)provider withRequestUUIDs:(id)iDs uploadAction:(id)action
{
  errorCopy = error;
  dsCopy = ds;
  providerCopy = provider;
  iDsCopy = iDs;
  actionCopy = action;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    code = [errorCopy code];

    if (code == 12)
    {
      v19 = dsCopy[2](dsCopy);
      if ([v19 count] >= 2)
      {
        selfCopy = self;
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
          v41 = iDsCopy;
          v42 = dsCopy;
          v43 = errorCopy;
          v27 = actionCopy;
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
                  v36 = [providerCopy rejectedScopedIdentifierForRejectedCKRecordID:v35];
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

            actionCopy = v40;
            errorCopy = v43;

            iDsCopy = v41;
            dsCopy = v42;
            goto LABEL_28;
          }

          dsCopy = v42;
          errorCopy = v43;
          actionCopy = v40;
          iDsCopy = v41;
        }

        v19 = v44;
        self = selfCopy;
      }
    }
  }

  else
  {
  }

  v38 = [self CPLErrorForCloudKitError:errorCopy scopeProvider:providerCopy withRequestUUIDs:iDsCopy description:{@"Failed to %@ some records", actionCopy}];
LABEL_28:

  return v38;
}

+ (BOOL)getCloudKitErrorCode:(int64_t *)code internalCode:(int64_t *)internalCode fromError:(id)error
{
  errorCopy = error;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  code = [errorCopy code];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  domain = [errorCopy domain];
  v10 = [domain isEqualToString:CKErrorDomain];

  if (v10)
  {
    code2 = [errorCopy code];
    v31[3] = code2;
    if (code2 == 2)
    {
      userInfo = [errorCopy userInfo];
      v13 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000A31C8;
      v21[3] = &unk_100276908;
      v21[4] = &v30;
      v21[5] = &v26;
      v21[6] = &v22;
      v21[7] = self;
      [v13 enumerateKeysAndObjectsUsingBlock:v21];
    }

    if ((v23[3] & 1) == 0)
    {
      *(v23 + 24) = 1;
      userInfo2 = [errorCopy userInfo];
      v15 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v15 && ([v15 domain], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", CKUnderlyingErrorDomain), v16, v17))
      {
        code3 = [v15 code];
      }

      else
      {
        code3 = 0;
      }

      v27[3] = code3;
    }
  }

  v19 = *(v23 + 24);
  if (v19 == 1)
  {
    *code = v31[3];
    *internalCode = v27[3];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

+ (BOOL)isPartialFailureError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    v5 = [errorCopy code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_filteredPartialFailureError:(id)error itemClass:(Class)class
{
  errorCopy = error;
  if (([self isPartialFailureError:errorCopy] & 1) == 0)
  {
    sub_1001AC870(a2, self, errorCopy);
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A33F8;
  v15[3] = &unk_100276930;
  classCopy = class;
  v19 = a2;
  v16 = errorCopy;
  selfCopy = self;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v17 = v10;
  v11 = errorCopy;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)errorsPerRecordIDForPartialFailureError:(id)error
{
  errorCopy = error;
  v5 = [self _filteredPartialFailureError:errorCopy itemClass:objc_opt_class()];

  return v5;
}

+ (id)errorsPerZoneIDForPartialFailureError:(id)error
{
  errorCopy = error;
  v5 = [self _filteredPartialFailureError:errorCopy itemClass:objc_opt_class()];

  return v5;
}

+ (id)realErrorForError:(id)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000044D0;
  v16 = sub_10000534C;
  errorCopy = error;
  v17 = errorCopy;
  if ([self isPartialFailureError:errorCopy])
  {
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A3720;
    v9[3] = &unk_100276958;
    v10 = errorCopy;
    v11 = &v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (BOOL)isRecordNotFoundError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    v5 = [errorCopy code] == 11;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isFeatureDisabledError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKey:NSUnderlyingErrorKey];

  if (v4)
  {
    domain = [v4 domain];
    v6 = [domain isEqualToString:CKUnderlyingErrorDomain];

    if (v6)
    {
      userInfo2 = [v4 userInfo];
      v8 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

      if (v8)
      {
        domain2 = [v8 domain];
        LOBYTE(v6) = (([domain2 isEqualToString:@"CPL"] & 1) != 0 || objc_msgSend(domain2, "isEqualToString:", @"completeMyMoment")) && objc_msgSend(v8, "code") == 11;
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

+ (BOOL)isOperationCancelledOrDeferredError:(id)error
{
  errorCopy = error;
  if ([errorCopy isCPLOperationCancelledError] & 1) != 0 || (objc_msgSend(errorCopy, "isCPLOperationDeferredError"))
  {
    v5 = 1;
    goto LABEL_4;
  }

  domain = [errorCopy domain];
  v8 = [domain isEqualToString:CKErrorDomain];

  if (!v8)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_4;
  }

  code = [errorCopy code];
  v5 = 1;
  if ((code - 132) >= 2 && code != 20)
  {
    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v11)
    {
      v5 = [self isOperationCancelledOrDeferredError:v11];

      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_4:

  return v5;
}

+ (BOOL)isOperationThrottledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    if ([errorCopy code] == 7)
    {

LABEL_7:
      isCPLThrottlingError = 1;
      goto LABEL_8;
    }

    code = [errorCopy code];

    if (code == 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  isCPLThrottlingError = [errorCopy isCPLThrottlingError];
LABEL_8:

  return isCPLThrottlingError;
}

+ (BOOL)isContainerHasBeenWipedError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 26)
  {
    userInfo = [errorCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:CKErrorUserDidResetEncryptedDataKey];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end