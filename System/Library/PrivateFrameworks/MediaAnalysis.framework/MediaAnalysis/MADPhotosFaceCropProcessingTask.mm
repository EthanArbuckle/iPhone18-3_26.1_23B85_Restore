@interface MADPhotosFaceCropProcessingTask
+ (id)taskWithPhotoLibrary:(id)library gallery:(id)gallery;
+ (id)taskWithPhotoLibrary:(id)library gallery:(id)gallery verifiedType:(int64_t)type limitPerPerson:(int)person ignoreRejections:(BOOL)rejections;
- (MADPhotosFaceCropProcessingTask)initWithPhotoLibrary:(id)library gallery:(id)gallery;
- (MADPhotosFaceCropProcessingTask)initWithPhotoLibrary:(id)library gallery:(id)gallery verifiedType:(int64_t)type limitPerPerson:(int)person ignoreRejections:(BOOL)rejections;
- (void)_processEntries;
- (void)addFaceCrop:(id)crop;
- (void)process;
@end

@implementation MADPhotosFaceCropProcessingTask

- (MADPhotosFaceCropProcessingTask)initWithPhotoLibrary:(id)library gallery:(id)gallery
{
  libraryCopy = library;
  galleryCopy = gallery;
  v14.receiver = self;
  v14.super_class = MADPhotosFaceCropProcessingTask;
  v9 = [(MADProcessingTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_gallery, gallery);
    v11 = +[NSMutableArray array];
    faceCropEntries = v10->_faceCropEntries;
    v10->_faceCropEntries = v11;
  }

  return v10;
}

- (MADPhotosFaceCropProcessingTask)initWithPhotoLibrary:(id)library gallery:(id)gallery verifiedType:(int64_t)type limitPerPerson:(int)person ignoreRejections:(BOOL)rejections
{
  libraryCopy = library;
  galleryCopy = gallery;
  v22.receiver = self;
  v22.super_class = MADPhotosFaceCropProcessingTask;
  v15 = [(MADProcessingTask *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibrary, library);
    objc_storeStrong(&v16->_gallery, gallery);
    v16->_verifiedType = type;
    v16->_limitPerPerson = person;
    v17 = +[NSMutableArray array];
    faceCropEntries = v16->_faceCropEntries;
    v16->_faceCropEntries = v17;

    v16->_ignoreRejections = rejections;
    if (v16->_limitPerPerson)
    {
      v19 = +[NSCountedSet set];
      processLimitTracker = v16->_processLimitTracker;
      v16->_processLimitTracker = v19;
    }
  }

  return v16;
}

+ (id)taskWithPhotoLibrary:(id)library gallery:(id)gallery
{
  galleryCopy = gallery;
  libraryCopy = library;
  v8 = [[self alloc] initWithPhotoLibrary:libraryCopy gallery:galleryCopy];

  return v8;
}

+ (id)taskWithPhotoLibrary:(id)library gallery:(id)gallery verifiedType:(int64_t)type limitPerPerson:(int)person ignoreRejections:(BOOL)rejections
{
  rejectionsCopy = rejections;
  v8 = *&person;
  galleryCopy = gallery;
  libraryCopy = library;
  v14 = [[self alloc] initWithPhotoLibrary:libraryCopy gallery:galleryCopy verifiedType:type limitPerPerson:v8 ignoreRejections:rejectionsCopy];

  return v14;
}

- (void)addFaceCrop:(id)crop
{
  cropCopy = crop;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  librarySpecificFetchOptions = self->_faceCropEntries;
  v6 = [(NSMutableArray *)librarySpecificFetchOptions countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v43 != v8)
      {
        objc_enumerationMutation(librarySpecificFetchOptions);
      }

      faceCrop = [*(*(&v42 + 1) + 8 * v9) faceCrop];
      localIdentifier = [faceCrop localIdentifier];
      localIdentifier2 = [cropCopy localIdentifier];
      v13 = [localIdentifier isEqualToString:localIdentifier2];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)librarySpecificFetchOptions countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v15 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        localIdentifier3 = [cropCopy localIdentifier];
        *buf = 138412290;
        v47 = localIdentifier3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[FaceCrop][%@] Batch already contains facecrop; ignoring", buf, 0xCu);
        goto LABEL_37;
      }
    }

    goto LABEL_38;
  }

