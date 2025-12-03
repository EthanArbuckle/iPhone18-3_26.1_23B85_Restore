@interface BLML3TrackImporter
- (BOOL)importLibraryItems:(id)items toMusicLibrary:(id)library importedItemPids:(id)pids;
- (id)_absoluteTimeValueForDateValue:(id)value;
- (id)_currentTrackChapterDataForTrackPid:(int64_t)pid libraryItem:(id)item usingLibrary:(id)library;
- (id)_currentTrackMovieInfoFromMetadata:(id)metadata;
- (id)_extendedContentRatingStringForLibraryItem:(id)item;
- (id)_importPropertiesFromLibraryItem:(id)item fromAccount:(id)account usingLibrary:(id)library;
- (id)_storeArtworkTokenFromLibraryItem:(id)item metadata:(id)metadata;
- (id)_stringValueForURLValue:(id)value;
@end

@implementation BLML3TrackImporter

- (BOOL)importLibraryItems:(id)items toMusicLibrary:(id)library importedItemPids:(id)pids
{
  itemsCopy = items;
  libraryCopy = library;
  pidsCopy = pids;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v9 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v9 activeStoreAccount];

  if ([itemsCopy count])
  {
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    v42 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v12 = itemsCopy;
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

          v16 = [(BLML3TrackImporter *)self _importPropertiesFromLibraryItem:*(*(&v39 + 1) + 8 * v15) fromAccount:activeStoreAccount usingLibrary:libraryCopy];
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
    selfCopy = self;
    v34 = pidsCopy;
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

- (id)_importPropertiesFromLibraryItem:(id)item fromAccount:(id)account usingLibrary:(id)library
{
  itemCopy = item;
  accountCopy = account;
  libraryCopy = library;
  v10 = [NSMutableDictionary dictionaryWithCapacity:100];
  itemMetadata = [itemCopy itemMetadata];
  v12 = [BLMLImporterItem mediaTypeForStoreDownload:itemMetadata];
  if ([itemCopy libraryPersistentIdentifier])
  {
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemCopy libraryPersistentIdentifier]);
    [v10 setObject:v13 forKeyedSubscript:&off_100129B30];
  }

  else
  {
    itemDownloadIdentifier = [itemCopy itemDownloadIdentifier];

    if (!itemDownloadIdentifier)
    {
      goto LABEL_8;
    }

    itemDownloadIdentifier2 = [itemCopy itemDownloadIdentifier];
    v13 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:itemDownloadIdentifier2];

    v16 = [ML3Track anyInLibrary:libraryCopy predicate:v13];
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

  collectionIndexInCollectionGroup = [itemMetadata collectionIndexInCollectionGroup];

  if (collectionIndexInCollectionGroup)
  {
    collectionIndexInCollectionGroup2 = [itemMetadata collectionIndexInCollectionGroup];
    [v10 setObject:collectionIndexInCollectionGroup2 forKey:&off_100129B60];
  }

  indexInCollection = [itemMetadata indexInCollection];

  if (indexInCollection)
  {
    indexInCollection2 = [itemMetadata indexInCollection];
    [v10 setObject:indexInCollection2 forKey:&off_100129B78];
  }

  episodeSortIdentifier = [itemMetadata episodeSortIdentifier];

  if (episodeSortIdentifier)
  {
    episodeSortIdentifier2 = [itemMetadata episodeSortIdentifier];
    [v10 setObject:episodeSortIdentifier2 forKey:&off_100129B90];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129BC0];
  [v10 setObject:&__kCFBooleanFalse forKey:&off_100129BD8];
  artistName = [itemMetadata artistName];

  if (artistName)
  {
    artistName2 = [itemMetadata artistName];
    [v10 setObject:artistName2 forKey:&off_100129BF0];
  }

  seriesName = [itemMetadata seriesName];

  if (seriesName)
  {
    seriesName2 = [itemMetadata seriesName];
    [v10 setObject:seriesName2 forKey:&off_100129C08];
  }

  collectionArtistName = [itemMetadata collectionArtistName];

  if (collectionArtistName)
  {
    collectionArtistName2 = [itemMetadata collectionArtistName];
    [v10 setObject:collectionArtistName2 forKey:&off_100129C20];
  }

  genre = [itemMetadata genre];

  if (genre)
  {
    genre2 = [itemMetadata genre];
    [v10 setObject:genre2 forKey:&off_100129C38];
  }

  itemMediaPath = [itemCopy itemMediaPath];

  if (itemMediaPath)
  {
    itemMediaPath2 = [itemCopy itemMediaPath];
    [v10 setObject:itemMediaPath2 forKey:&off_100129C50];
  }

  collectionName = [itemMetadata collectionName];

  if (collectionName)
  {
    collectionName2 = [itemMetadata collectionName];
    [v10 setObject:collectionName2 forKey:&off_100129C68];
  }

  composerName = [itemMetadata composerName];

  if (composerName)
  {
    composerName2 = [itemMetadata composerName];
    [v10 setObject:composerName2 forKey:&off_100129C80];
  }

  showComposer = [itemMetadata showComposer];

  if (showComposer)
  {
    showComposer2 = [itemMetadata showComposer];
    [v10 setObject:showComposer2 forKey:&off_100129C98];
  }

  if ([itemMetadata isMusicShow])
  {
    v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isMusicShow]);
    [v10 setObject:v42 forKey:&off_100129CB0];
  }

  title = [itemMetadata title];

  if (title)
  {
    title2 = [itemMetadata title];
    [v10 setObject:title2 forKey:&off_100129CC8];
  }

  numberOfCollectionsInCollectionGroup = [itemMetadata numberOfCollectionsInCollectionGroup];

  if (numberOfCollectionsInCollectionGroup)
  {
    numberOfCollectionsInCollectionGroup2 = [itemMetadata numberOfCollectionsInCollectionGroup];
    [v10 setObject:numberOfCollectionsInCollectionGroup2 forKey:&off_100129CE0];
  }

  numberOfItemsInCollection = [itemMetadata numberOfItemsInCollection];

  if (numberOfItemsInCollection)
  {
    numberOfItemsInCollection2 = [itemMetadata numberOfItemsInCollection];
    [v10 setObject:numberOfItemsInCollection2 forKey:&off_100129CF8];
  }

  releaseYear = [itemMetadata releaseYear];

  if (releaseYear)
  {
    releaseYear2 = [itemMetadata releaseYear];
    [v10 setObject:releaseYear2 forKey:&off_100129D10];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129D28];
  v51 = [NSNumber numberWithBool:(v12 >> 1) & 1];
  [v10 setObject:v51 forKey:&off_100129D40];

  v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isCompilation]);
  [v10 setObject:v52 forKey:&off_100129D58];

  purchaseDate = [itemMetadata purchaseDate];
  v54 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:purchaseDate];
  [v10 setObject:v54 forKey:&off_100129D70];

  [v10 setObject:&off_10012A4E8 forKey:&off_100129D88];
  isExplicitContent = [itemMetadata isExplicitContent];
  if (isExplicitContent)
  {
    rank = 1;
  }

  else
  {
    purchaseDate = [itemMetadata contentRating];
    rank = [purchaseDate rank];
  }

  v57 = [NSNumber numberWithInteger:rank];
  [v10 setObject:v57 forKey:&off_100129DA0];

  if ((isExplicitContent & 1) == 0)
  {
  }

  contentRating = [itemMetadata contentRating];
  v59 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contentRating rank]);
  [v10 setObject:v59 forKey:&off_100129DB8];

  [v10 setObject:&__kCFBooleanFalse forKey:&off_100129DD0];
  durationInMilliseconds = [itemMetadata durationInMilliseconds];

  if (durationInMilliseconds)
  {
    durationInMilliseconds2 = [itemMetadata durationInMilliseconds];
    [v10 setObject:durationInMilliseconds2 forKey:&off_100129DE8];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129E00];
  [v10 setObject:&off_100129BA8 forKey:&off_100129E18];
  shortDescription = [itemMetadata shortDescription];

  if (shortDescription)
  {
    shortDescription2 = [itemMetadata shortDescription];
    [v10 setObject:shortDescription2 forKey:&off_100129E30];
  }

  longDescription = [itemMetadata longDescription];

  if (longDescription)
  {
    longDescription2 = [itemMetadata longDescription];
    [v10 setObject:longDescription2 forKey:&off_100129E48];
  }

  longSeasonDescription = [itemMetadata longSeasonDescription];

  if (longSeasonDescription)
  {
    longSeasonDescription2 = [itemMetadata longSeasonDescription];
    [v10 setObject:longSeasonDescription2 forKey:&off_100129E60];
  }

  copyright = [itemMetadata copyright];

  if (copyright)
  {
    copyright2 = [itemMetadata copyright];
    [v10 setObject:copyright2 forKey:&off_100129E78];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129E90];
  v70 = [NSNumber numberWithUnsignedInt:v12];
  [v10 setObject:v70 forKey:&off_100129EA8];

  workName = [itemMetadata workName];

  if (workName)
  {
    workName2 = [itemMetadata workName];
    [v10 setObject:workName2 forKey:&off_100129EC0];
  }

  movementName = [itemMetadata movementName];

  if (movementName)
  {
    movementName2 = [itemMetadata movementName];
    [v10 setObject:movementName2 forKey:&off_100129ED8];
  }

  movementNumber = [itemMetadata movementNumber];

  if (movementNumber)
  {
    movementNumber2 = [itemMetadata movementNumber];
    [v10 setObject:movementNumber2 forKey:&off_100129EF0];
  }

  movementCount = [itemMetadata movementCount];

  if (movementCount)
  {
    movementCount2 = [itemMetadata movementCount];
    [v10 setObject:movementCount2 forKey:&off_100129F08];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129F20];
  [v10 setObject:&off_100129BA8 forKey:&off_100129F38];
  v79 = [NSNumber numberWithBool:(v12 & 0xFF00) != 0];
  [v10 setObject:v79 forKey:&off_100129F50];

  [v10 setObject:&off_10012A4F8 forKey:&off_100129F68];
  [v10 setObject:&off_100129BA8 forKey:&off_100129F80];
  durationInMilliseconds3 = [itemMetadata durationInMilliseconds];

  if (durationInMilliseconds3)
  {
    durationInMilliseconds4 = [itemMetadata durationInMilliseconds];
    [v10 setObject:durationInMilliseconds4 forKey:&off_100129F98];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_100129FB0];
  itemDownloadIdentifier3 = [itemCopy itemDownloadIdentifier];

  if (itemDownloadIdentifier3)
  {
    itemDownloadIdentifier4 = [itemCopy itemDownloadIdentifier];
    [v10 setObject:itemDownloadIdentifier4 forKey:&off_100129FC8];
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
  if ([itemMetadata itemIdentifier])
  {
    v86 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata itemIdentifier]);
    [v10 setObject:v86 forKey:&off_10012A0B8];
  }

  if ([itemMetadata composerIdentifier])
  {
    v87 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata composerIdentifier]);
    [v10 setObject:v87 forKey:&off_10012A0D0];
  }

  if ([itemMetadata genreIdentifier])
  {
    v88 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata genreIdentifier]);
    [v10 setObject:v88 forKey:&off_10012A0E8];
  }

  if ([itemMetadata collectionIdentifier])
  {
    v89 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata collectionIdentifier]);
    [v10 setObject:v89 forKey:&off_10012A100];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_10012A118];
  redownloadActionParameters = [itemMetadata redownloadActionParameters];

  if (redownloadActionParameters)
  {
    redownloadActionParameters2 = [itemMetadata redownloadActionParameters];
    [v10 setObject:redownloadActionParameters2 forKey:&off_10012A130];
  }

  cloudIdentifier = [itemMetadata cloudIdentifier];
  v93 = [NSNumber numberWithUnsignedLongLong:BLGetItemIdentifierFromValue()];
  [v10 setObject:v93 forKey:&off_10012A148];

  [v10 setObject:&off_100129BA8 forKey:&off_10012A160];
  if ([itemCopy protectionType] != 2)
  {
    [v10 setObject:&__kCFBooleanTrue forKey:&off_10012A178];
  }

  [v10 setObject:&off_100129BA8 forKey:&off_10012A190];
  bl_purchaserAccountIdentifier = [itemMetadata bl_purchaserAccountIdentifier];
  v161 = itemCopy;
  v158 = accountCopy;
  if (bl_purchaserAccountIdentifier)
  {
    ams_DSID = bl_purchaserAccountIdentifier;
  }

  else
  {
    ams_DSID = [accountCopy ams_DSID];

    if (!ams_DSID)
    {
      goto LABEL_83;
    }
  }

  [v10 setObject:ams_DSID forKey:&off_10012A1A8];
