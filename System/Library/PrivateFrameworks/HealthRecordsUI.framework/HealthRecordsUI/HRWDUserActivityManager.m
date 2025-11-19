@interface HRWDUserActivityManager
- (BOOL)_restoreActivityFromPolicies:(id)a3;
- (HRWDUserActivityManager)init;
- (id)_handoffActivityBreadcrumbsForOnboarding:(id)a3;
- (id)_userActivityWithType:(id)a3;
- (void)_resetActivities;
- (void)_restoreFromActivityChain:(id)a3;
- (void)_setCurrentNodeToResponder:(id)a3;
- (void)_userActivityWithTitle:(id)a3 keywords:(id)a4 activityType:(id)a5;
- (void)addPolicy:(id)a3;
- (void)changeActivityForResponder:(id)a3 activityDictionary:(id)a4 title:(id)a5 keywords:(id)a6;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)restoreFromUserActivity:(id)a3;
- (void)setRootViewController:(id)a3;
- (void)transitionActivityForResponder:(id)a3 newResponder:(id)a4 transitionDictionary:(id)a5;
@end

@implementation HRWDUserActivityManager

- (HRWDUserActivityManager)init
{
  v12.receiver = self;
  v12.super_class = HRWDUserActivityManager;
  v2 = [(HRWDUserActivityManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    rootViewController = v2->_rootViewController;
    v2->_rootViewController = 0;

    topNode = v3->_topNode;
    v3->_topNode = 0;

    currentNode = v3->_currentNode;
    v3->_currentNode = 0;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexedActivities = v3->_indexedActivities;
    v3->_indexedActivities = v7;

    v3->_recordActivities = 1;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    policies = v3->_policies;
    v3->_policies = v9;
  }

  return v3;
}

- (void)setRootViewController:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_rootViewController, a3);
  if ([objc_opt_class() conformsToProtocol:&unk_1F4D41470])
  {
    v5 = [[_HRWDActivityNode alloc] initWithResponder:self->_rootViewController];
    topNode = self->_topNode;
    self->_topNode = v5;

    v7 = self->_topNode;
    currentNode = self->_currentNode;
    self->_currentNode = v7;
  }

  else
  {
    currentNode = [MEMORY[0x1E695DF30] exceptionWithName:@"_RootControllerNotResponderName" reason:@"The root view controller must implement the HRWDUserActivityResponder protocol" userInfo:0];
    [currentNode raise];
  }
}

- (void)changeActivityForResponder:(id)a3 activityDictionary:(id)a4 title:(id)a5 keywords:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  if (self->_recordActivities)
  {
    v12 = [(_HRWDActivityNode *)self->_topNode changeActivityForResponder:v15 activityDictionary:a4];
    currentNode = self->_currentNode;
    self->_currentNode = v12;

    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v15 uniqueUserActivityType];
        [(HRWDUserActivityManager *)self _userActivityWithTitle:v10 keywords:v11 activityType:v14];
      }

      else
      {
        [(HRWDUserActivityManager *)self _userActivityWithTitle:v10 keywords:v11 activityType:*MEMORY[0x1E696B8F8]];
      }
    }
  }
}

- (void)transitionActivityForResponder:(id)a3 newResponder:(id)a4 transitionDictionary:(id)a5
{
  if (self->_recordActivities)
  {
    v7 = [(_HRWDActivityNode *)self->_topNode transitionActivityForResponder:a3 newResponder:a4 transitionDictionary:a5];
    currentNode = self->_currentNode;
    self->_currentNode = v7;
  }
}

- (id)_handoffActivityBreadcrumbsForOnboarding:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v7 count:1];

  return v5;
}

- (void)restoreFromUserActivity:(id)a3
{
  v14 = a3;
  v4 = [(HRWDUserActivityManager *)self _restoreActivityFromPolicies:v14];
  v5 = v14;
  if (!v4)
  {
    v6 = [v14 userInfo];
    v7 = [v6 objectForKey:@"MainTab"];

    if (v7)
    {
      v8 = [(HRWDUserActivityManager *)self _castleRockSpotlightBreadcrumbs:v6];
    }

    else
    {
      v9 = [v6 objectForKey:*MEMORY[0x1E69A3EB8]];

      if (v9)
      {
        v8 = [(HRWDUserActivityManager *)self _handoffActivityBreadcrumbsForOnboarding:v6];
      }

      else
      {
        v11 = *MEMORY[0x1E696BE40];
        v12 = [v6 objectForKey:*MEMORY[0x1E696BE40]];

        if (v12)
        {
          v13 = [v6 objectForKey:v11];
          v10 = [(HRWDUserActivityManager *)self _handoffActivityBreadcrumbsForSampleType:v13];

          if (!v10)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v8 = [v6 objectForKey:@"_ActivityBreadcrumbKey"];
      }
    }

    v10 = v8;
    if (!v8)
    {
LABEL_8:

      v5 = v14;
      goto LABEL_9;
    }

LABEL_7:
    [(HRWDUserActivityManager *)self _restoreFromActivityChain:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_resetActivities
{
  v3 = [[_HRWDActivityNode alloc] initWithResponder:self->_rootViewController];
  topNode = self->_topNode;
  self->_topNode = v3;

  objc_storeStrong(&self->_currentNode, self->_topNode);
  indexedActivities = self->_indexedActivities;

  [(NSMutableDictionary *)indexedActivities removeAllObjects];
}

- (id)_userActivityWithType:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69636A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithActivityType:v5];

  [v6 setEligibleForHandoff:0];
  [v6 setEligibleForSearch:0];
  [v6 setEligibleForPublicIndexing:0];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = @"_ActivityBreadcrumbKey";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 setWithArray:v8];

  [v6 setRequiredUserInfoKeys:v9];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  [(_HRWDActivityNode *)self->_topNode addActivitiesToArray:v10 currentNode:self->_currentNode];
  v13 = @"_ActivityBreadcrumbKey";
  v14 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v6 setUserInfo:v11];

  return v6;
}

