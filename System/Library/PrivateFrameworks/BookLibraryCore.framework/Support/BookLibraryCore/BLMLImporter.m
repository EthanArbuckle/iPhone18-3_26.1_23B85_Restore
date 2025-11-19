@interface BLMLImporter
+ (id)deviceMLImporter;
- (BLMLImporter)init;
- (BOOL)_addLibraryItems:(id)a3 toMusicLibrary:(id)a4 itemPids:(int64_t *)a5 error:(id *)a6;
- (BOOL)_removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4 inLibrary:(id)a5;
- (BOOL)addLibraryItems:(id)a3 error:(id *)a4;
- (int64_t)addLibraryItem:(id)a3 error:(id *)a4;
- (void)_commitScheduledLibraryItems;
- (void)_dispatchAsync:(id)a3;
- (void)_setDownloadPropertiesForTrack:(id)a3 usingLibraryItem:(id)a4;
- (void)commitScheduledLibraryItems;
- (void)dealloc;
- (void)deleteAllOTATracks;
- (void)removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4;
- (void)removeDownloadsWithIdentifiers:(id)a3 canceled:(BOOL)a4;
- (void)scheduleLibraryItem:(id)a3;
- (void)scheduleLibraryItems:(id)a3;
- (void)setAppleIdentifier:(id)a3 forAccountIdentifier:(unint64_t)a4;
@end

@implementation BLMLImporter

- (BLMLImporter)init
{
  if (MGGetSInt32Answer() == 4)
  {

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BLMLImporter;
    v3 = [(BLMLImporter *)&v9 init];
    if (v3)
    {
      v4 = dispatch_queue_create("com.apple.bookassetd.BLMLImporter", 0);
      dispatchQueue = v3->_dispatchQueue;
      v3->_dispatchQueue = v4;

      v6 = objc_alloc_init(BLOperationQueue);
      operationQueue = v3->_operationQueue;
      v3->_operationQueue = v6;

      [(BLOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:3];
    }
  }

  return v3;
}

- (void)dealloc
{
  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
  }

  operationQueue = self->_operationQueue;
  if (operationQueue)
  {
    [(BLOperationQueue *)operationQueue cancelAllOperations];
  }

  v5.receiver = self;
  v5.super_class = BLMLImporter;
  [(BLMLImporter *)&v5 dealloc];
}

+ (id)deviceMLImporter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A6B0;
  block[3] = &unk_10011D1C8;
  block[4] = a1;
  if (qword_10013EBE0 != -1)
  {
    dispatch_once(&qword_10013EBE0, block);
  }

  v2 = qword_10013EBD8;

  return v2;
}

- (int64_t)addLibraryItem:(id)a3 error:(id *)a4
{
  v10 = 0;
  v11 = a3;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = +[ML3MusicLibrary autoupdatingSharedLibrary];

  [(BLMLImporter *)self _addLibraryItems:v7 toMusicLibrary:v8 itemPids:&v10 error:a4];
  return v10;
}

- (BOOL)addLibraryItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  LOBYTE(a4) = [(BLMLImporter *)self _addLibraryItems:v6 toMusicLibrary:v7 itemPids:0 error:a4];

  return a4;
}

- (void)commitScheduledLibraryItems
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006A89C;
  v2[3] = &unk_10011CFE8;
  v2[4] = self;
  [(BLMLImporter *)self _dispatchAsync:v2];
}

- (void)deleteAllOTATracks
{
  v3 = BLServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: Deleting all OTA tracks", &v5, 0xCu);
  }

  [(BLMLImporter *)self _dispatchAsync:&stru_10011D318];
}

- (void)removeDownloadsWithIdentifiers:(id)a3 canceled:(BOOL)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AB24;
  v7[3] = &unk_10011D390;
  v8 = a3;
  v9 = self;
  v10 = a4;
  v6 = v8;
  [(BLMLImporter *)self _dispatchAsync:v7];
}

- (void)removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006AD90;
  v4[3] = &unk_10011D3E0;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  [(BLMLImporter *)self _dispatchAsync:v4];
}

- (void)scheduleLibraryItem:(id)a3
{
  v4 = a3;
  v5 = [[NSArray alloc] initWithObjects:{v4, 0}];

  [(BLMLImporter *)self scheduleLibraryItems:v5];
}

