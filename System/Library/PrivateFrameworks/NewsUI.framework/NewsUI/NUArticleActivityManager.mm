@interface NUArticleActivityManager
- (BOOL)articleDislikedForHeadline:(id)headline;
- (BOOL)articleLikedForHeadline:(id)headline;
- (BOOL)articleSavedForHeadline:(id)headline;
- (BOOL)channelMutedForHeadline:(id)headline;
- (NUArticleActivityManager)initWithHeadline:(id)headline readingHistory:(id)history readingList:(id)list subscriptionList:(id)subscriptionList URLHandler:(id)handler reportConcernViewPresenter:(id)presenter URLModifier:(id)modifier optionsProvider:(id)self0;
- (id)activities;
- (id)activityForType:(unint64_t)type;
- (id)activityImageForHeadline:(id)headline withType:(unint64_t)type;
- (id)activityItemSources;
- (id)activityTitleForHeadline:(id)headline withType:(unint64_t)type;
- (id)activityTypeForHeadline:(id)headline withType:(unint64_t)type;
- (id)performBlockForHeadline:(id)headline withType:(unint64_t)type;
- (id)supportedActivities;
- (void)toggleArticleDislikeStatusForHeadline:(id)headline;
- (void)toggleArticleLikeStatusForHeadline:(id)headline;
- (void)toggleMuteForHeadline:(id)headline;
- (void)toggleSaveForHeadline:(id)headline;
@end

@implementation NUArticleActivityManager

- (NUArticleActivityManager)initWithHeadline:(id)headline readingHistory:(id)history readingList:(id)list subscriptionList:(id)subscriptionList URLHandler:(id)handler reportConcernViewPresenter:(id)presenter URLModifier:(id)modifier optionsProvider:(id)self0
{
  headlineCopy = headline;
  historyCopy = history;
  listCopy = list;
  subscriptionListCopy = subscriptionList;
  handlerCopy = handler;
  presenterCopy = presenter;
  modifierCopy = modifier;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = NUArticleActivityManager;
  v19 = [(NUArticleActivityManager *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_headline, headline);
    objc_storeStrong(&v20->_readingHistory, history);
    objc_storeStrong(&v20->_readingList, list);
    objc_storeStrong(&v20->_subscriptionList, subscriptionList);
    objc_storeStrong(&v20->_URLHandler, handler);
    objc_storeStrong(&v20->_reportConcernViewPresenter, presenter);
    objc_storeStrong(&v20->_URLModifier, modifier);
    objc_storeStrong(&v20->_optionsProvider, provider);
  }

  return v20;
}

- (id)activityItemSources
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [NUArticleImageActivityItemSource alloc];
  headline = [(NUArticleActivityManager *)self headline];
  v5 = [(NUArticleImageActivityItemSource *)v3 initWithHeadline:headline];

  v6 = [NUArticleURLActivityItemSource alloc];
  headline2 = [(NUArticleActivityManager *)self headline];
  uRLModifier = [(NUArticleActivityManager *)self URLModifier];
  v9 = [(NUArticleURLActivityItemSource *)v6 initWithHeadline:headline2 URLModifier:uRLModifier];

  v10 = [NUArticleTextActivityItemSource alloc];
  headline3 = [(NUArticleActivityManager *)self headline];
  v12 = [(NUArticleTextActivityItemSource *)v10 initWithHeadline:headline3];

  v16[0] = v5;
  v16[1] = v12;
  v16[2] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)activities
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NUArticleActivityManager *)self supportedActivities];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
        v9 = [(NUArticleActivityManager *)self activityForType:unsignedIntegerValue];
        if (!v9)
        {
          headline = [(NUArticleActivityManager *)self headline];
          v11 = [(NUArticleActivityManager *)self activityTypeForHeadline:headline withType:unsignedIntegerValue];

          headline2 = [(NUArticleActivityManager *)self headline];
          v13 = [(NUArticleActivityManager *)self activityTitleForHeadline:headline2 withType:unsignedIntegerValue];

          headline3 = [(NUArticleActivityManager *)self headline];
          v15 = [(NUArticleActivityManager *)self activityImageForHeadline:headline3 withType:unsignedIntegerValue];

          headline4 = [(NUArticleActivityManager *)self headline];
          v17 = [(NUArticleActivityManager *)self performBlockForHeadline:headline4 withType:unsignedIntegerValue];

          v9 = [[NUArticleActivity alloc] initWithActivityType:v11 title:v13 image:v15 performBlock:v17];
        }

        [array addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = [array copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)activityForType:(unint64_t)type
{
  if (type == 6)
  {
    v5 = +[NUAddToSafariReadingListActivityFactory createAddToSafariReadingListActivity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)supportedActivities
{
  array = [MEMORY[0x277CBEB18] array];
  optionsProvider = [(NUArticleActivityManager *)self optionsProvider];
  headline = [(NUArticleActivityManager *)self headline];
  v6 = [optionsProvider articleActivityOptionsForHeadline:headline];

  if (v6)
  {
    [array addObject:&unk_286E12E90];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  [array addObject:&unk_286E12EA8];
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [array addObject:&unk_286E12EC0];
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [array addObject:&unk_286E12ED8];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [array addObject:&unk_286E12EF0];
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [array addObject:&unk_286E12F08];
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    [array addObject:&unk_286E12F20];
  }

LABEL_9:

  return array;
}

- (id)activityTypeForHeadline:(id)headline withType:(unint64_t)type
{
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return off_2799A40C8[type];
  }
}

- (id)activityTitleForHeadline:(id)headline withType:(unint64_t)type
{
  headlineCopy = headline;
  v7 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v14 = [(NUArticleActivityManager *)self articleDislikedForHeadline:headlineCopy];
        v9 = NUBundle();
        if (v14)
        {
          v10 = @"Undo Suggest Less";
        }

        else
        {
          v10 = @"Suggest Less";
        }
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_24;
        }

        v8 = [(NUArticleActivityManager *)self channelMutedForHeadline:headlineCopy];
        v9 = NUBundle();
        if (v8)
        {
          v10 = @"Unblock Channel";
        }

        else
        {
          v10 = @"Block Channel";
        }
      }
    }

    else
    {
      v12 = [(NUArticleActivityManager *)self articleLikedForHeadline:headlineCopy];
      v9 = NUBundle();
      if (v12)
      {
        v10 = @"Undo Suggest More";
      }

      else
      {
        v10 = @"Suggest More";
      }
    }

