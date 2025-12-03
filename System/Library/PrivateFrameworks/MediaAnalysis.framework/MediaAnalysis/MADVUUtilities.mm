@interface MADVUUtilities
+ (MADVUUtilities)sharedInstance;
+ (id)fetchKeyFaceLocalIdentifiersForPhotoLibrary:(id)library;
- (BOOL)_addFacesWithFaceBatch:(id)batch gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error;
- (BOOL)_removeObservationIDs:(id)ds fromGallery:(id)gallery;
- (BOOL)_resetObservationIDForFaces:(id)faces fromPhotoLibrary:(id)library;
- (BOOL)prepareClusteringWithFaces:(id)faces gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error;
- (BOOL)removeObservationsWithAssetLocalIdentifiers:(id)identifiers gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error;
- (BOOL)synchronizeVUWGallery:(id)gallery withPhotosLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block;
- (BOOL)updatePersonWithPhotosLibrary:(id)library gallery:(id)gallery entityIdentifier:(id)identifier entityClass:(int64_t)class observationIDs:(id)ds taggedPersonUUID:(id)d keyFaceLocalIdentifiers:(id)identifiers cancelOrExtendTimeoutBlock:(id)self0 error:(id *)self1;
- (BOOL)updatePersonWithSyndicationLibrary:(id)library gallery:(id)gallery entityIdentifier:(id)identifier entityClass:(int64_t)class observationIDs:(id)ds taggedPersonUUID:(id)d cancelOrExtendTimeoutBlock:(id)block error:(id *)self0;
- (MADVUUtilities)init;
- (int)_fetchChangedPersonSinceChangeToken:(id)token photosLibrary:(id)library changedPersonLocalIdentifiers:(id *)identifiers changedFaceCropLocalIdentifiers:(id *)localIdentifiers latestChangeToken:(id *)changeToken cancelOrExtendTimeoutBlock:(id)block;
- (void)_dedupeGraphVerifiedPersonsForPerson:(id)person photoLibrary:(id)library;
- (void)_deleteUnverifiedPersonsWithZeroFaces:(id)faces;
@end

@implementation MADVUUtilities

- (MADVUUtilities)init
{
  v7.receiver = self;
  v7.super_class = MADVUUtilities;
  v2 = [(MADVUUtilities *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADVUUtilities", v3);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v4;
  }

  return v2;
}

+ (MADVUUtilities)sharedInstance
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&stru_100288120];

  return v5;
}

- (BOOL)_removeObservationIDs:(id)ds fromGallery:(id)gallery
{
  dsCopy = ds;
  galleryCopy = gallery;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 134217984;
      v19 = [dsCopy count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[GallerySync] Removing %lu observation(s) from Gallery", buf, 0xCu);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10018F430;
  v16[3] = &unk_100288168;
  v8 = dsCopy;
  v17 = v8;
  v9 = objc_retainBlock(v16);
  v15 = 0;
  v10 = [galleryCopy mutateAndReturnError:&v15 handler:v9];

  v11 = v15;
  if ((v10 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
  {
    v12 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = [v8 count];
      *buf = 134218242;
      v19 = v13;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[GallerySync] Failed to remove %lu observation from Gallery %@", buf, 0x16u);
    }
  }

  return v10;
}

- (BOOL)_resetObservationIDForFaces:(id)faces fromPhotoLibrary:(id)library
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10018F8C4;
  v14[3] = &unk_100285BC0;
  facesCopy = faces;
  v15 = facesCopy;
  v13 = 0;
  v6 = [library performChangesAndWait:v14 error:&v13];
  v7 = v13;
  v8 = MediaAnalysisLogLevel();
  if (v6)
  {
    if (v8 >= 7)
    {
      v9 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = [facesCopy count];
        *buf = 134217984;
        v17 = v10;
        v11 = "[GallerySync] Reset %lu vuObservationID(s) in Photos";
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, v11, buf, 0xCu);
      }
    }
  }

  else if (v8 >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v17 = v7;
      v11 = "[GallerySync] Failed to reset vuObservationID in Photos - %@";
      goto LABEL_8;
    }
  }

  return v6;
}

