@interface IDSAccountIdentityElector
- (IDSAccountIdentityElector)initWithKeychainElectionStore:(id)store cloudKitElectionStore:(id)electionStore groupServerElectionStore:(id)serverElectionStore;
- (void)_cleanupFailedElectionWithFullAccountIdentityCluster:(id)cluster;
- (void)_createAccountKeysWithFullAccountIdentity:(id)identity serviceTypeNames:(id)names oldCluster:(id)cluster completion:(id)completion;
- (void)_getCurrentAccountClusterWithCompletion:(id)completion;
- (void)_getKeysForServiceTypeName:(id)name completion:(id)completion;
- (void)_rollAccountKeyWithFullCluster:(id)cluster completion:(id)completion;
- (void)getKeysForServiceTypeName:(id)name completion:(id)completion;
- (void)rollAccountKeyWithCompletion:(id)completion;
@end

@implementation IDSAccountIdentityElector

- (IDSAccountIdentityElector)initWithKeychainElectionStore:(id)store cloudKitElectionStore:(id)electionStore groupServerElectionStore:(id)serverElectionStore
{
  storeCopy = store;
  electionStoreCopy = electionStore;
  serverElectionStoreCopy = serverElectionStore;
  v15.receiver = self;
  v15.super_class = IDSAccountIdentityElector;
  v12 = [(IDSAccountIdentityElector *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keychainElectionStore, store);
    objc_storeStrong(&v13->_cloudKitElectionStore, electionStore);
    objc_storeStrong(&v13->_groupServerElectionStore, serverElectionStore);
  }

  return v13;
}

