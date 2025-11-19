@interface IXSErrorPresenter
+ (id)sharedPresenter;
- (BOOL)localizedErrorForAppName:(id)a3 unlocalizedError:(id)a4 localizedError:(id *)a5 withError:(id *)a6;
- (IXSErrorPresenter)init;
- (void)_presentErrorHighlightingLocalizedAppName:(id)a3 withHighlightedAppRecord:(id)a4 bundleIDs:(id)a5 code:(int64_t)a6 errorSource:(unint64_t)a7 underlyingError:(id)a8;
- (void)presentErrorForAppWithLocalizedName:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6;
- (void)presentErrorForIdentities:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6;
- (void)presentErrorForIdentity:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6;
@end

@implementation IXSErrorPresenter

+ (id)sharedPresenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FC8;
  block[3] = &unk_100100D40;
  block[4] = a1;
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

- (void)presentErrorForIdentity:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v13 count:1];

  [(IXSErrorPresenter *)self presentErrorForIdentities:v12 code:a4 underlyingError:v10 errorSource:a6, v13];
}

- (void)presentErrorForIdentities:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IXStringForClientID(a6);
    *buf = 136316162;
    v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
    v70 = 2048;
    v71 = a4;
    v72 = 2112;
    v73 = v13;
    v74 = 2112;
    v75 = v11;
    v76 = 2112;
    v77 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Asked to present alert for error %ld source %@ underlying error %@ for identities %@", buf, 0x34u);
  }

  if ([v10 count])
  {
    v43 = self;
    v44 = a6;
    v45 = a4;
    v46 = v11;
    v14 = +[NSMutableArray array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v47 = v10;
    v15 = v10;
    v51 = v15;
    v54 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (!v54)
    {
      v50 = 0;
      v16 = 0;
      goto LABEL_41;
    }

    v50 = 0;
    v16 = 0;
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
        v20 = [v18 bundleID];
        v61 = 0;
        v21 = [v19 initWithBundleIdentifier:v20 allowPlaceholder:1 error:&v61];
        v22 = v61;

        if (v21)
        {
          v23 = [v18 personaUniqueString];
          v24 = &stru_100100D80;
          if ([v18 isPersonalPersonaPlaceholder])
          {
            goto LABEL_13;
          }

          if (v23)
          {
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000027E0;
            v59[3] = &unk_100100DA8;
            v60 = v23;
            v24 = objc_retainBlock(v59);

LABEL_13:
            if (v24)
            {
              v52 = v16;
              v25 = +[UMUserManager sharedManager];
              v26 = [v25 isSharedIPad];

              if (v26)
              {
                v15 = v51;
                v16 = v52;
                goto LABEL_31;
              }

              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v28 = [v21 identities];
              v29 = [v28 countByEnumeratingWithState:&v55 objects:v66 count:16];
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
                      objc_enumerationMutation(v28);
                    }

                    if ((v24->invoke)(v24, *(*(&v55 + 1) + 8 * j)))
                    {

                      v14 = v48;
                      v15 = v51;
                      v16 = v52;
                      v22 = v49;
                      goto LABEL_31;
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v55 objects:v66 count:16];
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
                v34 = [v18 bundleID];
                v35 = [v18 personaUniqueString];
                *buf = 136315650;
                v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
                v70 = 2112;
                v71 = v34;
                v72 = 2112;
                v73 = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: Managed personas for %@ do not contain %@", buf, 0x20u);
              }

              v14 = v48;
              v16 = v52;
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
          v36 = [v18 bundleID];
          [v14 addObject:v36];

          if (!v16)
          {
            v16 = [v21 localizedName];
            v33 = v50;
            v50 = v21;
            goto LABEL_33;
          }

LABEL_34:

          goto LABEL_35;
        }

        v23 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v18 bundleID];
          *buf = 136315650;
          v69 = "[IXSErrorPresenter presentErrorForIdentities:code:underlyingError:errorSource:]";
          v70 = 2112;
          v71 = v27;
          v72 = 2112;
          v73 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Failed to get LSApplicationRecord for identifier %@: %@", buf, 0x20u);
        }

LABEL_35:
      }

      v54 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (!v54)
      {
LABEL_41:

        if ([v14 count])
        {
          v11 = v46;
          v10 = v47;
          v37 = v16;
          v38 = v50;
          if (!v16)
          {
            v39 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_1000972D0(v14, v39);
            }

            v37 = [v14 firstObject];
          }

          [(IXSErrorPresenter *)v43 _presentErrorHighlightingLocalizedAppName:v37 withHighlightedAppRecord:v50 bundleIDs:v14 code:v45 errorSource:v44 underlyingError:v46];
          v16 = v37;
        }

        else
        {
          v40 = [v15 count];
          v41 = sub_1000031B0(off_100121958);
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          v11 = v46;
          if (v40 == 1)
          {
            v10 = v47;
            v38 = v50;
            if (v42)
            {
              sub_1000973EC(v51);
            }
          }

          else
          {
            v10 = v47;
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

  v16 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100097498(v16);
  }

LABEL_54:
}

- (void)presentErrorForAppWithLocalizedName:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 errorSource:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IXStringForClientID(a6);
    v14 = 136316162;
    v15 = "[IXSErrorPresenter presentErrorForAppWithLocalizedName:code:underlyingError:errorSource:]";
    v16 = 2048;
    v17 = a4;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Asked to present alert for error %ld source %@ underlying error %@ for app named %@", &v14, 0x34u);
  }

  [(IXSErrorPresenter *)self _presentErrorHighlightingLocalizedAppName:v10 withHighlightedAppRecord:0 bundleIDs:0 code:a4 errorSource:a6 underlyingError:v11];
}

- (void)_presentErrorHighlightingLocalizedAppName:(id)a3 withHighlightedAppRecord:(id)a4 bundleIDs:(id)a5 code:(int64_t)a6 errorSource:(unint64_t)a7 underlyingError:(id)a8
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002A70;
  v18[3] = &unk_100100DD0;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v13 = v19;
  v14 = a8;
  v15 = a4;
  v16 = a3;
  v17 = objc_retainBlock(v18);
  IXPresentErrorHighlightingLocalizedAppName(v16, v15, v13, a6, v17, v14);
}

- (BOOL)localizedErrorForAppName:(id)a3 unlocalizedError:(id)a4 localizedError:(id *)a5 withError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 code];
  if (v10 && a5 && (v12 = v11, [v10 domain], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"IXUserPresentableErrorDomain"), v13, (v14 & 1) != 0))
  {
    v15 = [v10 userInfo];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    v17 = sub_100033520(v9, 1uLL, v12);
    [v16 setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];

    if (v12 == 16)
    {
      v18 = [v10 userInfo];
      v19 = [v18 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v20 = sub_100033608(v19, v9, 1uLL);
      [v16 setObject:v20 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    else
    {
      v19 = sub_10003375C(v9, 1uLL, v12);
      [v16 setObject:v19 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    *a5 = [NSError errorWithDomain:@"IXUserPresentableErrorDomain" code:v12 userInfo:v16];

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
    if (a6 && v23)
    {
      v23 = v23;
      *a6 = v23;
    }
  }

  v24 = v23 == 0;

  return v24;
}

@end