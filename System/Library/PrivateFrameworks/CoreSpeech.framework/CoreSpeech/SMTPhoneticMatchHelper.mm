@interface SMTPhoneticMatchHelper
+ (id)fetchContentsWithConfiguration:(id)a3 feedTypeString:(id)a4 rankingMethod:(id)a5 shouldStopBlock:(id)a6;
@end

@implementation SMTPhoneticMatchHelper

+ (id)fetchContentsWithConfiguration:(id)a3 feedTypeString:(id)a4 rankingMethod:(id)a5 shouldStopBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v74 = [v10 isEqualToString:EARPhoneticMatchFeedTypeArtistsKey];
  if (v74)
  {
    v13 = [objc_alloc(sub_100024154()) init];
    [v13 setGroupingType:2];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 1;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypeSongsKey])
  {
    v13 = [objc_alloc(sub_100024154()) init];
    [v13 setGroupingType:0];
    v14 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v63 = 0;
    v72 = 0x100000000;
    v15 = 3;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypeSongsArtistsKey])
  {
    v13 = [objc_alloc(sub_100024154()) init];
    [v13 setGroupingType:0];
    v14 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v63 = 0;
    v72 = 1;
    v15 = 4;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypeAlbumsKey])
  {
    v13 = [objc_alloc(sub_100024154()) init];
    v71 = 1;
    [v13 setGroupingType:1];
    v14 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 2;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypeAlbumsArtistsKey])
  {
    v13 = [objc_alloc(sub_100024154()) init];
    v70 = 1;
    [v13 setGroupingType:1];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 5;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypePodcastsKey])
  {
    v13 = [sub_100024154() podcastsQuery];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v63 = 0;
    v65 = 1;
    v15 = 9;
  }

  else if ([v10 isEqualToString:EARPhoneticMatchFeedTypePlaylistsKey])
  {
    v13 = [sub_100024154() playlistsQuery];
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 0;
    v14 = 1;
    v15 = 8;
  }

  else
  {
    if (![v10 isEqualToString:EARPhoneticMatchFeedTypeComposersKey])
    {
      v61 = 0;
      goto LABEL_71;
    }

    v13 = [sub_100024154() composersQuery];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 1;
    v15 = 6;
  }

  [v13 setShouldIncludeNonLibraryEntities:1];
  [v13 setSortItems:1];
  v16 = [[_EARPhoneticMatchData alloc] initWithFeedType:v15 jsonConfigFile:v9];
  v17 = [v16 getLimit];
  if (v17 >= 2000)
  {
    v18 = 2000;
  }

  else
  {
    v18 = v17;
  }

  [v13 setEntityLimit:v18 & ~(v18 >> 31)];
  if ((v14 & 1) == 0)
  {
    if ([v11 isEqualToString:EARPhoneticMatchRankingMethodPlayCount])
    {
      v19 = sub_100024234();
      v94 = v19;
      v20 = [NSArray arrayWithObjects:&v94 count:1];
      [v13 _setOrderingProperties:v20];

      v21 = sub_100024234();
      v92 = v21;
      v93 = &off_10003B1E0;
      v22 = &v93;
      v23 = &v92;
LABEL_25:
      v26 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
      [v13 _setOrderingDirectionMappings:v26];

      goto LABEL_26;
    }

    if ([v11 isEqualToString:EARPhoneticMatchRankingMethodMostRecentlyPlayed])
    {
      v24 = sub_100024398();
      v91 = v24;
      v25 = [NSArray arrayWithObjects:&v91 count:1];
      [v13 _setOrderingProperties:v25];

      v21 = sub_100024398();
      v89 = v21;
      v90 = &off_10003B1E0;
      v22 = &v90;
      v23 = &v89;
      goto LABEL_25;
    }
  }

