@interface BLML3TrackImporter
- (BOOL)importLibraryItems:(id)a3 toMusicLibrary:(id)a4 importedItemPids:(id)a5;
- (id)_absoluteTimeValueForDateValue:(id)a3;
- (id)_currentTrackChapterDataForTrackPid:(int64_t)a3 libraryItem:(id)a4 usingLibrary:(id)a5;
- (id)_currentTrackMovieInfoFromMetadata:(id)a3;
- (id)_extendedContentRatingStringForLibraryItem:(id)a3;
- (id)_importPropertiesFromLibraryItem:(id)a3 fromAccount:(id)a4 usingLibrary:(id)a5;
- (id)_storeArtworkTokenFromLibraryItem:(id)a3 metadata:(id)a4;
- (id)_stringValueForURLValue:(id)a3;
@end

@implementation BLML3TrackImporter

- (BOOL)importLibraryItems:(id)a3 toMusicLibrary:(id)a4 importedItemPids:(id)a5
{
  v30 = a3;
  v8 = a4;
  v29 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v9 = +[BUAccountsProvider sharedProvider];
  v10 = [v9 activeStoreAccount];

  if ([v30 count])
  {
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v30 count]);
    v42 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v12 = v30;
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v13)
    {
      v14 = *v40;
      do
      {
        v15 = 0;
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [(BLML3TrackImporter *)self _importPropertiesFromLibraryItem:*(*(&v39 + 1) + 8 * v15) fromAccount:v10 usingLibrary:v8];
          [v11 addObject:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v13);
    }

    v51 = @"track_items";
    v52 = v11;
    [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v28 = v38 = 0;
    v17 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
    v18 = v38;
    if (v18)
    {
      v19 = BLServiceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v48 = v20;
        v49 = 2112;
        v50 = v18;
        v21 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive track items. Error =  %@", buf, 0x16u);
      }
    }

    v22 = dispatch_semaphore_create(0);
    v23 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C581C;
    block[3] = &unk_10011F018;
    v37 = &v43;
    v32 = v17;
    v33 = self;
    v34 = v29;
    v35 = v12;
    v36 = v22;
    v24 = v22;
    v25 = v17;
    dispatch_async(v23, block);

    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  }

  v26 = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  return v26 & 1;
}

- (id)_importPropertiesFromLibraryItem:(id)a3 fromAccount:(id)a4 usingLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v160 = a5;
  v10 = [NSMutableDictionary dictionaryWithCapacity:100];
  v11 = [v8 itemMetadata];
  v12 = [BLMLImporterItem mediaTypeForStoreDownload:v11];
  if ([v8 libraryPersistentIdentifier])
  {
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 libraryPersistentIdentifier]);
    [v10 setObject:v13 forKeyedSubscript:&off_100129B30];
  }

  else
  {
    v14 = [v8 itemDownloadIdentifier];

    if (!v14)
    {
      goto LABEL_8;
    }

    v15 = [v8 itemDownloadIdentifier];
    v13 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:v15];

    v16 = [ML3Track anyInLibrary:v160 predicate:v13];
    v17 = v16;
    if (v16)
    {
      v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 persistentID]);
      [v10 setObject:v18 forKeyedSubscript:&off_100129B30];
    }
  }