- (void)_userActivityWithTitle:(id)a3 keywords:(id)a4 activityType:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_indexedActivities objectForKey:v13];
  if (!v10)
  {
    v11 = [(HRWDUserActivityManager *)self _userActivityWithType:v9];
    if (v11)
    {
      v12 = v11;
      [v11 setEligibleForSearch:1];
      [v12 setTitle:v13];
      [v12 setEligibleForPrediction:0];
      if (v8)
      {
        [v12 setKeywords:v8];
      }

      [v12 becomeCurrent];
      [(NSMutableDictionary *)self->_indexedActivities setObject:v12 forKey:v13];
    }
  }
}

- (void)_restoreFromActivityChain:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(HRWDUserActivityManager *)self _resetActivities];
  v5 = [(_HRWDActivityNode *)self->_topNode responder];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 1;
    while (2)
    {
      v11 = 0;
      v12 = v10;
      v10 ^= v8;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * v11);
        if (v12)
        {
          [v5 applyChangeActivity:*(*(&v17 + 1) + 8 * v11)];
          [(HRWDUserActivityManager *)self _setCurrentNodeToResponder:v5];
        }

        else
        {
          v14 = [v5 applyTransitionActivity:*(*(&v17 + 1) + 8 * v11)];

          v5 = v14;
          if (!v14)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transition failed for breadcrumb: %@ in chain %@", v13, v6, v17];
            _HKInitializeLogging();
            v16 = HKLogWellnessDashboard();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [(HRWDUserActivityManager *)v15 _restoreFromActivityChain:v16];
            }

            v5 = 0;
            goto LABEL_15;
          }
        }

        v12 ^= 1u;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)_setCurrentNodeToResponder:(id)a3
{
  v4 = a3;
  currentNode = self->_currentNode;
  v10 = v4;
  if (!currentNode || ([(_HRWDActivityNode *)currentNode responder], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = v10, v6 != v10))
  {
    v8 = [(_HRWDActivityNode *)self->_topNode changeActivityForResponder:v10 activityDictionary:0];
    v9 = self->_currentNode;
    self->_currentNode = v8;

    v7 = v10;
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:801 forKey:@"_UserActivityVersionKey"];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  [(_HRWDActivityNode *)self->_topNode addActivitiesToArray:v5 currentNode:self->_currentNode];
  [v4 encodeObject:v5 forKey:@"_UserActivityBreadcrumbArrayKey"];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"_UserActivityVersionKey"];
  if (v5 == 801)
  {
    v6 = [v4 decodeObjectForKey:@"_UserActivityBreadcrumbArrayKey"];
    [(HRWDUserActivityManager *)self _restoreFromActivityChain:v6];
    [(HRWDUserActivityManager *)self setRecordActivities:0];
  }

  else
  {
    v7 = v5;
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = 801;
      _os_log_impl(&dword_1D101F000, v8, OS_LOG_TYPE_DEFAULT, "User Activity Manager version mismatch: %ld != %ld", &v9, 0x16u);
    }
  }
}

- (void)addPolicy:(id)a3
{
  v5 = a3;
  v4 = [(HRWDUserActivityManager *)self policies];
  if (([v4 containsObject:v5] & 1) == 0)
  {
    [v4 addObject:v5];
  }
}

- (BOOL)_restoreActivityFromPolicies:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HRWDUserActivityManager *)self policies];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 decidesActivity:v4])
        {
          v11 = [v10 activityChainForActivity:v4];
          if (v11)
          {
            v13 = v11;
            [(HRWDUserActivityManager *)self _restoreFromActivityChain:v11];

            v12 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)_restoreFromActivityChain:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "Restoration transition problem: %{public}@", &v2, 0xCu);
}

@end