LABEL_22:
    v13 = v9;
    goto LABEL_23;
  }

  switch(type)
  {
    case 3uLL:
      v13 = NUBundle();
      v9 = v13;
      v10 = @"Open in Safari";
      break;
    case 4uLL:
      v13 = NUBundle();
      v9 = v13;
      v10 = @"Report a Concern";
      break;
    case 5uLL:
      v11 = [(NUArticleActivityManager *)self articleSavedForHeadline:headlineCopy];
      v9 = NUBundle();
      if (v11)
      {
        v10 = @"Unsave";
      }

      else
      {
        v10 = @"Save";
      }

      goto LABEL_22;
    default:
      goto LABEL_24;
  }

LABEL_23:
  v7 = [v13 localizedStringForKey:v10 value:&stru_286E03B58 table:0];

LABEL_24:

  return v7;
}

- (id)activityImageForHeadline:(id)headline withType:(unint64_t)type
{
  headlineCopy = headline;
  v7 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v8 = [(NUArticleActivityManager *)self articleDislikedForHeadline:headlineCopy];
        v9 = @"hand.thumbsdown";
        v10 = @"hand.thumbsdown.fill";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_17;
        }

        v8 = [(NUArticleActivityManager *)self channelMutedForHeadline:headlineCopy];
        v9 = @"hand.raised";
        v10 = @"hand.raised.slash.fill";
      }
    }

    else
    {
      v8 = [(NUArticleActivityManager *)self articleLikedForHeadline:headlineCopy];
      v9 = @"hand.thumbsup";
      v10 = @"hand.thumbsup.fill";
    }

LABEL_13:
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_16;
  }

  switch(type)
  {
    case 3uLL:
      v11 = @"safari";
      break;
    case 4uLL:
      v11 = @"exclamationmark.bubble";
      break;
    case 5uLL:
      v8 = [(NUArticleActivityManager *)self articleSavedForHeadline:headlineCopy];
      v9 = @"bookmark";
      v10 = @"bookmark.fill";
      goto LABEL_13;
    default:
      goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x277D755B8] systemImageNamed:v11];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [v12 imageWithTintColor:labelColor renderingMode:2];

LABEL_17:

  return v7;
}

- (id)performBlockForHeadline:(id)headline withType:(unint64_t)type
{
  headlineCopy = headline;
  objc_initWeak(&location, self);
  v7 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v8 = v21;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_2;
        v21[3] = &unk_2799A4038;
        objc_copyWeak(&v23, &location);
        v22 = headlineCopy;
        v7 = MEMORY[0x25F883F30](v21);
        v9 = v22;
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_14;
        }

        v8 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_4;
        v15[3] = &unk_2799A4038;
        objc_copyWeak(&v17, &location);
        v16 = headlineCopy;
        v7 = MEMORY[0x25F883F30](v15);
        v9 = v16;
      }
    }

    else
    {
      v8 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke;
      v24[3] = &unk_2799A4038;
      objc_copyWeak(&v26, &location);
      v25 = headlineCopy;
      v7 = MEMORY[0x25F883F30](v24);
      v9 = v25;
    }