- (int)_fetchChangedPersonSinceChangeToken:(id)token photosLibrary:(id)library changedPersonLocalIdentifiers:(id *)identifiers changedFaceCropLocalIdentifiers:(id *)localIdentifiers latestChangeToken:(id *)changeToken cancelOrExtendTimeoutBlock:(id)block
{
  tokenCopy = token;
  libraryCopy = library;
  blockCopy = block;
  *identifiers = 0;
  *localIdentifiers = 0;
  *changeToken = 0;
  v15 = objc_alloc_init(PHPersistentChangeFetchRequest);
  [v15 setMaximumChangeThreshold:10000];
  [v15 setToken:tokenCopy];
  v51 = 0;
  v16 = [libraryCopy fetchPersistentChangesWithRequest:v15 error:&v51];
  v17 = v51;
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = [v17 description];
        *buf = 138412802;
        *&buf[4] = @"[GallerySync][PersonChangeToken]";
        *&buf[12] = 2112;
        *&buf[14] = tokenCopy;
        *&buf[22] = 2112;
        v53 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to fetch Photos changes since %@ (%@); falling back to full scan", buf, 0x20u);
      }
    }

    v20 = -23801;
  }

  else if ([v16 changeCount])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v21 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        changeCount = [v16 changeCount];
        *buf = 138412546;
        *&buf[4] = @"[GallerySync][PersonChangeToken]";
        *&buf[12] = 1024;
        *&buf[14] = changeCount;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Evaluating %d changes", buf, 0x12u);
      }
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_10018FF4C;
    v54 = sub_10018FF5C;
    v55 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_10018FF4C;
    v45 = sub_10018FF5C;
    v46 = +[NSMutableSet set];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_10018FF4C;
    v39 = sub_10018FF5C;
    v40 = +[NSMutableSet set];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10018FF64;
    v28[3] = &unk_1002881B8;
    v29 = @"[GallerySync][PersonChangeToken]";
    v30 = blockCopy;
    v31 = &v47;
    v32 = buf;
    v33 = &v41;
    v34 = &v35;
    [v16 enumeratePHChangesWithBlock:v28];
    v23 = v36[5];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001903EC;
    v26[3] = &unk_1002881E0;
    v27 = @"[GallerySync][PersonChangeToken]";
    [v23 enumerateObjectsUsingBlock:v26];
    v20 = *(v48 + 6);
    if (!v20)
    {
      *identifiers = v42[5];
      *localIdentifiers = v36[5];
      *changeToken = *(*&buf[8] + 40);
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_deleteUnverifiedPersonsWithZeroFaces:(id)faces
{
  facesCopy = faces;
  if ([facesCopy count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412546;
        v24 = @"[GallerySync][RemoveUnverifiedPerson]";
        v25 = 2048;
        v26 = [facesCopy count];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Deleting %lu 0-face unverified persons", buf, 0x16u);
      }
    }

    firstObject = [facesCopy firstObject];
    photoLibrary = [firstObject photoLibrary];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100190770;
    v20[3] = &unk_100288208;
    v8 = facesCopy;
    v21 = v8;
    v22 = a2;
    v19 = 0;
    v9 = [photoLibrary performChangesAndWait:v20 error:&v19];
    v10 = v19;

    v11 = MediaAnalysisLogLevel();
    if (v9)
    {
      if (v11 < 7)
      {
        goto LABEL_13;
      }

      v12 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_13;
      }

      v13 = [v8 count];
      *buf = 138412546;
      v24 = @"[GallerySync][RemoveUnverifiedPerson]";
      v25 = 2048;
      v26 = v13;
      v14 = "%@ Deleted %lu 0-face unverified persons";
      v15 = v12;
      v16 = 22;
    }

    else
    {
      if (v11 < 3)
      {
        goto LABEL_13;
      }

      v17 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v17))
      {
        goto LABEL_13;
      }

      v18 = [v8 count];
      *buf = 138412802;
      v24 = @"[GallerySync][RemoveUnverifiedPerson]";
      v25 = 2048;
      v26 = v18;
      v27 = 2112;
      v28 = v10;
      v14 = "%@ Failed to delete %lu 0-face unverified persons - %@";
      v15 = v17;
      v16 = 32;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v15, v14, buf, v16);
LABEL_13:
  }
}

- (BOOL)synchronizeVUWGallery:(id)gallery withPhotosLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block
{
  galleryCopy = gallery;
  libraryCopy = library;
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  vcp_description = [libraryCopy vcp_description];
  v12 = [NSString stringWithFormat:@"[GallerySync] Syncing VU Service w PL %@", vcp_description];

  v13 = +[MADStateHandler sharedStateHandler];
  [v13 addBreadcrumb:{@"%@", v12}];

  operationQueue = self->_operationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001909CC;
  block[3] = &unk_100288398;
  v20 = libraryCopy;
  selfCopy = self;
  v23 = blockCopy;
  v24 = &v25;
  v22 = galleryCopy;
  v15 = galleryCopy;
  v16 = blockCopy;
  v17 = libraryCopy;
  dispatch_sync(operationQueue, block);
  LOBYTE(blockCopy) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return blockCopy;
}