- (void)scheduleLibraryItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = BLServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = v6;
      *buf = 138412546;
      v11 = v6;
      v12 = 2048;
      v13 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Scheduling %lu iPod library items", buf, 0x16u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006B024;
    v8[3] = &unk_10011D1A8;
    v8[4] = self;
    v9 = v4;
    [(BLMLImporter *)self _dispatchAsync:v8];
  }
}

- (void)setAppleIdentifier:(id)a3 forAccountIdentifier:(unint64_t)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B274;
  v7[3] = &unk_10011D408;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  [(BLMLImporter *)self _dispatchAsync:v7];
}

- (BOOL)_addLibraryItems:(id)a3 toMusicLibrary:(id)a4 itemPids:(int64_t *)a5 error:(id *)a6
{
  v7 = a3;
  v93 = a4;
  v103 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v109;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v109 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v108 + 1) + 8 * i);
        v13 = [v12 itemMetadata];
        v14 = [BLMLImporterItem mediaTypeForStoreDownload:v13];

        v15 = [v12 libraryPersistentIdentifier];
        v16 = BLServiceLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          *buf = 138412546;
          v113 = v17;
          v114 = 2048;
          *v115 = v15;
          v18 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: importing item with existing library pid %lld", buf, 0x16u);
        }

        if (v15)
        {
          v19 = v14 == 8;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v20 = BLServiceLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = objc_opt_class();
            *buf = 138412546;
            v113 = v21;
            v114 = 2048;
            *v115 = v15;
            v22 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@: skipping import of item with existing library pid %lld", buf, 0x16u);
          }
        }

        else
        {
          [v103 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
    }

    while (v9);
  }

  v23 = obj;

  v24 = v103;
  if ([v103 count])
  {
    v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
    v95 = objc_alloc_init(BLML3TrackImporter);
    v26 = [(BLML3TrackImporter *)v95 importLibraryItems:v103 toMusicLibrary:v93 importedItemPids:v25];
    v27 = BLServiceLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = "failed";
      if (v26)
      {
        v29 = "succeeded";
      }

      *buf = 138412546;
      v113 = v28;
      v114 = 2080;
      *v115 = v29;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@: import %s", buf, 0x16u);
    }

    if (!v26)
    {
LABEL_87:
      v23 = obj;
      goto LABEL_89;
    }

    if ([v103 count])
    {
      v31 = 0;
      do
      {
        v32 = [v103 objectAtIndex:v31];
        v33 = [v25 objectAtIndex:v31];
        [v32 setLibraryPersistentIdentifier:{objc_msgSend(v33, "longLongValue")}];

        ++v31;
      }

      while ([v103 count] > v31);
    }

    v23 = obj;
  }

  v94 = objc_opt_new();
  v95 = objc_opt_new();
  if ([v23 count])
  {
    v34 = 0;
    v35 = ML3TrackPropertyLocationFileName;
    v36 = ML3TrackPropertyBaseLocationID;
    v37 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v38 = [v23 objectAtIndex:v34];
      v39 = [v38 itemMediaPath];
      v40 = [v38 libraryPersistentIdentifier];
      v41 = v40;
      if (a5)
      {
        a5[v34] = v40;
      }

      v99 = v38;
      v42 = BLServiceLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        *buf = 138412802;
        v113 = v43;
        v114 = 1024;
        *v115 = v34;
        *&v115[4] = 2048;
        *&v115[6] = v41;
        v44 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%@: post process item %d. pid=%lld", buf, 0x1Cu);
      }

      v97 = v41;
      v45 = [[ML3Track alloc] initWithPersistentID:v41 inLibrary:v93];
      v101 = [v45 valueForProperty:v35];
      v46 = [v45 valueForProperty:v36];
      v96 = [v46 longLongValue];

      v47 = [v39 stringByDeletingLastPathComponent];
      v48 = [v47 lastPathComponent];

      v98 = v48;
      v49 = ML3BaseLocationIDFromMediaRelativePathInLibrary();
      v100 = [v45 valueForProperty:v37];
      v50 = [v100 longLongValue];
      v51 = BLServiceLog();
      v105 = v39;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        *buf = 138412802;
        v113 = v52;
        v114 = 2112;
        *v115 = v101;
        *&v115[8] = 2112;
        *&v115[10] = v100;
        v53 = v36;
        v54 = v35;
        v55 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@: existingPath=%@, existingFamilyAccoundID=%@", buf, 0x20u);

        v35 = v54;
        v36 = v53;
      }

      if (v39)
      {
        v56 = BLServiceLog();
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
        if (v96 <= v49 || v50)
        {
          v24 = v103;
          if (v57)
          {
            v65 = objc_opt_class();
            v66 = v65;
            v67 = [v45 persistentID];
            *buf = 138412546;
            v113 = v65;
            v114 = 2048;
            *v115 = v67;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@: Defering populating artwork for %lld", buf, 0x16u);
          }

          v60 = v99;
          [v94 addObject:v99];
          [(BLML3TrackImporter *)v95 addObject:v45];
          goto LABEL_52;
        }

        v24 = v103;
        if (v57)
        {
          v58 = objc_opt_class();
          *buf = 138412802;
          v113 = v58;
          v114 = 2048;
          *v115 = v97;
          *&v115[8] = 2112;
          *&v115[10] = v101;
          v59 = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@: Skipping existing track with location data: %lld: %@", buf, 0x20u);
        }

        v60 = v99;
        v23 = obj;
        if ([v99 isDownloading])
        {
          [(BLMLImporter *)self _setDownloadPropertiesForTrack:v45 usingLibraryItem:v99];
        }

        v61 = [NSSet setWithObject:v105];
        ML3DeleteAssetsAtPaths();
      }

      else
      {
        v62 = BLServiceLog();
        v24 = v103;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = objc_opt_class();
          *buf = 138412546;
          v113 = v63;
          v114 = 2048;
          *v115 = v97;
          v64 = v63;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%@: Skipping existing track, no location data: %lld", buf, 0x16u);
        }

        v60 = v99;
        if ([v99 isDownloading])
        {
          [(BLMLImporter *)self _setDownloadPropertiesForTrack:v45 usingLibraryItem:v99];
LABEL_52:
          v23 = obj;
          goto LABEL_53;
        }

        v23 = obj;
        if ([v99 updateType] != 2)
        {
          goto LABEL_53;
        }

        v61 = [v99 itemArtworkData];
        if ([v61 length])
        {
          [v45 populateArtworkCacheWithArtworkData:v61];
        }
      }

