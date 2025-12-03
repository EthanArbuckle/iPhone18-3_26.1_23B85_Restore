@interface FAEligibilityEvaluator
- (FAEligibilityEvaluator)initWithQueue:(id)queue requirements:(id)requirements;
- (id)_mediaAltDSID;
- (id)_recommendedMembers;
- (void)_unsafeFetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion;
- (void)fetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion;
@end

@implementation FAEligibilityEvaluator

- (FAEligibilityEvaluator)initWithQueue:(id)queue requirements:(id)requirements
{
  queueCopy = queue;
  requirementsCopy = requirements;
  v12.receiver = self;
  v12.super_class = FAEligibilityEvaluator;
  v9 = [(FAEligibilityEvaluator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_requirements, requirements);
  }

  return v10;
}

- (void)fetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000225AC;
  v15[3] = &unk_1000A6AC8;
  v15[4] = self;
  v16 = nameCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dCopy;
  v14 = nameCopy;
  dispatch_async(queue, v15);
}

- (void)_unsafeFetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  v11 = [(FAEligibilityRequirements *)self->_requirements requirementsForPropertyName:nameCopy];
  v12 = v11;
  if (v11)
  {
    serverEligibility = [v11 serverEligibility];
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      serverEligibility2 = [v12 serverEligibility];
      v16 = @"NO";
      *v36 = 138412802;
      if (serverEligibility2)
      {
        v16 = @"YES";
      }

      *&v36[4] = v16;
      v37 = 2112;
      v38 = nameCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "serverEligibility: %@, propertyName: %@, bundleID: %@", v36, 0x20u);
    }

    activeBundleIDs = [v12 activeBundleIDs];

    if (activeBundleIDs)
    {
      activeBundleIDs2 = [v12 activeBundleIDs];
      v19 = [activeBundleIDs2 containsObject:dCopy];

      serverEligibility &= v19;
      v20 = _FALogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (v19)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        activeBundleIDs3 = [v12 activeBundleIDs];
        *v36 = 138413058;
        *&v36[4] = v21;
        v37 = 2112;
        v38 = nameCopy;
        v39 = 2112;
        v40 = dCopy;
        v41 = 2112;
        v42 = activeBundleIDs3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "bundleID found: %@, propertyName: %@, bundleID: %@, eligibleApps: %@", v36, 0x2Au);
      }
    }

    expectedMediaAltDSID = [v12 expectedMediaAltDSID];

    if (expectedMediaAltDSID)
    {
      _mediaAltDSID = [(FAEligibilityEvaluator *)self _mediaAltDSID];
      if (serverEligibility)
      {
        expectedMediaAltDSID2 = [v12 expectedMediaAltDSID];
        LOBYTE(serverEligibility) = [expectedMediaAltDSID2 isEqualToString:_mediaAltDSID];
      }

      v26 = _FALogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        expectedMediaAltDSID3 = [v12 expectedMediaAltDSID];
        *v36 = 138413058;
        *&v36[4] = _mediaAltDSID;
        v37 = 2112;
        v38 = nameCopy;
        v39 = 2112;
        v40 = dCopy;
        v41 = 2112;
        v42 = expectedMediaAltDSID3;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "found mediaAltDSID: %@, propertyName: %@, bundleID: %@, expectedMediaAltDSID: %@", v36, 0x2Au);
      }
    }

    if ([v12 hasRecommendedMembers])
    {
      if (![(FAEligibilityEvaluator *)self _isCapableOfRecomendingMembers])
      {
        v35 = _FALogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 138412546;
          *&v36[4] = nameCopy;
          v37 = 2112;
          v38 = dCopy;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "wantsFamilyMemberRecommendations: YES, recommendationCapable: NO, propertyName: %@, bundleID: %@", v36, 0x16u);
        }

        goto LABEL_38;
      }

      _recommendedMembers = [(FAEligibilityEvaluator *)self _recommendedMembers];
      v29 = [_recommendedMembers count];

      if (v29 > 0)
      {
        v30 = serverEligibility;
      }

      else
      {
        v30 = 0;
      }

      v31 = _FALogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 134218498;
        *&v36[4] = v29;
        v37 = 2112;
        v38 = nameCopy;
        v39 = 2112;
        v40 = dCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "wantsFamilyMemberRecommendations: YES, recommendationCapable: YES, recommendedMemberCount: %ld, propertyName: %@, bundleID: %@", v36, 0x20u);
      }

      if ((v30 & 1) == 0)
      {
LABEL_38:
        v33 = 1;
        goto LABEL_39;
      }
    }

    else
    {
      v34 = _FALogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 138412546;
        *&v36[4] = nameCopy;
        v37 = 2112;
        v38 = dCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "wantsFamilyMemberRecommendations: NO, propertyName: %@, bundleID: %@", v36, 0x16u);
      }

      if ((serverEligibility & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v33 = 2;
  }

  else
  {
    v32 = _FALogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 138412546;
      *&v36[4] = nameCopy;
      v37 = 2112;
      v38 = dCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "no eligibility information for propertyName: %@, bundleID: %@", v36, 0x16u);
    }

    v33 = 0;
  }

LABEL_39:
  completionCopy[2](completionCopy, v33, 0);
}

- (id)_mediaAltDSID
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  ams_altDSID = [ams_activeiTunesAccount ams_altDSID];

  return ams_altDSID;
}

- (id)_recommendedMembers
{
  v2 = objc_alloc_init(FAInviteSuggestions);
  v6 = 0;
  v3 = [v2 fetchFamilyMemberSuggestions:&v6];
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[FAEligibilityEvaluator _recommendedMembers]";
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: used proactive model %lu for invite suggestions", buf, 0x16u);
  }

  return v3;
}

@end