LABEL_9:

  if (!self->_ignoreRejections || [cropCopy type] != 2 && objc_msgSend(cropCopy, "type") != 4)
  {
    photoLibrary = [cropCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [(NSMutableArray *)librarySpecificFetchOptions setMinimumVerifiedFaceCount:1];
    v18 = [PHPerson fetchPersonForFaceCrop:cropCopy options:librarySpecificFetchOptions];
    localIdentifier3 = [v18 firstObject];

    if (self->_verifiedType)
    {
      v19 = localIdentifier3 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19 && [(NSMutableArray *)localIdentifier3 verifiedType]!= self->_verifiedType)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v34 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v16LocalIdentifier = [(NSMutableArray *)localIdentifier3 localIdentifier];
          verifiedType = [(NSMutableArray *)localIdentifier3 verifiedType];
          *buf = 138412546;
          v47 = v16LocalIdentifier;
          v48 = 2048;
          v49 = verifiedType;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[FaceCrop] Ignoring person (%@) of different verified type (%ld)", buf, 0x16u);
        }
      }

      goto LABEL_37;
    }

    processLimitTracker = self->_processLimitTracker;
    if (processLimitTracker && ([(NSMutableArray *)localIdentifier3 localIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = [(NSCountedSet *)processLimitTracker countForObject:v21], v23 = self->_limitPerPerson, v21, v22 >= v23))
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_37;
      }

      v37 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v37))
      {
        goto LABEL_37;
      }

      v16LocalIdentifier2 = [(NSMutableArray *)localIdentifier3 localIdentifier];
      v38 = self->_processLimitTracker;
      v16LocalIdentifier3 = [(NSMutableArray *)localIdentifier3 localIdentifier];
      v40 = [(NSCountedSet *)v38 countForObject:v16LocalIdentifier3];
      limitPerPerson = self->_limitPerPerson;
      *buf = 138412802;
      v47 = v16LocalIdentifier2;
      v48 = 2048;
      v49 = v40;
      v50 = 1024;
      v51 = limitPerPerson;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[FaceCrop] Over limit for person (%@) (%lu >= %d); ignoring additional facecrops", buf, 0x1Cu);
    }

    else
    {
      faceCropEntries = self->_faceCropEntries;
      v25 = [[MADPhotosFaceCropProcessingEntry alloc] initWithFaceCrop:cropCopy];
      [(NSMutableArray *)faceCropEntries addObject:v25];

      if (!self->_processLimitTracker)
      {
        goto LABEL_37;
      }

      v16LocalIdentifier4 = [(NSMutableArray *)localIdentifier3 localIdentifier];

      if (!v16LocalIdentifier4)
      {
        goto LABEL_37;
      }

      v27 = self->_processLimitTracker;
      v16LocalIdentifier5 = [(NSMutableArray *)localIdentifier3 localIdentifier];
      [(NSCountedSet *)v27 addObject:v16LocalIdentifier5];

      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_37;
      }

      v29 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_37;
      }

      v30 = self->_processLimitTracker;
      v16LocalIdentifier2 = [(NSMutableArray *)localIdentifier3 localIdentifier];
      v32 = [(NSCountedSet *)v30 countForObject:v16LocalIdentifier2];
      v16LocalIdentifier6 = [(NSMutableArray *)localIdentifier3 localIdentifier];
      *buf = 134218242;
      v47 = v32;
      v48 = 2112;
      v49 = v16LocalIdentifier6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[FaceCrop] Enrolled %lu facecrops for person (%@)", buf, 0x16u);
    }

LABEL_37:
    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v14 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      librarySpecificFetchOptions = [cropCopy localIdentifier];
      *buf = 138412290;
      v47 = librarySpecificFetchOptions;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[FaceCrop] Ignoring rejection type facecrop %@", buf, 0xCu);
LABEL_38:
    }
  }
}

