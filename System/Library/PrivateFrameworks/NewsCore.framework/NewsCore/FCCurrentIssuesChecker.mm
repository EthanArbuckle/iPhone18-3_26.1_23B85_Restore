@interface FCCurrentIssuesChecker
- (FCCurrentIssuesChecker)init;
- (FCCurrentIssuesChecker)initWithContext:(id)a3 subscriptionController:(id)a4 issueReadingHistory:(id)a5 bundleSubscriptionProvider:(id)a6;
- (id)_promiseBundleChannelIDs;
- (id)_promiseCurrentIssuesFromChannelIDs:(void *)a3 withChainingData:(uint64_t)a4 qualityOfService:;
- (id)demoFollowedChannelIDs;
- (id)sortIssues:(void *)a3 basedOnTagIDs:;
- (void)fetchUsersCurrentIssuesWithCompletion:(id)a3;
- (void)fetchUsersFollowedIssuesWithQualityOfService:(int64_t)a3 completion:(id)a4;
@end

@implementation FCCurrentIssuesChecker

- (FCCurrentIssuesChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCurrentIssuesChecker init]";
    v10 = 2080;
    v11 = "FCCurrentIssuesChecker.m";
    v12 = 1024;
    v13 = 60;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCurrentIssuesChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCurrentIssuesChecker)initWithContext:(id)a3 subscriptionController:(id)a4 issueReadingHistory:(id)a5 bundleSubscriptionProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FCCurrentIssuesChecker;
  v15 = [(FCCurrentIssuesChecker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_subscriptionController, a4);
    objc_storeStrong(&v16->_issueReadingHistory, a5);
    objc_storeStrong(&v16->_bundleSubscriptionProvider, a6);
  }

  return v16;
}

- (void)fetchUsersCurrentIssuesWithCompletion:(id)a3
{
  v4 = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke;
  v25[3] = &unk_1E7C396C0;
  v25[4] = self;
  v17 = [MEMORY[0x1E69B68F8] firstly:v25];
  v5 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_2;
  v24[3] = &unk_1E7C42660;
  v24[4] = self;
  v6 = [v17 thenOn:v5 then:v24];
  v7 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_14;
  v23[3] = &unk_1E7C42688;
  v23[4] = self;
  v8 = [v6 thenOn:v7 then:v23];
  v9 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_16;
  v22[3] = &unk_1E7C42688;
  v22[4] = self;
  v10 = [v8 thenOn:v9 then:v22];
  v11 = zalgo();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_19;
  v20[3] = &unk_1E7C426B0;
  v20[4] = self;
  v12 = v4;
  v21 = v12;
  v13 = [v10 thenOn:v11 then:v20];
  v14 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_22;
  v18[3] = &unk_1E7C39F48;
  v19 = v12;
  v15 = v12;
  v16 = [v13 errorOn:v14 error:v18];
}

- (id)_promiseBundleChannelIDs
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __50__FCCurrentIssuesChecker__promiseBundleChannelIDs__block_invoke;
    var38[3] = &unk_1E7C39ED0;
    var38[4] = v2;
    a1 = [v3 initWithResolver:var38];
    v1 = var38[8];
  }

  return a1;
}