- (BOOL)_addFacesWithFaceBatch:(id)batch gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error
{
  batchCopy = batch;
  galleryCopy = gallery;
  blockCopy = block;
  firstObject = [batchCopy firstObject];
  photoLibrary = [firstObject photoLibrary];

  v35 = galleryCopy;
  if (photoLibrary)
  {
    errorCopy = error;
    vcp_description = [photoLibrary vcp_description];
    v15 = [NSString stringWithFormat:@"[GalleryAddFace][%@]", vcp_description];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412546;
        v47 = v15;
        v48 = 2048;
        v49 = [batchCopy count];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Adding %lu faces to Gallery", buf, 0x16u);
      }
    }

    v45 = PHAssetPropertySetImport;
    v17 = [NSArray arrayWithObjects:&v45 count:1];
    v18 = [PHAsset fetchAssetsGroupedByFaceUUIDForFaces:batchCopy fetchPropertySets:v17];
    if ([v18 count])
    {
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
      allValues = [v18 allValues];
      v21 = [PHMoment fetchMomentUUIDByAssetUUIDForAssets:allValues options:librarySpecificFetchOptions];
    }

    else
    {
      v21 = 0;
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10019901C;
    v37[3] = &unk_1002883E8;
    v27 = photoLibrary;
    v38 = v27;
    v39 = batchCopy;
    v33 = blockCopy;
    v44 = blockCopy;
    firstObject3 = v15;
    v40 = firstObject3;
    v25 = v18;
    v41 = v25;
    v28 = v21;
    v42 = v28;
    v43 = galleryCopy;
    v29 = objc_retainBlock(v37);
    v36 = 0;
    v26 = [v27 performCancellableChangesAndWait:v29 error:&v36];
    v30 = v36;
    if ((v26 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v31 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          *buf = 138412546;
          v47 = firstObject3;
          v48 = 2112;
          v49 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Failed to update face ObservationIDs from Gallery to Photos - %@", buf, 0x16u);
        }
      }

      if (errorCopy)
      {
        *errorCopy = [v30 copy];
      }
    }

    blockCopy = v33;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        firstObject2 = [batchCopy firstObject];
        *buf = 138412290;
        v47 = firstObject2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[GalleryAddFace] Nil photo library for face %@", buf, 0xCu);
      }
    }

    if (!error)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v50 = NSLocalizedDescriptionKey;
    firstObject3 = [batchCopy firstObject];
    v17 = [NSString stringWithFormat:@"[GalleryAddFace] Nil photo library for face %@", firstObject3];
    v51 = v17;
    v25 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v25];
    *error = v26 = 0;
  }

LABEL_21:
  return v26;
}