LABEL_83:
  v157 = ams_DSID;
  bl_downloaderAccountIdentifier = [itemMetadata bl_downloaderAccountIdentifier];
  if (bl_downloaderAccountIdentifier)
  {
    ams_DSID2 = bl_downloaderAccountIdentifier;

LABEL_86:
    v156 = ams_DSID2;
    [v10 setObject:ams_DSID2 forKey:&off_10012A1C0];
    goto LABEL_87;
  }

  ams_DSID2 = [accountCopy ams_DSID];

  if (ams_DSID2)
  {
    goto LABEL_86;
  }

  v156 = 0;
LABEL_87:
  objc_opt_class();
  additionalEntityProperties = [itemCopy additionalEntityProperties];
  v99 = [additionalEntityProperties objectForKeyedSubscript:ML3TrackPropertyStoreFamilyAccountID];
  v100 = BUDynamicCast();

  v159 = v100;
  if (v100)
  {
    [v10 setObject:v100 forKey:&off_10012A1D8];
  }

  purchaseDate2 = [itemMetadata purchaseDate];
  v102 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:purchaseDate2];
  [v10 setObject:v102 forKey:&off_10012A1F0];

  releaseDate = [itemMetadata releaseDate];
  v104 = [(BLML3TrackImporter *)self _absoluteTimeValueForDateValue:releaseDate];
  [v10 setObject:v104 forKey:&off_10012A208];

  podcastEpisodeGUID = [itemMetadata podcastEpisodeGUID];

  if (podcastEpisodeGUID)
  {
    podcastEpisodeGUID2 = [itemMetadata podcastEpisodeGUID];
    [v10 setObject:podcastEpisodeGUID2 forKey:&off_10012A220];
  }

  podcastFeedURL = [itemMetadata podcastFeedURL];
  v108 = [(BLML3TrackImporter *)self _stringValueForURLValue:podcastFeedURL];

  if (v108)
  {
    podcastFeedURL2 = [itemMetadata podcastFeedURL];
    v110 = [(BLML3TrackImporter *)self _stringValueForURLValue:podcastFeedURL2];
    [v10 setObject:v110 forKey:&off_10012A238];
  }

  viewStoreItemURL = [itemMetadata viewStoreItemURL];
  v112 = [(BLML3TrackImporter *)self _stringValueForURLValue:viewStoreItemURL];

  if (v112)
  {
    viewStoreItemURL2 = [itemMetadata viewStoreItemURL];
    v114 = [(BLML3TrackImporter *)self _stringValueForURLValue:viewStoreItemURL2];
    [v10 setObject:v114 forKey:&off_10012A250];
  }

  v115 = [itemMetadata valueForMetadataKey:@"xid"];

  if (v115)
  {
    v116 = [itemMetadata valueForMetadataKey:@"xid"];
    [v10 setObject:v116 forKey:&off_10012A268];
  }

  chapters = [itemMetadata valueForMetadataKey:@"flavor"];

  if (chapters)
  {
    v118 = [itemMetadata valueForMetadataKey:@"flavor"];
    [v10 setObject:v118 forKey:&off_10012A280];
  }

  launchExtrasUrl = [itemMetadata launchExtrasUrl];

  if (launchExtrasUrl)
  {
    launchExtrasUrl2 = [itemMetadata launchExtrasUrl];
    [v10 setObject:launchExtrasUrl2 forKey:&off_10012A298];
  }

  rentalID = [itemMetadata rentalID];

  if (rentalID)
  {
    rentalID2 = [itemMetadata rentalID];
    [v10 setObject:rentalID2 forKey:&off_10012A2B0];
  }

  v123 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isHighDefinition]);
  [v10 setObject:v123 forKey:&off_10012A2C8];

  v124 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isRental]);
  [v10 setObject:v124 forKey:&off_10012A2E0];

  if (itemCopy)
  {
    chapters = [itemCopy chapters];
    v125 = chapters != 0;
  }

  else
  {
    v125 = 0;
  }

  v126 = [NSNumber numberWithBool:v125];
  [v10 setObject:v126 forKey:&off_10012A2F8];

  if (itemCopy)
  {
  }

  seasonNumber = [itemMetadata seasonNumber];

  if (seasonNumber)
  {
    seasonNumber2 = [itemMetadata seasonNumber];
    [v10 setObject:seasonNumber2 forKey:&off_10012A310];
  }

  episodeIdentifier = [itemMetadata episodeIdentifier];

  if (episodeIdentifier)
  {
    episodeIdentifier2 = [itemMetadata episodeIdentifier];
    [v10 setObject:episodeIdentifier2 forKey:&off_10012A328];
  }

  networkName = [itemMetadata networkName];

  if (networkName)
  {
    networkName2 = [itemMetadata networkName];
    [v10 setObject:networkName2 forKey:&off_10012A340];
  }

  v133 = [(BLML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:itemMetadata];

  if (v133)
  {
    v134 = [(BLML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:itemMetadata];
    [v10 setObject:v134 forKey:&off_10012A358];
  }

  selfCopy = self;
  v136 = [(BLML3TrackImporter *)self _extendedContentRatingStringForLibraryItem:itemCopy];
  v155 = v136;
  if ([v136 length])
  {
    [v10 setObject:v136 forKey:&off_10012A370];
  }

  hlsPlaylistURL = [itemMetadata hlsPlaylistURL];

  if (hlsPlaylistURL)
  {
    hlsPlaylistURL2 = [itemMetadata hlsPlaylistURL];
    absoluteString = [hlsPlaylistURL2 absoluteString];
    [v10 setObject:absoluteString forKey:&off_10012A388];
  }

  v140 = [itemMetadata valueForMetadataKey:BLDownloadMetadataKeyIsHLS];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v140 BOOLValue])
  {
    [v10 setObject:&__kCFBooleanTrue forKey:&off_10012A3A0];
  }

  v141 = [itemMetadata valueForMetadataKey:BLDownloadMetadataKeyHasHDR];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v141 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v143 = [itemMetadata valueForMetadataKey:BLDownloadMetadataKeyHasDolbyVision];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_135;
    }

    v145 = 1;
