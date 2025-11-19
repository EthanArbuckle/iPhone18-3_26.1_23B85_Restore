@interface AutoFetchCreateJobListPrivate
- (id)initForAccounts:(id)a3 accountResponsiveness:(id)a4 fetchType:(int)a5;
- (void)run;
@end

@implementation AutoFetchCreateJobListPrivate

- (id)initForAccounts:(id)a3 accountResponsiveness:(id)a4 fetchType:(int)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v17.receiver = self;
    v17.super_class = AutoFetchCreateJobListPrivate;
    v10 = [(AutoFetchCreateJobListPrivate *)&v17 init];
    if (v10)
    {
      v11 = [v8 copy];
      accounts = v10->_accounts;
      v10->_accounts = v11;

      v13 = [v9 mutableCopy];
      accountResponsiveness = v10->_accountResponsiveness;
      v10->_accountResponsiveness = v13;

      v10->_fetchType = a5;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)run
{
  v2 = self;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_accounts;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v3)
  {
    v4 = *v62;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v62 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v61 + 1) + 8 * i) primaryMailboxUid];
        v7 = [v6 uniqueId];

        if (v7)
        {
          v8 = [(NSMutableDictionary *)v2->_accountResponsiveness objectForKey:v7];
          v9 = v8 == 0;

          if (v9)
          {
            accountResponsiveness = v2->_accountResponsiveness;
            v11 = [NSNumber numberWithDouble:0.0];
            [(NSMutableDictionary *)accountResponsiveness setObject:v11 forKey:v7];
          }
        }
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v3);
  }

  objb = [(NSArray *)v2->_accounts sortedArrayUsingFunction:sub_100028610 context:v2->_accountResponsiveness];
  v12 = objc_alloc_init(NSMutableArray);
  jobList = v2->_jobList;
  v2->_jobList = v12;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obja = objb;
  v44 = [obja countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v44)
  {
    v43 = *v58;
    v14 = &OBJC_IVAR____MFDelayedNotification__processing;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v57 + 1) + 8 * j);
        v45 = [v15 pushedMailboxUids];
        v16 = MFAutoFetchLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 ef_publicDescription];
          v18 = [v45 count];
          *buf = 138543618;
          v66 = v17;
          v67 = 2048;
          v68 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ is pushing %lu folders", buf, 0x16u);
        }

        v19 = MFPowerLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v15 ef_publicDescription];
          *buf = 138543362;
          v66 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Push Incoming] account=%{public}@", buf, 0xCu);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v50 = v45;
        v21 = [v50 countByEnumeratingWithState:&v53 objects:v71 count:16];
        if (v21)
        {
          v22 = *v54;
          do
          {
            for (k = 0; k != v21; k = k + 1)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v50);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              if (![(AutoFetchCreateJobListPrivate *)v2 isUserRequested]&& ![(AutoFetchCreateJobListPrivate *)v2 isForegroundRequest]&& ![(AutoFetchCreateJobListPrivate *)v2 isForced])
              {
                v25 = qword_1001855A8;
                v26 = [v24 fullPath];
                v27 = [v25 objectForKeyedSubscript:v26];

                if (v27)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  [v27 lastFetchTime];
                  if (Current - v29 < 60.0)
                  {
                    v30 = MFAutoFetchLog();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      v31 = [v24 ef_publicDescription];
                      *buf = 138543362;
                      v66 = v31;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ because it is too close to the last fetch", buf, 0xCu);
                    }

                    goto LABEL_40;
                  }
                }
              }

              v32 = MFAutoFetchLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v15 ef_publicDescription];
                v34 = [v24 ef_publicDescription];
                *buf = 138543618;
                v66 = v33;
                v67 = 2114;
                v68 = v34;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Preparing to autofetch %{public}@ mailbox %{public}@", buf, 0x16u);
              }

              v35 = MFPowerLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v52 = [v15 ef_publicDescription];
                [v24 accountRelativePath];
                v51 = k;
                v36 = v2;
                v37 = v21;
                v38 = v22;
                v39 = v15;
                v41 = v40 = v14;
                v42 = [v24 ef_publicDescription];
                *buf = 138543874;
                v66 = v52;
                v67 = 2112;
                v68 = v41;
                v69 = 2114;
                v70 = v42;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[Fetch Initiated] account=%{public}@ mailboxPath=%@ mailbox=%{public}@", buf, 0x20u);

                v14 = v40;
                v15 = v39;
                v22 = v38;
                v21 = v37;
                v2 = v36;
                k = v51;
              }

              v27 = [objc_alloc((v14 + 486)) initRequestForMailboxUid:v24];
              v30 = [v24 uniqueId];
              if (v30)
              {
                [v27 setKey:v30];
              }

              [v27 setIsUserRequested:{-[AutoFetchCreateJobListPrivate isUserRequested](v2, "isUserRequested")}];
              [v27 setIsForegroundRequest:{-[AutoFetchCreateJobListPrivate isForegroundRequest](v2, "isForegroundRequest")}];
              [v27 setShouldGrowFetchWindow:{-[AutoFetchCreateJobListPrivate shouldGrowFetchWindow](v2, "shouldGrowFetchWindow")}];
              [v27 setShouldCompact:{-[AutoFetchCreateJobListPrivate isCompacting](v2, "isCompacting")}];
              [v27 setShouldLoadMessageBody:{-[AutoFetchCreateJobListPrivate isCompacting](v2, "isCompacting") ^ 1}];
              [(NSMutableArray *)v2->_jobList addObject:v27];
LABEL_40:
            }

            v21 = [v50 countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v21);
        }
      }

      v44 = [obja countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v44);
  }
}

@end