@interface IXSErrorPresenter
+ (id)sharedPresenter;
- (BOOL)localizedErrorForAppName:(id)name unlocalizedError:(id)error localizedError:(id *)localizedError withError:(id *)withError;
- (IXSErrorPresenter)init;
- (void)_presentErrorHighlightingLocalizedAppName:(id)name withHighlightedAppRecord:(id)record bundleIDs:(id)ds code:(int64_t)code errorSource:(unint64_t)source underlyingError:(id)error;
- (void)presentErrorForAppWithLocalizedName:(id)name code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source;
- (void)presentErrorForIdentities:(id)identities code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source;
- (void)presentErrorForIdentity:(id)identity code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source;
@end

@implementation IXSErrorPresenter

+ (id)sharedPresenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FC8;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C30 != -1)
  {
    dispatch_once(&qword_100121C30, block);
  }

  v2 = qword_100121C28;

  return v2;
}

- (IXSErrorPresenter)init
{
  v3.receiver = self;
  v3.super_class = IXSErrorPresenter;
  return [(IXSErrorPresenter *)&v3 init];
}

- (void)presentErrorForIdentity:(id)identity code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source
{
  identityCopy = identity;
  errorCopy = error;
  identityCopy2 = identity;
  v12 = [NSArray arrayWithObjects:&identityCopy count:1];

  [(IXSErrorPresenter *)self presentErrorForIdentities:v12 code:code underlyingError:errorCopy errorSource:source, identityCopy];
}

- (void)presentErrorForIdentities:(id)identities code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source
{
  identitiesCopy = identities;
  errorCopy = error;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IXStringForClientID(source);
    *buf = 136316162;
    v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
    v70 = 2048;
    codeCopy = code;
    v72 = 2112;
    v73 = v13;
    v74 = 2112;
    v75 = errorCopy;
    v76 = 2112;
    v77 = identitiesCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Asked to present alert for error %ld source %@ underlying error %@ for identities %@", buf, 0x34u);
  }

  if ([identitiesCopy count])
  {
    selfCopy = self;
    sourceCopy = source;
    codeCopy2 = code;
    v46 = errorCopy;
    v14 = +[NSMutableArray array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v47 = identitiesCopy;
    v15 = identitiesCopy;
    v51 = v15;
    v54 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (!v54)
    {
      v50 = 0;
      localizedName = 0;
      goto LABEL_41;
    }

    v50 = 0;
    localizedName = 0;
    v53 = *v63;
    v48 = v14;
    while (1)
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v63 != v53)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v62 + 1) + 8 * i);
        v19 = [LSApplicationRecord alloc];
        bundleID = [v18 bundleID];
        v61 = 0;
        v21 = [v19 initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v61];
        v22 = v61;

        if (v21)
        {
          personaUniqueString = [v18 personaUniqueString];
          v24 = &stru_100100D80;
          if ([v18 isPersonalPersonaPlaceholder])
          {
            goto LABEL_13;
          }

          if (personaUniqueString)
          {
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000027E0;
            v59[3] = &unk_100100DA8;
            v60 = personaUniqueString;
            v24 = objc_retainBlock(v59);

LABEL_13:
            if (v24)
            {
              v52 = localizedName;
              v25 = +[UMUserManager sharedManager];
              isSharedIPad = [v25 isSharedIPad];

              if (isSharedIPad)
              {
                v15 = v51;
                localizedName = v52;
                goto LABEL_31;
              }

              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              identities = [v21 identities];
              v29 = [identities countByEnumeratingWithState:&v55 objects:v66 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v56;
                v49 = v22;
                while (2)
                {
                  for (j = 0; j != v30; j = j + 1)
                  {
                    if (*v56 != v31)
                    {
                      objc_enumerationMutation(identities);
                    }

                    if ((v24->invoke)(v24, *(*(&v55 + 1) + 8 * j)))
                    {

                      v14 = v48;
                      v15 = v51;
                      localizedName = v52;
                      v22 = v49;
                      goto LABEL_31;
                    }
                  }

                  v30 = [identities countByEnumeratingWithState:&v55 objects:v66 count:16];
                  v22 = v49;
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              v33 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                bundleID2 = [v18 bundleID];
                personaUniqueString2 = [v18 personaUniqueString];
                *buf = 136315650;
                v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
                v70 = 2112;
                codeCopy = bundleID2;
                v72 = 2112;
                v73 = personaUniqueString2;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: Managed personas for %@ do not contain %@", buf, 0x20u);
              }

              v14 = v48;
              localizedName = v52;
LABEL_33:

              v15 = v51;
              goto LABEL_34;
            }
          }

          else
          {
            v24 = 0;
          }

LABEL_31:
          bundleID3 = [v18 bundleID];
          [v14 addObject:bundleID3];

          if (!localizedName)
          {
            localizedName = [v21 localizedName];
            v33 = v50;
            v50 = v21;
            goto LABEL_33;
          }

LABEL_34:

          goto LABEL_35;
        }

        personaUniqueString = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(personaUniqueString, OS_LOG_TYPE_DEFAULT))
        {
          bundleID4 = [v18 bundleID];
          *buf = 136315650;
          v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
          v70 = 2112;
          codeCopy = bundleID4;
          v72 = 2112;
          v73 = v22;
          _os_log_impl(&_mh_execute_header, personaUniqueString, OS_LOG_TYPE_DEFAULT, "%s: Failed to get LSApplicationRecord for identifier %@: %@", buf, 0x20u);
        }