LABEL_134:
    v146 = [NSNumber numberWithInteger:v145];
    [v10 setObject:v146 forKey:&off_10012A3B8];

    goto LABEL_135;
  }

  bOOLValue2 = [v143 BOOLValue];
  if (bOOLValue2)
  {
    v145 = bOOLValue | 2;
  }

  else
  {
    v145 = 1;
  }

  if ((bOOLValue2 | bOOLValue))
  {
    goto LABEL_134;
  }

LABEL_135:
  v147 = [itemMetadata valueForMetadataKey:BLDownloadMetadataKeyHas4K];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v147 BOOLValue])
  {
    [v10 setObject:&off_10012A3D0 forKey:&off_10012A3E8];
  }

  v148 = [(BLML3TrackImporter *)self _storeArtworkTokenFromLibraryItem:v161 metadata:itemMetadata];
  if (v148)
  {
    [v10 setObject:v148 forKey:&off_10012A400];
  }

  v149 = [v10 objectForKey:&off_100129B30];
  v150 = v149;
  if (v149)
  {
    v151 = -[BLML3TrackImporter _currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:](selfCopy, "_currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:", [v149 longLongValue], v161, libraryCopy);
    if (v151)
    {
      [v10 setObject:v151 forKey:&off_10012A418];
    }
  }

  if ([itemMetadata artistIdentifier])
  {
    v152 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata artistIdentifier]);
    [v10 setObject:v152 forKey:&off_10012A430];
  }

  v153 = v10;

  return v10;
}