- (void)getKeysForServiceTypeName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = _os_activity_create(&_mh_execute_header, "ElectAccountIdentity", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v10, &state);
  v8 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "!setState serviceTypeName=%@", buf, 0xCu);
  }

  [(IDSAccountIdentityElector *)self _getKeysForServiceTypeName:nameCopy completion:completionCopy];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)rollAccountKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = _os_activity_create(&_mh_execute_header, "RollAccountKey", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10032DF70;
  v6[3] = &unk_100BD7788;
  v5 = completionCopy;
  v6[4] = self;
  v7 = v5;
  [(IDSAccountIdentityElector *)self _getCurrentAccountClusterWithCompletion:v6];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_getKeysForServiceTypeName:(id)name completion:(id)completion
{
  nameCopy = name;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032E150;
  v9[3] = &unk_100BD77B0;
  selfCopy = self;
  completionCopy = completion;
  v10 = nameCopy;
  v7 = nameCopy;
  v8 = completionCopy;
  [(IDSAccountIdentityElector *)self _getCurrentAccountClusterWithCompletion:v9];
}

- (void)_getCurrentAccountClusterWithCompletion:(id)completion
{
  completionCopy = completion;
  cloudKitElectionStore = [(IDSAccountIdentityElector *)self cloudKitElectionStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032E6A8;
  v7[3] = &unk_100BD77D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [cloudKitElectionStore fetchAccountIdentityItemWithCompletion:v7];
}

- (void)_rollAccountKeyWithFullCluster:(id)cluster completion:(id)completion
{
  clusterCopy = cluster;
  completionCopy = completion;
  fullAccountIdentity = [clusterCopy fullAccountIdentity];
  fullServiceIdentitiesSigning = [clusterCopy fullServiceIdentitiesSigning];
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(fullServiceIdentitiesSigning, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = fullServiceIdentitiesSigning;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        identityServiceTypeName = [*(*(&v20 + 1) + 8 * v15) identityServiceTypeName];
        [v10 addObject:identityServiceTypeName];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10032EB68;
  v18[3] = &unk_100BD7800;
  v19 = completionCopy;
  v17 = completionCopy;
  [(IDSAccountIdentityElector *)self _createAccountKeysWithFullAccountIdentity:fullAccountIdentity serviceTypeNames:v10 oldCluster:clusterCopy completion:v18];
}

- (void)_createAccountKeysWithFullAccountIdentity:(id)identity serviceTypeNames:(id)names oldCluster:(id)cluster completion:(id)completion
{
  identityCopy = identity;
  namesCopy = names;
  clusterCopy = cluster;
  completionCopy = completion;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v104 = _os_activity_create(&_mh_execute_header, "Create account keys", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v104, &state);
  v11 = +[IDSFoundationLog accountIdentity];
  v73 = clusterCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Create Account Key", buf, 2u);
  }

  v12 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = identityCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "!setState currentIdentity=%@", buf, 0xCu);
  }

  v13 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = namesCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "!setState serviceTypeNames=%@", buf, 0xCu);
  }

  v14 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = clusterCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "!setState oldCluster=%@", buf, 0xCu);
  }

  if (identityCopy)
  {
    v15 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Rolling full identity", buf, 2u);
    }

    v102 = 0;
    v16 = &v102;
    v17 = [identityCopy rolledAccountIdenityWithError:&v102];
  }

  else
  {
    v18 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Creating new full identity", buf, 2u);
    }

    v101 = 0;
    v16 = &v101;
    v17 = [(IDSAccountIdentityElector *)self _fullAccountIdentityWithError:&v101];
  }

  v19 = v17;
  v20 = *v16;
  v21 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "!setState newAccountIdentity=%@", buf, 0xCu);
  }

  if (v19)
  {
    v75 = objc_alloc_init(NSMutableArray);
    v74 = objc_alloc_init(NSMutableArray);
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v22 = namesCopy;
    v23 = [v22 countByEnumeratingWithState:&v97 objects:v109 count:16];
    if (v23)
    {
      v24 = *v98;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v98 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = IDSMPServiceIdentityTypeForName();
          v96 = v20;
          v27 = [(IDSAccountIdentityElector *)self _fullServiceIdentityAdminWithAccountIdentity:v19 type:v26 error:&v96];
          v28 = v96;

          if (!v27)
          {
            v35 = +[IDSFoundationLog accountIdentity];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v106 = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Failed to create adming identity -- Fail {adminServiceIdentity: %{public}@}", buf, 0xCu);
            }

            completionCopy[2](completionCopy, 0, 131073);
            goto LABEL_70;
          }

          v95 = v28;
          v29 = [(IDSAccountIdentityElector *)self _fullServiceIdentitySigningWithAccountIdentity:v19 type:v26 error:&v95];
          v20 = v95;

          if (!v29)
          {
            v36 = +[IDSFoundationLog accountIdentity];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v106 = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to create signingServiceIdenitty -- Fail {signingServiceIdentity: %{public}@}", buf, 0xCu);
            }

            completionCopy[2](completionCopy, 0, 131074);
            goto LABEL_69;
          }

          [v75 addObject:v27];
          [v74 addObject:v29];
        }

        v23 = [v22 countByEnumeratingWithState:&v97 objects:v109 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v30 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v106 = v75;
      v107 = 2114;
      v108 = v74;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Created service identities {fullServiceAdminIdentities: %{public}@, fullServiceSigningIdentities: %{public}@}", buf, 0x16u);
    }

    if (v73)
    {
      v31 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Rolling old cluster", buf, 2u);
      }

      v94 = v20;
      v32 = &v94;
      v33 = [v73 rolledClusterWithFullAccountIdentity:v19 fullAdminServiceIdentities:v75 fullSigningServiceIdentities:v74 error:&v94];
    }

    else
    {
      v37 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Creating new cluster", buf, 2u);
      }

      v93 = v20;
      v32 = &v93;
      v33 = [(IDSAccountIdentityElector *)self _fullClusterWithAccountIdentityClusterWithAccountIdentity:v19 fullAdminServiceIdentities:v75 fullSigningServiceIdentities:v74 error:&v93];
    }

    v22 = v33;
    v38 = *v32;

    v39 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v106 = v22;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "!setState newCluster=%@", buf, 0xCu);
    }

    if (v73 && ([v73 isParentOfCluster:v22] & 1) == 0)
    {
      __assert_rtn("[IDSAccountIdentityElector _createAccountKeysWithFullAccountIdentity:serviceTypeNames:oldCluster:completion:]", "IDSAccountIdentityElector.m", 262, "[oldCluster isParentOfCluster:newCluster]");
    }

    keychainElectionStore = [(IDSAccountIdentityElector *)self keychainElectionStore];
    v27 = [keychainElectionStore identifierForFullCluster:v73];

    keychainElectionStore2 = [(IDSAccountIdentityElector *)self keychainElectionStore];
    v68 = [keychainElectionStore2 identifierForFullCluster:v22];

    v42 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v106 = v27;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "!setState existingIdentityGroupName=%@", buf, 0xCu);
    }

    v43 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v106 = v68;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "!setState accountIdentityGroupName=%@", buf, 0xCu);
    }

    v92 = v38;
    v44 = [v22 publicAccountClusterWithError:&v92];
    v45 = v92;

    if (!v44)
    {
      __assert_rtn("[IDSAccountIdentityElector _createAccountKeysWithFullAccountIdentity:serviceTypeNames:oldCluster:completion:]", "IDSAccountIdentityElector.m", 271, "newPublicCluster");
    }

    v91 = v45;
    v69 = [v44 dataRepresentationWithError:&v91];
    v20 = v91;

    if (v69)
    {
      groupID = [v22 groupID];
      publicKey = [v73 publicKey];
      forwardingTicket = [v22 forwardingTicket];
      v90 = v20;
      v65 = [v22 signData:v69 withError:&v90];
      v60 = v90;

      publicKey2 = [v22 publicKey];
      v47 = v73;
      if (v73)
      {
        groupID2 = [v73 groupID];
        v63 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [groupID2 generation]);

        groupID3 = [v22 groupID];
        stableGroupID = [groupID3 stableGroupID];
        dataRepresentation = [stableGroupID dataRepresentation];

        v47 = v73;
      }

      else
      {
        dataRepresentation = 0;
        v63 = 0;
      }

      v52 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v106 = groupID;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "!setState newGroupID=%@", buf, 0xCu);
      }

      if (v47)
      {
        v53 = [v73 publicAccountClusterWithError:0];
        if (([v53 isParentOfCluster:v44] & 1) == 0)
        {
          __assert_rtn("[IDSAccountIdentityElector _createAccountKeysWithFullAccountIdentity:serviceTypeNames:oldCluster:completion:]", "IDSAccountIdentityElector.m", 298, "[oldPublicCluster isParentOfCluster:newPublicCluster]");
        }
      }

      cloudKitElectionStore = [(IDSAccountIdentityElector *)self cloudKitElectionStore];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_10032FA60;
      v76[3] = &unk_100BD78A0;
      v76[4] = self;
      v77 = v22;
      v87 = completionCopy;
      v78 = v27;
      v79 = v69;
      v55 = v65;
      v80 = v55;
      v56 = groupID;
      v81 = v56;
      v57 = forwardingTicket;
      v82 = v57;
      v88 = publicKey;
      v89 = publicKey2;
      v58 = v63;
      v83 = v58;
      v59 = dataRepresentation;
      v84 = v59;
      v85 = v68;
      v86 = v73;
      [cloudKitElectionStore fetchAccountIdentityItemWithCompletion:v76];

      v20 = v61;
    }

    else
    {
      v51 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v106 = v20;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Failed to create publicClusterBlob -- Fail {error: %{public}@}", buf, 0xCu);
      }

      [(IDSAccountIdentityElector *)self _cleanupFailedElectionWithFullAccountIdentityCluster:v22];
      completionCopy[2](completionCopy, 0, 131075);
    }

LABEL_69:
    v28 = v20;
LABEL_70:

    v20 = v28;
  }

  else
  {
    v34 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v106 = v20;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to create new account identity -- Fail {error: %{public}@}", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, 0x20000);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_cleanupFailedElectionWithFullAccountIdentityCluster:(id)cluster
{
  clusterCopy = cluster;
  v5 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = clusterCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up after failed election {cluster %{public}@}", buf, 0xCu);
  }

  keychainElectionStore = [(IDSAccountIdentityElector *)self keychainElectionStore];
  v7 = [keychainElectionStore identifierForFullCluster:clusterCopy];

  keychainElectionStore2 = [(IDSAccountIdentityElector *)self keychainElectionStore];
  v12 = 0;
  v9 = [keychainElectionStore2 removeFullClusterWithIdentifier:v7 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = clusterCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to clean up failed election {cluster: %{public}@, error: %{error}@}", buf, 0x16u);
    }
  }
}

@end