LABEL_8:
  v19 = [NSNumber numberWithUnsignedInt:v12];
  [v10 setObject:v19 forKey:&off_100129B48];

  v20 = [v11 collectionIndexInCollectionGroup];

  if (v20)
  {
    v21 = [v11 collectionIndexInCollectionGroup];
    [v10 setObject:v21 forKey:&off_100129B60];
  }

  v22 = [v11 indexInCollection];

  if (v22)
  {
    v23 = [v11 indexInCollection];
    [v10 setObject:v23 forKey:&off_100129B78];
  }

  v24 = [v11 episodeSortIdentifier];

  if (v24)
  {
    v25 = [v11 episodeSortIdentifier];
    [v10 setObject:v25 forKey:&off_100129B90];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129BC0];
  [v10 setObject:&__kCFBooleanFalse forKey:&off_100129BD8];
  v26 = [v11 artistName];

  if (v26)
  {
    v27 = [v11 artistName];
    [v10 setObject:v27 forKey:&off_100129BF0];
  }

  v28 = [v11 seriesName];

  if (v28)
  {
    v29 = [v11 seriesName];
    [v10 setObject:v29 forKey:&off_100129C08];
  }

  v30 = [v11 collectionArtistName];

  if (v30)
  {
    v31 = [v11 collectionArtistName];
    [v10 setObject:v31 forKey:&off_100129C20];
  }

  v32 = [v11 genre];

  if (v32)
  {
    v33 = [v11 genre];
    [v10 setObject:v33 forKey:&off_100129C38];
  }

  v34 = [v8 itemMediaPath];

  if (v34)
  {
    v35 = [v8 itemMediaPath];
    [v10 setObject:v35 forKey:&off_100129C50];
  }

  v36 = [v11 collectionName];

  if (v36)
  {
    v37 = [v11 collectionName];
    [v10 setObject:v37 forKey:&off_100129C68];
  }

  v38 = [v11 composerName];

  if (v38)
  {
    v39 = [v11 composerName];
    [v10 setObject:v39 forKey:&off_100129C80];
  }

  v40 = [v11 showComposer];

  if (v40)
  {
    v41 = [v11 showComposer];
    [v10 setObject:v41 forKey:&off_100129C98];
  }

  if ([v11 isMusicShow])
  {
    v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isMusicShow]);
    [v10 setObject:v42 forKey:&off_100129CB0];
  }

  v43 = [v11 title];

  if (v43)
  {
    v44 = [v11 title];
    [v10 setObject:v44 forKey:&off_100129CC8];
  }

  v45 = [v11 numberOfCollectionsInCollectionGroup];

  if (v45)
  {
    v46 = [v11 numberOfCollectionsInCollectionGroup];
    [v10 setObject:v46 forKey:&off_100129CE0];
  }

  v47 = [v11 numberOfItemsInCollection];

  if (v47)
  {
    v48 = [v11 numberOfItemsInCollection];
    [v10 setObject:v48 forKey:&off_100129CF8];
  }

  v49 = [v11 releaseYear];

  if (v49)
  {
    v50 = [v11 releaseYear];
    [v10 setObject:v50 forKey:&off_100129D10];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129D28];
  v51 = [NSNumber numberWithBool:(v12 >> 1) & 1];
  [v10 setObject:v51 forKey:&off_100129D40];

  v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isCompilation]);
  [v10 setObject:v52 forKey:&off_100129D58];

  v53 = [v11 purchaseDate];
  v54 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:v53];
  [v10 setObject:v54 forKey:&off_100129D70];

  [v10 setObject:&off_10012A4E8 forKey:&off_100129D88];
  v55 = [v11 isExplicitContent];
  if (v55)
  {
    v56 = 1;
  }

  else
  {
    v53 = [v11 contentRating];
    v56 = [v53 rank];
  }

  v57 = [NSNumber numberWithInteger:v56];
  [v10 setObject:v57 forKey:&off_100129DA0];

  if ((v55 & 1) == 0)
  {
  }

  v58 = [v11 contentRating];
  v59 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v58 rank]);
  [v10 setObject:v59 forKey:&off_100129DB8];

  [v10 setObject:&__kCFBooleanFalse forKey:&off_100129DD0];
  v60 = [v11 durationInMilliseconds];

  if (v60)
  {
    v61 = [v11 durationInMilliseconds];
    [v10 setObject:v61 forKey:&off_100129DE8];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129E00];
  [v10 setObject:&off_100129BA8 forKey:&off_100129E18];
  v62 = [v11 shortDescription];

  if (v62)
  {
    v63 = [v11 shortDescription];
    [v10 setObject:v63 forKey:&off_100129E30];
  }

  v64 = [v11 longDescription];

  if (v64)
  {
    v65 = [v11 longDescription];
    [v10 setObject:v65 forKey:&off_100129E48];
  }

  v66 = [v11 longSeasonDescription];

  if (v66)
  {
    v67 = [v11 longSeasonDescription];
    [v10 setObject:v67 forKey:&off_100129E60];
  }

  v68 = [v11 copyright];

  if (v68)
  {
    v69 = [v11 copyright];
    [v10 setObject:v69 forKey:&off_100129E78];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129E90];
  v70 = [NSNumber numberWithUnsignedInt:v12];
  [v10 setObject:v70 forKey:&off_100129EA8];

  v71 = [v11 workName];

  if (v71)
  {
    v72 = [v11 workName];
    [v10 setObject:v72 forKey:&off_100129EC0];
  }

  v73 = [v11 movementName];

  if (v73)
  {
    v74 = [v11 movementName];
    [v10 setObject:v74 forKey:&off_100129ED8];
  }

  v75 = [v11 movementNumber];

  if (v75)
  {
    v76 = [v11 movementNumber];
    [v10 setObject:v76 forKey:&off_100129EF0];
  }

  v77 = [v11 movementCount];

  if (v77)
  {
    v78 = [v11 movementCount];
    [v10 setObject:v78 forKey:&off_100129F08];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129F20];
  [v10 setObject:&off_100129BA8 forKey:&off_100129F38];
  v79 = [NSNumber numberWithBool:(v12 & 0xFF00) != 0];
  [v10 setObject:v79 forKey:&off_100129F50];

  [v10 setObject:&off_10012A4F8 forKey:&off_100129F68];
  [v10 setObject:&off_100129BA8 forKey:&off_100129F80];
  v80 = [v11 durationInMilliseconds];

  if (v80)
  {
    v81 = [v11 durationInMilliseconds];
    [v10 setObject:v81 forKey:&off_100129F98];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129FB0];
  v82 = [v8 itemDownloadIdentifier];

  if (v82)
  {
    v83 = [v8 itemDownloadIdentifier];
    [v10 setObject:v83 forKey:&off_100129FC8];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129FE0];
  [v10 setObject:&off_100129BA8 forKey:&off_100129FF8];
  [v10 setObject:&__kCFBooleanFalse forKey:&off_10012A010];
  +[NSDate timeIntervalSinceReferenceDate];
  v84 = [NSNumber numberWithDouble:?];
  [v10 setObject:v84 forKey:&off_10012A028];

  [v10 setObject:&off_100129BA8 forKey:&off_10012A040];
  [v10 setObject:&off_100129BA8 forKey:&off_10012A058];
  v85 = [NSNumber numberWithBool:ML3ImportDefaultRememberBookmarkTime()];
  [v10 setObject:v85 forKey:&off_10012A070];

  [v10 setObject:&off_100129BA8 forKey:&off_10012A088];
  [v10 setObject:&__kCFBooleanFalse forKey:&off_10012A0A0];
  if ([v11 itemIdentifier])
  {
    v86 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 itemIdentifier]);
    [v10 setObject:v86 forKey:&off_10012A0B8];
  }

  if ([v11 composerIdentifier])
  {
    v87 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 composerIdentifier]);
    [v10 setObject:v87 forKey:&off_10012A0D0];
  }

  if ([v11 genreIdentifier])
  {
    v88 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 genreIdentifier]);
    [v10 setObject:v88 forKey:&off_10012A0E8];
  }

  if ([v11 collectionIdentifier])
  {
    v89 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 collectionIdentifier]);
    [v10 setObject:v89 forKey:&off_10012A100];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_10012A118];
  v90 = [v11 redownloadActionParameters];

  if (v90)
  {
    v91 = [v11 redownloadActionParameters];
    [v10 setObject:v91 forKey:&off_10012A130];
  }

  v92 = [v11 cloudIdentifier];
  v93 = [NSNumber numberWithUnsignedLongLong:BLGetItemIdentifierFromValue()];
  [v10 setObject:v93 forKey:&off_10012A148];

  [v10 setObject:&off_100129BA8 forKey:&off_10012A160];
  if ([v8 protectionType] != 2)
  {
    [v10 setObject:&__kCFBooleanTrue forKey:&off_10012A178];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_10012A190];
  v94 = [v11 bl_purchaserAccountIdentifier];
  v161 = v8;
  v158 = v9;
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    v95 = [v9 ams_DSID];

    if (!v95)
    {
      goto LABEL_83;
    }
  }

  [v10 setObject:v95 forKey:&off_10012A1A8];