LABEL_35:
      }

      v54 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (!v54)
      {
LABEL_41:

        if ([v14 count])
        {
          errorCopy = v46;
          identitiesCopy = v47;
          firstObject = localizedName;
          v38 = v50;
          if (!localizedName)
          {
            v39 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_1000972D0(v14, v39);
            }

            firstObject = [v14 firstObject];
          }

          [(IXSErrorPresenter *)selfCopy _presentErrorHighlightingLocalizedAppName:firstObject withHighlightedAppRecord:v50 bundleIDs:v14 code:codeCopy2 errorSource:sourceCopy underlyingError:v46];
          localizedName = firstObject;
        }

        else
        {
          v40 = [v15 count];
          v41 = sub_1000031B0(off_100121958);
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          errorCopy = v46;
          if (v40 == 1)
          {
            identitiesCopy = v47;
            v38 = v50;
            if (v42)
            {
              sub_1000973EC(v51);
            }
          }

          else
          {
            identitiesCopy = v47;
            v38 = v50;
            if (v42)
            {
              sub_10009735C(v51);
            }
          }
        }

        goto LABEL_54;
      }
    }
  }

  localizedName = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(localizedName, OS_LOG_TYPE_ERROR))
  {
    sub_100097498(localizedName);
  }

LABEL_54:
}

- (void)presentErrorForAppWithLocalizedName:(id)name code:(int64_t)code underlyingError:(id)error errorSource:(unint64_t)source
{
  nameCopy = name;
  errorCopy = error;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IXStringForClientID(source);
    v14 = 136316162;
    v15 = "[IXSErrorPresenter presentErrorForAppWithLocalizedName:code:underlyingError:errorSource:]";
    v16 = 2048;
    codeCopy = code;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Asked to present alert for error %ld source %@ underlying error %@ for app named %@", &v14, 0x34u);
  }

  [(IXSErrorPresenter *)self _presentErrorHighlightingLocalizedAppName:nameCopy withHighlightedAppRecord:0 bundleIDs:0 code:code errorSource:source underlyingError:errorCopy];
}

- (void)_presentErrorHighlightingLocalizedAppName:(id)name withHighlightedAppRecord:(id)record bundleIDs:(id)ds code:(int64_t)code errorSource:(unint64_t)source underlyingError:(id)error
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002A70;
  v18[3] = &unk_100100DD0;
  dsCopy = ds;
  codeCopy = code;
  sourceCopy = source;
  v13 = dsCopy;
  errorCopy = error;
  recordCopy = record;
  nameCopy = name;
  v17 = objc_retainBlock(v18);
  IXPresentErrorHighlightingLocalizedAppName(nameCopy, recordCopy, v13, code, v17, errorCopy);
}

- (BOOL)localizedErrorForAppName:(id)name unlocalizedError:(id)error localizedError:(id *)localizedError withError:(id *)withError
{
  nameCopy = name;
  errorCopy = error;
  code = [errorCopy code];
  if (errorCopy && localizedError && (v12 = code, [errorCopy domain], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"IXUserPresentableErrorDomain"), v13, (v14 & 1) != 0))
  {
    userInfo = [errorCopy userInfo];
    v16 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

    v17 = sub_100033520(nameCopy, 1uLL, v12);
    [v16 setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];

    if (v12 == 16)
    {
      userInfo2 = [errorCopy userInfo];
      v19 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v20 = sub_100033608(v19, nameCopy, 1uLL);
      [v16 setObject:v20 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    else
    {
      v19 = sub_10003375C(nameCopy, 1uLL, v12);
      [v16 setObject:v19 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    *localizedError = [NSError errorWithDomain:@"IXUserPresentableErrorDomain" code:v12 userInfo:v16];

    v23 = 0;
  }

  else
  {
    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009751C(v21);
    }

    v23 = sub_1000405FC("[IXSErrorPresenter localizedErrorForAppName:unlocalizedError:localizedError:withError:]", 153, @"IXErrorDomain", 1uLL, 0, 0, @"Invalid parameter(s)", v22, v26);
    if (withError && v23)
    {
      v23 = v23;
      *withError = v23;
    }
  }

  v24 = v23 == 0;

  return v24;
}

@end