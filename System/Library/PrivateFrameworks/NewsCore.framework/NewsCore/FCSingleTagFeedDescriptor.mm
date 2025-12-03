@interface FCSingleTagFeedDescriptor
- (BOOL)hasNotificationsEnabledWithSubscriptionController:(id)controller;
- (BOOL)hideAccessoryText;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubscribable;
- (BOOL)isSubscribedToWithSubscriptionController:(id)controller;
- (FCSingleTagFeedDescriptor)initWithContext:(id)context tag:(id)tag feedConfiguration:(unint64_t)configuration referringFeedItemIdentifier:(id)identifier;
- (FCSingleTagFeedDescriptor)initWithContext:(id)context tag:(id)tag sortMethod:(int64_t)method filterOptions:(unint64_t)options personalizationConfigurationSet:(int64_t)set feedConfiguration:(unint64_t)configuration referringFeedItemIdentifier:(id)identifier;
- (FCSingleTagFeedDescriptor)initWithIdentifier:(id)identifier;
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

- (FCSingleTagFeedDescriptor)initWithContext:(id)context tag:(id)tag sortMethod:(int64_t)method filterOptions:(unint64_t)options personalizationConfigurationSet:(int64_t)set feedConfiguration:(unint64_t)configuration referringFeedItemIdentifier:(id)identifier
{
  v49 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  tagCopy = tag;
  identifierCopy = identifier;
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  identifier = [tagCopy identifier];
  v40.receiver = self;
  v40.super_class = FCSingleTagFeedDescriptor;
  v19 = [(FCFeedDescriptor *)&v40 initWithIdentifier:identifier];

  if (v19)
  {
    if (tagCopy)
    {
      methodCopy = method;
      v20 = [tagCopy copy];
      tag = v19->_tag;
      v19->_tag = v20;

      objc_storeStrong(&v19->_masterTag, v19->_tag);
      v22 = [identifierCopy copy];
      referringFeedItemIdentifier = v19->_referringFeedItemIdentifier;
      v19->_referringFeedItemIdentifier = v22;

      asSection = [(FCTagProviding *)v19->_tag asSection];
      if (asSection)
      {
        [contextCopy tagController];
        v38 = identifierCopy;
        v25 = contextCopy;
        optionsCopy = options;
        setCopy = set;
        v29 = v28 = configuration;
        parentID = [asSection parentID];
        v31 = [v29 expectedFastCachedTagForID:parentID];
        masterTag = v19->_masterTag;
        v19->_masterTag = v31;

        configuration = v28;
        set = setCopy;
        options = optionsCopy;
        contextCopy = v25;
        identifierCopy = v38;
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

      v19->_feedSortMethod = methodCopy;
      v19->_feedFilterOptions = options;
      v19->_feedPersonalizationConfigurationSet = set;
      v19->_feedConfiguration = configuration;
      tagType = [tagCopy tagType];
      if (tagType <= 5)
      {
        v19->_feedType = qword_1B681A518[tagType];
      }
    }

    else
    {
      asSection = v19;
      v19 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v19;
}

- (FCSingleTagFeedDescriptor)initWithContext:(id)context tag:(id)tag feedConfiguration:(unint64_t)configuration referringFeedItemIdentifier:(id)identifier
{
  contextCopy = context;
  tagCopy = tag;
  identifierCopy = identifier;
  asSection = [tagCopy asSection];
  if (asSection)
  {
    tagController = [contextCopy tagController];
    parentID = [asSection parentID];
    v16 = [tagController expectedFastCachedTagForID:parentID];
  }

  else
  {
    v16 = 0;
  }

  if (([tagCopy isLocal] & 1) != 0 || objc_msgSend(v16, "isLocal"))
  {
    v17 = 0x60000011ALL;
  }

  else
  {
    v17 = 0x20000011ALL;
  }

  tagType = [tagCopy tagType];
  if ((tagType - 2) < 2)
  {
    v19 = 0;
    v20 = 2;
  }

  else if ((tagType - 4) >= 2)
  {
    if (tagType == 1)
    {
      configurationCopy = configuration;
      configurationManager = [contextCopy configurationManager];
      configuration = [configurationManager configuration];
      personalizationTreatment = [configuration personalizationTreatment];
      [personalizationTreatment topicFeedFilterMutedTopics];
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
      configuration = configurationCopy;
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

  v27 = [(FCSingleTagFeedDescriptor *)self initWithContext:contextCopy tag:tagCopy sortMethod:v20 filterOptions:v17 personalizationConfigurationSet:v19 feedConfiguration:configuration referringFeedItemIdentifier:identifierCopy];

  return v27;
}

- (FCSingleTagFeedDescriptor)initWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  v7 = [(FCFeedDescriptor *)&v13 isEqual:equalCopy];

  if (v7)
  {
    v8 = [(FCSingleTagFeedDescriptor *)self tag];
    v9 = [v6 tag];
    if ([v8 isEqualToTag:v9])
    {
      feedConfiguration = [(FCSingleTagFeedDescriptor *)self feedConfiguration];
      v11 = feedConfiguration == [v6 feedConfiguration];
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
  masterTag = [(FCSingleTagFeedDescriptor *)self masterTag];
  hideAccessoryText = [masterTag hideAccessoryText];

  return hideAccessoryText;
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
  theme = [v2 theme];

  return theme;
}

- (BOOL)isSubscribable
{
  masterTag = [(FCSingleTagFeedDescriptor *)self masterTag];
  isSubscribable = [masterTag isSubscribable];

  return isSubscribable;
}

- (BOOL)isSubscribedToWithSubscriptionController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  masterTag = [(FCSingleTagFeedDescriptor *)self masterTag];
  if ([controllerCopy hasSubscriptionToTag:masterTag])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [controllerCopy hasSubscriptionToTag:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)hasNotificationsEnabledWithSubscriptionController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  masterTag = [(FCSingleTagFeedDescriptor *)self masterTag];
  if ([controllerCopy hasNotificationsEnabledForTag:masterTag])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FCSingleTagFeedDescriptor *)self tag];
    v6 = [controllerCopy hasNotificationsEnabledForTag:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)backingChannel
{
  masterTag = [(FCSingleTagFeedDescriptor *)self masterTag];
  asChannel = [masterTag asChannel];

  return asChannel;
}

- (id)backingChannelID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  tagType = [v3 tagType];

  if ((tagType - 3) < 3)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    asSection = [v5 asSection];
    parentID = [asSection parentID];

LABEL_5:
    goto LABEL_6;
  }

  if (tagType == 2)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    parentID = [v5 identifier];
    goto LABEL_5;
  }

  parentID = 0;
LABEL_6:

  return parentID;
}

- (id)backingSectionID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  tagType = [v3 tagType];

  if ((tagType - 3) > 2)
  {
    identifier = 0;
  }

  else
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    identifier = [v5 identifier];
  }

  return identifier;
}

