@interface FCSingleTagFeedDescriptor
- (BOOL)hasNotificationsEnabledWithSubscriptionController:(id)a3;
- (BOOL)hideAccessoryText;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubscribable;
- (BOOL)isSubscribedToWithSubscriptionController:(id)a3;
- (FCSingleTagFeedDescriptor)initWithContext:(id)a3 tag:(id)a4 feedConfiguration:(unint64_t)a5 referringFeedItemIdentifier:(id)a6;
- (FCSingleTagFeedDescriptor)initWithContext:(id)a3 tag:(id)a4 sortMethod:(int64_t)a5 filterOptions:(unint64_t)a6 personalizationConfigurationSet:(int64_t)a7 feedConfiguration:(unint64_t)a8 referringFeedItemIdentifier:(id)a9;
- (FCSingleTagFeedDescriptor)initWithIdentifier:(id)a3;
- (id)backingChannel;
- (id)backingChannelID;
- (id)backingSectionID;
- (id)backingTopicID;
- (id)iAdCategories;
- (id)iAdFeedID;
- (id)iAdKeywords;
- (id)iAdPrimaryAudience;
- (id)name;
- (id)theme;
- (int64_t)iAdContentProvider;
@end

@implementation FCSingleTagFeedDescriptor

- (FCSingleTagFeedDescriptor)initWithContext:(id)a3 tag:(id)a4 sortMethod:(int64_t)a5 filterOptions:(unint64_t)a6 personalizationConfigurationSet:(int64_t)a7 feedConfiguration:(unint64_t)a8 referringFeedItemIdentifier:(id)a9
{
  v49 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a9;
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v42 = "[FCSingleTagFeedDescriptor initWithContext:tag:sortMethod:filterOptions:personalizationConfigurationSet:feedConfiguration:referringFeedItemIdentifier:]";
    v43 = 2080;
    v44 = "FCSingleTagFeedDescriptor.m";
    v45 = 1024;
    v46 = 69;
    v47 = 2114;
    v48 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18 = [v16 identifier];
  v40.receiver = self;
  v40.super_class = FCSingleTagFeedDescriptor;
  v19 = [(FCFeedDescriptor *)&v40 initWithIdentifier:v18];

  if (v19)
  {
    if (v16)
    {
      v39 = a5;
      v20 = [v16 copy];
      tag = v19->_tag;
      v19->_tag = v20;

      objc_storeStrong(&v19->_masterTag, v19->_tag);
      v22 = [v17 copy];
      referringFeedItemIdentifier = v19->_referringFeedItemIdentifier;
      v19->_referringFeedItemIdentifier = v22;

      v24 = [(FCTagProviding *)v19->_tag asSection];
      if (v24)
      {
        [v15 tagController];
        v38 = v17;
        v25 = v15;
        v26 = a6;
        v27 = a7;
        v29 = v28 = a8;
        v30 = [v24 parentID];
        v31 = [v29 expectedFastCachedTagForID:v30];
        masterTag = v19->_masterTag;
        v19->_masterTag = v31;

        a8 = v28;
        a7 = v27;
        a6 = v26;
        v15 = v25;
        v17 = v38;
        if (!v19->_masterTag && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to lookup parent channel in cache"];
          *buf = 136315906;
          v42 = "[FCSingleTagFeedDescriptor initWithContext:tag:sortMethod:filterOptions:personalizationConfigurationSet:feedConfiguration:referringFeedItemIdentifier:]";
          v43 = 2080;
          v44 = "FCSingleTagFeedDescriptor.m";
          v45 = 1024;
          v46 = 85;
          v47 = 2114;
          v48 = v37;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      v19->_feedSortMethod = v39;
      v19->_feedFilterOptions = a6;
      v19->_feedPersonalizationConfigurationSet = a7;
      v19->_feedConfiguration = a8;
      v33 = [v16 tagType];
      if (v33 <= 5)
      {
        v19->_feedType = qword_1B681A518[v33];
      }
    }

    else
    {
      v24 = v19;
      v19 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v19;
}

- (FCSingleTagFeedDescriptor)initWithContext:(id)a3 tag:(id)a4 feedConfiguration:(unint64_t)a5 referringFeedItemIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 asSection];
  if (v13)
  {
    v14 = [v10 tagController];
    v15 = [v13 parentID];
    v16 = [v14 expectedFastCachedTagForID:v15];
  }

  else
  {
    v16 = 0;
  }

  if (([v11 isLocal] & 1) != 0 || objc_msgSend(v16, "isLocal"))
  {
    v17 = 0x60000011ALL;
  }

  else
  {
    v17 = 0x20000011ALL;
  }

  v18 = [v11 tagType];
  if ((v18 - 2) < 2)
  {
    v19 = 0;
    v20 = 2;
  }

  else if ((v18 - 4) >= 2)
  {
    if (v18 == 1)
    {
      v29 = a5;
      v21 = [v10 configurationManager];
      v22 = [v21 configuration];
      v23 = [v22 personalizationTreatment];
      [v23 topicFeedFilterMutedTopics];
      v25 = v24;

      if (v25 == 0.0)
      {
        v26 = 36;
      }

      else
      {
        v26 = 262180;
      }

      v17 |= v26;
      v19 = 1;
      v20 = 3;
      a5 = v29;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 1;
  }

  v27 = [(FCSingleTagFeedDescriptor *)self initWithContext:v10 tag:v11 sortMethod:v20 filterOptions:v17 personalizationConfigurationSet:v19 feedConfiguration:a5 referringFeedItemIdentifier:v12];

  return v27;
}

- (FCSingleTagFeedDescriptor)initWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCSingleTagFeedDescriptor initWithIdentifier:]";
    v12 = 2080;
    v13 = "FCSingleTagFeedDescriptor.m";
    v14 = 1024;
    v15 = 196;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCSingleTagFeedDescriptor initWithIdentifier:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v13.receiver = self;
  v13.super_class = FCSingleTagFeedDescriptor;
  v7 = [(FCFeedDescriptor *)&v13 isEqual:v4];

  if (v7)
  {
    v8 = [(FCSingleTagFeedDescriptor *)self tag];
    v9 = [v6 tag];
    if ([v8 isEqualToTag:v9])
    {
      v10 = [(FCSingleTagFeedDescriptor *)self feedConfiguration];
      v11 = v10 == [v6 feedConfiguration];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)name
{
  if ([(FCSingleTagFeedDescriptor *)self feedConfiguration]== 1)
  {
    v3 = FCBundle();
    [v3 localizedStringForKey:@"Home" value:&stru_1F2DC7DC0 table:0];
  }

  else
  {
    v3 = [(FCSingleTagFeedDescriptor *)self tag];
    [v3 displayName];
  }
  v4 = ;

  return v4;
}

- (BOOL)hideAccessoryText
{
  v2 = [(FCSingleTagFeedDescriptor *)self masterTag];
  v3 = [v2 hideAccessoryText];

  return v3;
}

- (id)theme
{
  if (self->_masterTag)
  {
    [(FCSingleTagFeedDescriptor *)self masterTag];
  }

  else
  {
    [(FCSingleTagFeedDescriptor *)self tag];
  }
  v2 = ;
  v3 = [v2 theme];

  return v3;
}

- (BOOL)isSubscribable
{
  v2 = [(FCSingleTagFeedDescriptor *)self masterTag];
  v3 = [v2 isSubscribable];

  return v3;
}

- (BOOL)isSubscribedToWithSubscriptionController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionController"];
    *buf = 136315906;
    v12 = "[FCSingleTagFeedDescriptor isSubscribedToWithSubscriptionController:]";
    v13 = 2080;
    v14 = "FCSingleTagFeedDescriptor.m";
    v15 = 1024;
    v16 = 250;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCSingleTagFeedDescriptor *)self masterTag];
  if ([v4 hasSubscriptionToTag:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [v4 hasSubscriptionToTag:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)hasNotificationsEnabledWithSubscriptionController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionController"];
    *buf = 136315906;
    v12 = "[FCSingleTagFeedDescriptor hasNotificationsEnabledWithSubscriptionController:]";
    v13 = 2080;
    v14 = "FCSingleTagFeedDescriptor.m";
    v15 = 1024;
    v16 = 258;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCSingleTagFeedDescriptor *)self masterTag];
  if ([v4 hasNotificationsEnabledForTag:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [v4 hasNotificationsEnabledForTag:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)backingChannel
{
  v2 = [(FCSingleTagFeedDescriptor *)self masterTag];
  v3 = [v2 asChannel];

  return v3;
}

- (id)backingChannelID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  v4 = [v3 tagType];

  if ((v4 - 3) < 3)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [v5 asSection];
    v7 = [v6 parentID];

LABEL_5:
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    v7 = [v5 identifier];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)backingSectionID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  v4 = [v3 tagType];

  if ((v4 - 3) > 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [v5 identifier];
  }

  return v6;
}

- (id)backingTopicID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  v4 = [v3 tagType];

  if (v4 == 1)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [v5 identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)iAdCategories
{
  v2 = [(FCSingleTagFeedDescriptor *)self tag];
  v3 = [v2 iAdCategories];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)iAdKeywords
{
  v2 = [(FCSingleTagFeedDescriptor *)self tag];
  v3 = [v2 iAdKeywords];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (int64_t)iAdContentProvider
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  v4 = [v3 tagType];

  if ((v4 - 2) > 3)
  {
    return 1;
  }

  v5 = [(FCSingleTagFeedDescriptor *)self tag];
  v6 = [v5 contentProvider];

  return v6;
}

- (id)iAdPrimaryAudience
{
  v2 = [(FCSingleTagFeedDescriptor *)self tag];
  v3 = [v2 primaryAudience];

  return v3;
}

- (id)iAdFeedID
{
  v3 = [(FCSingleTagFeedDescriptor *)self backingChannelID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(FCSingleTagFeedDescriptor *)self tag];
    v5 = [v6 identifier];
  }

  return v5;
}

@end