LABEL_83:
  v157 = v95;
  v96 = [v11 bl_downloaderAccountIdentifier];
  if (v96)
  {
    v97 = v96;

LABEL_86:
    v156 = v97;
    [v10 setObject:v97 forKey:&off_10012A1C0];
    goto LABEL_87;
  }

  v97 = [v9 ams_DSID];

  if (v97)
  {
    goto LABEL_86;
  }

  v156 = 0;
LABEL_87:
  objc_opt_class();
  v98 = [v8 additionalEntityProperties];
  v99 = [v98 objectForKeyedSubscript:ML3TrackPropertyStoreFamilyAccountID];
  v100 = BUDynamicCast();

  v159 = v100;
  if (v100)
  {
    [v10 setObject:v100 forKey:&off_10012A1D8];
  }

  v101 = [v11 purchaseDate];
  v102 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:v101];
  [v10 setObject:v102 forKey:&off_10012A1F0];

  v103 = [v11 releaseDate];
  v104 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:v103];
  [v10 setObject:v104 forKey:&off_10012A208];

  v105 = [v11 podcastEpisodeGUID];

  if (v105)
  {
    v106 = [v11 podcastEpisodeGUID];
    [v10 setObject:v106 forKey:&off_10012A220];
  }

  v107 = [v11 podcastFeedURL];
  v108 = [(BLML3TrackImporter *)self _stringValueForURLValue:v107];

  if (v108)
  {
    v109 = [v11 podcastFeedURL];
    v110 = [(BLML3TrackImporter *)self _stringValueForURLValue:v109];
    [v10 setObject:v110 forKey:&off_10012A238];
  }

  v111 = [v11 viewStoreItemURL];
  v112 = [(BLML3TrackImporter *)self _stringValueForURLValue:v111];

  if (v112)
  {
    v113 = [v11 viewStoreItemURL];
    v114 = [(BLML3TrackImporter *)self _stringValueForURLValue:v113];
    [v10 setObject:v114 forKey:&off_10012A250];
  }

  v115 = [v11 valueForMetadataKey:@"xid"];

  if (v115)
  {
    v116 = [v11 valueForMetadataKey:@"xid"];
    [v10 setObject:v116 forKey:&off_10012A268];
  }

  v117 = [v11 valueForMetadataKey:@"flavor"];

  if (v117)
  {
    v118 = [v11 valueForMetadataKey:@"flavor"];
    [v10 setObject:v118 forKey:&off_10012A280];
  }

  v119 = [v11 launchExtrasUrl];

  if (v119)
  {
    v120 = [v11 launchExtrasUrl];
    [v10 setObject:v120 forKey:&off_10012A298];
  }

  v121 = [v11 rentalID];

  if (v121)
  {
    v122 = [v11 rentalID];
    [v10 setObject:v122 forKey:&off_10012A2B0];
  }

  v123 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isHighDefinition]);
  [v10 setObject:v123 forKey:&off_10012A2C8];

  v124 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isRental]);
  [v10 setObject:v124 forKey:&off_10012A2E0];

  if (v8)
  {
    v117 = [v8 chapters];
    v125 = v117 != 0;
  }

  else
  {
    v125 = 0;
  }

  v126 = [NSNumber numberWithBool:v125];
  [v10 setObject:v126 forKey:&off_10012A2F8];

  if (v8)
  {
  }

  v127 = [v11 seasonNumber];

  if (v127)
  {
    v128 = [v11 seasonNumber];
    [v10 setObject:v128 forKey:&off_10012A310];
  }

  v129 = [v11 episodeIdentifier];

  if (v129)
  {
    v130 = [v11 episodeIdentifier];
    [v10 setObject:v130 forKey:&off_10012A328];
  }

  v131 = [v11 networkName];

  if (v131)
  {
    v132 = [v11 networkName];
    [v10 setObject:v132 forKey:&off_10012A340];
  }

  v133 = [(BLML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:v11];

  if (v133)
  {
    v134 = [(BLML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:v11];
    [v10 setObject:v134 forKey:&off_10012A358];
  }

  v135 = self;
  v136 = [(BLML3TrackImporter *)self _extendedContentRatingStringForLibraryItem:v8];
  v155 = v136;
  if ([v136 length])
  {
    [v10 setObject:v136 forKey:&off_10012A370];
  }

  v137 = [v11 hlsPlaylistURL];

  if (v137)
  {
    v138 = [v11 hlsPlaylistURL];
    v139 = [v138 absoluteString];
    [v10 setObject:v139 forKey:&off_10012A388];
  }

  v140 = [v11 valueForMetadataKey:BLDownloadMetadataKeyIsHLS];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v140 BOOLValue])
  {
    [v10 setObject:&__kCFBooleanTrue forKey:&off_10012A3A0];
  }

  v141 = [v11 valueForMetadataKey:BLDownloadMetadataKeyHasHDR];
  if (objc_opt_respondsToSelector())
  {
    v142 = [v141 BOOLValue];
  }

  else
  {
    v142 = 0;
  }

  v143 = [v11 valueForMetadataKey:BLDownloadMetadataKeyHasDolbyVision];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((v142 & 1) == 0)
    {
      goto LABEL_135;
    }

    v145 = 1;