id __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(FCCurrentIssuesPromiseChainingData);
  v5 = objc_alloc_init(FCCurrentIssuesCheckerResult);
  if (v4)
  {
    objc_storeStrong(&v4->_partialResult, v5);
  }

  [(FCHandlePushNotificationResult *)v4 setRecordZoneIDs:v3];

  v6 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      bundleChannelIDs = v4->_bundleChannelIDs;
    }

    else
    {
      bundleChannelIDs = 0;
    }

    v8 = bundleChannelIDs;
    v9 = v6;
    LODWORD(v16) = 134217984;
    *(&v16 + 4) = [(NSOrderedSet *)v8 count];
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Found %lu bundle channels", &v16, 0xCu);
  }

  v10 = *(a1 + 32);
  v11 = v4;
  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69B68F8]);
    *&v16 = MEMORY[0x1E69E9820];
    *(&v16 + 1) = 3221225472;
    v17 = __101__FCCurrentIssuesChecker__promiseFollowedAndAutofavoriteChannelIDsWithChainingData_qualityOfService___block_invoke;
    v18 = &unk_1E7C42770;
    v19 = v10;
    v21 = 17;
    v20 = v11;
    v13 = [v12 initWithResolver:&v16];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = *(v3 + 3);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v4;
    v8 = [v6 count];
    if (v3)
    {
      v9 = *(v3 + 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v17 = 134218240;
    v18 = v8;
    v19 = 2048;
    v20 = [v10 count];
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Found %lu followed channels and %lu autofavorite tags", &v17, 0x16u);
  }

  if (v3)
  {
    v11 = *(v3 + 3);
    v12 = *(v3 + 4);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  v14 = [(FCCurrentIssuesChecker *)*(a1 + 32) _promiseCurrentIssuesFromChannelIDs:v13 withChainingData:v3 qualityOfService:17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_promiseCurrentIssuesFromChannelIDs:(void *)a3 withChainingData:(uint64_t)a4 qualityOfService:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = objc_alloc(MEMORY[0x1E69B68F8]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke;
    v12[3] = &unk_1E7C427C0;
    v13 = v8;
    v14 = v7;
    v15 = a1;
    v16 = a4;
    v10 = [v9 initWithResolver:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_16(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = v3[4];
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_2_17;
  v53[3] = &unk_1E7C3B270;
  v6 = v3;
  v54 = v6;
  v7 = [v5 fc_arrayOfObjectsFailingTest:v53];
  if (v4)
  {
    v8 = v4[1];
  }

  else
  {
    v8 = 0;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_3;
  v51[3] = &unk_1E7C3B270;
  v9 = v6;
  v52 = v9;
  v10 = [v8 fc_arrayOfObjectsPassingTest:v51];
  v11 = [(FCCurrentIssuesChecker *)*(a1 + 32) demoFollowedChannelIDs];
  v12 = [v11 count];

  if (v12)
  {
    v13 = *(a1 + 32);
    if (v4)
    {
      v14 = v4[3];
    }

    else
    {
      v14 = 0;
    }

    v11 = v14;
    v15 = [(FCCurrentIssuesChecker *)v13 sortIssues:v7 basedOnTagIDs:v11];
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v7;
    if (v4)
    {
LABEL_9:
      v16 = v4[5];
      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_10:
  [v16 setFollowedIssues:v15];
  if (v12)
  {

    v17 = [(FCCurrentIssuesChecker *)*(a1 + 32) sortIssues:v10 basedOnTagIDs:v9];
    if (v4)
    {
LABEL_12:
      v18 = v4[5];
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v10;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  v18 = 0;
LABEL_13:
  v50 = v10;
  [v18 setAutoFavoriteIssues:v17];
  if (v12)
  {
  }

  v19 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v9;
    v20 = v7;
    if (v4)
    {
      v21 = v4[5];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v22 autoFavoriteIssues];
    v24 = [v23 count];
    if (v4)
    {
      v25 = v4[5];
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = [v26 autoFavoriteIssues];
    *buf = 134218242;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v27;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Found %lu auto favorited issues: %@", buf, 0x16u);

    v7 = v20;
    v9 = v49;
  }

  v28 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v9;
    v30 = v7;
    if (v4)
    {
      v31 = v4[5];
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v32 followedIssues];
    v34 = [v33 count];
    if (v4)
    {
      v35 = v4[5];
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v37 = [v36 followedIssues];
    *buf = 134218242;
    *&buf[4] = v34;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "Found %lu followed issues: %@", buf, 0x16u);

    v7 = v30;
    v9 = v29;
  }

  v38 = *(a1 + 32);
  if (v4)
  {
    v39 = v4[5];
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;
  v41 = [v40 followedIssues];
  v42 = v4;
  if (v38)
  {
    if (!v41 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issues"];
      *buf = 136315906;
      *&buf[4] = "[FCCurrentIssuesChecker _promiseFilterUnreadIssuesWithFromIssues:withChainingdata:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCurrentIssuesChecker.m";
      *&buf[22] = 1024;
      LODWORD(v56) = 311;
      WORD2(v56) = 2114;
      *(&v56 + 6) = v47;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!v4)
      {
LABEL_33:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "data"];
          *buf = 136315906;
          *&buf[4] = "[FCCurrentIssuesChecker _promiseFilterUnreadIssuesWithFromIssues:withChainingdata:]";
          *&buf[12] = 2080;
          *&buf[14] = "FCCurrentIssuesChecker.m";
          *&buf[22] = 1024;
          LODWORD(v56) = 312;
          WORD2(v56) = 2114;
          *(&v56 + 6) = v48;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    else if (!v4)
    {
      goto LABEL_33;
    }

    v43 = objc_alloc(MEMORY[0x1E69B68F8]);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke;
    *&v56 = &unk_1E7C3B768;
    *(&v56 + 1) = v38;
    v57 = v41;
    v58 = v42;
    v44 = [v43 initWithResolver:buf];

    goto LABEL_36;
  }

  v44 = 0;
LABEL_36:

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

uint64_t __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_2_17(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceChannel];
  v4 = [v3 identifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceChannel];
  v4 = [v3 identifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

- (id)demoFollowedChannelIDs
{
  if (a1)
  {
    v1 = NewsCoreUserDefaults();
    v2 = [v1 stringForKey:@"news.demo.followed_channels"];

    v3 = [v2 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sortIssues:(void *)a3 basedOnTagIDs:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 && v6)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__FCCurrentIssuesChecker_sortIssues_basedOnTagIDs___block_invoke_2;
      v10[3] = &unk_1E7C38D38;
      v11 = v5;
      a1 = [v7 fc_arrayByTransformingWithBlock:v10];
      v8 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __51__FCCurrentIssuesChecker_sortIssues_basedOnTagIDs___block_invoke;
      v15 = &unk_1E7C3B578;
      v16 = v5;
      v8 = v16;
      a1 = v8;
    }
  }

  return a1;
}

uint64_t __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_19(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
    v3 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 setUnreadFollowedIssues:v5];

  v6 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v7 = v4[5];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = v6;
    v10 = [v8 unreadFollowedIssues];
    v11 = [v10 count];
    if (v4)
    {
      v12 = v4[5];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 unreadFollowedIssues];
    *buf = 134218242;
    v53 = v11;
    v54 = 2112;
    v55 = v14;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Found %lu unread issues: %@", buf, 0x16u);
  }

  if (v4)
  {
    v15 = v4[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 unreadFollowedIssues];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_20;
  v51[3] = &unk_1E7C3B270;
  v18 = *(a1 + 32);

  v51[4] = v18;
  v19 = [v17 fc_arrayOfObjectsPassingTest:v51];

  if (v4)
  {
    v20 = v4[5];
  }

  else
  {
    v20 = 0;
  }

  [v20 setUnbadgedIssues:v19];
  v21 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v22 = v4[5];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = v21;
    v25 = [v23 unbadgedIssues];
    v26 = [v25 count];
    if (v4)
    {
      v27 = v4[5];
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v28 unbadgedIssues];
    *buf = 134218242;
    v53 = v26;
    v54 = 2112;
    v55 = v29;
    _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Found %lu unbadged issues: %@", buf, 0x16u);
  }

  if (v4)
  {
    v30 = v4[5];
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v31 unreadFollowedIssues];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_21;
  v50[3] = &unk_1E7C3B270;
  v33 = *(a1 + 32);

  v50[4] = v33;
  v34 = [v32 fc_arrayOfObjectsPassingTest:v50];

  if (v4)
  {
    v35 = v4[5];
  }

  else
  {
    v35 = 0;
  }

  [v35 setSeenIssues:v34];
  v36 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v37 = v4[5];
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = v36;
    v40 = [v38 seenIssues];
    v41 = [v40 count];
    v42 = a1;
    if (v4)
    {
      v43 = v4[5];
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    v45 = [v44 seenIssues];
    *buf = 134218242;
    v53 = v41;
    v54 = 2112;
    v55 = v45;
    _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_DEFAULT, "Found %lu seen issues: %@", buf, 0x16u);

    a1 = v42;
  }

  v46 = *(a1 + 40);
  if (v46)
  {
    if (v4)
    {
      v47 = v4[5];
    }

    else
    {
      v47 = 0;
    }

    (*(v46 + 16))(v46, v47);
  }

  v48 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[3];
  }

  v4 = v3;
  v5 = [a2 identifier];
  v6 = [v4 hasIssueWithIDBeenBadged:v5];

  return v6 ^ 1u;
}

uint64_t __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[3];
  }

  v4 = v3;
  v5 = [a2 identifier];
  v6 = [v4 hasIssueWithIDBeenSeen:v5];

  return v6;
}

void __64__FCCurrentIssuesChecker_fetchUsersCurrentIssuesWithCompletion___block_invoke_22(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Failed to check for current issues with error: %{public}@", &v8, 0xCu);
  }

  v5 = objc_alloc_init(FCCurrentIssuesCheckerResult);
  [(FCCurrentIssuesCheckerResult *)v5 setError:v3];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchUsersFollowedIssuesWithQualityOfService:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke;
  v21[3] = &unk_1E7C396C0;
  v21[4] = self;
  v7 = [MEMORY[0x1E69B68F8] firstly:v21];
  v8 = zalgo();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_2;
  v20[3] = &unk_1E7C426D8;
  v20[4] = self;
  v20[5] = a3;
  v9 = [v7 thenOn:v8 then:v20];
  v10 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_3;
  v18[3] = &unk_1E7C42700;
  v11 = v6;
  v19 = v11;
  v12 = [v9 thenOn:v10 then:v18];
  v13 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_4;
  v16[3] = &unk_1E7C39F48;
  v17 = v11;
  v14 = v11;
  v15 = [v12 errorOn:v13 error:v16];
}

id __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FCCurrentIssuesPromiseChainingData);
  [(FCHandlePushNotificationResult *)v4 setRecordZoneIDs:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 subscribedTagIDs];
  v9 = [(FCCurrentIssuesChecker *)v5 _promiseCurrentIssuesFromChannelIDs:v8 withChainingData:v4 qualityOfService:*(a1 + 40)];

  return v9;
}

uint64_t __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3)
    {
      v5 = v3[1];
    }

    else
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5, 0);
  }

  return 0;
}