LABEL_26:
  v64 = v14;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [v13 collections];
  v27 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v75 = *v77;
    v68 = v10;
    v69 = v9;
    v66 = v13;
    v67 = v11;
    do
    {
      v29 = 0;
      do
      {
        if (*v77 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v76 + 1) + 8 * v29);
        v31 = objc_autoreleasePoolPush();
        if (v12[2](v12))
        {
          objc_autoreleasePoolPop(v31);

          v61 = 0;
          v10 = v68;
          v9 = v69;
          v13 = v66;
          v11 = v67;
          goto LABEL_70;
        }

        if (![v16 roomForMoreData])
        {
          objc_autoreleasePoolPop(v31);
          v10 = v68;
          v9 = v69;
          v13 = v66;
          v11 = v67;
          goto LABEL_69;
        }

        if (v74)
        {
          v32 = [v30 representativeItem];
          v33 = [v32 artist];

          if (!v33)
          {
            goto LABEL_42;
          }

          v34 = [v30 representativeItem];
          v35 = [v34 artist];
          v87 = v35;
          v36 = &v87;
          goto LABEL_39;
        }

        if (HIDWORD(v72))
        {
          v37 = [v30 representativeItem];
          v38 = [v37 title];

          if (!v38)
          {
            goto LABEL_42;
          }

          v34 = [v30 representativeItem];
          v35 = [v34 title];
          v86 = v35;
          v36 = &v86;
          goto LABEL_39;
        }

        if (v72)
        {
          v34 = [v30 representativeItem];
          v41 = [v34 title];
          if (!v41)
          {
            goto LABEL_41;
          }

          v42 = v41;
          v43 = [v30 representativeItem];
          v44 = [v43 artist];

          if (v44)
          {
            v34 = [v30 representativeItem];
            v35 = [v34 title];
            v85[0] = v35;
            v39 = [v30 representativeItem];
            v45 = [v39 artist];
            v85[1] = v45;
            v46 = v85;
            goto LABEL_48;
          }
        }

        else if (v71)
        {
          v49 = [v30 representativeItem];
          v50 = [v49 albumTitle];

          if (v50)
          {
            v34 = [v30 representativeItem];
            v35 = [v34 albumTitle];
            v84 = v35;
            v36 = &v84;
            goto LABEL_39;
          }
        }

        else if (v70)
        {
          v34 = [v30 representativeItem];
          v51 = [v34 albumTitle];
          if (!v51)
          {
            goto LABEL_41;
          }

          v52 = v51;
          v53 = [v30 representativeItem];
          v54 = [v53 albumArtist];

          if (v54)
          {
            v34 = [v30 representativeItem];
            v35 = [v34 albumTitle];
            v83[0] = v35;
            v39 = [v30 representativeItem];
            v45 = [v39 albumArtist];
            v83[1] = v45;
            v46 = v83;
LABEL_48:
            v47 = [NSArray arrayWithObjects:v46 count:2];
            LODWORD(v48) = 1.0;
            [v16 appendData:v47 prior:v48];

LABEL_40:
LABEL_41:
          }
        }

        else if (v65)
        {
          v55 = [v30 representativeItem];
          v56 = [v55 podcastTitle];

          if (v56)
          {
            v34 = [v30 representativeItem];
            v35 = [v34 podcastTitle];
            v82 = v35;
            v36 = &v82;
            goto LABEL_39;
          }
        }

        else
        {
          if (v64)
          {
            v34 = v30;
            v57 = [v34 name];

            if (!v57)
            {
              goto LABEL_41;
            }

            v35 = [v34 name];
            v81 = v35;
            v36 = &v81;
LABEL_39:
            v39 = [NSArray arrayWithObjects:v36 count:1];
            LODWORD(v40) = 1.0;
            [v16 appendData:v39 prior:v40];
            goto LABEL_40;
          }

          if (v63)
          {
            v58 = [v30 representativeItem];
            v59 = [v58 composer];

            if (v59)
            {
              v34 = [v30 representativeItem];
              v35 = [v34 composer];
              v80 = v35;
              v36 = &v80;
              goto LABEL_39;
            }
          }
        }

LABEL_42:
        objc_autoreleasePoolPop(v31);
        v29 = v29 + 1;
      }

      while (v28 != v29);
      v60 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
      v28 = v60;
      v10 = v68;
      v9 = v69;
      v13 = v66;
      v11 = v67;
    }

    while (v60);
  }

LABEL_69:

  v61 = v16;
LABEL_70:

LABEL_71:

  return v61;
}

@end