LABEL_134:
    v146 = [NSNumber numberWithInteger:v145];
    [v10 setObject:v146 forKey:&off_10012A3B8];

    goto LABEL_135;
  }

  v144 = [v143 BOOLValue];
  if (v144)
  {
    v145 = v142 | 2;
  }

  else
  {
    v145 = 1;
  }

  if ((v144 | v142))
  {
    goto LABEL_134;
  }

LABEL_135:
  v147 = [v11 valueForMetadataKey:BLDownloadMetadataKeyHas4K];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v147 BOOLValue])
  {
    [v10 setObject:&off_10012A3D0 forKey:&off_10012A3E8];
  }

  v148 = [(BLML3TrackImporter *)self _storeArtworkTokenFromLibraryItem:v161 metadata:v11];
  if (v148)
  {
    [v10 setObject:v148 forKey:&off_10012A400];
  }

  v149 = [v10 objectForKey:&off_100129B30];
  v150 = v149;
  if (v149)
  {
    v151 = -[BLML3TrackImporter _currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:](v135, "_currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:", [v149 longLongValue], v161, v160);
    if (v151)
    {
      [v10 setObject:v151 forKey:&off_10012A418];
    }
  }

  if ([v11 artistIdentifier])
  {
    v152 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 artistIdentifier]);
    [v10 setObject:v152 forKey:&off_10012A430];
  }

  v153 = v10;

  return v10;
}