- (id)backingTopicID
{
  v3 = [(FCSingleTagFeedDescriptor *)self tag];
  tagType = [v3 tagType];

  if (tagType == 1)
  {
    v5 = [(FCSingleTagFeedDescriptor *)self tag];
    identifier = [v5 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (id)iAdCategories
{
  v2 = [(FCSingleTagFeedDescriptor *)self tag];
  iAdCategories = [v2 iAdCategories];
  v4 = iAdCategories;
  if (iAdCategories)
  {
    v5 = iAdCategories;
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
  iAdKeywords = [v2 iAdKeywords];
  v4 = iAdKeywords;
  if (iAdKeywords)
  {
    v5 = iAdKeywords;
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
  tagType = [v3 tagType];

  if ((tagType - 2) > 3)
  {
    return 1;
  }

  v5 = [(FCSingleTagFeedDescriptor *)self tag];
  contentProvider = [v5 contentProvider];

  return contentProvider;
}

- (id)iAdPrimaryAudience
{
  v2 = [(FCSingleTagFeedDescriptor *)self tag];
  primaryAudience = [v2 primaryAudience];

  return primaryAudience;
}

- (id)iAdFeedID
{
  backingChannelID = [(FCSingleTagFeedDescriptor *)self backingChannelID];
  v4 = backingChannelID;
  if (backingChannelID)
  {
    identifier = backingChannelID;
  }

  else
  {
    v6 = [(FCSingleTagFeedDescriptor *)self tag];
    identifier = [v6 identifier];
  }

  return identifier;
}

@end