- (void)_processEntries
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSMutableArray *)self->_faceCropEntries count];
      *buf = 67109120;
      LODWORD(v51) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[FaceCrop] Processing %d facecrops", buf, 8u);
    }
  }

  firstObject = [(NSMutableArray *)self->_faceCropEntries firstObject];
  faceCrop = [firstObject faceCrop];
  photoLibrary = [faceCrop photoLibrary];

  v42 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];
  v43 = photoLibrary;
  v8 = [[VCPFaceCropManager alloc] initWithPhotoLibrary:photoLibrary andContext:v42];
  v45 = +[NSMutableSet set];
  if ([(NSMutableArray *)self->_faceCropEntries count])
  {
    v10 = 0;
    type = VCPLogToOSLogType[3];
    *&v9 = 138412546;
    v41 = v9;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = +[VCPWatchdog sharedWatchdog];
      [v12 pet];

      cancelBlock = [(MADProcessingTask *)self cancelBlock];
      if (cancelBlock)
      {
        v14 = cancelBlock;
        cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
        v16 = cancelBlock2[2]();

        if (v16)
        {
          break;
        }
      }

      v17 = [(NSMutableArray *)self->_faceCropEntries objectAtIndexedSubscript:v10, v41];
      faceCrop2 = [v17 faceCrop];

      localIdentifier = [faceCrop2 localIdentifier];

      if (localIdentifier)
      {
        v48 = 0;
        v49 = 0;
        v20 = [v8 _processDirtyFaceCrop:faceCrop2 faceCropFaceLocalIdentifier:&v49 error:&v48];
        v21 = v49;
        v22 = v48;
        if ((v20 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier2 = [faceCrop2 localIdentifier];
          *buf = v41;
          v51 = localIdentifier2;
          v52 = 2112;
          v53 = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceCrop] Failed to process dirty facecrop %@ - %@", buf, 0x16u);
        }

        if (v21)
        {
          [v45 addObject:v21];
        }
      }

      objc_autoreleasePoolPop(v11);
      if (++v10 >= [(NSMutableArray *)self->_faceCropEntries count])
      {
        goto LABEL_22;
      }
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v24 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[FaceCrop] Processing canceled", buf, 2u);
      }
    }

    objc_autoreleasePoolPop(v11);
  }

LABEL_22:
  mad_unclusteredFacesFetchOptions = [v43 mad_unclusteredFacesFetchOptions];
  allObjects = [v45 allObjects];
  v27 = [PHFace fetchFacesWithLocalIdentifiers:allObjects options:mad_unclusteredFacesFetchOptions];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100120788;
  v47[3] = &unk_100285F90;
  v47[4] = self;
  v28 = objc_retainBlock(v47);
  v29 = +[MADVUUtilities sharedInstance];
  gallery = self->_gallery;
  v46 = 0;
  LODWORD(allObjects) = [v29 prepareClusteringWithFaces:v27 gallery:gallery cancelOrExtendTimeoutBlock:v28 error:&v46];
  v31 = v46;

  v32 = MediaAnalysisLogLevel();
  if (allObjects)
  {
    if (v32 >= 7)
    {
      v33 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v33))
      {
        v34 = [v27 count];
        *buf = 134217984;
        v51 = v34;
        v35 = "[FaceCrop] Added %lu faces to Gallery";
        v36 = v33;
        v37 = 12;
LABEL_29:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, v35, buf, v37);
      }
    }
  }

  else if (v32 >= 4)
  {
    v38 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v38))
    {
      v39 = [v27 count];
      *buf = 134218242;
      v51 = v39;
      v52 = 2112;
      v53 = v31;
      v35 = "[FaceCrop] Failed to add %lu faces to Gallery - %@";
      v36 = v38;
      v37 = 22;
      goto LABEL_29;
    }
  }

  v40 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v40 accumulateInt64Value:-[NSMutableArray count](self->_faceCropEntries forField:"count") andEvent:{@"NumberOfFacecropsAnalyzed", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];

  [(NSMutableArray *)self->_faceCropEntries removeAllObjects];
}

- (void)process
{
  v3 = objc_alloc_init(VCPTimeMeasurement);
  [v3 start];
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADPhotosFaceCropProcessingTask_Process", "", v18, 2u);
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  if (self->_limitPerPerson)
  {
    v9 = [NSSortDescriptor sortDescriptorWithKey:@"objectID" ascending:0];
    v19 = v9;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    [librarySpecificFetchOptions setInternalSortDescriptors:v10];
  }

  v11 = [PHFaceCrop fetchFaceCropsNeedingFaceDetectionWithOptions:librarySpecificFetchOptions];
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v11 objectAtIndexedSubscript:v12];
      [(MADPhotosFaceCropProcessingTask *)self addFaceCrop:v14];

      if ([(MADPhotosFaceCropProcessingTask *)self count]>= 0x64)
      {
        [(MADPhotosFaceCropProcessingTask *)self _processEntries];
      }

      objc_autoreleasePoolPop(v13);
      ++v12;
    }

    while (v12 < [v11 count]);
  }

  if ([(MADPhotosFaceCropProcessingTask *)self count])
  {
    [(MADPhotosFaceCropProcessingTask *)self _processEntries];
  }

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v5, "MADPhotosFaceCropProcessingTask_Process", "", v18, 2u);
  }

  [v3 stop];
  v17 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v3 elapsedTimeSeconds];
  [v17 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

@end