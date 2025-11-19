@interface FCContentContextInternal
- (FCAVAssetCacheType)avAssetCache;
- (FCAVAssetFactoryType)avAssetFactory;
- (FCAVAssetKeyCacheType)avAssetKeyCache;
- (FCArticleListRecordSource)articleListRecordSource;
- (FCArticleRecordSource)articleRecordSource;
- (FCAssetKeyCacheType)assetKeyCache;
- (FCAssetKeyManagerType)assetKeyManager;
- (FCAudioConfigRecordSource)audioConfigRecordSource;
- (FCCKContentDatabase)contentDatabase;
- (FCChannelMembershipController)channelMembershipController;
- (FCContentContextInternal)init;
- (FCForYouConfigRecordSource)forYouConfigRecordSource;
- (FCIssueListRecordSource)issueListRecordSource;
- (FCIssueRecordSource)issueRecordSource;
- (FCNotificationItemListRecordSource)notificationItemListRecordSource;
- (FCNotificationItemRecordSource)notificationItemRecordSource;
- (FCPurchaseLookupRecordSource)purchaseLookupRecordSource;
- (FCPuzzleRecordSource)puzzleRecordSource;
- (FCPuzzleTypeRecordSource)puzzleTypeRecordSource;
- (FCResourceRecordSource)resourceRecordSource;
- (FCTagListRecordSource)tagListRecordSource;
- (FCTagRecordSource)tagRecordSource;
- (FCWidgetSectionConfigRecordSource)widgetSectionConfigRecordSource;
- (NSArray)recordSources;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3;
@end

@implementation FCContentContextInternal

- (FCContentContextInternal)init
{
  v3.receiver = self;
  v3.super_class = FCContentContextInternal;
  return [(FCContentContextInternal *)&v3 init];
}

- (FCArticleRecordSource)articleRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  articleRecordSource = self->_articleRecordSource;
  if (!articleRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_articleRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal articleRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 894;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      articleRecordSource = self->_articleRecordSource;
    }

    else
    {
      articleRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return articleRecordSource;
}

- (FCCKContentDatabase)contentDatabase
{
  v15 = *MEMORY[0x1E69E9840];
  contentDatabase = self->_contentDatabase;
  if (!contentDatabase)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_contentDatabase"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal contentDatabase]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1014;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      contentDatabase = self->_contentDatabase;
    }

    else
    {
      contentDatabase = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return contentDatabase;
}

- (FCChannelMembershipController)channelMembershipController
{
  v15 = *MEMORY[0x1E69E9840];
  channelMembershipController = self->_channelMembershipController;
  if (!channelMembershipController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_channelMembershipController"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal channelMembershipController]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 912;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      channelMembershipController = self->_channelMembershipController;
    }

    else
    {
      channelMembershipController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return channelMembershipController;
}

- (FCArticleListRecordSource)articleListRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  articleListRecordSource = self->_articleListRecordSource;
  if (!articleListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_articleListRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal articleListRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 924;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      articleListRecordSource = self->_articleListRecordSource;
    }

    else
    {
      articleListRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return articleListRecordSource;
}

- (NSArray)recordSources
{
  v24[18] = *MEMORY[0x1E69E9840];
  v23 = [(FCContentContextInternal *)self articleRecordSource];
  v24[0] = v23;
  v22 = [(FCContentContextInternal *)self articleListRecordSource];
  v24[1] = v22;
  v21 = [(FCContentContextInternal *)self audioConfigRecordSource];
  v24[2] = v21;
  v20 = [(FCContentContextInternal *)self forYouConfigRecordSource];
  v24[3] = v20;
  v19 = [(FCContentContextInternal *)self issueRecordSource];
  v24[4] = v19;
  v18 = [(FCContentContextInternal *)self issueListRecordSource];
  v24[5] = v18;
  v17 = [(FCContentContextInternal *)self notificationItemRecordSource];
  v24[6] = v17;
  v16 = [(FCContentContextInternal *)self notificationItemListRecordSource];
  v24[7] = v16;
  v3 = [(FCContentContextInternal *)self purchaseLookupRecordSource];
  v24[8] = v3;
  v4 = [(FCContentContextInternal *)self puzzleRecordSource];
  v24[9] = v4;
  v5 = [(FCContentContextInternal *)self puzzleTypeRecordSource];
  v24[10] = v5;
  v6 = [(FCContentContextInternal *)self resourceRecordSource];
  v24[11] = v6;
  v7 = [(FCContentContextInternal *)self sportsEventRecordSource];
  v24[12] = v7;
  v8 = [(FCContentContextInternal *)self recipeRecordSource];
  v24[13] = v8;
  v9 = [(FCContentContextInternal *)self recipeListRecordSource];
  v24[14] = v9;
  v10 = [(FCContentContextInternal *)self tagRecordSource];
  v24[15] = v10;
  v11 = [(FCContentContextInternal *)self tagListRecordSource];
  v24[16] = v11;
  v12 = [(FCContentContextInternal *)self widgetSectionConfigRecordSource];
  v24[17] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:18];

  v13 = *MEMORY[0x1E69E9840];

  return v15;
}

