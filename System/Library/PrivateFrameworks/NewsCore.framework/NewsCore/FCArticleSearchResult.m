@interface FCArticleSearchResult
- (FCArticleSearchResult)initWithParsecSearchResult:(id)a3 cloudContext:(id)a4;
@end

@implementation FCArticleSearchResult

- (FCArticleSearchResult)initWithParsecSearchResult:(id)a3 cloudContext:(id)a4
{
  v117 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v115.receiver = self;
  v115.super_class = FCArticleSearchResult;
  v9 = [(FCArticleSearchResult *)&v115 init];
  if (!v9)
  {
    v36 = 0;
    goto LABEL_67;
  }

  v105 = v9;
  v106 = v8;
  objc_storeStrong(&v9->_searchResult, a3);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v107 = v7;
  v10 = [v7 card];
  v11 = [v10 cardSections];

  v12 = [v11 countByEnumeratingWithState:&v111 objects:v116 count:16];
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
        objc_enumerationMutation(v11);
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
        v14 = v23 = v14;
      }

      else
      {
        v24 = [v20 key];
        v25 = [v24 isEqualToString:@"channel_name"];

        if (v25)
        {
          [v20 value];
          v110 = v23 = v110;
        }

        else
        {
          v26 = [v20 key];
          v27 = [v26 isEqualToString:@"channel_logo"];

          if (v27)
          {
            [v20 image];
            v109 = v23 = v109;
          }

          else
          {
            v28 = [v20 key];
            v29 = [v28 isEqualToString:@"is_paid"];

            if (v29)
            {
              v23 = [v20 value];
              v108 = [v23 integerValue] == 1;
            }

            else
            {
              v30 = [v20 key];
              v31 = [v30 isEqualToString:@"banner_image_scale"];

              if (v31)
              {
                v23 = [v20 value];
                [v23 floatValue];
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

                v23 = [v20 value];
                [v23 floatValue];
                v16 = v35;
              }
            }
          }
        }
      }

LABEL_23:
    }

    v13 = [v11 countByEnumeratingWithState:&v111 objects:v116 count:16];
  }

  while (v13);
LABEL_28:

  v7 = v107;
  v37 = [v107 punchout];
  v38 = [v37 urls];
  v39 = [v38 fc_firstObjectPassingTest:&__block_literal_global_126];

  v40 = [v39 fc_NewsArticleID];
  v36 = v105;
  articleID = v105->_articleID;
  v105->_articleID = v40;

  if (v105->_articleID)
  {
    objc_opt_class();
    v42 = [v8 tagController];
    v43 = [v42 slowCachedTagForID:v14];
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
        v47 = [v8 assetManager];
        v48 = [v8 internalContentContext];
        [v48 contentDatabase];
        v50 = v49 = v46;
        v51 = [v47 assetHandleForRecordID:v14 field:2 lifetimeHint:0 contentDatabase:v50];

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
      v54 = [v107 title];
      v55 = [v54 text];
      [(FCHeadline *)v53 setTitle:v55];

      [(FCHeadline *)v53 setSourceChannel:v46];
      v104 = v46;
      v56 = [(FCTag *)v46 name];
      [(FCHeadline *)v53 setSourceName:v56];

      v57 = MEMORY[0x1E695DF00];
      v58 = [v107 publishDate];
      [v58 doubleValue];
      v59 = [v57 dateWithTimeIntervalSince1970:?];
      [(FCHeadline *)v53 setPublishDate:v59];

      [(FCHeadline *)v53 setPaid:v108];
      [(FCHeadline *)v53 setRole:1];
      [(FCHeadline *)v53 setTopicIDs:MEMORY[0x1E695E0F0]];
      v60 = [v8 paidAccessChecker];
      v61 = v53;
      v62 = [(FCHeadline *)v61 isPaid];
      v63 = [(FCHeadline *)v61 isBundlePaid];
      v102 = [(FCHeadline *)v61 sourceChannel];
      v64 = [v102 identifier];
      v65 = v60;
      v66 = v64;
      v67 = [v65 bundleSubscriptionProvider];
      v68 = [v65 purchaseProvider];
      v69 = v67;
      v70 = v68;
      v71 = v66;
      if (!v62 && !v63)
      {
LABEL_44:
        v72 = v104;
        goto LABEL_57;
      }

      v73 = !v62;
      if (!v70)
      {
        v73 = 1;
      }

      if ((v73 & 1) == 0)
      {
        v74 = [v70 purchasedTagIDs];
        v75 = [v74 containsObject:v71];

        if (v75)
        {
          v63 = 0;
          goto LABEL_44;
        }
      }

      v76 = v63 ^ 1;
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
      v80 = [v98 unsignedIntegerValue];
      v100 = v78;
      v81 = v80;
      v82 = objc_getAssociatedObject(v79, ~v80);
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

      v96 = [v101 bundleSubscription];
      v97 = [v96 bundleChannelIDs];
      v99 = [v97 containsObject:v100];

      v72 = v104;
      v52 = v108;
      if ((v99 & 1) == 0)
      {
LABEL_56:
        v63 = 1;
      }

      else
      {
        v63 = 0;
      }

LABEL_57:

      [(FCHeadline *)v61 setShowSubscriptionRequiredText:v52 & v63];
      v7 = v107;
      v84 = [v107 thumbnail];

      v36 = v105;
      v8 = v106;
      if (v84)
      {
        v85 = [v106 assetManager];
        v86 = v105->_articleID;
        v87 = [v106 internalContentContext];
        v88 = [v87 contentDatabase];
        v89 = [v85 assetHandleForRecordID:v86 field:0 lifetimeHint:0 contentDatabase:v88];

        if (v89)
        {
          v90 = [v107 thumbnail];
          [v90 size];
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