@interface IXSContainerRefreshManager
+ (id)sharedInstance;
- (BOOL)_onQueue_refreshContainerTypes:(unint64_t)types forAppWithIdentity:(id)identity error:(id *)error;
- (BOOL)_onQueue_terminateBundleID:(id)d withOptions:(id)options terminationAssertion:(id *)assertion error:(id *)error;
- (void)refreshContainerTypesWithOptions:(id)options forAppWithIdentity:(id)identity completion:(id)completion;
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

- (BOOL)_onQueue_terminateBundleID:(id)d withOptions:(id)options terminationAssertion:(id *)assertion error:(id *)error
{
  dCopy = d;
  optionsCopy = options;
  v11 = [RBSTerminateContext alloc];
  reason = [optionsCopy reason];
  v13 = [NSString stringWithFormat:@"Refreshing data container: %@", reason];
  v14 = [v11 initWithExplanation:v13];

  LODWORD(v13) = [optionsCopy forceTerminateApp];
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
  v17 = [RBSProcessPredicate predicateMatchingBundleIdentifier:dCopy];
  v18 = [v16 initWithPredicate:v17 context:v14];

  if (v18)
  {
    v30 = 0;
    v19 = [v18 acquireWithError:&v30];
    v20 = v30;
    if (v19)
    {
      v21 = 1;
      if (!assertion)
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
      v34 = dCopy;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v20;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: Failed to acquire termination assertion for identifier %@: assertion = %@ : %@", buf, 0x2Au);
    }

    v29 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_terminateBundleID:withOptions:terminationAssertion:error:]", 68, @"IXErrorDomain", 0x13uLL, v20, 0, @"Failed to acquire termination assertion for identifier %@: assertion = %@", v28, dCopy);

    v20 = v29;
    if (!error)
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

    v20 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_terminateBundleID:withOptions:terminationAssertion:error:]", 62, @"IXErrorDomain", 0x13uLL, 0, 0, @"Failed to create termination assertion for identifier %@", v23, dCopy);
    if (!error)
    {
LABEL_17:
      v21 = 0;
      v18 = 0;
      if (!assertion)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v24 = v20;
  v21 = 0;
  v18 = 0;
  *error = v20;
  if (assertion)
  {
LABEL_12:
    v25 = v18;
    *assertion = v18;
  }

LABEL_13:

  return v21;
}

- (BOOL)_onQueue_refreshContainerTypes:(unint64_t)types forAppWithIdentity:(id)identity error:(id *)error
{
  typesCopy = types;
  identityCopy = identity;
  personaUniqueString = [identityCopy personaUniqueString];
  bundleID = [identityCopy bundleID];
  if ((typesCopy & 2) != 0)
  {
    v42 = 0;
    v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v42];
    v13 = v42;
    if (!v12)
    {
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3198();
      }

      v10 = sub_1000405FC("[IXSContainerRefreshManager _onQueue_refreshContainerTypes:forAppWithIdentity:error:]", 158, @"IXErrorDomain", 0x23uLL, v13, 0, @"Failed to fetch application record for %@", v26, identityCopy);
LABEL_18:

      if (!error)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v31 = typesCopy;
    v32 = v12;
    errorCopy = error;
    v34 = bundleID;
    v35 = identityCopy;
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
          bundleIdentifier = [v20 bundleIdentifier];
          v23 = [(IXApplicationIdentity *)v21 initWithBundleIdentifier:bundleIdentifier personaUniqueString:personaUniqueString];

          v37 = v19;
          v24 = sub_10006F24C(v23, 4, &v37);
          v10 = v37;

          if (!v24)
          {

            v13 = v32;
            error = errorCopy;
            bundleID = v34;
            identityCopy = v35;
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

    bundleID = v34;
    identityCopy = v35;
    error = errorCopy;
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v36 = v10;
    v28 = sub_10006F24C(identityCopy, 2, &v36);
    v29 = v36;

    if (v28)
    {
      v11 = 1;
      v10 = v29;
      goto LABEL_26;
    }

    v10 = v29;
    if (!error)
    {
LABEL_25:
      v11 = 0;
      goto LABEL_26;
    }

LABEL_19:
    v27 = v10;
    v11 = 0;
    *error = v10;
    goto LABEL_26;
  }

  v10 = 0;
  if (typesCopy)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 1;
LABEL_26:

  return v11;
}

- (void)refreshContainerTypesWithOptions:(id)options forAppWithIdentity:(id)identity completion:(id)completion
{
  optionsCopy = options;
  identityCopy = identity;
  completionCopy = completion;
  +[IXSCoordinatorManager sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F6F4;
  v16 = v15[3] = &unk_100103188;
  v17 = identityCopy;
  v18 = optionsCopy;
  selfCopy = self;
  v20 = completionCopy;
  v11 = completionCopy;
  v12 = optionsCopy;
  v13 = identityCopy;
  v14 = v16;
  [v14 performCreationBlockingOperation:v15];
}

@end