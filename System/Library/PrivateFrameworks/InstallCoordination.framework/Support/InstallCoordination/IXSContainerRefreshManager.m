@interface IXSContainerRefreshManager
+ (id)sharedInstance;
- (BOOL)_onQueue_refreshContainerTypes:(unint64_t)a3 forAppWithIdentity:(id)a4 error:(id *)a5;
- (BOOL)_onQueue_terminateBundleID:(id)a3 withOptions:(id)a4 terminationAssertion:(id *)a5 error:(id *)a6;
- (void)refreshContainerTypesWithOptions:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5;
@end

@implementation IXSContainerRefreshManager

+ (id)sharedInstance
{
  if (qword_100121DF8 != -1)
  {
    sub_1000A30FC();
  }

  v3 = qword_100121E00;

  return v3;
}

- (BOOL)_onQueue_terminateBundleID:(id)a3 withOptions:(id)a4 terminationAssertion:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [RBSTerminateContext alloc];
  v12 = [v10 reason];
  v13 = [NSString stringWithFormat:@"Refreshing data container: %@", v12];
  v14 = [v11 initWithExplanation:v13];

  LODWORD(v13) = [v10 forceTerminateApp];
  if (v13)
  {
    v15 = 50;
  }

  else
  {
    v15 = 40;
  }

  [v14 setMaximumTerminationResistance:v15];
  v16 = [RBSTerminationAssertion alloc];
  v17 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v9];
  v18 = [v16 initWithPredicate:v17 context:v14];

  if (v18)
  {
    v30 = 0;
    v19 = [v18 acquireWithError:&v30];
    v20 = v30;
    if (v19)
    {
      v21 = 1;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v27 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[IXSContainerRefreshManager _onQueue_terminateBundleID:withOptions:terminationAssertion:error:]";
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v20;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: Failed to acquire termination assertion for identifier %@: assertion = %@ : %@", buf, 0x2Au);
    }

    v29 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_terminateBundleID:withOptions:terminationAssertion:error:]", 68, @"IXErrorDomain", 0x13uLL, v20, 0, @"Failed to acquire termination assertion for identifier %@: assertion = %@", v28, v9);

    v20 = v29;
    if (!a6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3110();
    }

    v20 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_terminateBundleID:withOptions:terminationAssertion:error:]", 62, @"IXErrorDomain", 0x13uLL, 0, 0, @"Failed to create termination assertion for identifier %@", v23, v9);
    if (!a6)
    {
LABEL_17:
      v21 = 0;
      v18 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v24 = v20;
  v21 = 0;
  v18 = 0;
  *a6 = v20;
  if (a5)
  {
LABEL_12:
    v25 = v18;
    *a5 = v18;
  }

LABEL_13:

  return v21;
}

- (BOOL)_onQueue_refreshContainerTypes:(unint64_t)a3 forAppWithIdentity:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 personaUniqueString];
  v9 = [v7 bundleID];
  if ((v6 & 2) != 0)
  {
    v42 = 0;
    v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v42];
    v13 = v42;
    if (!v12)
    {
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3198();
      }

      v10 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_refreshContainerTypes:forAppWithIdentity:error:]", 158, @"IXErrorDomain", 0x23uLL, v13, 0, @"Failed to fetch application record for %@", v26, v7);
LABEL_18:

      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v31 = v6;
    v32 = v12;
    v33 = a5;
    v34 = v9;
    v35 = v7;
    [v12 applicationExtensionRecords];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v41 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      v10 = v13;
      while (2)
      {
        v18 = 0;
        v19 = v10;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v38 + 1) + 8 * v18);
          v21 = [IXApplicationIdentity alloc];
          v22 = [v20 bundleIdentifier];
          v23 = [(IXApplicationIdentity *)v21 initWithBundleIdentifier:v22 personaUniqueString:v8];

          v37 = v19;
          v24 = sub_10006F24C(v23, 4, &v37);
          v10 = v37;

          if (!v24)
          {

            v13 = v32;
            a5 = v33;
            v9 = v34;
            v7 = v35;
            goto LABEL_18;
          }

          v18 = v18 + 1;
          v19 = v10;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = v13;
    }

    v9 = v34;
    v7 = v35;
    a5 = v33;
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v36 = v10;
    v28 = sub_10006F24C(v7, 2, &v36);
    v29 = v36;

    if (v28)
    {
      v11 = 1;
      v10 = v29;
      goto LABEL_26;
    }

    v10 = v29;
    if (!a5)
    {
LABEL_25:
      v11 = 0;
      goto LABEL_26;
    }

LABEL_19:
    v27 = v10;
    v11 = 0;
    *a5 = v10;
    goto LABEL_26;
  }

  v10 = 0;
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 1;
LABEL_26:

  return v11;
}

- (void)refreshContainerTypesWithOptions:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[IXSCoordinatorManager sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F6F4;
  v16 = v15[3] = &unk_100103188;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v20 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v16;
  [v14 performCreationBlockingOperation:v15];
}

@end