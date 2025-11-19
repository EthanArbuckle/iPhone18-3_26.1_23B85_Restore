@interface NUArticleActivityManager
- (BOOL)articleDislikedForHeadline:(id)a3;
- (BOOL)articleLikedForHeadline:(id)a3;
- (BOOL)articleSavedForHeadline:(id)a3;
- (BOOL)channelMutedForHeadline:(id)a3;
- (NUArticleActivityManager)initWithHeadline:(id)a3 readingHistory:(id)a4 readingList:(id)a5 subscriptionList:(id)a6 URLHandler:(id)a7 reportConcernViewPresenter:(id)a8 URLModifier:(id)a9 optionsProvider:(id)a10;
- (id)activities;
- (id)activityForType:(unint64_t)a3;
- (id)activityImageForHeadline:(id)a3 withType:(unint64_t)a4;
- (id)activityItemSources;
- (id)activityTitleForHeadline:(id)a3 withType:(unint64_t)a4;
- (id)activityTypeForHeadline:(id)a3 withType:(unint64_t)a4;
- (id)performBlockForHeadline:(id)a3 withType:(unint64_t)a4;
- (id)supportedActivities;
- (void)toggleArticleDislikeStatusForHeadline:(id)a3;
- (void)toggleArticleLikeStatusForHeadline:(id)a3;
- (void)toggleMuteForHeadline:(id)a3;
- (void)toggleSaveForHeadline:(id)a3;
@end

@implementation NUArticleActivityManager

- (NUArticleActivityManager)initWithHeadline:(id)a3 readingHistory:(id)a4 readingList:(id)a5 subscriptionList:(id)a6 URLHandler:(id)a7 reportConcernViewPresenter:(id)a8 URLModifier:(id)a9 optionsProvider:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = NUArticleActivityManager;
  v19 = [(NUArticleActivityManager *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_headline, a3);
    objc_storeStrong(&v20->_readingHistory, a4);
    objc_storeStrong(&v20->_readingList, a5);
    objc_storeStrong(&v20->_subscriptionList, a6);
    objc_storeStrong(&v20->_URLHandler, a7);
    objc_storeStrong(&v20->_reportConcernViewPresenter, a8);
    objc_storeStrong(&v20->_URLModifier, a9);
    objc_storeStrong(&v20->_optionsProvider, a10);
  }

  return v20;
}

- (id)activityItemSources
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [NUArticleImageActivityItemSource alloc];
  v4 = [(NUArticleActivityManager *)self headline];
  v5 = [(NUArticleImageActivityItemSource *)v3 initWithHeadline:v4];

  v6 = [NUArticleURLActivityItemSource alloc];
  v7 = [(NUArticleActivityManager *)self headline];
  v8 = [(NUArticleActivityManager *)self URLModifier];
  v9 = [(NUArticleURLActivityItemSource *)v6 initWithHeadline:v7 URLModifier:v8];

  v10 = [NUArticleTextActivityItemSource alloc];
  v11 = [(NUArticleActivityManager *)self headline];
  v12 = [(NUArticleTextActivityItemSource *)v10 initWithHeadline:v11];

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
  v3 = [MEMORY[0x277CBEB18] array];
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

        v8 = [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
        v9 = [(NUArticleActivityManager *)self activityForType:v8];
        if (!v9)
        {
          v10 = [(NUArticleActivityManager *)self headline];
          v11 = [(NUArticleActivityManager *)self activityTypeForHeadline:v10 withType:v8];

          v12 = [(NUArticleActivityManager *)self headline];
          v13 = [(NUArticleActivityManager *)self activityTitleForHeadline:v12 withType:v8];

          v14 = [(NUArticleActivityManager *)self headline];
          v15 = [(NUArticleActivityManager *)self activityImageForHeadline:v14 withType:v8];

          v16 = [(NUArticleActivityManager *)self headline];
          v17 = [(NUArticleActivityManager *)self performBlockForHeadline:v16 withType:v8];

          v9 = [[NUArticleActivity alloc] initWithActivityType:v11 title:v13 image:v15 performBlock:v17];
        }

        [v3 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = [v3 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)activityForType:(unint64_t)a3
{
  if (a3 == 6)
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NUArticleActivityManager *)self optionsProvider];
  v5 = [(NUArticleActivityManager *)self headline];
  v6 = [v4 articleActivityOptionsForHeadline:v5];

  if (v6)
  {
    [v3 addObject:&unk_286E12E90];
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

  [v3 addObject:&unk_286E12EA8];
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
  [v3 addObject:&unk_286E12EC0];
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
  [v3 addObject:&unk_286E12ED8];
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
  [v3 addObject:&unk_286E12EF0];
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
  [v3 addObject:&unk_286E12F08];
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    [v3 addObject:&unk_286E12F20];
  }

LABEL_9:

  return v3;
}

- (id)activityTypeForHeadline:(id)a3 withType:(unint64_t)a4
{
  if (a4 > 5)
  {
    return 0;
  }

  else
  {
    return off_2799A40C8[a4];
  }
}