void __82__FCCurrentIssuesChecker_fetchUsersFollowedIssuesWithQualityOfService_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCCurrentIssuesCheckerLog;
  if (os_log_type_enabled(FCCurrentIssuesCheckerLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Failed to check for current issues with error: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __51__FCCurrentIssuesChecker_sortIssues_basedOnTagIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 sourceChannel];
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

void __50__FCCurrentIssuesChecker__promiseBundleChannelIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCCurrentIssuesChecker__promiseBundleChannelIDs__block_invoke_2;
  v11[3] = &unk_1E7C390B8;
  v11[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 prepareForUseWithCompletion:v11];
}

void __50__FCCurrentIssuesChecker__promiseBundleChannelIDs__block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 bundleSubscription];
  v6 = [v4 bundleChannelIDs];

  if ([v6 count])
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] fc_errorWithCode:8 description:@"Could not get the list of bundle channelIDs."];
    (*(a1[6] + 16))();
  }
}

void __101__FCCurrentIssuesChecker__promiseFollowedAndAutofavoriteChannelIDsWithChainingData_qualityOfService___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = a1[6];
  v9 = v7;
  v10 = FCDispatchQueueForQualityOfService(v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__FCCurrentIssuesChecker__promiseFollowedAndAutofavoriteChannelIDsWithChainingData_qualityOfService___block_invoke_2;
  v14[3] = &unk_1E7C42748;
  v11 = a1[5];
  v14[4] = a1[4];
  v15 = v11;
  v16 = v5;
  v17 = v6;
  v12 = v6;
  v13 = v5;
  [v9 fetchSubscribedTagsWithCallbackQueue:v10 preferCache:0 completion:v14];
}