- (BOOL)prepareClusteringWithFaces:(id)faces gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error
{
  facesCopy = faces;
  galleryCopy = gallery;
  blockCopy = block;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10018FF4C;
  v34 = sub_10018FF5C;
  v35 = 0;
  operationQueue = self->_operationQueue;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10019A4C4;
  v23 = &unk_100288410;
  v14 = facesCopy;
  v24 = v14;
  v15 = blockCopy;
  v27 = v15;
  v28 = &v30;
  selfCopy = self;
  v16 = galleryCopy;
  v26 = v16;
  v29 = &v36;
  dispatch_sync(operationQueue, &v20);
  if (error)
  {
    v17 = v31[5];
    if (v17)
    {
      *error = [v17 copy];
    }
  }

  v18 = *(v37 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v18;
}

- (BOOL)removeObservationsWithAssetLocalIdentifiers:(id)identifiers gallery:(id)gallery cancelOrExtendTimeoutBlock:(id)block error:(id *)error
{
  identifiersCopy = identifiers;
  galleryCopy = gallery;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  operationQueue = self->_operationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019AA48;
  v15[3] = &unk_100288438;
  v16 = identifiersCopy;
  v17 = galleryCopy;
  v18 = &v20;
  errorCopy = error;
  v12 = galleryCopy;
  v13 = identifiersCopy;
  dispatch_sync(operationQueue, v15);
  LOBYTE(operationQueue) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return operationQueue;
}

- (void)_dedupeGraphVerifiedPersonsForPerson:(id)person photoLibrary:(id)library
{
  personCopy = person;
  libraryCopy = library;
  mad_allPersonsFetchOptions = [libraryCopy mad_allPersonsFetchOptions];
  v66 = personCopy;
  v8 = [NSArray arrayWithObjects:&v66 count:1];
  v9 = [PHPerson fetchPersonsWithLocalIdentifiers:v8 options:mad_allPersonsFetchOptions];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    if ([firstObject verifiedType] == 1 || objc_msgSend(firstObject, "verifiedType") == 2)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v62 = personCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[VUDedupe] Checking person %@", buf, 0xCu);
        }
      }

      mad_allFacesFetchOptions = [libraryCopy mad_allFacesFetchOptions];
      v13 = [NSPredicate predicateWithFormat:@"(trainingType = %d) || (trainingType = %d)", 1, 5];
      [mad_allFacesFetchOptions setInternalPredicate:v13];

      v65[0] = PHFacePropertySetIdentifier;
      v65[1] = PHFacePropertySetPersonBuilder;
      v14 = [NSArray arrayWithObjects:v65 count:2];
      [mad_allFacesFetchOptions setFetchPropertySets:v14];

      v15 = [PHFace fetchFacesForPerson:firstObject options:mad_allFacesFetchOptions];
      if (![v15 count])
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v41 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v41))
          {
            *buf = 138412290;
            v62 = personCopy;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[VUDedupe] Person has no training face %@; ignoring", buf, 0xCu);
          }
        }

        goto LABEL_44;
      }

      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      v17 = [PHFaceCrop fetchFaceCropByFaceLocalIdentifierForFaces:v15 fetchOptions:librarySpecificFetchOptions];
      allValues = [v17 allValues];
      if (![allValues count])
      {
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v47 = v17;
      v48 = librarySpecificFetchOptions;
      v49 = v15;
      v50 = mad_allFacesFetchOptions;
      v51 = firstObject;
      v52 = personCopy;
      v53 = libraryCopy;
      v19 = +[NSMutableArray array];
      v20 = +[NSMutableArray array];
      if ([allValues count])
      {
        v21 = 0;
        do
        {
          v22 = objc_autoreleasePoolPush();
          v23 = [allValues objectAtIndexedSubscript:v21];
          v24 = [PHPerson fetchPersonForFaceCrop:v23 options:mad_allPersonsFetchOptions];
          firstObject2 = [v24 firstObject];

          verifiedType = [firstObject2 verifiedType];
          v27 = v19;
          if (verifiedType == 1 || (v28 = [firstObject2 verifiedType], v27 = v20, v28 == 2))
          {
            [v27 addObject:firstObject2];
          }

          objc_autoreleasePoolPop(v22);
          ++v21;
        }

        while (v21 < [allValues count]);
      }

      v29 = [v19 count];
      v30 = [v20 count];
      if (v29)
      {
        mad_allFacesFetchOptions = v50;
        if (v30)
        {
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10019B684;
          v58[3] = &unk_100282F50;
          v31 = &v59;
          v32 = v19;
          v59 = v32;
          v33 = v20;
          v60 = v33;
          v57 = 0;
          v34 = [v53 performChangesAndWait:v58 error:&v57];
          v35 = v57;
          v36 = MediaAnalysisLogLevel();
          if (v34)
          {
            if (v36 < 6)
            {
              goto LABEL_40;
            }

            v37 = VCPLogToOSLogType[6];
            if (!os_log_type_enabled(&_os_log_default, v37))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v62 = v33;
            v63 = 2112;
            v64 = v32;
            v38 = "[VUDedupe] Deduped graph-verified persons %@ with user-verified persons %@";
          }

          else
          {
            if (v36 < 3)
            {
              goto LABEL_40;
            }

            v37 = VCPLogToOSLogType[3];
            if (!os_log_type_enabled(&_os_log_default, v37))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v62 = v33;
            v63 = 2112;
            v64 = v32;
            v38 = "[VUDedupe] Failed to dedupe graph-verified persons %@ for user-verified persons %@";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, v38, buf, 0x16u);
LABEL_40:

          goto LABEL_41;
        }
      }

      else
      {
        mad_allFacesFetchOptions = v50;
        if (v30 >= 2)
        {
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_10019B81C;
          v55[3] = &unk_100285BC0;
          v31 = &v56;
          v42 = v20;
          v56 = v42;
          v54 = 0;
          v43 = [v53 performChangesAndWait:v55 error:&v54];
          v35 = v54;
          v44 = MediaAnalysisLogLevel();
          if (v43)
          {
            if (v44 < 6)
            {
              goto LABEL_41;
            }

            v45 = VCPLogToOSLogType[6];
            if (!os_log_type_enabled(&_os_log_default, v45))
            {
              goto LABEL_41;
            }

            *buf = 138412546;
            v62 = v42;
            v63 = 2112;
            v64 = v52;
            v46 = "[VUDedupe] Deduped graph-verified persons %@ for graph verified person %@";
          }

          else
          {
            if (v44 < 3)
            {
              goto LABEL_41;
            }

            v45 = VCPLogToOSLogType[3];
            if (!os_log_type_enabled(&_os_log_default, v45))
            {
              goto LABEL_41;
            }

            *buf = 138412546;
            v62 = v42;
            v63 = 2112;
            v64 = v52;
            v46 = "[VUDedupe] Failed to dedupe graph-verified persons %@ for graph verified person %@";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, v45, v46, buf, 0x16u);
LABEL_41:
        }
      }

      personCopy = v52;
      libraryCopy = v53;
      firstObject = v51;
      librarySpecificFetchOptions = v48;
      v15 = v49;
      v17 = v47;
      goto LABEL_43;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v39 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v39))
      {
        *buf = 138412290;
        v62 = personCopy;
        v40 = "[VUDedupe] Person %@ is not verified; ignoring";
        goto LABEL_30;
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v39 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v39))
    {
      *buf = 138412290;
      v62 = personCopy;
      v40 = "[VUDedupe] Failed to find person %@; ignoring";
LABEL_30:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v39, v40, buf, 0xCu);
    }
  }

