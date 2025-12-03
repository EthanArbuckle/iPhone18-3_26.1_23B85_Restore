@interface FCArticleSearchResult
- (FCArticleSearchResult)initWithParsecSearchResult:(id)result cloudContext:(id)context;
@end

@implementation FCArticleSearchResult

- (FCArticleSearchResult)initWithParsecSearchResult:(id)result cloudContext:(id)context
{
  v117 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  v115.receiver = self;
  v115.super_class = FCArticleSearchResult;
  v9 = [(FCArticleSearchResult *)&v115 init];
  if (!v9)
  {
    v36 = 0;
    goto LABEL_67;
  }

  v105 = v9;
  v106 = contextCopy;
  objc_storeStrong(&v9->_searchResult, result);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v107 = resultCopy;
  card = [resultCopy card];
  cardSections = [card cardSections];

  v12 = [cardSections countByEnumeratingWithState:&v111 objects:v116 count:16];
  if (!v12)
  {
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v14 = 0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_28;
  }

  v13 = v12;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v14 = 0;
  v15 = *v112;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v112 != v15)
      {
        objc_enumerationMutation(cardSections);
      }

      v19 = *(*(&v111 + 1) + 8 * i);
      objc_opt_class();
      if (!v19 || (objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
        goto LABEL_23;
      }

      v20 = v19;
      v21 = [v20 key];
      v22 = [v21 isEqualToString:@"channel_id"];

      if (v22)
      {
        [v20 value];
        v14 = value = v14;
      }

      else
      {
        v24 = [v20 key];
        v25 = [v24 isEqualToString:@"channel_name"];

        if (v25)
        {
          [v20 value];
          v110 = value = v110;
        }

        else
        {
          v26 = [v20 key];
          v27 = [v26 isEqualToString:@"channel_logo"];

          if (v27)
          {
            [v20 image];
            v109 = value = v109;
          }

          else
          {
            v28 = [v20 key];
            v29 = [v28 isEqualToString:@"is_paid"];

            if (v29)
            {
              value = [v20 value];
              v108 = [value integerValue] == 1;
            }

            else
            {
              v30 = [v20 key];
              v31 = [v30 isEqualToString:@"banner_image_scale"];

              if (v31)
              {
                value = [v20 value];
                [value floatValue];
                v17 = v32;
              }

              else
              {
                v33 = [v20 key];
                v34 = [v33 isEqualToString:@"banner_image_offset"];

                if (!v34)
                {
                  goto LABEL_23;
                }

                value = [v20 value];
                [value floatValue];
                v16 = v35;
              }
            }
          }
        }
      }

LABEL_23:
    }

    v13 = [cardSections countByEnumeratingWithState:&v111 objects:v116 count:16];
  }

  while (v13);