- (FCForYouConfigRecordSource)forYouConfigRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  forYouConfigRecordSource = self->_forYouConfigRecordSource;
  if (!forYouConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_forYouConfigRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal forYouConfigRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 936;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      forYouConfigRecordSource = self->_forYouConfigRecordSource;
    }

    else
    {
      forYouConfigRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return forYouConfigRecordSource;
}

- (FCIssueListRecordSource)issueListRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  issueListRecordSource = self->_issueListRecordSource;
  if (!issueListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueListRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal issueListRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 954;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueListRecordSource = self->_issueListRecordSource;
    }

    else
    {
      issueListRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return issueListRecordSource;
}

- (FCNotificationItemListRecordSource)notificationItemListRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  notificationItemListRecordSource = self->_notificationItemListRecordSource;
  if (!notificationItemListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationItemListRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal notificationItemListRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 984;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationItemListRecordSource = self->_notificationItemListRecordSource;
    }

    else
    {
      notificationItemListRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return notificationItemListRecordSource;
}

- (FCResourceRecordSource)resourceRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  resourceRecordSource = self->_resourceRecordSource;
  if (!resourceRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_resourceRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal resourceRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 918;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      resourceRecordSource = self->_resourceRecordSource;
    }

    else
    {
      resourceRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return resourceRecordSource;
}

- (FCTagRecordSource)tagRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  tagRecordSource = self->_tagRecordSource;
  if (!tagRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_tagRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal tagRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 900;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return tagRecordSource;
}

- (FCAudioConfigRecordSource)audioConfigRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  audioConfigRecordSource = self->_audioConfigRecordSource;
  if (!audioConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_audioConfigRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal audioConfigRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 960;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      audioConfigRecordSource = self->_audioConfigRecordSource;
    }

    else
    {
      audioConfigRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return audioConfigRecordSource;
}

- (FCIssueRecordSource)issueRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  issueRecordSource = self->_issueRecordSource;
  if (!issueRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal issueRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 948;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueRecordSource = self->_issueRecordSource;
    }

    else
    {
      issueRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return issueRecordSource;
}

- (FCNotificationItemRecordSource)notificationItemRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  notificationItemRecordSource = self->_notificationItemRecordSource;
  if (!notificationItemRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationItemRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal notificationItemRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 978;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationItemRecordSource = self->_notificationItemRecordSource;
    }

    else
    {
      notificationItemRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return notificationItemRecordSource;
}

- (FCPurchaseLookupRecordSource)purchaseLookupRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  purchaseLookupRecordSource = self->_purchaseLookupRecordSource;
  if (!purchaseLookupRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_purchaseLookupRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal purchaseLookupRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 930;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      purchaseLookupRecordSource = self->_purchaseLookupRecordSource;
    }

    else
    {
      purchaseLookupRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return purchaseLookupRecordSource;
}