- (id)_absoluteTimeValueForDateValue:(id)value
{
  valueCopy = value;
  [valueCopy timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (id)_stringValueForURLValue:(id)value
{
  absoluteString = [value absoluteString];

  return absoluteString;
}

- (id)_currentTrackMovieInfoFromMetadata:(id)metadata
{
  videoDetailsDictionary = [metadata videoDetailsDictionary];
  if (videoDetailsDictionary)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:videoDetailsDictionary format:100 options:0 error:0];
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

- (id)_storeArtworkTokenFromLibraryItem:(id)item metadata:(id)metadata
{
  metadataCopy = metadata;
  if (![item hasItemArtwork])
  {
    uUIDString = 0;
    goto LABEL_8;
  }

  collectionIdentifier = [metadataCopy collectionIdentifier];
  if (collectionIdentifier)
  {
    v7 = [NSString stringWithFormat:@"store_collection_id=%llu", collectionIdentifier];
LABEL_7:
    uUIDString = v7;
    goto LABEL_8;
  }

  itemIdentifier = [metadataCopy itemIdentifier];
  if (itemIdentifier)
  {
    v7 = [NSString stringWithFormat:@"store_item_id=%llu", itemIdentifier];
    goto LABEL_7;
  }

  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

LABEL_8:

  return uUIDString;
}

- (id)_currentTrackChapterDataForTrackPid:(int64_t)pid libraryItem:(id)item usingLibrary:(id)library
{
  itemCopy = item;
  libraryCopy = library;
  if (!pid)
  {
    pid = [itemCopy libraryPersistentIdentifier];
  }

  chapters = [itemCopy chapters];
  v10 = [ML3Track flattenedChapterDataWithImportChapters:chapters library:libraryCopy trackPersistentID:pid];

  return v10;
}

- (id)_extendedContentRatingStringForLibraryItem:(id)item
{
  itemMetadata = [item itemMetadata];
  contentRating = [itemMetadata contentRating];
  v5 = contentRating;
  if (contentRating)
  {
    rank = [contentRating rank];
    ratingLabel = [v5 ratingLabel];
    v8 = +[BLItemContentRating stringForRatingSystem:](BLItemContentRating, "stringForRatingSystem:", [v5 ratingSystem]);
    ratingDescription = [v5 ratingDescription];
    if ([v8 length] && objc_msgSend(ratingLabel, "length"))
    {
      v10 = &stru_100125DB0;
      if (ratingDescription)
      {
        v10 = ratingDescription;
      }

      v11 = [NSString stringWithFormat:@"%@|%@|%ld|%@", v8, ratingLabel, rank, v10];
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