LABEL_28:

  resultCopy = v107;
  punchout = [v107 punchout];
  urls = [punchout urls];
  v39 = [urls fc_firstObjectPassingTest:&__block_literal_global_126];

  fc_NewsArticleID = [v39 fc_NewsArticleID];
  v36 = v105;
  articleID = v105->_articleID;
  v105->_articleID = fc_NewsArticleID;

  if (v105->_articleID)
  {
    objc_opt_class();
    tagController = [contextCopy tagController];
    v43 = [tagController slowCachedTagForID:v14];
    if (v43)
    {
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = v44;

    if (!v46)
    {
      v46 = [[FCTag alloc] initWithTagType:2 identifier:v14 name:v110];
      if (v109)
      {
        assetManager = [contextCopy assetManager];
        internalContentContext = [contextCopy internalContentContext];
        [internalContentContext contentDatabase];
        v50 = v49 = v46;
        v51 = [assetManager assetHandleForRecordID:v14 field:2 lifetimeHint:0 contentDatabase:v50];

        v46 = v49;
        if (v51)
        {
          [(FCTag *)v49 setNameImageAssetHandle:v51];
          [v109 size];
          [(FCTag *)v49 setNameImageSize:?];
          [(FCTag *)v49 setBannerImageScale:v17];
          [(FCTag *)v49 setBannerImageBaselineOffsetPercentage:v16];
        }
      }
    }

    v52 = v108;
    if (v108 && ![(FCTag *)v46 isPurchaseSetup])
    {
      v45 = 0;
    }

    else
    {
      v103 = v39;
      v53 = objc_alloc_init(FCHeadline);
      [(FCHeadline *)v53 setIdentifier:v105->_articleID];
      [(FCHeadline *)v53 setArticleID:v105->_articleID];
      title = [v107 title];
      text = [title text];
      [(FCHeadline *)v53 setTitle:text];

      [(FCHeadline *)v53 setSourceChannel:v46];
      v104 = v46;
      name = [(FCTag *)v46 name];
      [(FCHeadline *)v53 setSourceName:name];

      v57 = MEMORY[0x1E695DF00];
      publishDate = [v107 publishDate];
      [publishDate doubleValue];
      v59 = [v57 dateWithTimeIntervalSince1970:?];
      [(FCHeadline *)v53 setPublishDate:v59];

      [(FCHeadline *)v53 setPaid:v108];
      [(FCHeadline *)v53 setRole:1];
      [(FCHeadline *)v53 setTopicIDs:MEMORY[0x1E695E0F0]];
      paidAccessChecker = [contextCopy paidAccessChecker];
      v61 = v53;
      isPaid = [(FCHeadline *)v61 isPaid];
      isBundlePaid = [(FCHeadline *)v61 isBundlePaid];
      sourceChannel = [(FCHeadline *)v61 sourceChannel];
      identifier = [sourceChannel identifier];
      v65 = paidAccessChecker;
      v66 = identifier;
      bundleSubscriptionProvider = [v65 bundleSubscriptionProvider];
      purchaseProvider = [v65 purchaseProvider];
      v69 = bundleSubscriptionProvider;
      v70 = purchaseProvider;
      v71 = v66;
      if (!isPaid && !isBundlePaid)
      {
LABEL_44:
        v72 = v104;
        goto LABEL_57;
      }

      v73 = !isPaid;
      if (!v70)
      {
        v73 = 1;
      }

      if ((v73 & 1) == 0)
      {
        purchasedTagIDs = [v70 purchasedTagIDs];
        v75 = [purchasedTagIDs containsObject:v71];

        if (v75)
        {
          isBundlePaid = 0;
          goto LABEL_44;
        }
      }

      v76 = isBundlePaid ^ 1;
      if (!v69)
      {
        v76 = 1;
      }

      v72 = v104;
      if (v76)
      {
        goto LABEL_56;
      }

      v77 = v69;
      v78 = v71;
      if (!v78)
      {
        goto LABEL_55;
      }

      [v77 bundleSubscription];
      v79 = v101 = v77;
      v98 = objc_getAssociatedObject(v79, (v79 + 1));
      unsignedIntegerValue = [v98 unsignedIntegerValue];
      v100 = v78;
      v81 = unsignedIntegerValue;
      v82 = objc_getAssociatedObject(v79, ~unsignedIntegerValue);
      v83 = [v82 unsignedIntegerValue] ^ v81;
      v78 = v100;

      v72 = v104;
      v77 = v101;
      if ((v83 & 1) == 0)
      {
LABEL_55:

        v52 = v108;
        goto LABEL_56;
      }

      bundleSubscription = [v101 bundleSubscription];
      bundleChannelIDs = [bundleSubscription bundleChannelIDs];
      v99 = [bundleChannelIDs containsObject:v100];

      v72 = v104;
      v52 = v108;
      if ((v99 & 1) == 0)
      {
LABEL_56:
        isBundlePaid = 1;
      }

      else
      {
        isBundlePaid = 0;
      }

LABEL_57:

      [(FCHeadline *)v61 setShowSubscriptionRequiredText:v52 & isBundlePaid];
      resultCopy = v107;
      thumbnail = [v107 thumbnail];

      v36 = v105;
      contextCopy = v106;
      if (thumbnail)
      {
        assetManager2 = [v106 assetManager];
        v86 = v105->_articleID;
        internalContentContext2 = [v106 internalContentContext];
        contentDatabase = [internalContentContext2 contentDatabase];
        v89 = [assetManager2 assetHandleForRecordID:v86 field:0 lifetimeHint:0 contentDatabase:contentDatabase];

        if (v89)
        {
          thumbnail2 = [v107 thumbnail];
          [thumbnail2 size];
          v91 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v89 thumbnailSize:?];
          [(FCHeadline *)v61 setThumbnail:v91];

          [(FCHeadline *)v61 setHasThumbnail:1];
          [(FCHeadline *)v61 setThumbnailFocalFrame:0.0, 0.0, 1.0, 1.0];
        }

        v72 = v104;
      }

      deflatedHeadline = v105->_deflatedHeadline;
      v105->_deflatedHeadline = v61;

      v45 = 1;
      if (v105->_articleID)
      {
        v39 = v103;
        goto LABEL_66;
      }

      v46 = v105;
      v36 = 0;
      v39 = v103;
    }
  }

  else
  {
    v45 = 1;
    v46 = v105;
    v36 = 0;
  }

LABEL_66:
  if (v45)
  {
LABEL_67:
    v36 = v36;
    v93 = v36;
  }

  else
  {
    v93 = 0;
  }

  v94 = *MEMORY[0x1E69E9840];
  return v93;
}

@end