- (id)_absoluteTimeValueForDateValue:(id)a3
{
  v3 = a3;
  [v3 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (id)_stringValueForURLValue:(id)a3
{
  v3 = [a3 absoluteString];

  return v3;
}

- (id)_currentTrackMovieInfoFromMetadata:(id)a3
{
  v3 = [a3 videoDetailsDictionary];
  if (v3)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];
    if (v4)
    {
      v5 = [[NSString alloc] initWithData:v4 encoding:4];
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

  return v5;
}

- (id)_storeArtworkTokenFromLibraryItem:(id)a3 metadata:(id)a4
{
  v5 = a4;
  if (![a3 hasItemArtwork])
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = [v5 collectionIdentifier];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"store_collection_id=%llu", v6];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = [v5 itemIdentifier];
  if (v9)
  {
    v7 = [NSString stringWithFormat:@"store_item_id=%llu", v9];
    goto LABEL_7;
  }

  v11 = +[NSUUID UUID];
  v8 = [v11 UUIDString];

LABEL_8:

  return v8;
}

- (id)_currentTrackChapterDataForTrackPid:(int64_t)a3 libraryItem:(id)a4 usingLibrary:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!a3)
  {
    a3 = [v7 libraryPersistentIdentifier];
  }

  v9 = [v7 chapters];
  v10 = [ML3Track flattenedChapterDataWithImportChapters:v9 library:v8 trackPersistentID:a3];

  return v10;
}

- (id)_extendedContentRatingStringForLibraryItem:(id)a3
{
  v3 = [a3 itemMetadata];
  v4 = [v3 contentRating];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rank];
    v7 = [v5 ratingLabel];
    v8 = +[BLItemContentRating stringForRatingSystem:](BLItemContentRating, "stringForRatingSystem:", [v5 ratingSystem]);
    v9 = [v5 ratingDescription];
    if ([v8 length] && objc_msgSend(v7, "length"))
    {
      v10 = &stru_100125DB0;
      if (v9)
      {
        v10 = v9;
      }

      v11 = [NSString stringWithFormat:@"%@|%@|%ld|%@", v8, v7, v6, v10];
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

@end