LABEL_53:
      v68 = BLServiceLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v113 = v97;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "inserted track id %lld", buf, 0xCu);
      }

      ++v34;
    }

    while ([v23 count] > v34);
  }

  v25 = v94;
  if ([v94 count])
  {
    v69 = 0;
    v102 = ML3TrackPropertyStoreFamilyAccountID;
    while (1)
    {
      v70 = [v25 objectAtIndex:v69];
      v71 = [(BLML3TrackImporter *)v95 objectAtIndex:v69];
      v72 = BLServiceLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v74 = v73;
        v75 = [v71 persistentID];
        *buf = 138412546;
        v113 = v73;
        v114 = 2048;
        *v115 = v75;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%@: Setting location data for track: %lld", buf, 0x16u);
      }

      v76 = [v70 itemArtworkData];
      if ([v76 length])
      {
        [v71 populateArtworkCacheWithArtworkData:v76];
      }

      objc_opt_class();
      v77 = [v70 itemMetadata];
      v78 = [v77 sinfs];
      v79 = BUDynamicCast();

      if ([v79 count])
      {
        v80 = [[BLDownloadDRM alloc] initWithSinfArray:v79];
      }

      else
      {
        v80 = 0;
      }

      v81 = [v70 protectionType];
      v82 = v81;
      if (v81 != 2 && v81 != 1)
      {
        if (v81 || !v80)
        {
          v82 = 0;
        }

        else
        {
          v82 = ([(BLDownloadDRM *)v80 isDRMFree]^ 1);
        }
      }

      v83 = [v70 itemMediaPath];
      [v71 populateLocationPropertiesWithPath:v83 protectionType:v82];

      if (!v80)
      {
        goto LABEL_85;
      }

      v84 = [(BLDownloadDRM *)v80 sinfsArray];
      if (!v84)
      {
        goto LABEL_85;
      }

      v85 = v84;
      objc_opt_class();
      v107 = 0;
      v86 = [v85 copyValueForField:4 error:&v107];
      v87 = v107;
      v88 = BUDynamicCast();

      if (!v88)
      {
        if (v87)
        {
          break;
        }
      }

      v24 = v103;
      if (v88)
      {
        [v71 setValue:v88 forProperty:v102];
        v85 = v88;
LABEL_84:
      }

LABEL_85:
      [(BLMLImporter *)self _setDownloadPropertiesForTrack:v71 usingLibraryItem:0];

      ++v69;
      v25 = v94;
      if (v69 >= [v94 count])
      {
        LOBYTE(v26) = 1;
        goto LABEL_87;
      }
    }

    v89 = BLServiceLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v113 = v87;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Error copying FamilyAccountID:  %@", buf, 0xCu);
    }

    v24 = v103;
    goto LABEL_84;
  }

  LOBYTE(v26) = 1;
