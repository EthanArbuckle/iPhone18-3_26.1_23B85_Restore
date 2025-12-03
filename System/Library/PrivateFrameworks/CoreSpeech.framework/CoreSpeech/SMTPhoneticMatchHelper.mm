@interface SMTPhoneticMatchHelper
+ (id)fetchContentsWithConfiguration:(id)configuration feedTypeString:(id)string rankingMethod:(id)method shouldStopBlock:(id)block;
@end

@implementation SMTPhoneticMatchHelper

+ (id)fetchContentsWithConfiguration:(id)configuration feedTypeString:(id)string rankingMethod:(id)method shouldStopBlock:(id)block
{
  configurationCopy = configuration;
  stringCopy = string;
  methodCopy = method;
  blockCopy = block;
  v74 = [stringCopy isEqualToString:EARPhoneticMatchFeedTypeArtistsKey];
  if (v74)
  {
    podcastsQuery = [objc_alloc(sub_100024154()) init];
    [podcastsQuery setGroupingType:2];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 1;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypeSongsKey])
  {
    podcastsQuery = [objc_alloc(sub_100024154()) init];
    [podcastsQuery setGroupingType:0];
    v14 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v63 = 0;
    v72 = 0x100000000;
    v15 = 3;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypeSongsArtistsKey])
  {
    podcastsQuery = [objc_alloc(sub_100024154()) init];
    [podcastsQuery setGroupingType:0];
    v14 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v63 = 0;
    v72 = 1;
    v15 = 4;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypeAlbumsKey])
  {
    podcastsQuery = [objc_alloc(sub_100024154()) init];
    v71 = 1;
    [podcastsQuery setGroupingType:1];
    v14 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 2;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypeAlbumsArtistsKey])
  {
    podcastsQuery = [objc_alloc(sub_100024154()) init];
    v70 = 1;
    [podcastsQuery setGroupingType:1];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v65 = 0;
    v63 = 0;
    v15 = 5;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypePodcastsKey])
  {
    podcastsQuery = [sub_100024154() podcastsQuery];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v63 = 0;
    v65 = 1;
    v15 = 9;
  }

  else if ([stringCopy isEqualToString:EARPhoneticMatchFeedTypePlaylistsKey])
  {
    podcastsQuery = [sub_100024154() playlistsQuery];
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
    if (![stringCopy isEqualToString:EARPhoneticMatchFeedTypeComposersKey])
    {
      v61 = 0;
      goto LABEL_71;
    }

    podcastsQuery = [sub_100024154() composersQuery];
    v14 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v65 = 0;
    v63 = 1;
    v15 = 6;
  }

  [podcastsQuery setShouldIncludeNonLibraryEntities:1];
  [podcastsQuery setSortItems:1];
  v16 = [[_EARPhoneticMatchData alloc] initWithFeedType:v15 jsonConfigFile:configurationCopy];
  getLimit = [v16 getLimit];
  if (getLimit >= 2000)
  {
    v18 = 2000;
  }

  else
  {
    v18 = getLimit;
  }

  [podcastsQuery setEntityLimit:v18 & ~(v18 >> 31)];
  if ((v14 & 1) == 0)
  {
    if ([methodCopy isEqualToString:EARPhoneticMatchRankingMethodPlayCount])
    {
      v19 = sub_100024234();
      v94 = v19;
      v20 = [NSArray arrayWithObjects:&v94 count:1];
      [podcastsQuery _setOrderingProperties:v20];

      v21 = sub_100024234();
      v92 = v21;
      v93 = &off_10003B1E0;
      v22 = &v93;
      v23 = &v92;
LABEL_25:
      v26 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
      [podcastsQuery _setOrderingDirectionMappings:v26];

      goto LABEL_26;
    }

    if ([methodCopy isEqualToString:EARPhoneticMatchRankingMethodMostRecentlyPlayed])
    {
      v24 = sub_100024398();
      v91 = v24;
      v25 = [NSArray arrayWithObjects:&v91 count:1];
      [podcastsQuery _setOrderingProperties:v25];

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
  obj = [podcastsQuery collections];
  v27 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v75 = *v77;
    v68 = stringCopy;
    v69 = configurationCopy;
    v66 = podcastsQuery;
    v67 = methodCopy;
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
        if (blockCopy[2](blockCopy))
        {
          objc_autoreleasePoolPop(v31);

          v61 = 0;
          stringCopy = v68;
          configurationCopy = v69;
          podcastsQuery = v66;
          methodCopy = v67;
          goto LABEL_70;
        }

        if (![v16 roomForMoreData])
        {
          objc_autoreleasePoolPop(v31);
          stringCopy = v68;
          configurationCopy = v69;
          podcastsQuery = v66;
          methodCopy = v67;
          goto LABEL_69;
        }

        if (v74)
        {
          representativeItem = [v30 representativeItem];
          artist = [representativeItem artist];

          if (!artist)
          {
            goto LABEL_42;
          }

          representativeItem2 = [v30 representativeItem];
          artist2 = [representativeItem2 artist];
          v87 = artist2;
          v36 = &v87;
          goto LABEL_39;
        }

        if (HIDWORD(v72))
        {
          representativeItem3 = [v30 representativeItem];
          title = [representativeItem3 title];

          if (!title)
          {
            goto LABEL_42;
          }

          representativeItem2 = [v30 representativeItem];
          artist2 = [representativeItem2 title];
          v86 = artist2;
          v36 = &v86;
          goto LABEL_39;
        }

        if (v72)
        {
          representativeItem2 = [v30 representativeItem];
          title2 = [representativeItem2 title];
          if (!title2)
          {
            goto LABEL_41;
          }

          v42 = title2;
          representativeItem4 = [v30 representativeItem];
          artist3 = [representativeItem4 artist];

          if (artist3)
          {
            representativeItem2 = [v30 representativeItem];
            artist2 = [representativeItem2 title];
            v85[0] = artist2;
            representativeItem5 = [v30 representativeItem];
            artist4 = [representativeItem5 artist];
            v85[1] = artist4;
            v46 = v85;
            goto LABEL_48;
          }
        }

        else if (v71)
        {
          representativeItem6 = [v30 representativeItem];
          albumTitle = [representativeItem6 albumTitle];

          if (albumTitle)
          {
            representativeItem2 = [v30 representativeItem];
            artist2 = [representativeItem2 albumTitle];
            v84 = artist2;
            v36 = &v84;
            goto LABEL_39;
          }
        }

        else if (v70)
        {
          representativeItem2 = [v30 representativeItem];
          albumTitle2 = [representativeItem2 albumTitle];
          if (!albumTitle2)
          {
            goto LABEL_41;
          }

          v52 = albumTitle2;
          representativeItem7 = [v30 representativeItem];
          albumArtist = [representativeItem7 albumArtist];

          if (albumArtist)
          {
            representativeItem2 = [v30 representativeItem];
            artist2 = [representativeItem2 albumTitle];
            v83[0] = artist2;
            representativeItem5 = [v30 representativeItem];
            artist4 = [representativeItem5 albumArtist];
            v83[1] = artist4;
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
          representativeItem8 = [v30 representativeItem];
          podcastTitle = [representativeItem8 podcastTitle];

          if (podcastTitle)
          {
            representativeItem2 = [v30 representativeItem];
            artist2 = [representativeItem2 podcastTitle];
            v82 = artist2;
            v36 = &v82;
            goto LABEL_39;
          }
        }

        else
        {
          if (v64)
          {
            representativeItem2 = v30;
            name = [representativeItem2 name];

            if (!name)
            {
              goto LABEL_41;
            }

            artist2 = [representativeItem2 name];
            v81 = artist2;
            v36 = &v81;
LABEL_39:
            representativeItem5 = [NSArray arrayWithObjects:v36 count:1];
            LODWORD(v40) = 1.0;
            [v16 appendData:representativeItem5 prior:v40];
            goto LABEL_40;
          }

          if (v63)
          {
            representativeItem9 = [v30 representativeItem];
            composer = [representativeItem9 composer];

            if (composer)
            {
              representativeItem2 = [v30 representativeItem];
              artist2 = [representativeItem2 composer];
              v80 = artist2;
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
      stringCopy = v68;
      configurationCopy = v69;
      podcastsQuery = v66;
      methodCopy = v67;
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