void __101__FCCurrentIssuesChecker__promiseFollowedAndAutofavoriteChannelIDsWithChainingData_qualityOfService___block_invoke_2(uint64_t *a1, void *a2, uint64_t a3)
{
  v15 = a2;
  if (a3)
  {
    v5 = *(a1[7] + 16);
  }

  else
  {
    v6 = [(FCCurrentIssuesChecker *)a1[4] demoFollowedChannelIDs];
    v7 = [v6 count];

    if (v7)
    {
      [(FCCurrentIssuesChecker *)a1[4] demoFollowedChannelIDs];
    }

    else
    {
      [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_111];
    }
    v8 = ;
    v9 = a1[5];
    if (v9)
    {
      objc_storeStrong((v9 + 24), v8);
    }

    v10 = a1[4];
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = v10;
    v12 = [v11 autoFavoriteTagIDs];
    v13 = a1[5];
    if (v13)
    {
      objc_storeStrong((v13 + 32), v12);
    }

    v14 = a1[5];
    v5 = *(a1[6] + 16);
  }

  v5();
}

id __101__FCCurrentIssuesChecker__promiseFollowedAndAutofavoriteChannelIDsWithChainingData_qualityOfService___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 asChannel];
  v3 = [v2 identifier];

  return v3;
}

void __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = v7;
  v9 = *(a1 + 40);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke_2;
  v27[3] = &unk_1E7C38B40;
  v10 = v8;
  v28 = v10;
  v11 = [v9 fc_arrayOfObjectsPassingTest:v27];
  if (v11)
  {
    v12 = [FCChannelIssuesFetchOperation alloc];
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(v13 + 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = [(FCChannelIssuesFetchOperation *)v12 initWithContext:v14 channelIDs:v11 issueSet:0];
    [(FCOperation *)v15 setQualityOfService:*(a1 + 56)];
    v16 = *(a1 + 56);
    if (v16 == 9)
    {
      v17 = -1;
    }

    else if (v16 == 33 || (v17 = 0, v16 == 25))
    {
      v17 = 1;
    }

    [(FCOperation *)v15 setRelativePriority:v17];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke_4;
    v18[3] = &unk_1E7C40310;
    v19 = *(a1 + 32);
    v20 = v5;
    v21 = v6;
    [(FCChannelIssuesFetchOperation *)v15 setFetchCompletionHandler:v18];
    [(FCOperation *)v15 start];
  }

  else
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke_3;
    v25 = &unk_1E7C379C8;
    v26 = v6;
    (v26->super.super._iop.__nextOp)(v26, 0);
    v15 = v26;
  }
}