- (FCPuzzleRecordSource)puzzleRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  puzzleRecordSource = self->_puzzleRecordSource;
  if (!puzzleRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal puzzleRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 966;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleRecordSource = self->_puzzleRecordSource;
    }

    else
    {
      puzzleRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return puzzleRecordSource;
}

- (FCPuzzleTypeRecordSource)puzzleTypeRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  puzzleTypeRecordSource = self->_puzzleTypeRecordSource;
  if (!puzzleTypeRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleTypeRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal puzzleTypeRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 972;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleTypeRecordSource = self->_puzzleTypeRecordSource;
    }

    else
    {
      puzzleTypeRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return puzzleTypeRecordSource;
}

- (FCTagListRecordSource)tagListRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  tagListRecordSource = self->_tagListRecordSource;
  if (!tagListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_tagListRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal tagListRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 906;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      tagListRecordSource = self->_tagListRecordSource;
    }

    else
    {
      tagListRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return tagListRecordSource;
}

- (FCWidgetSectionConfigRecordSource)widgetSectionConfigRecordSource
{
  v15 = *MEMORY[0x1E69E9840];
  widgetSectionConfigRecordSource = self->_widgetSectionConfigRecordSource;
  if (!widgetSectionConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_widgetSectionConfigRecordSource"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal widgetSectionConfigRecordSource]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 942;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      widgetSectionConfigRecordSource = self->_widgetSectionConfigRecordSource;
    }

    else
    {
      widgetSectionConfigRecordSource = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return widgetSectionConfigRecordSource;
}

- (FCAssetKeyCacheType)assetKeyCache
{
  v15 = *MEMORY[0x1E69E9840];
  assetKeyCache = self->_assetKeyCache;
  if (!assetKeyCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetKeyCache"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal assetKeyCache]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1020;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      assetKeyCache = self->_assetKeyCache;
    }

    else
    {
      assetKeyCache = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return assetKeyCache;
}

- (FCAssetKeyManagerType)assetKeyManager
{
  v15 = *MEMORY[0x1E69E9840];
  assetKeyManager = self->_assetKeyManager;
  if (!assetKeyManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetKeyManager"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal assetKeyManager]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1026;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      assetKeyManager = self->_assetKeyManager;
    }

    else
    {
      assetKeyManager = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return assetKeyManager;
}

- (FCAVAssetFactoryType)avAssetFactory
{
  v15 = *MEMORY[0x1E69E9840];
  avAssetFactory = self->_avAssetFactory;
  if (!avAssetFactory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetFactory"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal avAssetFactory]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1032;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetFactory = self->_avAssetFactory;
    }

    else
    {
      avAssetFactory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return avAssetFactory;
}

- (FCAVAssetCacheType)avAssetCache
{
  v15 = *MEMORY[0x1E69E9840];
  avAssetCache = self->_avAssetCache;
  if (!avAssetCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetCache"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal avAssetCache]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1038;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetCache = self->_avAssetCache;
    }

    else
    {
      avAssetCache = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return avAssetCache;
}

- (FCAVAssetKeyCacheType)avAssetKeyCache
{
  v15 = *MEMORY[0x1E69E9840];
  avAssetKeyCache = self->_avAssetKeyCache;
  if (!avAssetKeyCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetKeyCache"];
      *buf = 136315906;
      v8 = "[FCContentContextInternal avAssetKeyCache]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 1044;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetKeyCache = self->_avAssetKeyCache;
    }

    else
    {
      avAssetKeyCache = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return avAssetKeyCache;
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__FCContentContextInternal_enableFlushingWithFlushingThreshold___block_invoke;
  v14[3] = &unk_1E7C36D40;
  v14[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v14];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) enableFlushingWithFlushingThreshold:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __64__FCContentContextInternal_enableFlushingWithFlushingThreshold___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSources];
  [v3 addObjectsFromArray:v4];
}

@end