LABEL_89:

  if (a6)
  {
    *a6 = 0;
  }

  return v26;
}

- (void)_commitScheduledLibraryItems
{
  if ([(NSMutableArray *)self->_scheduledItems count])
  {
    v3 = BLServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      scheduledItems = self->_scheduledItems;
      v6 = v4;
      v9 = 138412546;
      v10 = v4;
      v11 = 2048;
      v12 = [(NSMutableArray *)scheduledItems count];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: Adding %lu scheduled iPod library items", &v9, 0x16u);
    }

    [(BLMLImporter *)self addLibraryItems:self->_scheduledItems error:0];
    [(NSMutableArray *)self->_scheduledItems removeAllObjects];
  }

  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
    v8 = self->_scheduledItemTimer;
    self->_scheduledItemTimer = 0;
  }
}

- (void)_dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C0EC;
  v9[3] = &unk_10011D430;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);
}

- (BOOL)_removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4 inLibrary:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [[NSString alloc] initWithFormat:@"%lld", a3];
  v9 = ML3TrackPropertyDownloadIdentifier;
  v10 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:v8];
  v11 = [ML3Track anyInLibrary:v7 predicate:v10];
  if (v11)
  {
    v35[0] = ML3TrackPropertyLocationFileName;
    v35[1] = ML3TrackPropertyStoreSagaID;
    v35[2] = ML3TrackPropertyPurchaseHistoryID;
    v35[3] = ML3TrackPropertyStoreIsSubscription;
    v35[4] = ML3TrackPropertyIsRental;
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    [v11 getValues:&v32 forProperties:v35 count:5];
    v12 = v34;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 BOOLValue])
    {
      [v11 setValue:&__kCFBooleanFalse forProperty:ML3TrackPropertyIsOTAPurchased];
    }

    objc_opt_class();
    v13 = BUDynamicCast();
    if ([v13 length] || *(&v32 + 1) && objc_msgSend(*(&v32 + 1), "longLongValue") || v33 && objc_msgSend(v33, "longLongValue") || *(&v33 + 1) && (objc_msgSend(*(&v33 + 1), "BOOLValue") & 1) != 0)
    {
      v29 = v8;
      v14 = v12;
      v15 = v13;
      v16 = v7;
      v17 = v5;
      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = v19;
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = [v11 persistentID];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@: Removing download properties from iPod library: %lld", buf, 0x16u);
      }

      *buf = v9;
      *&buf[8] = ML3TrackPropertyNeedsRestore;
      v30 = unk_10011D450;
      [v11 setValues:&v30 forProperties:buf count:2];
      if (v17)
      {
        [v11 setValue:&off_100129830 forProperty:ML3EntityPropertyKeepLocal];
      }

      for (i = 8; i != -8; i -= 8)
      {
      }

      v22 = 8;
      v7 = v16;
      do
      {

        v22 -= 8;
      }

      while (v22 != -8);
      v23 = 1;
      v13 = v15;
      v12 = v14;
      v8 = v29;
    }

    else
    {
      v26 = BLServiceLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = v27;
        *buf = 138412546;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = [v11 persistentID];
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@: Deleting download from iPod library: %lld", buf, 0x16u);
      }

      v23 = [v11 deleteFromLibrary];
    }

    for (j = 4; j != -1; --j)
    {
    }
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_setDownloadPropertiesForTrack:(id)a3 usingLibraryItem:(id)a4
{
  v5 = a3;
  v6 = [a4 itemDownloadIdentifier];
  v11[0] = v6;
  v11[1] = &__kCFBooleanFalse;
  v10[0] = ML3TrackPropertyDownloadIdentifier;
  v10[1] = ML3TrackPropertyNeedsRestore;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setValues:v11 forProperties:v10 count:v7];
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

@end