LABEL_13:

    objc_destroyWeak(v8 + 5);
    goto LABEL_14;
  }

  if (type == 3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_5;
    v14[3] = &unk_2799A4080;
    v14[4] = self;
    v7 = MEMORY[0x25F883F30](v14);
    goto LABEL_14;
  }

  if (type != 4)
  {
    if (type != 5)
    {
      goto LABEL_14;
    }

    v8 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_3;
    v18[3] = &unk_2799A4038;
    objc_copyWeak(&v20, &location);
    v19 = headlineCopy;
    v7 = MEMORY[0x25F883F30](v18);
    v9 = v19;
    goto LABEL_13;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_7;
  v12[3] = &unk_2799A40A8;
  v12[4] = self;
  v13 = headlineCopy;
  v7 = MEMORY[0x25F883F30](v12);

LABEL_14:
  v10 = MEMORY[0x25F883F30](v7);

  objc_destroyWeak(&location);

  return v10;
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained toggleArticleLikeStatusForHeadline:*(a1 + 32)];
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained toggleArticleDislikeStatusForHeadline:*(a1 + 32)];
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained toggleSaveForHeadline:*(a1 + 32)];
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained toggleMuteForHeadline:*(a1 + 32)];
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 fc_firstObjectPassingTest:&__block_literal_global_9];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) URLHandler];
    [v4 openURL:v5 options:0 completion:0];

    v3 = v5;
  }
}

uint64_t __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) reportConcernViewPresenter];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) reportConcernViewPresenter];
    [v4 presentReportConcernViewForHeadline:*(a1 + 40)];
  }
}

- (void)toggleArticleLikeStatusForHeadline:(id)headline
{
  headlineCopy = headline;
  readingHistory = [(NUArticleActivityManager *)self readingHistory];
  articleID = [headlineCopy articleID];

  [readingHistory toggleLikeForArticleWithID:articleID];
}

- (void)toggleArticleDislikeStatusForHeadline:(id)headline
{
  headlineCopy = headline;
  readingHistory = [(NUArticleActivityManager *)self readingHistory];
  articleID = [headlineCopy articleID];

  [readingHistory toggleDislikeForArticleWithID:articleID];
}

- (void)toggleSaveForHeadline:(id)headline
{
  headlineCopy = headline;
  v5 = [(NUArticleActivityManager *)self articleSavedForHeadline:headlineCopy];
  readingList = [(NUArticleActivityManager *)self readingList];
  articleID = [headlineCopy articleID];

  if (v5)
  {
    [readingList removeArticleFromReadingList:articleID];
  }

  else
  {
    [readingList addArticleToReadingList:articleID eventInitiationLevel:0 origin:1];
  }
}

- (void)toggleMuteForHeadline:(id)headline
{
  headlineCopy = headline;
  headline = [(NUArticleActivityManager *)self headline];
  sourceChannel = [headline sourceChannel];
  identifier = [sourceChannel identifier];

  LODWORD(headline) = [(NUArticleActivityManager *)self channelMutedForHeadline:headlineCopy];
  subscriptionList = [(NUArticleActivityManager *)self subscriptionList];
  v8 = subscriptionList;
  if (headline)
  {
    [subscriptionList removeSubscriptionForTagID:identifier type:2];
  }

  else
  {
    [subscriptionList addSubscriptionForTagID:identifier type:2];
  }
}

- (BOOL)articleLikedForHeadline:(id)headline
{
  headlineCopy = headline;
  readingHistory = [(NUArticleActivityManager *)self readingHistory];
  articleID = [headlineCopy articleID];

  LOBYTE(headlineCopy) = [readingHistory likingStatusForArticleID:articleID] == 1;
  return headlineCopy;
}

- (BOOL)articleDislikedForHeadline:(id)headline
{
  headlineCopy = headline;
  readingHistory = [(NUArticleActivityManager *)self readingHistory];
  articleID = [headlineCopy articleID];

  LOBYTE(headlineCopy) = [readingHistory likingStatusForArticleID:articleID] == 2;
  return headlineCopy;
}

- (BOOL)articleSavedForHeadline:(id)headline
{
  headlineCopy = headline;
  readingList = [(NUArticleActivityManager *)self readingList];
  articleID = [headlineCopy articleID];

  LOBYTE(headlineCopy) = [readingList isArticleOnReadingList:articleID];
  return headlineCopy;
}

- (BOOL)channelMutedForHeadline:(id)headline
{
  subscriptionList = [(NUArticleActivityManager *)self subscriptionList];
  headline = [(NUArticleActivityManager *)self headline];
  sourceChannel = [headline sourceChannel];
  identifier = [sourceChannel identifier];
  v8 = [subscriptionList hasMutedSubscriptionForTagID:identifier];

  return v8;
}

@end