void __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke_4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__FCCurrentIssuesChecker__promiseCurrentIssuesFromChannelIDs_withChainingData_qualityOfService___block_invoke_5;
    v9[3] = &unk_1E7C42798;
    v10 = v6;
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    [(FCPurchaseController *)a1[4] setPurchasesDiscoveredTagIDs:v7];
    v8 = a1[4];
    (*(a1[5] + 16))();
  }
}

void __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v6 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke_2;
  v10[3] = &unk_1E7C427E8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 48);
  v14 = v3;
  v9 = v3;
  [v5 syncWithCallbackQueue:v6 completion:v10];
}

void __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch our issue reading history; Unable to determine unread state, error=%{public}@", buf, 0xCu);
    }

    [(FCPurchaseController *)*(a1 + 48) setPurchasesDiscoveredTagIDs:?];
    v6 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke_3;
    v11[3] = &unk_1E7C3B270;
    v7 = *(a1 + 32);
    v11[4] = *(a1 + 40);
    v8 = [v7 fc_arrayOfObjectsPassingTest:v11];
    [(FCPurchaseController *)*(a1 + 48) setPurchasesDiscoveredTagIDs:v8];
    v9 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __84__FCCurrentIssuesChecker__promiseFilterUnreadIssuesWithFromIssues_withChainingdata___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[3];
  }

  v4 = v3;
  v5 = [a2 identifier];
  v6 = [v4 hasIssueWithIDBeenVisited:v5];

  return v6 ^ 1u;
}

@end