- (id)activityTitleForHeadline:(id)a3 withType:(unint64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = [(NUArticleActivityManager *)self articleDislikedForHeadline:v6];
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
        if (a4 != 2)
        {
          goto LABEL_24;
        }

        v8 = [(NUArticleActivityManager *)self channelMutedForHeadline:v6];
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
      v12 = [(NUArticleActivityManager *)self articleLikedForHeadline:v6];
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

  switch(a4)
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
      v11 = [(NUArticleActivityManager *)self articleSavedForHeadline:v6];
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

- (id)activityImageForHeadline:(id)a3 withType:(unint64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v8 = [(NUArticleActivityManager *)self articleDislikedForHeadline:v6];
        v9 = @"hand.thumbsdown";
        v10 = @"hand.thumbsdown.fill";
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v8 = [(NUArticleActivityManager *)self channelMutedForHeadline:v6];
        v9 = @"hand.raised";
        v10 = @"hand.raised.slash.fill";
      }
    }

    else
    {
      v8 = [(NUArticleActivityManager *)self articleLikedForHeadline:v6];
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

  switch(a4)
  {
    case 3uLL:
      v11 = @"safari";
      break;
    case 4uLL:
      v11 = @"exclamationmark.bubble";
      break;
    case 5uLL:
      v8 = [(NUArticleActivityManager *)self articleSavedForHeadline:v6];
      v9 = @"bookmark";
      v10 = @"bookmark.fill";
      goto LABEL_13;
    default:
      goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x277D755B8] systemImageNamed:v11];
  v13 = [MEMORY[0x277D75348] labelColor];
  v7 = [v12 imageWithTintColor:v13 renderingMode:2];

LABEL_17:

  return v7;
}

- (id)performBlockForHeadline:(id)a3 withType:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v8 = v21;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_2;
        v21[3] = &unk_2799A4038;
        objc_copyWeak(&v23, &location);
        v22 = v6;
        v7 = MEMORY[0x25F883F30](v21);
        v9 = v22;
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_14;
        }

        v8 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_4;
        v15[3] = &unk_2799A4038;
        objc_copyWeak(&v17, &location);
        v16 = v6;
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
      v25 = v6;
      v7 = MEMORY[0x25F883F30](v24);
      v9 = v25;
    }

LABEL_13:

    objc_destroyWeak(v8 + 5);
    goto LABEL_14;
  }

  if (a4 == 3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_5;
    v14[3] = &unk_2799A4080;
    v14[4] = self;
    v7 = MEMORY[0x25F883F30](v14);
    goto LABEL_14;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_14;
    }

    v8 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_3;
    v18[3] = &unk_2799A4038;
    objc_copyWeak(&v20, &location);
    v19 = v6;
    v7 = MEMORY[0x25F883F30](v18);
    v9 = v19;
    goto LABEL_13;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NUArticleActivityManager_performBlockForHeadline_withType___block_invoke_7;
  v12[3] = &unk_2799A40A8;
  v12[4] = self;
  v13 = v6;
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

- (void)toggleArticleLikeStatusForHeadline:(id)a3
{
  v4 = a3;
  v6 = [(NUArticleActivityManager *)self readingHistory];
  v5 = [v4 articleID];

  [v6 toggleLikeForArticleWithID:v5];
}

- (void)toggleArticleDislikeStatusForHeadline:(id)a3
{
  v4 = a3;
  v6 = [(NUArticleActivityManager *)self readingHistory];
  v5 = [v4 articleID];

  [v6 toggleDislikeForArticleWithID:v5];
}

- (void)toggleSaveForHeadline:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleActivityManager *)self articleSavedForHeadline:v4];
  v7 = [(NUArticleActivityManager *)self readingList];
  v6 = [v4 articleID];

  if (v5)
  {
    [v7 removeArticleFromReadingList:v6];
  }

  else
  {
    [v7 addArticleToReadingList:v6 eventInitiationLevel:0 origin:1];
  }
}

- (void)toggleMuteForHeadline:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleActivityManager *)self headline];
  v6 = [v5 sourceChannel];
  v9 = [v6 identifier];

  LODWORD(v5) = [(NUArticleActivityManager *)self channelMutedForHeadline:v4];
  v7 = [(NUArticleActivityManager *)self subscriptionList];
  v8 = v7;
  if (v5)
  {
    [v7 removeSubscriptionForTagID:v9 type:2];
  }

  else
  {
    [v7 addSubscriptionForTagID:v9 type:2];
  }
}

- (BOOL)articleLikedForHeadline:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleActivityManager *)self readingHistory];
  v6 = [v4 articleID];

  LOBYTE(v4) = [v5 likingStatusForArticleID:v6] == 1;
  return v4;
}

- (BOOL)articleDislikedForHeadline:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleActivityManager *)self readingHistory];
  v6 = [v4 articleID];

  LOBYTE(v4) = [v5 likingStatusForArticleID:v6] == 2;
  return v4;
}

- (BOOL)articleSavedForHeadline:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleActivityManager *)self readingList];
  v6 = [v4 articleID];

  LOBYTE(v4) = [v5 isArticleOnReadingList:v6];
  return v4;
}

- (BOOL)channelMutedForHeadline:(id)a3
{
  v4 = [(NUArticleActivityManager *)self subscriptionList];
  v5 = [(NUArticleActivityManager *)self headline];
  v6 = [v5 sourceChannel];
  v7 = [v6 identifier];
  v8 = [v4 hasMutedSubscriptionForTagID:v7];

  return v8;
}

@end