LABEL_45:
}

- (BOOL)updatePersonWithPhotosLibrary:(id)library gallery:(id)gallery entityIdentifier:(id)identifier entityClass:(int64_t)class observationIDs:(id)ds taggedPersonUUID:(id)d keyFaceLocalIdentifiers:(id)identifiers cancelOrExtendTimeoutBlock:(id)self0 error:(id *)self1
{
  libraryCopy = library;
  galleryCopy = gallery;
  identifierCopy = identifier;
  dsCopy = ds;
  dCopy = d;
  identifiersCopy = identifiers;
  blockCopy = block;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  operationQueue = self->_operationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019BA18;
  block[3] = &unk_1002884B0;
  v34 = identifierCopy;
  v35 = dsCopy;
  v36 = libraryCopy;
  v37 = dCopy;
  v38 = galleryCopy;
  v39 = identifiersCopy;
  selfCopy = self;
  v41 = blockCopy;
  errorCopy = error;
  classCopy = class;
  v42 = &v45;
  v25 = identifiersCopy;
  v26 = galleryCopy;
  v27 = dCopy;
  v28 = libraryCopy;
  v29 = dsCopy;
  v30 = identifierCopy;
  v31 = blockCopy;
  dispatch_sync(operationQueue, block);
  LOBYTE(operationQueue) = *(v46 + 24);

  _Block_object_dispose(&v45, 8);
  return operationQueue;
}

- (BOOL)updatePersonWithSyndicationLibrary:(id)library gallery:(id)gallery entityIdentifier:(id)identifier entityClass:(int64_t)class observationIDs:(id)ds taggedPersonUUID:(id)d cancelOrExtendTimeoutBlock:(id)block error:(id *)self0
{
  libraryCopy = library;
  identifierCopy = identifier;
  dsCopy = ds;
  dCopy = d;
  blockCopy = block;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  operationQueue = self->_operationQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10019E788;
  v27[3] = &unk_1002884D8;
  v28 = dsCopy;
  v29 = identifierCopy;
  errorCopy = error;
  classCopy = class;
  v32 = blockCopy;
  v33 = &v36;
  v30 = dCopy;
  v31 = libraryCopy;
  v21 = libraryCopy;
  v22 = dCopy;
  v23 = identifierCopy;
  v24 = dsCopy;
  v25 = blockCopy;
  dispatch_sync(operationQueue, v27);
  LOBYTE(dCopy) = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  return dCopy;
}

+ (id)fetchKeyFaceLocalIdentifiersForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v23 = [libraryCopy mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&off_1002965D8];
  v4 = [PHPerson fetchPersonsWithOptions:?];
  mad_allFacesFetchOptions = [libraryCopy mad_allFacesFetchOptions];
  [mad_allFacesFetchOptions setIncludeNonvisibleFaces:0];
  v22 = v4;
  v6 = [PHFace fetchKeyFaceByPersonLocalIdentifierForPersons:v4 options:mad_allFacesFetchOptions];
  v7 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v6;
  allValues = [v6 allValues];
  v9 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        localIdentifier = [v13 localIdentifier];

        if (localIdentifier)
        {
          localIdentifier2 = [v13 localIdentifier];
          [v7 addObject:localIdentifier2];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v17 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      v18 = [v7 count];
      v19 = [v22 count];
      *buf = 134218240;
      v29 = v18;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[Fetch KeyFaces] Fetched %lu key face(s) for %lu verified person(s)", buf, 0x16u);
    }
  }

  return v7;
}

@end