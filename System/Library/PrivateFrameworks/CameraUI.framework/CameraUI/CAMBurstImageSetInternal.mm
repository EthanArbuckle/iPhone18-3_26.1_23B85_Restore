@interface CAMBurstImageSetInternal
+ (id)defaultVersionString;
- (BOOL)isAction;
- (BOOL)isFaceDetectionForced;
- (BOOL)isPortrait;
- (CAMBurstImageSetInternal)initWithOptions:(id)options;
- (float)computeActionSelectionThreshold;
- (float)computeBeginningVsEndAEMatrixDiffVsAverageAdjacent;
- (float)computeCameraTravelDistance;
- (id)bestImageIdentifiers;
- (id)burstDocumentDirectory;
- (id)findBestImage:(id)image useActionScores:(BOOL)scores;
- (id)imageClusterForIdentifier:(id)identifier;
- (int)computeEmotion:(id)emotion;
- (void)addImageFromIOSurface:(__IOSurface *)surface properties:(id)properties identifier:(id)identifier completionBlock:(id)block;
- (void)addYUVImage:(id)image properties:(id)properties identifier:(id)identifier imageProps:(id)props completionBlock:(id)block;
- (void)computeAllImageScores;
- (void)dealloc;
- (void)performEmotionalRejectionOnCluster:(id)cluster;
- (void)processClusters:(BOOL)clusters;
- (void)selectCoverPhotoFromMultiple:(id)multiple burstSize:(int)size;
@end

@implementation CAMBurstImageSetInternal

+ (id)defaultVersionString
{
  v2 = kCAMBurstImageSet_VersionString_2[0];
  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v4 = [v3 objectForKey:kCAMBurstUseVersion];
  if (v4 && [v4 intValue] > 1)
  {
    return kCAMBurstImageSet_VersionString_2[0];
  }

  return v2;
}

- (id)burstDocumentDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  v4 = [objc_msgSend(@"/var/mobile/Library/Caches/com.apple.camera" stringByAppendingPathComponent:{@"burstSets", "stringByAppendingPathComponent:", -[CAMBurstImageSetInternal burstId](self, "burstId")}];
  [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v6];
  return v4;
}

- (CAMBurstImageSetInternal)initWithOptions:(id)options
{
  v42 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CAMBurstImageSetInternal;
  v4 = [(CAMBurstImageSetInternal *)&v37 init];
  if (v4)
  {
    v4->dq = FigDispatchQueueCreateWithPriority();
    v4->clusterArray = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v4->temporalOrder = 0;
    v4->burstLogFileHandle = 0;
    [(CAMBurstImageSetInternal *)v4 setVersionString:+[CAMBurstImageSetInternal defaultVersionString]];
    if (options)
    {
      v5 = [options objectForKey:kCAMBurstImageSetInit_Version[0]];
      if (v5)
      {
        if ([v5 isEqualToString:kCAMBurstImageSetVersion_Latest[0]])
        {
          [(CAMBurstImageSetInternal *)v4 setVersionString:kCAMBurstImageSet_VersionString_2[0]];
        }
      }
    }

    versionString = [(CAMBurstImageSetInternal *)v4 versionString];
    if ([(NSString *)versionString isEqualToString:kCAMBurstImageSet_VersionString_2[0]])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [(CAMBurstImageSetInternal *)v4 setVersion:v7];
    v4->faceAnalysisContext = [[CAMBurstImageFaceAnalysisContext alloc] initWithVersion:[(CAMBurstImageSetInternal *)v4 versionString]];
    v4->faceIDCounts = [MEMORY[0x1E696AB50] setWithCapacity:0];
    v4->allImageIdentifiers = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v4->actionClassifier = [[CAMBurstActionClassifier alloc] initWithVersion:[(CAMBurstImageSetInternal *)v4 version]];
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v4->bestImageIdentifiersArray = 0;
    v4->statsByImageIdentifier = v8;
    v4->clusterByImageIdentifier = 0;
    v4->burstLogFileName = 0;
    v4->burstLogFileHandle = 0;
    v4->maxNumPendingFrames = 4;
    v4->enableAnalysis = 1;
    v4->dummyAnalysisCount = 0;
    *&v4->enableFaceCore = 1;
    v4->burstCoverSelection = 0;
    v4->curClusterIndexToProcess = 0;
    *&v4->isAction = 0;
    *uu = 0;
    v41 = 0;
    memset(out, 0, 37);
    MEMORY[0x1A58FAD80](uu);
    uuid_unparse(uu, out);
    -[CAMBurstImageSetInternal setBurstId:](v4, "setBurstId:", [MEMORY[0x1E696AEC0] stringWithCString:out encoding:1]);
    v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v10 = [v9 objectForKey:kCAMBurstMaxNumPendingFrames];
    if (v10)
    {
      v4->maxNumPendingFrames = [v10 intValue];
    }

    v11 = [v9 objectForKey:kCAMBurstDisableAnalysis];
    if (v11)
    {
      v4->enableAnalysis = [v11 intValue] == 0;
    }

    v12 = [v9 objectForKey:kCAMBurstForceFaceDetection];
    if (v12)
    {
      -[CAMBurstImageFaceAnalysisContext setForceFaceDetectionEnable:](v4->faceAnalysisContext, "setForceFaceDetectionEnable:", [v12 intValue] != 0);
    }

    v13 = [v9 objectForKey:kCAMBurstDisableFaceCore];
    if (v13)
    {
      v4->enableFaceCore = [v13 intValue] == 0;
    }

    v14 = [v9 objectForKey:kCAMBurstDummyAnalysis];
    if (v14)
    {
      v4->dummyAnalysisCount = [v14 intValue];
    }

    v15 = [v9 objectForKey:kCAMBurstUseFixedImage];
    v16 = [v9 objectForKey:kCAMBurstFixedImageFilename];
    v4->overrideImage = 0;
    v4->overrideProps = 0;
    if ([v15 intValue])
    {
      if (v16)
      {
        v17 = [objc_msgSend(@"/var/mobile/Library/Caches/com.apple.camera" stringByAppendingPathComponent:{v16), "UTF8String"}];
        v18 = strlen(v17);
        v19 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], v17, v18, 0);
        if (v19)
        {
          v20 = v19;
          v21 = CGImageSourceCreateWithURL(v19, 0);
          CFRelease(v20);
          if (v21)
          {
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v21, 0, 0);
            v23 = CGImageSourceCopyPropertiesAtIndex(v21, 0, 0);
            CFRelease(v21);
            if (ImageAtIndex)
            {
              v4->overrideImage = [[CAMBurstYUVImage alloc] initWithCGImage:ImageAtIndex maxDimension:852];
              if (v23)
              {
                v4->overrideProps = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v23];
              }

              CGImageRelease(ImageAtIndex);
            }

            if (v23)
            {
              CFRelease(v23);
            }
          }
        }
      }
    }

    v24 = [v9 objectForKey:kCAMBurstDumpYUV];
    if (v24 || (v24 = [v9 objectForKey:kCAMBurstDumpYUV2]) != 0)
    {
      v4->enableDumpYUV = [v24 intValue] != 0;
    }

    v25 = [v9 objectForKey:kCAMBurstLoggingDefaultsWrite];
    if (v25 && [v25 intValue] || (v26 = objc_msgSend(v9, "objectForKey:", kCAMBurstLoggingDefaultsWrite2)) != 0 && objc_msgSend(v26, "intValue"))
    {
      v36 = 64;
      v27 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v27 setDateFormat:@"dd-MM-yyyy'_'HH-mm-ss'_burstLog.txt'"];
      v28 = [v27 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];

      v29 = [-[CAMBurstImageSetInternal burstDocumentDirectory](v4 "burstDocumentDirectory")];
      v4->burstLogFileName = v29;
      v30 = fopen([(NSString *)v29 UTF8String], "w");
      v4->burstLogFileHandle = v30;
      BurstLoggingSetFileHandle(v30);
      sysctlbyname("kern.osversion", __ptr, &v36, 0, 0);
      BurstLoggingMessage("BURST ANALYSIS VERSION = %s (%s)\n", [(NSString *)[(CAMBurstImageSetInternal *)v4 versionString] UTF8String], __ptr);
    }

    v4->sem = dispatch_semaphore_create(v4->maxNumPendingFrames);
    if (v4->enableDumpYUV)
    {
      v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->dq_yuvdump = dispatch_queue_create("com.apple.staccato_dump", v31);
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [-[CAMBurstImageSetInternal burstDocumentDirectory](v4 "burstDocumentDirectory")];
      if (([defaultManager fileExistsAtPath:v33] & 1) == 0)
      {
        *__ptr = 0;
        v34 = fopen([v33 UTF8String], "w");
        fwrite(__ptr, 4uLL, 1uLL, v34);
        fclose(v34);
      }
    }

    else
    {
      v4->dq_yuvdump = 0;
    }

    perfInit();
  }

  return v4;
}

- (void)dealloc
{
  curClusterIndexToProcess = self->curClusterIndexToProcess;
  for (i = self->clusterArray; [(NSMutableArray *)i count]> curClusterIndexToProcess; i = self->clusterArray)
  {
    [-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{self->curClusterIndexToProcess), "releaseImage"}];
    dispatch_semaphore_signal(self->sem);
    v5 = self->curClusterIndexToProcess;
    curClusterIndexToProcess = v5 + 1;
    self->curClusterIndexToProcess = v5 + 1;
  }

  dq = self->dq;
  if (dq)
  {
    dispatch_release(dq);
    self->dq = 0;
  }

  dq_yuvdump = self->dq_yuvdump;
  if (dq_yuvdump)
  {
    dispatch_release(dq_yuvdump);
    self->dq_yuvdump = 0;
  }

  sem = self->sem;
  if (sem)
  {
    dispatch_release(sem);
    self->sem = 0;
  }

  clusterArray = self->clusterArray;
  if (clusterArray)
  {

    self->clusterArray = 0;
  }

  faceAnalysisContext = self->faceAnalysisContext;
  if (faceAnalysisContext)
  {

    self->faceAnalysisContext = 0;
  }

  faceIDCounts = self->faceIDCounts;
  if (faceIDCounts)
  {

    self->faceIDCounts = 0;
  }

  allImageIdentifiers = self->allImageIdentifiers;
  if (allImageIdentifiers)
  {

    self->allImageIdentifiers = 0;
  }

  actionClassifier = self->actionClassifier;
  if (actionClassifier)
  {

    self->actionClassifier = 0;
  }

  statsByImageIdentifier = self->statsByImageIdentifier;
  if (statsByImageIdentifier)
  {

    self->statsByImageIdentifier = 0;
  }

  clusterByImageIdentifier = self->clusterByImageIdentifier;
  if (clusterByImageIdentifier)
  {

    self->clusterByImageIdentifier = 0;
  }

  overrideImage = self->overrideImage;
  if (overrideImage)
  {

    self->overrideImage = 0;
  }

  overrideProps = self->overrideProps;
  if (overrideProps)
  {

    self->overrideProps = 0;
  }

  burstLogFileName = self->burstLogFileName;
  if (burstLogFileName)
  {

    self->burstLogFileName = 0;
  }

  burstCoverSelection = self->burstCoverSelection;
  if (burstCoverSelection)
  {

    self->burstCoverSelection = 0;
  }

  burstLogFileHandle = self->burstLogFileHandle;
  if (burstLogFileHandle)
  {
    fclose(burstLogFileHandle);
    self->burstLogFileHandle = 0;
  }

  burstId = self->burstId;
  if (burstId)
  {

    self->burstId = 0;
  }

  bestImageIdentifiersArray = self->bestImageIdentifiersArray;
  if (bestImageIdentifiersArray)
  {

    self->bestImageIdentifiersArray = 0;
  }

  v23.receiver = self;
  v23.super_class = CAMBurstImageSetInternal;
  [(CAMBurstImageSetInternal *)&v23 dealloc];
}

- (float)computeActionSelectionThreshold
{
  v36 = *MEMORY[0x1E69E9840];
  BurstLoggingMessage("Computing action selection threshold", a2);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  clusterArray = self->clusterArray;
  v4 = [(NSMutableArray *)clusterArray countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(clusterArray);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        burstImages = [v12 burstImages];
        v14 = [burstImages countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(burstImages);
              }

              v18 = *(*(&v26 + 1) + 8 * j);
              if (([v18 isGarbage] & 1) == 0)
              {
                [v18 registrationErrorIntegral];
                if (v19 > 0.0)
                {
                  v10 = v10 + v19;
                  v9 = v9 + (v19 * v19);
                  v8 = v8 + 1.0;
                  if (v19 > v7)
                  {
                    v7 = v19;
                  }
                }
              }
            }

            v15 = [burstImages countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v5 = [(NSMutableArray *)clusterArray countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
    if (v8 != 0.0)
    {
      v20 = v10 / v8;
      v21 = sqrtf((v9 / v8) - (v20 * v20));
      v22 = (v10 / v8) + (v21 * 1.33);
      BurstLoggingMessage("Mean non-zero actions = %f, std dev = %f\n", v20, v21);
      goto LABEL_23;
    }
  }

  else
  {
    v7 = 0.0;
  }

  v22 = 0.0;
LABEL_23:
  v23 = 18000.0;
  if (v22 >= 18000.0)
  {
    v23 = v22;
  }

  if (v23 > 36000.0)
  {
    v23 = 36000.0;
  }

  if (v23 <= v7)
  {
    v24 = v23;
  }

  else
  {
    v24 = v7 * 0.99;
  }

  BurstLoggingMessage("ACTION SELECTION THRESHOLD = %f\n", v24);
  return v24;
}

- (void)processClusters:(BOOL)clusters
{
  clustersCopy = clusters;
  selfCopy = self;
  v186 = *MEMORY[0x1E69E9840];
  curClusterIndexToProcess = self->curClusterIndexToProcess;
  if ([(NSMutableArray *)self->clusterArray count]<= curClusterIndexToProcess)
  {
LABEL_52:
    if (clustersCopy)
    {
      v159 = selfCopy->curClusterIndexToProcess;
      if ([(NSMutableArray *)selfCopy->clusterArray count]!= v159)
      {
        BurstLoggingMessage("Error!  Done adding, but there are still frames left!\n");
      }
    }
  }

  else
  {
    v166 = selfCopy;
    while (1)
    {
      v5 = [(NSMutableArray *)selfCopy->clusterArray objectAtIndex:selfCopy->curClusterIndexToProcess];
      v6 = [objc_msgSend(v5 "burstImages")];
      v7 = [objc_msgSend(v6 "imageId")];
      [v6 timestamp];
      BurstLoggingMessage("Examining image, id=%s, timestamp = %.6f, done=%d\n", v7, v8, clustersCopy);
      if (!clustersCopy)
      {
        [v6 timestamp];
        v10 = v9;
        [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext latestFaceTimestamp];
        if (v10 > v11 && [(NSMutableArray *)selfCopy->clusterArray count]- selfCopy->curClusterIndexToProcess < (selfCopy->maxNumPendingFrames - 1))
        {
          break;
        }
      }

      imageProps = [v5 imageProps];
      [imageProps setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeStartedAnalysis[0]}];
      v13 = [objc_msgSend(v5 "image")];
      v14 = [objc_msgSend(v5 "image")];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext addFacesToImageStat:v6 imageSize:v13, v14];
      imageProps2 = [v5 imageProps];
      [imageProps2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeStartedFaceDetection[0]}];
      imageProps3 = [v5 imageProps];
      v17 = MEMORY[0x1E696AD98];
      [v6 timestamp];
      v18 = [v17 numberWithDouble:?];
      [imageProps3 setObject:v18 forKey:kCAMBurstImageProperty_ImageTimestamp[0]];
      v168 = v6;
      if ([v6 faceStatArray])
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(v6, "faceStatArray"), "count")}];
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        faceStatArray = [v6 faceStatArray];
        v21 = [faceStatArray countByEnumeratingWithState:&v179 objects:v185 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v180;
          do
          {
            v24 = 0;
            do
            {
              if (*v180 != v23)
              {
                objc_enumerationMutation(faceStatArray);
              }

              v25 = *(*(&v179 + 1) + 8 * v24);
              v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
              v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "faceId")}];
              [v26 setObject:v27 forKey:kCAMBurstImageFaceProperty_ID[0]];
              v28 = MEMORY[0x1E696AD98];
              [v25 normalizedFaceRect];
              *&v29 = v29;
              v30 = [v28 numberWithFloat:v29];
              [v26 setObject:v30 forKey:kCAMBurstImageFaceProperty_X[0]];
              v31 = MEMORY[0x1E696AD98];
              [v25 normalizedFaceRect];
              *&v33 = v32;
              v34 = [v31 numberWithFloat:v33];
              [v26 setObject:v34 forKey:kCAMBurstImageFaceProperty_Y[0]];
              v35 = MEMORY[0x1E696AD98];
              [v25 normalizedFaceRect];
              *&v37 = v36;
              v38 = [v35 numberWithFloat:v37];
              [v26 setObject:v38 forKey:kCAMBurstImageFaceProperty_W[0]];
              v39 = MEMORY[0x1E696AD98];
              [v25 normalizedFaceRect];
              *&v41 = v40;
              v42 = [v39 numberWithFloat:v41];
              [v26 setObject:v42 forKey:kCAMBurstImageFaceProperty_H[0]];
              v43 = MEMORY[0x1E696AD98];
              [v25 timestamp];
              v44 = [v43 numberWithDouble:?];
              [v26 setObject:v44 forKey:kCAMBurstImageFaceProperty_Timestamp[0]];
              if ([v25 hasRollAngle])
              {
                v45 = MEMORY[0x1E696AD98];
                [v25 rollAngle];
                v46 = [v45 numberWithFloat:?];
                [v26 setObject:v46 forKey:kCAMBurstImageFaceProperty_RollAngle[0]];
              }

              if ([v25 hasYawAngle])
              {
                v47 = MEMORY[0x1E696AD98];
                [v25 yawAngle];
                v48 = [v47 numberWithFloat:?];
                [v26 setObject:v48 forKey:kCAMBurstImageFaceProperty_YawAngle[0]];
              }

              if ([v25 hasLeftEye])
              {
                v49 = MEMORY[0x1E696AD98];
                [v25 leftEyeRect];
                v50 = CGRectGetMidX(v187) / v13;
                *&v50 = v50;
                v51 = [v49 numberWithFloat:v50];
                [v26 setObject:v51 forKey:kCAMBurstImageFaceProperty_LeftEyePosX[0]];
                v52 = MEMORY[0x1E696AD98];
                [v25 leftEyeRect];
                v53 = CGRectGetMidY(v188) / v14;
                *&v53 = v53;
                v54 = [v52 numberWithFloat:v53];
                [v26 setObject:v54 forKey:kCAMBurstImageFaceProperty_LeftEyePosY[0]];
                v55 = MEMORY[0x1E696AD98];
                [v25 leftEyeBlinkScore];
                v56 = [v55 numberWithFloat:?];
                [v26 setObject:v56 forKey:kCAMBurstImageFaceProperty_LeftEyeBlinkScore[0]];
              }

              if ([v25 hasRightEye])
              {
                v57 = MEMORY[0x1E696AD98];
                [v25 rightEyeRect];
                v58 = CGRectGetMidX(v189) / v13;
                *&v58 = v58;
                v59 = [v57 numberWithFloat:v58];
                [v26 setObject:v59 forKey:kCAMBurstImageFaceProperty_RightEyePosX[0]];
                v60 = MEMORY[0x1E696AD98];
                [v25 rightEyeRect];
                v61 = CGRectGetMidY(v190) / v14;
                *&v61 = v61;
                v62 = [v60 numberWithFloat:v61];
                [v26 setObject:v62 forKey:kCAMBurstImageFaceProperty_RightEyePosY[0]];
                v63 = MEMORY[0x1E696AD98];
                [v25 rightEyeBlinkScore];
                v64 = [v63 numberWithFloat:?];
                [v26 setObject:v64 forKey:kCAMBurstImageFaceProperty_RightEyeBlinkScore[0]];
              }

              v65 = MEMORY[0x1E696AD98];
              [v25 smileScore];
              v66 = [v65 numberWithFloat:?];
              [v26 setObject:v66 forKey:kCAMBurstImageFaceProperty_SmileScore[0]];
              [v19 addObject:v26];
              ++v24;
            }

            while (v22 != v24);
            v22 = [faceStatArray countByEnumeratingWithState:&v179 objects:v185 count:16];
          }

          while (v22);
        }

        imageProps4 = [v5 imageProps];
        [imageProps4 setObject:v19 forKey:kCAMBurstImageProperty_ISPFacesArray[0]];
        selfCopy = v166;
        v6 = v168;
      }

      if (selfCopy->enableFaceCore)
      {
        -[CAMBurstImageFaceAnalysisContext findFacesInImage:imageStat:](selfCopy->faceAnalysisContext, "findFacesInImage:imageStat:", [v5 image], v6);
      }

      else
      {
        [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext setTimeFaceDetectionDone:timeElapsedSinceInit()];
        [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext setTimeBlinkDetectionDone:timeElapsedSinceInit()];
      }

      imageProps5 = [v5 imageProps];
      v69 = MEMORY[0x1E696AD98];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext timeFaceDetectionDone];
      v70 = [v69 numberWithDouble:?];
      [imageProps5 setObject:v70 forKey:kCAMBurstImageProperty_TimeDoneFaceDetection[0]];
      imageProps6 = [v5 imageProps];
      v72 = MEMORY[0x1E696AD98];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext timeBlinkDetectionDone];
      v73 = [v72 numberWithDouble:?];
      [imageProps6 setObject:v73 forKey:kCAMBurstImageProperty_TimeDoneFaceBlinkDetection[0]];
      -[CAMBurstImageFaceAnalysisContext calculateFaceFocusInImage:imageStat:](selfCopy->faceAnalysisContext, "calculateFaceFocusInImage:imageStat:", [v5 image], v6);
      imageProps7 = [v5 imageProps];
      [imageProps7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeDoneFaceFocusScore[0]}];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext adjustFaceIdsForImageStat:v6];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext dumpFaceInfoArray];
      v177 = 0u;
      v178 = 0u;
      v176 = 0u;
      v175 = 0u;
      faceStatArray2 = [v6 faceStatArray];
      v76 = [faceStatArray2 countByEnumeratingWithState:&v175 objects:v184 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v176;
        do
        {
          v79 = 0;
          do
          {
            if (*v176 != v78)
            {
              objc_enumerationMutation(faceStatArray2);
            }

            -[NSCountedSet addObject:](selfCopy->faceIDCounts, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v175 + 1) + 8 * v79++), "faceId")}]);
          }

          while (v77 != v79);
          v77 = [faceStatArray2 countByEnumeratingWithState:&v175 objects:v184 count:16];
        }

        while (v77);
      }

      [v6 computeImageData:objc_msgSend(v5 faceIDCounts:{"image"), selfCopy->faceIDCounts}];
      imageProps8 = [v5 imageProps];
      [imageProps8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeDoneAnalysis[0]}];
      if (selfCopy->enableFaceCore && [v6 faceStatArray])
      {
        v81 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(v6, "faceStatArray"), "count")}];
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        faceStatArray3 = [v6 faceStatArray];
        v83 = [faceStatArray3 countByEnumeratingWithState:&v171 objects:v183 count:16];
        if (v83)
        {
          v84 = v83;
          v85 = *v172;
          do
          {
            v86 = 0;
            do
            {
              if (*v172 != v85)
              {
                objc_enumerationMutation(faceStatArray3);
              }

              v87 = *(*(&v171 + 1) + 8 * v86);
              v88 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
              v89 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v87, "faceId")}];
              [v88 setObject:v89 forKey:kCAMBurstImageFaceProperty_ID[0]];
              v90 = MEMORY[0x1E696AD98];
              [v87 normalizedFaceRect];
              *&v91 = v91;
              v92 = [v90 numberWithFloat:v91];
              [v88 setObject:v92 forKey:kCAMBurstImageFaceProperty_X[0]];
              v93 = MEMORY[0x1E696AD98];
              [v87 normalizedFaceRect];
              *&v95 = v94;
              v96 = [v93 numberWithFloat:v95];
              [v88 setObject:v96 forKey:kCAMBurstImageFaceProperty_Y[0]];
              v97 = MEMORY[0x1E696AD98];
              [v87 normalizedFaceRect];
              *&v99 = v98;
              v100 = [v97 numberWithFloat:v99];
              [v88 setObject:v100 forKey:kCAMBurstImageFaceProperty_W[0]];
              v101 = MEMORY[0x1E696AD98];
              [v87 normalizedFaceRect];
              *&v103 = v102;
              v104 = [v101 numberWithFloat:v103];
              [v88 setObject:v104 forKey:kCAMBurstImageFaceProperty_H[0]];
              v105 = MEMORY[0x1E696AD98];
              [v87 focusScore];
              v106 = [v105 numberWithFloat:?];
              [v88 setObject:v106 forKey:kCAMBurstImageFaceProperty_FocusScore[0]];
              v107 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v87, "leftEyeOpen")}];
              [v88 setObject:v107 forKey:kCAMBurstImageFaceProperty_LeftEyeOpen[0]];
              v108 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v87, "rightEyeOpen")}];
              [v88 setObject:v108 forKey:kCAMBurstImageFaceProperty_RightEyeOpen[0]];
              v109 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v87, "smiling")}];
              [v88 setObject:v109 forKey:kCAMBurstImageFaceProperty_Smiling[0]];
              v110 = MEMORY[0x1E696AD98];
              [v87 leftEyeBlinkScore];
              v111 = [v110 numberWithFloat:?];
              [v88 setObject:v111 forKey:kCAMBurstImageFaceProperty_LeftEyeBlinkScore[0]];
              v112 = MEMORY[0x1E696AD98];
              [v87 rightEyeBlinkScore];
              v113 = [v112 numberWithFloat:?];
              [v88 setObject:v113 forKey:kCAMBurstImageFaceProperty_RightEyeBlinkScore[0]];
              v114 = MEMORY[0x1E696AD98];
              [v87 smileScore];
              v115 = [v114 numberWithFloat:?];
              [v88 setObject:v115 forKey:kCAMBurstImageFaceProperty_SmileScore[0]];
              v116 = MEMORY[0x1E696AD98];
              [v87 leftEyeRect];
              MidX = CGRectGetMidX(v191);
              v118 = MidX / [objc_msgSend(v5 "image")];
              *&v118 = v118;
              v119 = [v116 numberWithFloat:v118];
              [v88 setObject:v119 forKey:kCAMBurstImageFaceProperty_LeftEyePosX[0]];
              v120 = MEMORY[0x1E696AD98];
              [v87 leftEyeRect];
              MidY = CGRectGetMidY(v192);
              v122 = MidY / [objc_msgSend(v5 "image")];
              *&v122 = v122;
              v123 = [v120 numberWithFloat:v122];
              [v88 setObject:v123 forKey:kCAMBurstImageFaceProperty_LeftEyePosY[0]];
              v124 = MEMORY[0x1E696AD98];
              [v87 rightEyeRect];
              v125 = CGRectGetMidX(v193);
              v126 = v125 / [objc_msgSend(v5 "image")];
              *&v126 = v126;
              v127 = [v124 numberWithFloat:v126];
              [v88 setObject:v127 forKey:kCAMBurstImageFaceProperty_RightEyePosX[0]];
              v128 = MEMORY[0x1E696AD98];
              [v87 rightEyeRect];
              v129 = CGRectGetMidY(v194);
              v130 = v129 / [objc_msgSend(v5 "image")];
              *&v130 = v130;
              v131 = [v128 numberWithFloat:v130];
              [v88 setObject:v131 forKey:kCAMBurstImageFaceProperty_RightEyePosY[0]];
              v132 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v87, "smallFace")}];
              [v88 setObject:v132 forKey:kCAMBurstImageFaceProperty_SmallFace[0]];
              [v88 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v87, "FCRLeftEyeFeaturesOffset")), @"LeftEyeFeaturesOffset"}];
              [v88 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v87, "FCRRightEyeFeaturesOffset")), @"RightEyeFeaturesOffset"}];
              [v88 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v87, "FCRSmileFeaturesOffset")), @"SmileFeaturesOffset"}];
              [v88 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v87, "FCRBlinkFeaturesSize")), @"BlinkFeaturesSize"}];
              [v88 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v87, "FCRSmileFeaturesSize")), @"SmileFeaturesSize"}];
              [v81 addObject:v88];
              ++v86;
            }

            while (v84 != v86);
            v84 = [faceStatArray3 countByEnumeratingWithState:&v171 objects:v183 count:16];
          }

          while (v84);
        }

        imageProps9 = [v5 imageProps];
        [imageProps9 setObject:v81 forKey:kCAMBurstImageProperty_FacesArray[0]];
        selfCopy = v166;
        v6 = v168;
      }

      if (selfCopy->enableDumpYUV && selfCopy->dq_yuvdump)
      {
        burstDocumentDirectory = [(CAMBurstImageSetInternal *)selfCopy burstDocumentDirectory];
        v135 = fopen([objc_msgSend(burstDocumentDirectory stringByAppendingPathComponent:{@"counter.bin", "UTF8String"}], "r+");
        __ptr = 0;
        fread(&__ptr, 4uLL, 1uLL, v135);
        ++__ptr;
        fseek(v135, 0, 0);
        fwrite(&__ptr, 4uLL, 1uLL, v135);
        fclose(v135);
        v136 = [burstDocumentDirectory stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"burstimage_%06d.yuv", __ptr)}];
        v137 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(objc_msgSend(v5 length:{"image"), "Ybuffer"), (objc_msgSend(objc_msgSend(v5, "image"), "height") * objc_msgSend(objc_msgSend(v5, "image"), "bytesPerRow"))}];
        v138 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(objc_msgSend(v5 length:{"image"), "Cbuffer"), ((objc_msgSend(objc_msgSend(v5, "image"), "height") >> 1) * objc_msgSend(objc_msgSend(v5, "image"), "bytesPerRow"))}];
        if (v137)
        {
          v139 = v138;
          if (v138)
          {
            v165 = MEMORY[0x1E695DF90];
            v164 = kCAMBurstImageYUVDataProperty_YData[0];
            v163 = kCAMBurstImageYUVDataProperty_UVData[0];
            v162 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v5, "image"), "width")}];
            v140 = kCAMBurstImageYUVDataProperty_Width[0];
            v141 = v136;
            v142 = v6;
            v143 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v5, "image"), "height")}];
            v144 = kCAMBurstImageYUVDataProperty_Height[0];
            v145 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v5, "image"), "bytesPerRow")}];
            v161 = v144;
            selfCopy = v166;
            v160 = v143;
            v6 = v142;
            v136 = v141;
            v146 = [v165 dictionaryWithObjectsAndKeys:{v137, v164, v139, v163, v162, v140, v160, v161, v145, kCAMBurstImageYUVDataProperty_BytesPerRow[0], 0}];
            dq_yuvdump = v166->dq_yuvdump;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __44__CAMBurstImageSetInternal_processClusters___block_invoke;
            block[3] = &unk_1E76F8128;
            block[4] = v146;
            block[5] = v141;
            dispatch_async(dq_yuvdump, block);
          }
        }

        imageProps10 = [v5 imageProps];
        [imageProps10 setObject:v136 forKey:kCAMBurstImageProperty_ImageYUVData[0]];
      }

      [v6 facesRoiRect];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v195);
      [objc_msgSend(v5 "imageProps")];
      CFRelease(DictionaryRepresentation);
      imageProps11 = [v5 imageProps];
      [imageProps11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(objc_msgSend(v5, "image"), "width")), @"Image_Width"}];
      imageProps12 = [v5 imageProps];
      [imageProps12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(objc_msgSend(v5, "image"), "height")), @"Image_Height"}];
      imageProps13 = [v5 imageProps];
      [imageProps13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v6, "AEAverage")), @"Image_AEAverage"}];
      imageProps14 = [v5 imageProps];
      [imageProps14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v6, "AETarget")), @"Image_AETarget"}];
      imageProps15 = [v5 imageProps];
      [imageProps15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(v6, "AEStable")), @"Image_AEStable"}];
      imageProps16 = [v5 imageProps];
      [imageProps16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(v6, "AFStable")), @"Image_AFStable"}];
      imageProps17 = [v5 imageProps];
      [imageProps17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v6, "orientation")), @"Image_Orientation"}];
      [objc_msgSend(v5 "imageProps")];
      [v5 releaseImage];
      dispatch_semaphore_signal(selfCopy->sem);
      ++selfCopy->curClusterIndexToProcess;
      if ([v5 completionBlock])
      {
        completionBlock = [v5 completionBlock];
        (*(completionBlock + 16))(completionBlock, [v6 imageId], 1);
      }

      v158 = selfCopy->curClusterIndexToProcess;
      if ([(NSMutableArray *)selfCopy->clusterArray count]<= v158)
      {
        goto LABEL_52;
      }
    }

    [v6 timestamp];
    [(CAMBurstImageFaceAnalysisContext *)selfCopy->faceAnalysisContext latestFaceTimestamp];
    BurstLoggingMessage("Not processing frames, imageStat.timestamp = %.6f, latestFaceTimestamp = %.6f\n");
  }
}

- (void)addYUVImage:(id)image properties:(id)properties identifier:(id)identifier imageProps:(id)props completionBlock:(id)block
{
  if (self->enableAnalysis)
  {
    v16[18] = v7;
    v16[19] = v8;
    dispatch_semaphore_wait(self->sem, 0xFFFFFFFFFFFFFFFFLL);
    [props setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeQueued[0]}];
    [(CAMBurstImageSetInternal *)self version];
    dq = self->dq;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__CAMBurstImageSetInternal_addYUVImage_properties_identifier_imageProps_completionBlock___block_invoke;
    v16[3] = &unk_1E76F8150;
    v16[4] = self;
    v16[5] = props;
    v16[6] = image;
    v16[7] = identifier;
    v16[8] = properties;
    v16[9] = block;
    dispatch_async(dq, v16);
  }
}

uint64_t __89__CAMBurstImageSetInternal_addYUVImage_properties_identifier_imageProps_completionBlock___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 52))
  {
    [*(a1 + 40) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeStartedAnalysis[0]}];
    v2 = *(a1 + 32);
    if (*(v2 + 52) >= 1)
    {
      v3 = 0;
      do
      {
        if ([*(a1 + 48) height] >= 2)
        {
          v4 = 0;
          do
          {
            if ([*(a1 + 48) width] >= 2)
            {
              v5 = 0;
              do
              {
                [*(a1 + 48) Ybuffer];
                [*(a1 + 48) bytesPerRow];
                ++v5;
              }

              while (v5 < [*(a1 + 48) width] / 2);
            }

            ++v4;
          }

          while (v4 < [*(a1 + 48) height] / 2);
        }

        ++v3;
        v2 = *(a1 + 32);
      }

      while (v3 < *(v2 + 52));
    }

    dispatch_semaphore_signal(*(v2 + 24));
    [*(a1 + 40) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeDoneAnalysis[0]}];
    result = *(a1 + 72);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  else
  {
    BurstLoggingMessage("Adding image: %s\n", [*(a1 + 56) UTF8String]);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) versionString];
    [v8 setObject:v9 forKey:kCAMBurstImageProperty_AlgorithmVersion[0]];
    [*(*(a1 + 32) + 80) extractFacesFromMetadata:*(a1 + 64)];
    v10 = [[CAMBurstThumbnailCluster alloc] initWithImageData:*(a1 + 48) dict:*(a1 + 64) identifier:*(a1 + 56) imageProps:*(a1 + 40) completionBlock:*(a1 + 72)];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableArray *)[(CAMBurstThumbnailCluster *)v10 burstImages] objectAtIndex:0];
      [v12 setVersion:{objc_msgSend(*(a1 + 32), "version")}];
      ++*(*(a1 + 32) + 40);
      [v12 setTemporalOrder:?];
      [objc_msgSend(*(a1 + 40) objectForKey:{kCAMBurstImageProperty_TimeReceived[0]), "doubleValue"}];
      [v12 setTimeReceived:?];
      [*(*(a1 + 32) + 32) addObject:v11];
    }

    v13 = *(a1 + 32);

    return [v13 processClusters:0];
  }

  return result;
}

- (void)addImageFromIOSurface:(__IOSurface *)surface properties:(id)properties identifier:(id)identifier completionBlock:(id)block
{
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v12 = [MEMORY[0x1E696AEC0] stringWithString:identifier];
  [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeReceived[0]}];
  overrideImage = self->overrideImage;
  if (overrideImage && self->overrideProps)
  {
    v15 = overrideImage;
    overrideProps = self->overrideProps;
  }

  else
  {
    v15 = [[CAMBurstYUVImage alloc] initWithIOSurface:surface maxDimension:852];
    overrideProps = [MEMORY[0x1E695DF20] dictionaryWithDictionary:properties];
  }

  [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", timeElapsedSinceInit()), kCAMBurstImageProperty_TimeConverted[0]}];
  [(NSMutableArray *)self->allImageIdentifiers addObject:v12];
  [(NSMutableDictionary *)self->statsByImageIdentifier setObject:v11 forKey:v12];
  [(CAMBurstImageSetInternal *)self addYUVImage:v15 properties:overrideProps identifier:v12 imageProps:v11 completionBlock:block];
}

- (int)computeEmotion:(id)emotion
{
  if ([(CAMBurstImageSetInternal *)self version]>= 2)
  {
    [emotion setSmiling:1];
  }

  [emotion normalizedFocusScore];
  if (v4 <= 0.825)
  {
    return -1;
  }

  smiling = [emotion smiling];
  leftEyeOpen = [emotion leftEyeOpen];
  if (smiling)
  {
    if (leftEyeOpen && ([emotion rightEyeOpen] & 1) != 0)
    {
      return 10;
    }

    else
    {
      v7 = 8;
      if (([emotion leftEyeOpen] & 1) == 0)
      {
        if ([emotion rightEyeOpen])
        {
          return 8;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  else if (leftEyeOpen && ([emotion rightEyeOpen] & 1) != 0)
  {
    return 6;
  }

  else
  {
    v7 = 3;
    if (([emotion leftEyeOpen] & 1) == 0)
    {
      if ([emotion rightEyeOpen])
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }
  }

  return v7;
}

- (void)performEmotionalRejectionOnCluster:(id)cluster
{
  v56 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = [cluster countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v33 = *v49;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(cluster);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        if ([objc_msgSend(v8 "faceStatArray")])
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          faceStatArray = [v8 faceStatArray];
          v10 = [faceStatArray countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v45;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v45 != v13)
                {
                  objc_enumerationMutation(faceStatArray);
                }

                v12 += [(CAMBurstImageSetInternal *)self computeEmotion:*(*(&v44 + 1) + 8 * j)];
              }

              v11 = [faceStatArray countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          BurstLoggingMessage("Image %d:%s has emotional score %d\n", [v8 temporalOrder], objc_msgSend(objc_msgSend(v8, "imageId"), "UTF8String"), v12);
          if (v12 > v6)
          {
            v6 = v12;
          }
        }
      }

      v5 = [cluster countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [cluster countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v34 = *v41;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(cluster);
        }

        v18 = *(*(&v40 + 1) + 8 * k);
        if ([objc_msgSend(v18 "faceStatArray")] && (v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, v19 = objc_msgSend(v18, "faceStatArray"), (v20 = objc_msgSend(v19, "countByEnumeratingWithState:objects:count:", &v36, v52, 16)) != 0))
        {
          v21 = v20;
          v22 = 0;
          v23 = *v37;
          do
          {
            for (m = 0; m != v21; ++m)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v22 += [(CAMBurstImageSetInternal *)self computeEmotion:*(*(&v36 + 1) + 8 * m)];
            }

            v21 = [v19 countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        if (v22 != v6)
        {
          [v18 setEmotionallyRejected:1];
          BurstLoggingMessage("Image %d:%s has been emotionally rejected.\n", [v18 temporalOrder], objc_msgSend(objc_msgSend(v18, "imageId"), "UTF8String"));
          [v18 avgHorzDiffY];
          v26 = v25 + v25;
          [v18 blurExtent];
          *&v28 = v26 / (v27 + 1.0);
          [v18 setImageScore:v28];
          [v18 avgHorzDiffY];
          v30 = v29 + v29;
          [v18 blurExtent];
          *&v32 = v30 / (v31 + 1.0);
          [v18 setActionScore:v32];
        }
      }

      v16 = [cluster countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v16);
  }
}

- (float)computeCameraTravelDistance
{
  v3 = 0.0;
  if ([(NSMutableArray *)self->clusterArray count]>= 7)
  {
    if ([(NSMutableArray *)self->clusterArray count])
    {
      for (i = 0; [(NSMutableArray *)self->clusterArray count]> i; ++i)
      {
        v5 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{i), "burstImages"), "objectAtIndex:", 0}];
        if (i)
        {
          v6 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{i - 1), "burstImages"), "objectAtIndex:", 0}];
        }

        else
        {
          v6 = 0;
        }

        if ([(NSMutableArray *)self->clusterArray count]- 1 <= i)
        {
          v9 = 0;
          v8 = 0;
        }

        else
        {
          v7 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{i + 1), "burstImages"), "objectAtIndex:", 0}];
          v8 = v7;
          v9 = v7 != 0;
          if (!i && v7)
          {
            v10 = 0.0;
            v11 = 0.0;
            if (([v5 isGarbage] & 1) == 0)
            {
              [v5 tx];
              v11 = v12;
            }

            if (([v8 isGarbage] & 1) == 0)
            {
              [v8 tx];
              v10 = v13;
            }

            v14 = 0.0;
            v15 = 0.0;
            if (([v5 isGarbage] & 1) == 0)
            {
              [v5 ty];
              v15 = v16;
            }

            if ([v8 isGarbage])
            {
              goto LABEL_48;
            }

            v17 = v8;
            goto LABEL_47;
          }
        }

        if (i != [(NSMutableArray *)self->clusterArray count]- 1 || v6 == 0)
        {
          if (v6)
          {
            v19 = v9;
          }

          else
          {
            v19 = 0;
          }

          v20 = 0.0;
          v21 = 0.0;
          if (v19)
          {
            v22 = 0.0;
            if (([v6 isGarbage] & 1) == 0)
            {
              [v6 tx];
              v22 = v23;
            }

            if (([v5 isGarbage] & 1) == 0)
            {
              [v5 tx];
              v21 = v24;
            }

            isGarbage = [v8 isGarbage];
            v26 = 0.0;
            if ((isGarbage & 1) == 0)
            {
              [v8 tx];
            }

            if (v22 <= v21)
            {
              v20 = v22;
              if (v22 <= v26)
              {
                if (v21 <= v26)
                {
                  v20 = v21;
                }

                else
                {
                  v20 = v26;
                }
              }
            }

            else
            {
              v20 = v21;
              if (v21 <= v26)
              {
                if (v22 <= v26)
                {
                  v20 = v22;
                }

                else
                {
                  v20 = v26;
                }
              }
            }

            v32 = 0.0;
            v21 = 0.0;
            if (([v6 isGarbage] & 1) == 0)
            {
              [v6 ty];
              v21 = v33;
            }

            if (([v5 isGarbage] & 1) == 0)
            {
              [v5 ty];
              v32 = v34;
            }

            isGarbage2 = [v8 isGarbage];
            v36 = 0.0;
            if ((isGarbage2 & 1) == 0)
            {
              [v8 ty];
            }

            if (v21 <= v32)
            {
              if (v21 <= v36)
              {
                if (v32 <= v36)
                {
                  v21 = v32;
                }

                else
                {
                  v21 = v36;
                }
              }
            }

            else if (v32 <= v36)
            {
              if (v21 > v36)
              {
                v21 = v36;
              }
            }

            else
            {
              v21 = v32;
            }
          }

          goto LABEL_49;
        }

        isGarbage3 = [v5 isGarbage];
        v10 = 0.0;
        v11 = 0.0;
        if ((isGarbage3 & 1) == 0)
        {
          [v5 tx];
          v11 = v28;
        }

        if (([v6 isGarbage] & 1) == 0)
        {
          [v6 tx];
          v10 = v29;
        }

        v14 = 0.0;
        v15 = 0.0;
        if (([v5 isGarbage] & 1) == 0)
        {
          [v5 ty];
          v15 = v30;
        }

        if (([v6 isGarbage] & 1) == 0)
        {
          v17 = v6;
LABEL_47:
          [v17 ty];
          v14 = v31;
        }

LABEL_48:
        v20 = (v11 + v10) * 0.5;
        v21 = (v15 + v14) * 0.5;
LABEL_49:
        v3 = v3 + sqrtf((v21 * v21) + (v20 * v20));
      }
    }

    if ([(NSMutableArray *)self->clusterArray count])
    {
      return v3 / [(NSMutableArray *)self->clusterArray count];
    }
  }

  return v3;
}

- (float)computeBeginningVsEndAEMatrixDiffVsAverageAdjacent
{
  v3 = [(NSMutableArray *)self->clusterArray count];
  result = 0.0;
  if (v3 >= 7)
  {
    v5 = [(NSMutableArray *)self->clusterArray objectAtIndex:0, 0.0];
    if (v5)
    {
      v6 = [objc_msgSend(v5 "burstImages")];
    }

    else
    {
      v6 = 0;
    }

    v7 = 0.0;
    if ([(NSMutableArray *)self->clusterArray count]>= 2)
    {
      v8 = 1;
      do
      {
        v9 = [(NSMutableArray *)self->clusterArray objectAtIndex:v8];
        if (v9)
        {
          v10 = [objc_msgSend(v9 "burstImages")];
          v11 = v10;
          if (v6 && v10)
          {
            [v6 computeAEMatrixDifference:v10];
            v7 = v7 + v12;
          }
        }

        else
        {
          v11 = 0;
        }

        ++v8;
        v6 = v11;
      }

      while ([(NSMutableArray *)self->clusterArray count]> v8);
    }

    v13 = [(NSMutableArray *)self->clusterArray count];
    v14 = [(NSMutableArray *)self->clusterArray objectAtIndex:0];
    if (v14)
    {
      v15 = [objc_msgSend(v14 "burstImages")];
    }

    else
    {
      v15 = 0;
    }

    v16 = [(NSMutableArray *)self->clusterArray objectAtIndex:1];
    if (v16)
    {
      v17 = [objc_msgSend(v16 "burstImages")];
    }

    else
    {
      v17 = 0;
    }

    v18 = v13 - 1;
    v19 = [(NSMutableArray *)self->clusterArray objectAtIndex:[(NSMutableArray *)self->clusterArray count]- 2];
    if (v19)
    {
      v20 = [objc_msgSend(v19 "burstImages")];
    }

    else
    {
      v20 = 0;
    }

    v21 = v18;
    v22 = [(NSMutableArray *)self->clusterArray objectAtIndex:[(NSMutableArray *)self->clusterArray count]- 1];
    if (v22)
    {
      v23 = [objc_msgSend(v22 "burstImages")];
    }

    else
    {
      v23 = 0;
    }

    v24 = 0.0;
    v25 = v7 / v21;
    if (v15 && v17 && v20 && v23)
    {
      v26 = 0.0;
      if ([(CAMBurstImageSetInternal *)self version]>= 2)
      {
        [v15 computeAEMatrixDifference:v20];
        v28 = v27 + 0.0;
        [v15 computeAEMatrixDifference:v23];
        v30 = v28 + v29;
        [v17 computeAEMatrixDifference:v20];
        v26 = v30 + v31;
      }

      [v17 computeAEMatrixDifference:v23];
      v24 = (v26 + v32) * 0.25;
    }

    if (v24 == 0.0)
    {
      return 0.0;
    }

    else
    {
      return v25 / v24;
    }
  }

  return result;
}

- (void)computeAllImageScores
{
  v133 = *MEMORY[0x1E69E9840];
  v132 = 0uLL;
  v129 = 0;
  v130 = 0;
  if ([(NSMutableArray *)self->clusterArray count])
  {
    v3 = 0;
    v4 = 0;
    LOBYTE(v5) = 0;
    do
    {
      v6 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v3), "burstImages"), "objectAtIndex:", 0}];
      if ([v6 canRegister])
      {
        if (v132 != 0 || ([v6 allocateMeanStdPingPongBuffers:&v132 :&v132 + 8 :&v130 :&v129], v132) && *(&v132 + 1))
        {
          if (v4)
          {
            v5 = !v5;
            [v6 assignMeanStdBuffers:*(&v132 + v5)];
            [v4 performRegistration:v6 deltaCol:v130 deltaRow:v129];
          }

          else
          {
            [v6 assignMeanStdBuffers:?];
            LOBYTE(v5) = 0;
          }

          if (v3 == [(NSMutableArray *)self->clusterArray count]- 1)
          {
            [v4 maxSkewness];
            [v6 setMaxSkewness:?];
            [v4 tx];
            [v6 setTx:?];
            [v4 ty];
            [v6 setTy:?];
          }
        }

        else
        {
          v6 = v4;
        }
      }

      else
      {
        BurstLoggingMessage("Skipping projection computation because data isn't present\n");
        v6 = 0;
      }

      ++v3;
      v4 = v6;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v3);
    if (v132)
    {
      free(v132);
    }
  }

  if ([(NSMutableArray *)self->clusterArray count])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = v8;
      v8 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v7), "burstImages"), "objectAtIndex:", 0}];
      v11 = [(NSMutableArray *)self->clusterArray count];
      v12 = 0;
      if (v11 - 1 > v7)
      {
        v12 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v7 + 1, 0), "burstImages"), "objectAtIndex:", 0}];
      }

      [v8 computeSmoothedGridROI:v10 nextStat:v12];
      if (([v8 doLimitedSharpnessAndBlur] & 1) == 0 && objc_msgSend(v8, "hasRegistrationData"))
      {
        actionClassifier = self->actionClassifier;
        [v8 maxSkewness];
        v15 = v14;
        [(CAMBurstActionClassifier *)actionClassifier testAverageRegistrationErrorSkewness];
        *&v17 = v15 + v16;
        [(CAMBurstActionClassifier *)actionClassifier setTestAverageRegistrationErrorSkewness:v17];
        v9 = v9 + 1.0;
      }

      ++v7;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v7);
    if (v9 != 0.0)
    {
      v18 = self->actionClassifier;
      [(CAMBurstActionClassifier *)v18 testAverageRegistrationErrorSkewness];
      *&v20 = v19 / v9;
      [(CAMBurstActionClassifier *)v18 setTestAverageRegistrationErrorSkewness:v20];
    }
  }

  if ([(NSMutableArray *)self->clusterArray count]>= 7)
  {
    BurstLoggingMessage("LOOKING FOR FALSE-POSITIVE FACES...\n");
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = self->clusterArray;
    v124 = [(NSMutableArray *)obj countByEnumeratingWithState:&v125 objects:v131 count:16];
    if (v124)
    {
      v122 = *v126;
      do
      {
        for (i = 0; i != v124; ++i)
        {
          if (*v126 != v122)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [objc_msgSend(*(*(&v125 + 1) + 8 * i) "burstImages")];
          BurstLoggingMessage("Analyzing %s...\n", [objc_msgSend(v22 "imageId")]);
          if ([objc_msgSend(v22 "faceStatArray")])
          {
            v23 = 0;
            v24 = 0;
            do
            {
              v25 = [objc_msgSend(v22 "faceStatArray")];
              v26 = -[NSCountedSet countForObject:](self->faceIDCounts, "countForObject:", [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "faceId")}]);
              faceId = [v25 faceId];
              if (v26 > 1)
              {
                BurstLoggingMessage("Keeping face with ID = %d\n", faceId);
                ++v24;
              }

              else
              {
                BurstLoggingMessage("REMOVING false-positive face with ID = %d\n", faceId);
                [objc_msgSend(v22 "faceStatArray")];
              }

              v23 = v24;
            }

            while ([objc_msgSend(v22 "faceStatArray")] > v24);
          }
        }

        v124 = [(NSMutableArray *)obj countByEnumeratingWithState:&v125 objects:v131 count:16];
      }

      while (v124);
    }
  }

  if ([(NSMutableArray *)self->clusterArray count])
  {
    v28 = 0;
    v29 = 0.0;
    v30 = 0.0;
    do
    {
      v31 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v28), "burstImages"), "objectAtIndex:", 0}];
      BurstLoggingMessage("Collapsing %s\n", [objc_msgSend(v31 "imageId")]);
      [v31 collapseSharpnessGrid];
      [v31 blurExtent];
      v29 = v29 + v32;
      [v31 blurExtent];
      v34 = v33;
      [v31 blurExtent];
      v30 = v30 + (v34 * v35);
      ++v28;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v28);
  }

  else
  {
    v30 = 0.0;
    v29 = 0.0;
  }

  v36 = v29 / [(NSMutableArray *)self->clusterArray count];
  v37 = [(NSMutableArray *)self->clusterArray count];
  if (v36 <= 0.5)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0.5;
  }

  if ([(NSMutableArray *)self->clusterArray count])
  {
    v39 = 0;
    v40 = sqrtf((v30 / v37) - (v36 * v36));
    v123 = v40;
    obja = v38 + v40;
    do
    {
      v41 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v39), "burstImages"), "objectAtIndex:", 0}];
      [v41 setIsGarbage:0];
      BurstLoggingMessage("*_*_* GARBAGE DETECTOR FOR %s *_*_*\n", [objc_msgSend(v41 "imageId")]);
      [v41 tx];
      v43 = v42;
      [v41 tx];
      v45 = v44;
      [v41 ty];
      v47 = v46;
      [v41 ty];
      v49 = sqrtf((v47 * v48) + (v43 * v45));
      [v41 maxSkewness];
      v51 = v50;
      [(CAMBurstActionClassifier *)self->actionClassifier testAverageRegistrationErrorSkewness];
      v53 = v52;
      [v41 blurExtent];
      BurstLoggingMessage("\tTravel = %f, maxSkewness = %f, avgSkewness = %f, blur = %f, avgBlur = %f, stdBlur = %f\n", v49, v51, v53, v54, v38, v123);
      v55 = [objc_msgSend(v41 "faceStatArray")];
      [v41 blurExtent];
      v56 = 0;
      if (v57 < v38)
      {
        [v41 blurExtent];
        v56 = v58 < 0.2;
      }

      [v41 blurExtent];
      if (v59 <= obja || ([v41 blurExtent], v60 <= 0.2))
      {
        [v41 blurExtent];
        v61 = v62 > 0.7;
      }

      else
      {
        v61 = 1;
      }

      if (v49 <= 150.0)
      {
        if (v49 <= 50.0)
        {
          v63 = 0;
        }

        else
        {
          [v41 maxSkewness];
          v63 = v64 < 0.85;
        }
      }

      else
      {
        v63 = 1;
      }

      if (v49 <= 50.0)
      {
        [v41 maxSkewness];
        v67 = v66;
        [(CAMBurstActionClassifier *)self->actionClassifier testAverageRegistrationErrorSkewness];
        v65 = v68 * 0.55 > v67;
      }

      else
      {
        v65 = 1;
      }

      v69 = !v56 && !v61;
      BurstLoggingMessage("\t\thasFaces = %d\n", v55 != 0);
      BurstLoggingMessage("\t\tnotBlurry = %d\n", v56);
      BurstLoggingMessage("\t\tveryBlurry = %d\n", v61);
      BurstLoggingMessage("\t\tpotentiallyBlurry = %d\n", v69 & 1);
      BurstLoggingMessage("\t\tpoorRegistration = %d\n", v63);
      BurstLoggingMessage("\t\tsuspectRegistration = %d\n", v65);
      if (!v56 && (v61 && (v63 || v65) && v55 == 0 || (v63 & (v61 | v69) & 1) != 0))
      {
        BurstLoggingMessage("\t******Image %s classified as garbage.\n", [objc_msgSend(v41 "imageId")]);
        [v41 flagAsGarbage];
      }

      ++v39;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v39);
  }

  if (([(NSMutableArray *)self->clusterArray count]- 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v70 = 1;
    do
    {
      v71 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v70 - 1), "burstImages"), "objectAtIndex:", 0}];
      v72 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v70++), "burstImages"), "objectAtIndex:", 0}];
      v73 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v70), "burstImages"), "objectAtIndex:", 0}];
      if ([v71 isGarbage] && objc_msgSend(v73, "isGarbage") && (objc_msgSend(v72, "isGarbage") & 1) == 0)
      {
        BurstLoggingMessage("**** Image %s classified as garbage by association.\n", [objc_msgSend(v72 "imageId")]);
        [v72 flagAsGarbage];
      }
    }

    while ([(NSMutableArray *)self->clusterArray count]- 1 > v70);
  }

  if (![(NSMutableArray *)self->clusterArray count])
  {
    goto LABEL_95;
  }

  v74 = 0;
  v75 = 0.0;
  do
  {
    v76 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v74), "burstImages"), "objectAtIndex:", 0}];
    if (([v76 isGarbage] & 1) == 0)
    {
      [(CAMBurstActionClassifier *)self->actionClassifier testMinRegionOfInterestSize];
      v78 = v77;
      [v76 roiSize];
      if (v78 > v79)
      {
        [v76 roiSize];
        [(CAMBurstActionClassifier *)self->actionClassifier setTestMinRegionOfInterestSize:?];
      }

      if ([v76 hasRegistrationData])
      {
        [v76 maxSkewness];
        v81 = v80;
        [(CAMBurstActionClassifier *)self->actionClassifier testMaxRegistrationErrorSkewness];
        if (v81 > v82)
        {
          [v76 maxSkewness];
          [(CAMBurstActionClassifier *)self->actionClassifier setTestMaxRegistrationErrorSkewness:?];
        }

        [v76 registrationErrorX];
        v84 = v83;
        [(CAMBurstActionClassifier *)self->actionClassifier testMaxPeakRegistrationError];
        if (v84 > v85)
        {
          [v76 registrationErrorX];
          [(CAMBurstActionClassifier *)self->actionClassifier setTestMaxPeakRegistrationError:?];
        }

        [v76 registrationErrorY];
        v87 = v86;
        [(CAMBurstActionClassifier *)self->actionClassifier testMaxPeakRegistrationError];
        if (v87 > v88)
        {
          [v76 registrationErrorY];
          [(CAMBurstActionClassifier *)self->actionClassifier setTestMaxPeakRegistrationError:?];
        }

        v89 = self->actionClassifier;
        [v76 registrationErrorX];
        v91 = v90;
        [(CAMBurstActionClassifier *)v89 testMeanPeakRegistrationError];
        *&v93 = v91 + v92;
        [(CAMBurstActionClassifier *)v89 setTestMeanPeakRegistrationError:v93];
        v94 = self->actionClassifier;
        [v76 registrationErrorY];
        v96 = v95;
        [(CAMBurstActionClassifier *)v94 testMeanPeakRegistrationError];
        *&v98 = v96 + v97;
        [(CAMBurstActionClassifier *)v94 setTestMeanPeakRegistrationError:v98];
        [v76 registrationErrorIntegral];
        v100 = v99;
        [(CAMBurstActionClassifier *)self->actionClassifier testMaxRegistrationErrorIntegral];
        if (v100 > v101)
        {
          [v76 registrationErrorIntegral];
          [(CAMBurstActionClassifier *)self->actionClassifier setTestMaxRegistrationErrorIntegral:?];
        }

        v102 = self->actionClassifier;
        [v76 maxSkewness];
        v104 = v103;
        [(CAMBurstActionClassifier *)v102 testAverageRegistrationErrorSkewness];
        *&v106 = v105 + (v104 * 2.0);
        [(CAMBurstActionClassifier *)v102 setTestAverageRegistrationErrorSkewness:v106];
        v75 = v75 + 2.0;
      }
    }

    ++v74;
  }

  while ([(NSMutableArray *)self->clusterArray count]> v74);
  if (v75 > 0.0)
  {
    v107 = self->actionClassifier;
    [(CAMBurstActionClassifier *)v107 testAverageRegistrationErrorSkewness];
    *&v109 = v108 / v75;
    [(CAMBurstActionClassifier *)v107 setTestAverageRegistrationErrorSkewness:v109];
    v110 = self->actionClassifier;
    [(CAMBurstActionClassifier *)v110 testMeanPeakRegistrationError];
    *&v111 = *&v111 / v75;
    v112 = v110;
  }

  else
  {
LABEL_95:
    [(CAMBurstActionClassifier *)self->actionClassifier setTestAverageRegistrationErrorSkewness:0.0];
    v112 = self->actionClassifier;
    v111 = 0.0;
  }

  [(CAMBurstActionClassifier *)v112 setTestMeanPeakRegistrationError:v111];
  [(CAMBurstImageSetInternal *)self computeCameraTravelDistance];
  [(CAMBurstActionClassifier *)self->actionClassifier setTestAverageCameraTravelDistance:?];
  [(CAMBurstImageSetInternal *)self computeBeginningVsEndAEMatrixDiffVsAverageAdjacent];
  [(CAMBurstActionClassifier *)self->actionClassifier setTestBeginningVsEndAEMatrixVsAverageAdjacentAEMatrix:?];
  [(CAMBurstImageSetInternal *)self computeActionSelectionThreshold];
  v114 = v113;
  if ([(NSMutableArray *)self->clusterArray count])
  {
    v115 = 0;
    do
    {
      v116 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v115), "burstImages"), "objectAtIndex:", 0}];
      if (v116)
      {
        LODWORD(v117) = v114;
        [v116 computeScore:v117];
      }

      ++v115;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v115);
  }

  if ([(NSMutableArray *)self->clusterArray count])
  {
    v118 = 0;
    do
    {
      v119 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->clusterArray objectAtIndex:{v118), "burstImages"), "objectAtIndex:", 0}];
      if (v119)
      {
        [v119 writeGridROI:{-[NSMutableDictionary objectForKey:](self->statsByImageIdentifier, "objectForKey:", objc_msgSend(v119, "imageId"))}];
      }

      ++v118;
    }

    while ([(NSMutableArray *)self->clusterArray count]> v118);
  }
}

- (id)findBestImage:(id)image useActionScores:(BOOL)scores
{
  scoresCopy = scores;
  v55 = *MEMORY[0x1E69E9840];
  if (!image || ![image count])
  {
    return 0;
  }

  temporalOrder = [objc_msgSend(image objectAtIndex:{0), "temporalOrder"}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = [image countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(image);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        if (temporalOrder > [v10 temporalOrder])
        {
          temporalOrder = [v10 temporalOrder];
        }
      }

      v7 = [image countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v7);
  }

  v11 = [image count];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = [image countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (!v42)
  {
    return 0;
  }

  v12 = 0;
  v13 = vcvts_n_f32_u64(v11, 1uLL) + 0.5;
  v40 = *v46;
  v14 = v13 - (v13 * 0.5);
  v39 = v13 + (v13 * 0.5);
  v15 = 0.0;
  do
  {
    for (j = 0; j != v42; ++j)
    {
      if (*v46 != v40)
      {
        objc_enumerationMutation(image);
      }

      v17 = *(*(&v45 + 1) + 8 * j);
      v44 = v12;
      if (scoresCopy)
      {
        [v17 actionScore];
      }

      else
      {
        [v17 imageScore];
      }

      v19 = v18;
      [v17 setImageScore:?];
      v20 = -[NSMutableDictionary objectForKey:](self->statsByImageIdentifier, "objectForKey:", [v17 imageId]);
      if (v20)
      {
        v21 = v20;
        v22 = MEMORY[0x1E696AD98];
        [v17 imageScore];
        v23 = [v22 numberWithFloat:?];
        [v21 setObject:v23 forKey:kCAMBurstImageProperty_ImageScore[0]];
        if ([(CAMBurstImageSetInternal *)self version]>= 2)
        {
          v24 = [v21 objectForKey:@"Image_FacesArray"];
          if ([objc_msgSend(v17 "faceStatArray")])
          {
            v25 = 0;
            do
            {
              v26 = [objc_msgSend(v17 "faceStatArray")];
              v27 = [v24 objectAtIndex:v25];
              v28 = MEMORY[0x1E696AD98];
              [v26 normalizedFocusScore];
              v29 = [v28 numberWithFloat:?];
              [v27 setObject:v29 forKey:kCAMBurstImageFaceProperty_FocusScore[0]];
              v30 = MEMORY[0x1E696AD98];
              [v26 smileScore];
              v31 = [v30 numberWithFloat:?];
              [v27 setObject:v31 forKey:kCAMBurstImageFaceProperty_SmileScore[0]];
              ++v25;
            }

            while ([objc_msgSend(v17 "faceStatArray")] > v25);
          }
        }
      }

      [v17 registrationErrorIntegral];
      v33 = v32;
      v34 = ([v17 temporalOrder] - temporalOrder) + 1.0;
      if (v34 >= v14)
      {
        v35 = 0.0;
        v12 = v44;
        if (v34 > v39)
        {
          v35 = (v34 - v39) / ([image count] - v39);
        }
      }

      else
      {
        v35 = (v14 - v34) / (v14 + -1.0);
        v12 = v44;
      }

      v36 = exp(-(v35 * v35)) * 0.100000001 + 1.0;
      v37 = v19 * v36;
      BurstLoggingMessage("Score for %s:%d is %f \t\twith action score %f and center bias %f (isGarbage=%d)\n", [objc_msgSend(v17 "imageId")], objc_msgSend(v17, "temporalOrder"), v37, v33, v36, objc_msgSend(v17, "isGarbage"));
      if (!v12 || [v12 isGarbage] && !objc_msgSend(v17, "isGarbage") || v37 > v15 && ((objc_msgSend(v12, "isGarbage") & 1) != 0 || (objc_msgSend(v17, "isGarbage") & 1) == 0))
      {
        BurstLoggingMessage("NEW BEST\n");
        v12 = v17;
        v15 = v37;
      }
    }

    v42 = [image countByEnumeratingWithState:&v45 objects:v53 count:16];
  }

  while (v42);
  return v12;
}

- (void)selectCoverPhotoFromMultiple:(id)multiple burstSize:(int)size
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->isPortrait)
  {
    v6 = [objc_msgSend(multiple objectAtIndex:{0, *&size), "temporalOrder"}];
    v7 = [objc_msgSend(multiple "lastObject")];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = [multiple countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v35;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(multiple);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = ((([v14 temporalOrder] - v6) / (v7 - v6)) * 0.33) + 1.0;
          [(CAMBurstImageSetInternal *)self version];
          [v14 avgHorzDiffY];
          v17 = v15 * v16;
          [v14 blurExtent];
          v19 = v17 / (v18 + 1.0);
          BurstLoggingMessage("Cover photo PORTRAIT selection score for %d:%s = %f (unbiased = %f)\n", [v14 temporalOrder], objc_msgSend(objc_msgSend(v14, "imageId"), "UTF8String"), v19, (v19 / v15));
          if (v19 > v12)
          {
            v12 = v19;
            v10 = v14;
          }
        }

        v9 = [multiple countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v9);
      goto LABEL_17;
    }

LABEL_19:
    v33 = MEMORY[0x1E696AEC0];
    imageId = [objc_msgSend(multiple objectAtIndex:{0), "imageId"}];
    v32 = v33;
    goto LABEL_20;
  }

  v20 = [multiple count] / 3uLL;
  v21 = [multiple count];
  if (v20 > v21 + ~v20)
  {
    goto LABEL_19;
  }

  v10 = 0;
  v22 = v20;
  v23 = 0.0;
  v24 = v21 - 2 * v20;
  do
  {
    v25 = [multiple objectAtIndex:v22];
    [v25 avgHorzDiffY];
    v27 = v26;
    [v25 blurExtent];
    v29 = v27 / (v28 + 1.0);
    BurstLoggingMessage("Cover photo ACTION selection score for %d:%s = %f\n", [v25 temporalOrder], objc_msgSend(objc_msgSend(v25, "imageId"), "UTF8String"), v29);
    if (v29 > v23)
    {
      v23 = v29;
      v10 = v25;
    }

    ++v22;
    --v24;
  }

  while (v24);
LABEL_17:
  if (!v10)
  {
    goto LABEL_19;
  }

  v30 = MEMORY[0x1E696AEC0];
  imageId = [v10 imageId];
  v32 = v30;
LABEL_20:
  self->burstCoverSelection = [v32 stringWithString:imageId];
}

- (id)bestImageIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  dq = self->dq;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CAMBurstImageSetInternal_bestImageIdentifiers__block_invoke;
  block[3] = &unk_1E76F8128;
  block[4] = self;
  block[5] = v3;
  dispatch_sync(dq, block);
  if (v3)
  {
    if ([v3 count])
    {
      if ([v3 count] >= 2)
      {
        v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v6 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v12;
          do
          {
            v9 = 0;
            do
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v3);
              }

              [v5 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithString:", *(*(&v11 + 1) + 8 * v9++))}];
            }

            while (v7 != v9);
            v7 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
          }

          while (v7);
        }
      }
    }
  }

  [(CAMBurstImageSetInternal *)self setBestImageIdentifiersArray:v3];
  return v3;
}

void __48__CAMBurstImageSetInternal_bestImageIdentifiers__block_invoke(uint64_t a1)
{
  v1 = a1;
  v468 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) processClusters:1];
  if ([*(*(v1 + 32) + 32) count])
  {
    [*(*(v1 + 32) + 80) calcFaceScores:*(*(v1 + 32) + 32)];
    [*(v1 + 32) computeAllImageScores];
    if ([*(*(v1 + 32) + 32) count])
    {
      v2 = 0;
      do
      {
        v3 = [objc_msgSend(objc_msgSend(*(*(v1 + 32) + 32) objectAtIndex:{v2), "burstImages"), "objectAtIndex:", 0}];
        if (v3)
        {
          v4 = v3;
          v5 = [objc_msgSend(v3 "imageId")];
          v6 = [v4 faceStatArray] ? objc_msgSend(objc_msgSend(v4, "faceStatArray"), "count") : 0;
          [v4 avgHorzDiffY];
          BurstLoggingMessage("%s:   # faces = %d, avgH = %f\n", v5, v6, v7);
          if ([objc_msgSend(v4 "faceStatArray")])
          {
            v8 = 0;
            do
            {
              v9 = [objc_msgSend(v4 "faceStatArray")];
              v10 = [v9 faceId];
              [v9 faceRect];
              v12 = v11;
              [v9 faceRect];
              v14 = v13;
              [v9 faceRect];
              v16 = v15;
              [v9 faceRect];
              v18 = v17;
              [v9 focusScore];
              v20 = v19;
              [v9 normalizedFocusScore];
              BurstLoggingMessage("    face id=%d, rect=%.3f,%.3f,%.3f,%.3f, focus=%.3f, faceScore=%.3f, leftEyeOpen=%d, rightEyeOpen=%d\n", v10, v12, v14, v16, v18, v20, v21, [v9 leftEyeOpen], objc_msgSend(v9, "rightEyeOpen"));
              ++v8;
            }

            while ([objc_msgSend(v4 "faceStatArray")] > v8);
          }
        }

        ++v2;
      }

      while ([*(*(v1 + 32) + 32) count] > v2);
    }

    v22 = *(*(v1 + 32) + 32);
    if (v22)
    {
      if ([v22 count])
      {
        v23 = *(*(v1 + 32) + 32);
        v389 = v1;
        if (v23)
        {
          v24 = [v23 count];
          v25 = malloc_type_malloc((4 * (v24 * v24)) & 0x3FFFFFFFCLL, 0x100004052888210uLL);
          v26 = v25;
          v394 = v24;
          if (v25)
          {
            v27 = v24 < 2;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v396 = 0;
            v28 = v24;
            v29 = v24 & 0x7FFFFFFF;
            v30 = v24 - 1;
            if (v30 <= 1)
            {
              v30 = 1;
            }

            v373 = v30;
            v31 = v29 - 1;
            v32 = v25 + 4;
            v370 = 4 * v29 + 4;
            v33 = 1;
            v34 = 4;
            v371 = 4 * v29;
            v35 = 4 * v29;
            obj = v23;
            do
            {
              v36 = v28;
              v37 = [objc_msgSend(objc_msgSend(v23 objectAtIndex:{v396), "burstImages"), "objectAtIndex:", 0}];
              v38 = &v26[v396 * v394];
              v378 = v35;
              v380 = v34;
              v39 = v35;
              v375 = v36;
              v40 = v36;
              v41 = v26;
              v383 = v32;
              v386 = v31;
              v42 = v32;
              v43 = v33;
              do
              {
                [v37 computeImageDistance:{objc_msgSend(objc_msgSend(objc_msgSend(obj, "objectAtIndex:", v43), "burstImages"), "objectAtIndex:", 0)}];
                v45 = v44 * 1000000.0;
                *(v41 + v34) = v45;
                *(v41 + v39) = v45;
                v38[v396] = 0;
                *&v42[4 * v40] = 0;
                ++v43;
                v42 += 4;
                v40 += v394;
                v39 += v371;
                v34 += 4;
                --v31;
              }

              while (v31);
              ++v33;
              v31 = v386 - 1;
              v32 = v383 + 4;
              v28 = v375 + v394;
              v35 = v378 + v370;
              v34 = v380 + v370;
              v396 = v396 + 1;
              v26 = v41;
              v23 = obj;
            }

            while (v396 != v373);
            v1 = v389;
          }
        }

        else
        {
          v26 = 0;
        }

        v381 = v26;
        v46 = [*(*(v1 + 32) + 32) count];
        v47 = *(v1 + 32);
        v48 = *(v47 + 32);
        if (v46 < 7)
        {
          v60 = [*(v47 + 32) objectAtIndex:0];
          if (v46 >= 2)
          {
            v61 = (v46 & 0x7FFFFFFF) + 1;
            do
            {
              [v60 addItemsFromCluster:{objc_msgSend(*(*(v1 + 32) + 32), "objectAtIndex:", v61 - 2)}];
              [*(*(v1 + 32) + 32) removeObjectAtIndex:v61 - 2];
              --v61;
            }

            while (v61 > 2);
          }

          goto LABEL_358;
        }

        v49 = *(v47 + 152);
        v397 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
        v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
        v450 = 0;
        v51 = &gShortBurstWeights;
        v52 = &gMediumBurstWeights;
        v53 = &gWhyNotTryVideoInsteadWeights;
        v376 = (v46 - 1);
        v379 = v46;
        v449 = v46 - 1;
        if (v46 < 0x65)
        {
          v53 = &gLongBurstWeights;
        }

        if (v46 >= 0x33)
        {
          v52 = v53;
        }

        v447 = 0u;
        v448 = 0u;
        if (v46 >= 0x15)
        {
          v51 = v52;
        }

        v384 = v51;
        v445 = 0uLL;
        v446 = 0uLL;
        v54 = [v48 countByEnumeratingWithState:&v445 objects:v467 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = 0;
          v57 = *v446;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v446 != v57)
              {
                objc_enumerationMutation(v48);
              }

              v59 = [objc_msgSend(*(*(&v445 + 1) + 8 * i) "burstImages")];
              if (![objc_msgSend(v59 "faceStatArray")] && !objc_msgSend(v59, "numHWFaces"))
              {
                ++v56;
              }
            }

            v55 = [v48 countByEnumeratingWithState:&v445 objects:v467 count:16];
          }

          while (v55);
        }

        else
        {
          v56 = 0;
        }

        BurstLoggingMessage("Images without faces = %d, threshold = %d, total # = %d\n", v56, (v379 >> 2) + 1, v379);
        if (v56 <= ((v379 >> 2) + 1))
        {
          BurstLoggingMessage("Classified as portrait mode. Affects cover photo selection.\n");
          *(v47 + 73) = 1;
          v384 = &gWhyNotTryVideoInsteadWeights;
        }

        v62 = 0;
        v63 = v376;
        v64 = (v379 - 2);
        v65 = v379 & 0x7FFFFFFF;
        v66 = v65 - 1;
        v67 = 0.0;
        v68 = v376 - 1;
        v69 = v64 - 1;
        v70 = (v381 + 1);
        v71 = 4 * v65 + 4;
        v72 = v66;
        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
        v77 = 0.0;
        v78 = 0.0;
        do
        {
          v79 = 0;
          do
          {
            v80 = *&v70[4 * v79];
            if (!v62)
            {
              v75 = v75 + v80;
            }

            if (v62 + v79)
            {
              v81 = v62 == 1;
            }

            else
            {
              v81 = 1;
            }

            if (v81)
            {
              v76 = v76 + v80;
            }

            v82 = v69 == v79 || v62 == v64;
            v67 = v67 + v80;
            v73 = v73 + (v80 * v80);
            v74 = v74 + 1.0;
            if (v82)
            {
              v78 = v78 + v80;
            }

            v83 = v77 + v80;
            if (v68 == v79)
            {
              v77 = v83;
            }

            ++v79;
          }

          while (v72 != v79);
          ++v62;
          --v72;
          --v68;
          --v69;
          v70 += v71;
        }

        while (v62 != v376);
        v84 = v67 / v74;
        BurstLoggingMessage("all costs within valid region: \t\tmean = %f, std = %f\n", v84, sqrtf((v73 / v74) - (v84 * v84)));
        v85 = v376;
        v86 = v75 / v376;
        BurstLoggingMessage("First average cost = %f\n", v86);
        v372 = v66;
        if (v86 <= 575000.0)
        {
          v88 = 0;
        }

        else
        {
          v87 = v76 / v85;
          BurstLoggingMessage("Second average cost = %f\n", v87);
          if (v87 <= 575000.0)
          {
            BurstLoggingMessage("--Invalidating one outlier from the start of the burst\n");
            v450 = 1;
            v88 = -1;
          }

          else
          {
            BurstLoggingMessage("--Invalidating two outliers from the start of the burst\n");
            v450 = 2;
            v88 = -2;
          }
        }

        v89 = v77 / v85;
        BurstLoggingMessage("Last average cost = %f\n", v89);
        if (v89 > 575000.0)
        {
          v90 = v78 / v85;
          BurstLoggingMessage("Second-to-last average cost = %f\n", v90);
          if (v90 <= 575000.0)
          {
            BurstLoggingMessage("--Invalidating one outlier from the end of the burst\n");
            v63 = v379 - 2;
          }

          else
          {
            BurstLoggingMessage("--Invalidating two outliers from the end of the burst\n");
            v63 = v379 - 3;
          }

          v449 = v63;
        }

        if (v63 + v88 <= 5)
        {
          BurstLoggingMessage("Number of images too few after invalidation at the endpoints. Return one selection.\n");
        }

        else
        {
          v463 = 0uLL;
          *&v464 = 0;
          findBestThreeWayDivision(v381, v379, &v450, &v449, 0, -1, 0xFFFFFFFF, &v463);
          v91 = v463;
          BurstLoggingMessage("Result of three-way division: finalCost: %f, inOutRatio: %f\n", *&v463, *(&v463 + 1));
          LODWORD(v92) = v91;
          [v49 setTestMaxInnerDistance:v92];
          LODWORD(v93) = HIDWORD(v91);
          [v49 setTestInOutRatio:v93];
          if ([v49 isBurstAction])
          {
            v374 = v50;
            BurstLoggingMessage("Classified as action.\n");
            *(v47 + 72) = 1;
            v94 = v449;
            v95 = 0.0;
            v96 = 0.0;
            v97 = 0.0;
            v395 = v450;
            v382 = v449;
            if (v449 > v450)
            {
              v98 = v450;
              v99 = &v381[v450];
              obja = v379 + v379 * v450;
              v100 = v450 + 1;
              v101 = ~v450;
              v102 = -v450;
              do
              {
                v103 = objc_alloc_init(CAMBurstClusterDivider);
                v104 = [objc_msgSend(objc_msgSend(v48 objectAtIndex:{v98), "burstImages"), "objectAtIndex:", 0}];
                v106 = v98 + 1;
                v107 = v98 + 4;
                if (v94 < v98 + 4)
                {
                  v107 = v94;
                }

                if (v98 >= v107)
                {
                  v110 = v98 + 1;
                  v116 = NAN;
                }

                else
                {
                  v105 = 0.0;
                  v108 = obja;
                  v109 = 0.0;
                  v110 = v98 + 1;
                  do
                  {
                    if (v395 <= v106 - 4)
                    {
                      v111 = v106 - 4;
                    }

                    else
                    {
                      v111 = v395;
                    }

                    if (v98 >= v111)
                    {
                      v112 = &v99[v108];
                      v113 = &v384[4 * v101 + 4 * v106];
                      v114 = v100;
                      v115 = v102 + v106;
                      do
                      {
                        if (v115 <= 4)
                        {
                          *&v105 = *&v105 + (*v112 * *v113);
                          v109 = v109 + *v113;
                        }

                        --v112;
                        --v114;
                        ++v113;
                        ++v115;
                      }

                      while (v114 > v111);
                    }

                    ++v106;
                    v108 += v379;
                  }

                  while (v106 <= v107);
                  v116 = *&v105 / v109;
                }

                *&v105 = v116;
                [(CAMBurstClusterDivider *)v103 setDividerScore:v105];
                [(CAMBurstClusterDivider *)v103 setLeftImage:v98];
                [v104 actionClusteringScore];
                [(CAMBurstClusterDivider *)v103 setActionAmount:?];
                [(CAMBurstClusterDivider *)v103 dividerScore];
                v118 = v117;
                [v104 actionClusteringScore];
                BurstLoggingMessage("Between %d and %d: \t%f \t%f \t\tmotion: %f\n", v98, v110, v116, v118, v119);
                [v397 addObject:v103];

                [v104 actionClusteringScore];
                v97 = v97 + v120;
                [v104 actionClusteringScore];
                v122 = v121;
                [v104 actionClusteringScore];
                v96 = v96 + (v122 * v123);
                ++v99;
                obja += v379;
                ++v100;
                --v101;
                --v102;
                v98 = v110;
                v81 = v382 == v110;
                v94 = v382;
              }

              while (!v81);
            }

            v124 = (v94 - v395);
            v125 = v97 / v124;
            v387 = v124;
            v126 = sqrtf((v96 / v124) - (v125 * v125));
            v127 = v125 - v126;
            if ((v125 - v126) < 5000.0)
            {
              v127 = 5000.0;
            }

            if (v127 > 9000.0)
            {
              v127 = 9000.0;
            }

            objb = v127;
            BurstLoggingMessage("Action mean = %f, action std = %f, action threshold = %f\n", v125, v126, v127);
            if (v94 > v395)
            {
              v128 = 0;
              v129 = v395 - 4;
              v95 = 0.0;
              v130 = v395;
              do
              {
                if (v130 - 4 <= v395)
                {
                  v131 = v395;
                }

                else
                {
                  v131 = v130 - 4;
                }

                v132 = v130 + 4;
                if (v130 + 4 >= v94)
                {
                  v132 = v94;
                }

                v133 = 0.0;
                v134 = 0.0;
                v135 = 0.0;
                if (v131 < v132)
                {
                  if (v129 <= v395)
                  {
                    v136 = v395;
                  }

                  else
                  {
                    v136 = v129;
                  }

                  v137 = v132;
                  do
                  {
                    if (v128 - v395 + v136)
                    {
                      v138 = [v397 objectAtIndex:v136 - v395];
                      [v138 dividerScore];
                      v133 = v133 + v139;
                      [v138 dividerScore];
                      v141 = v140;
                      [v138 dividerScore];
                      v134 = v134 + (v141 * v142);
                      v135 = v135 + 1.0;
                    }

                    ++v136;
                  }

                  while (v136 < v137);
                }

                v143 = v133 / v135;
                v144 = sqrtf((v134 / v135) - (v143 * v143));
                v145 = [v397 objectAtIndex:v130 - v395];
                *&v146 = (v133 / v135) + (v144 * 0.5);
                [v145 setNoiseThreshold:v146];
                *&v147 = (v133 / v135) + (v144 * 3.0);
                [v145 setHighNoiseThreshold:v147];
                v148 = [v145 leftImage];
                [v145 dividerScore];
                v150 = v149;
                [v145 noiseThreshold];
                v152 = v151;
                [v145 highNoiseThreshold];
                BurstLoggingMessage("Local statistics for divider %03d\t with score %f:\t\t noise threshold = %f, high threshold = %f (mean %f, std %f)\n", v148, v150, v152, v153, v143, v144);
                [v145 dividerScore];
                v95 = v95 + v154;
                ++v130;
                ++v129;
                --v128;
                v94 = v382;
              }

              while (v382 != v130);
            }

            if ((v95 / v387) <= 150000.0)
            {
              v155 = v95 / v387;
            }

            else
            {
              v155 = 150000.0;
            }

            BurstLoggingMessage("Overall mean divider score = %f\n", v155);
            BurstLoggingMessage("clusterDividerArraySize = %d\n", [v397 count]);
            if (([v397 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              if (v84 <= 280000.0)
              {
                v156 = v84;
              }

              else
              {
                v156 = 280000.0;
              }

              for (j = 1; [v397 count] - 1 > j; ++j)
              {
                v158 = [v397 objectAtIndex:j];
                [v158 setTrueLocalMaximum:0];
                v159 = [v397 objectAtIndex:j - 1];
                v160 = v159;
                if (j >= v379 - 2)
                {
                  v161 = 0;
                  if (v159)
                  {
LABEL_131:
                    [v160 dividerScore];
                    v163 = v162;
                    [v158 dividerScore];
                    v165 = v163 <= v164;
                    if (v161)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_134;
                  }
                }

                else
                {
                  v161 = [v397 objectAtIndex:j + 1];
                  if (v160)
                  {
                    goto LABEL_131;
                  }
                }

                v165 = 1;
                if (v161)
                {
LABEL_132:
                  [v161 dividerScore];
                  v167 = v166;
                  [v158 dividerScore];
                  if (v167 > v168)
                  {
                    v165 = 0;
                  }
                }

LABEL_134:
                [v158 dividerScore];
                if (v165 && v169 >= 27500.0)
                {
                  [v158 dividerScore];
                  v171 = v170;
                  [v158 noiseThreshold];
                  if (v171 < v172 || ([v158 dividerScore], v173 < v155) && (objc_msgSend(v158, "dividerScore"), v175 = v174, objc_msgSend(v158, "highNoiseThreshold"), v175 < v176))
                  {
                    [v158 leftImage];
                    [v158 dividerScore];
                    [v158 noiseThreshold];
                    BurstLoggingMessage("Locally-maximal divider %d not considered due to being potential noise (%f vs %f,%f)\n");
                  }

                  else
                  {
                    v177 = [objc_msgSend(objc_msgSend(v48 objectAtIndex:{objc_msgSend(v158, "leftImage")), "burstImages"), "objectAtIndex:", 0}];
                    [v177 actionClusteringScore];
                    if ((v178 >= objb || ([v158 dividerScore], v179 >= v156)) && (objc_msgSend(v177, "actionClusteringScore"), v180 >= 1.0))
                    {
                      if (j < 2 || [v397 count] - 2 <= j || (v181 = objc_msgSend(v397, "objectAtIndex:", j - 2), v182 = objc_msgSend(v397, "objectAtIndex:", j + 2), objc_msgSend(v160, "dividerScore"), v184 = v183, objc_msgSend(v158, "dividerScore"), (v184 / v185) <= 0.95) && (objc_msgSend(v161, "dividerScore"), v187 = v186, objc_msgSend(v158, "dividerScore"), (v187 / v188) <= 0.95) || (objc_msgSend(v181, "dividerScore"), v190 = v189, objc_msgSend(v158, "dividerScore"), v190 <= v191) && (objc_msgSend(v182, "dividerScore"), v193 = v192, objc_msgSend(v158, "dividerScore"), v193 <= v194))
                      {
                        [v158 setTrueLocalMaximum:1];
                        [v374 addObject:v158];
                      }

                      else
                      {
                        BurstLoggingMessage("Locally-maximal divider %d not considered due to being potential noise (nearby peak).\n");
                      }
                    }

                    else
                    {
                      [v158 leftImage];
                      [v177 actionClusteringScore];
                      BurstLoggingMessage("Locally-maximal divider %d not considered due to lack of any motion: %f\n");
                    }
                  }
                }
              }
            }

            BurstLoggingMessage("local maxima size: %ld\n", [v374 count]);
            v443 = 0u;
            v444 = 0u;
            v441 = 0u;
            v442 = 0u;
            v200 = [v374 countByEnumeratingWithState:&v441 objects:&v463 count:16];
            v1 = v389;
            if (v200)
            {
              v201 = v200;
              v202 = *v442;
              do
              {
                for (k = 0; k != v201; ++k)
                {
                  if (*v442 != v202)
                  {
                    objc_enumerationMutation(v374);
                  }

                  BurstLoggingMessage("divider %d\n", [*(*(&v441 + 1) + 8 * k) leftImage]);
                }

                v201 = [v374 countByEnumeratingWithState:&v441 objects:&v463 count:16];
              }

              while (v201);
            }

            v204 = [v374 count];
            if (v204 <= 1)
            {
              v273 = v204;
              BurstLoggingMessage("Re-running three-way division with minClusterSize = %d, maxClusterSize = %d\n", (v379 * 0.1), (v379 * 0.7));
              v461 = 0;
              v460 = 0;
              v462 = 0;
              findBestThreeWayDivision(v381, v379, &v450, &v449, 0, (v379 * 0.1), (v379 * 0.7), &v460);
              v274 = v460;
              v275 = v461;
              v276 = SHIDWORD(v461);
              v277 = v462;
              v278 = SHIDWORD(v462);
              v279 = v372;
              if (v376 > SHIDWORD(v461))
              {
                do
                {
                  [v48 removeObjectAtIndex:v279--];
                }

                while (v279 > v276);
              }

              v280 = [v48 objectAtIndex:v278 + 1];
              if (v276 > v278 + 1)
              {
                v281 = v280;
                do
                {
                  [v281 addItemsFromCluster:{objc_msgSend(v48, "objectAtIndex:", v276)}];
                  [v48 removeObjectAtIndex:v276--];
                }

                while (v276 > v278 + 1);
              }

              v282 = [v48 objectAtIndex:v277 + 1];
              if (v278 > v277 + 1)
              {
                v283 = v282;
                do
                {
                  [v283 addItemsFromCluster:{objc_msgSend(v48, "objectAtIndex:", v278)}];
                  [v48 removeObjectAtIndex:v278--];
                }

                while (v278 > v277 + 1);
              }

              v284 = [v48 objectAtIndex:v275];
              if (v277 > v275)
              {
                v285 = v284;
                do
                {
                  [v285 addItemsFromCluster:{objc_msgSend(v48, "objectAtIndex:", v277)}];
                  [v48 removeObjectAtIndex:v277--];
                }

                while (v277 > v275);
              }

              v286 = v273;
              if (v275 >= 1)
              {
                v287 = v275 + 1;
                do
                {
                  [v48 removeObjectAtIndex:v287 - 2];
                  --v287;
                }

                while (v287 > 1);
              }

              BurstLoggingMessage("Clustering costs: maxInner = %f, inOutRatio = %f\n", *&v274, *(&v274 + 1));
            }

            else
            {
              v377 = v204;
              v205 = [v374 sortedArrayUsingSelector:sel_compareDividers_];
              v206 = [v205 objectAtIndex:0];
              v207 = [v205 objectAtIndex:1];
              BurstLoggingMessage("Strongest local maxima: %d and %d\n", [v206 leftImage], objc_msgSend(v207, "leftImage"));
              v208 = [v206 leftImage];
              v209 = [v206 leftImage];
              v210 = v208 + 1;
              if ([v397 count] > v210)
              {
                v212 = v209;
                v213 = 1;
                v214 = 0.0;
                v215 = 0.0;
                do
                {
                  v216 = [v397 objectAtIndex:v210];
                  v217 = v216;
                  if (v215 != 0.0)
                  {
                    [v216 dividerScore];
                    if (*&v211 > v215)
                    {
                      break;
                    }
                  }

                  [v217 dividerScore];
                  v215 = v218;
                  v219 = v218;
                  [v206 dividerScore];
                  v211 = v220 * 0.75;
                  if (v215 <= v84 || v211 >= v219)
                  {
                    break;
                  }

                  [v207 dividerScore];
                  if (v215 <= *&v211)
                  {
                    break;
                  }

                  BurstLoggingMessage("Expanding main peak to include divider %d\n", [v217 leftImage]);
                  [v374 addObject:v217];
                  if ((v213 & 1) == 0)
                  {
                    break;
                  }

                  if (v212 < 1)
                  {
                    break;
                  }

                  v222 = [v397 objectAtIndex:--v212];
                  v223 = v222;
                  if (v214 != 0.0)
                  {
                    [v222 dividerScore];
                    if (*&v211 > v214)
                    {
                      break;
                    }
                  }

                  [v223 dividerScore];
                  v214 = v224;
                  [v206 dividerScore];
                  if (v214 <= v84)
                  {
                    break;
                  }

                  v211 = *&v211 * 0.75;
                  if (v211 >= v214)
                  {
                    break;
                  }

                  [v207 dividerScore];
                  if (v214 <= *&v211)
                  {
                    break;
                  }

                  BurstLoggingMessage("Expanding main peak to include divider %d\n", [v223 leftImage]);
                  [v374 addObject:v223];
                  ++v210;
                  v213 = 0;
                }

                while ([v397 count] > v210);
              }

              v225 = [v374 sortedArrayUsingSelector:v211];
              BurstLoggingMessage("Adding action-based cluster boundaries.\n");
              v385 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
              v437 = 0u;
              v438 = 0u;
              v439 = 0u;
              v440 = 0u;
              objc = v225;
              v226 = [v225 countByEnumeratingWithState:&v437 objects:&v460 count:16];
              if (v226)
              {
                v227 = v226;
                v228 = 0;
                v229 = *v438;
                v230 = v395;
                do
                {
                  v231 = 0;
                  v388 = v227;
                  do
                  {
                    if (*v438 != v229)
                    {
                      objc_enumerationMutation(objc);
                    }

                    v232 = *(*(&v437 + 1) + 8 * v231);
                    if (([v232 leftImage] - v230) >= 7)
                    {
                      v233 = 0.0;
                      v234 = 0.0;
                      v235 = 0.0;
                      v236 = 0.0;
                      if (v230 <= [v232 leftImage])
                      {
                        v237 = v230;
                        do
                        {
                          v238 = [objc_msgSend(objc_msgSend(v48 objectAtIndex:{v237), "burstImages"), "objectAtIndex:", 0}];
                          [v238 registrationErrorIntegral];
                          if (v236 < v239)
                          {
                            [v238 registrationErrorIntegral];
                            v236 = v240;
                          }

                          [v238 registrationErrorIntegral];
                          v233 = v233 + v241;
                          [v238 registrationErrorIntegral];
                          v243 = v242;
                          [v238 registrationErrorIntegral];
                          v234 = v234 + (v243 * v244);
                          v235 = v235 + 1.0;
                          v27 = v237++ < [v232 leftImage];
                        }

                        while (v27);
                        v236 = v236 * 0.99;
                      }

                      v245 = v229;
                      v246 = (v233 / v235);
                      v247 = sqrtf((v234 / v235) - ((v233 / v235) * (v233 / v235)));
                      v248 = v246 + v247 * 0.5;
                      if (v248 >= 20000.0)
                      {
                        v249 = v246 + v247 * 0.5;
                      }

                      else
                      {
                        v249 = 20000.0;
                      }

                      v398 = v228 + 1;
                      BurstLoggingMessage("Action statistics for cluster %d: mean %f std %f threshold %f\n", v228 + 1, (v233 / v235), v247, v249);
                      v250 = [v232 leftImage];
                      v251 = 0;
                      v252 = 0;
                      v253 = v250;
                      LODWORD(v254) = -1;
                      do
                      {
                        v255 = [objc_msgSend(objc_msgSend(v48 objectAtIndex:{v253), "burstImages"), "objectAtIndex:", 0}];
                        [v255 registrationErrorIntegral];
                        if (v256 <= v249)
                        {
                          v254 = v254;
                        }

                        else
                        {
                          v254 = v250;
                        }

                        [v255 registrationErrorIntegral];
                        v259 = v257 > v236 && v251 < 2;
                        v252 |= v259;
                        --v253;
                        ++v251;
                        --v250;
                      }

                      while (v251 != 4);
                      v229 = v245;
                      if (v254 > 0 && ((v254 != [v232 leftImage]) & v252) == 1)
                      {
                        BurstLoggingMessage("Adding ACTION DIVIDER at location %d\n", v254);
                        v260 = objc_alloc_init(CAMBurstClusterDivider);
                        [(CAMBurstClusterDivider *)v260 setDividerScore:0.0];
                        [(CAMBurstClusterDivider *)v260 setLeftImage:v254];
                        [v385 addObject:v260];
                      }

                      v227 = v388;
                      v228 = v398;
                    }

                    else
                    {
                      BurstLoggingMessage("Cluster %d is too small for action-based cluster boundaries\n", ++v228);
                    }

                    v230 = [v232 leftImage] + 1;
                    ++v231;
                  }

                  while (v231 != v227);
                  v227 = [objc countByEnumeratingWithState:&v437 objects:&v460 count:16];
                }

                while (v227);
              }

              [v374 addObjectsFromArray:v385];
              v261 = [v374 sortedArrayUsingSelector:sel_compareIndices_];
              v262 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v261, "count") + 1}];
              v433 = 0u;
              v434 = 0u;
              v435 = 0u;
              v436 = 0u;
              v263 = v261;
              v264 = [v261 countByEnumeratingWithState:&v433 objects:v459 count:16];
              if (v264)
              {
                v265 = v264;
                v266 = *v434;
                v267 = v395;
                do
                {
                  for (m = 0; m != v265; ++m)
                  {
                    if (*v434 != v266)
                    {
                      objc_enumerationMutation(v263);
                    }

                    v269 = *(*(&v433 + 1) + 8 * m);
                    v270 = objc_alloc_init(CAMBurstThumbnailCluster);
                    v271 = [v269 leftImage];
                    if (v271 >= v267)
                    {
                      v272 = v271;
                      do
                      {
                        -[CAMBurstThumbnailCluster addItemsFromCluster:](v270, "addItemsFromCluster:", [v48 objectAtIndex:v272]);
                        v27 = v272-- <= v267;
                      }

                      while (!v27);
                    }

                    v267 = [v269 leftImage] + 1;
                    [v262 addObject:v270];
                  }

                  v265 = [v263 countByEnumeratingWithState:&v433 objects:v459 count:16];
                }

                while (v265);
              }

              else
              {
                v267 = v395;
              }

              v288 = objc_alloc_init(CAMBurstThumbnailCluster);
              v289 = v382;
              if (v382 >= v267)
              {
                do
                {
                  -[CAMBurstThumbnailCluster addItemsFromCluster:](v288, "addItemsFromCluster:", [v48 objectAtIndex:v289]);
                  v27 = v289-- <= v267;
                }

                while (!v27);
              }

              [v262 addObject:v288];

              [v48 removeAllObjects];
              v431 = 0u;
              v432 = 0u;
              v429 = 0u;
              v430 = 0u;
              v290 = [v262 countByEnumeratingWithState:&v429 objects:v458 count:16];
              v1 = v389;
              v286 = v377;
              if (v290)
              {
                v291 = v290;
                v292 = *v430;
                do
                {
                  for (n = 0; n != v291; ++n)
                  {
                    if (*v430 != v292)
                    {
                      objc_enumerationMutation(v262);
                    }

                    [v48 addObject:*(*(&v429 + 1) + 8 * n)];
                  }

                  v291 = [v262 countByEnumeratingWithState:&v429 objects:v458 count:16];
                }

                while (v291);
              }
            }

            v294 = 0.0;
            if (v286 <= 1)
            {
              goto LABEL_267;
            }

            goto LABEL_266;
          }

          BurstLoggingMessage("Classified as non-action.\n");
          *(v47 + 72) = 0;
          v63 = v449;
        }

        if (v376 > v63)
        {
          v195 = v376;
          do
          {
            [v48 removeObjectAtIndex:v195--];
          }

          while (v195 > v63);
        }

        v196 = v450;
        if (v450 >= 1)
        {
          do
          {
            [v48 removeObjectAtIndex:0];
            --v196;
          }

          while (v196);
        }

        v197 = [v48 objectAtIndex:0];
        v198 = [v48 count];
        if (v198 > 1)
        {
          v199 = (v198 & 0x7FFFFFFF) + 1;
          do
          {
            [v197 addItemsFromCluster:{objc_msgSend(v48, "objectAtIndex:", v199 - 2)}];
            [v48 removeObjectAtIndex:v199 - 2];
            --v199;
          }

          while (v199 > 2);
        }

LABEL_266:
        v294 = v84;
LABEL_267:
        v427 = 0u;
        v428 = 0u;
        v425 = 0u;
        v426 = 0u;
        v295 = *(*(v1 + 32) + 32);
        v296 = [v295 countByEnumeratingWithState:&v425 objects:v457 count:16];
        if (v296)
        {
          v297 = v296;
          v298 = 0;
          v299 = *v426;
          do
          {
            v300 = 0;
            v301 = v298;
            do
            {
              if (*v426 != v299)
              {
                objc_enumerationMutation(v295);
              }

              v302 = *(*(&v425 + 1) + 8 * v300);
              v298 = v301 + 1;
              BurstLoggingMessage("Performing emotional rejection of face images in cluster %d:\n", v301);
              [*(v1 + 32) performEmotionalRejectionOnCluster:{objc_msgSend(v302, "burstImages")}];
              ++v300;
              ++v301;
            }

            while (v297 != v300);
            v297 = [v295 countByEnumeratingWithState:&v425 objects:v457 count:16];
          }

          while (v297);
        }

        if ([*(*(v1 + 32) + 32) count] >= 2)
        {
          v303 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
          v423 = 0u;
          v424 = 0u;
          v421 = 0u;
          v422 = 0u;
          v399 = *(*(v1 + 32) + 32);
          v304 = [v399 countByEnumeratingWithState:&v421 objects:v456 count:16];
          if (v304)
          {
            v305 = v304;
            v306 = *v422;
            do
            {
              for (ii = 0; ii != v305; ++ii)
              {
                if (*v422 != v306)
                {
                  objc_enumerationMutation(v399);
                }

                v308 = *(*(&v421 + 1) + 8 * ii);
                BurstLoggingMessage("Items in next cluster:\n");
                v419 = 0u;
                v420 = 0u;
                v417 = 0u;
                v418 = 0u;
                v309 = [v308 burstImages];
                v310 = [v309 countByEnumeratingWithState:&v417 objects:v455 count:16];
                if (v310)
                {
                  v311 = v310;
                  v312 = *v418;
                  do
                  {
                    for (jj = 0; jj != v311; ++jj)
                    {
                      if (*v418 != v312)
                      {
                        objc_enumerationMutation(v309);
                      }

                      BurstLoggingMessage("%s\n", [objc_msgSend(*(*(&v417 + 1) + 8 * jj) "imageId")]);
                    }

                    v311 = [v309 countByEnumeratingWithState:&v417 objects:v455 count:16];
                  }

                  while (v311);
                }

                v1 = v389;
                v314 = [*(v389 + 32) findBestImage:objc_msgSend(v308 useActionScores:{"burstImages"), (*(*(v389 + 32) + 73) & 1) == 0}];
                if (v314)
                {
                  [v303 addObject:v314];
                }
              }

              v305 = [v399 countByEnumeratingWithState:&v421 objects:v456 count:16];
            }

            while (v305);
          }

          v315 = v303;
          if (*(*(v1 + 32) + 73) == 1)
          {
            v415 = 0u;
            v416 = 0u;
            v413 = 0u;
            v414 = 0u;
            v316 = [v303 countByEnumeratingWithState:&v413 objects:v454 count:16];
            if (v316)
            {
              v317 = v316;
              v318 = *v414;
              do
              {
                for (kk = 0; kk != v317; ++kk)
                {
                  if (*v414 != v318)
                  {
                    objc_enumerationMutation(v315);
                  }

                  v320 = *(*(&v413 + 1) + 8 * kk);
                  v409 = 0u;
                  v410 = 0u;
                  v411 = 0u;
                  v412 = 0u;
                  v321 = [v320 faceStatArray];
                  v322 = [v321 countByEnumeratingWithState:&v409 objects:v453 count:16];
                  if (!v322)
                  {
                    goto LABEL_307;
                  }

                  v323 = v322;
                  v324 = 0;
                  v325 = *v410;
                  do
                  {
                    for (mm = 0; mm != v323; ++mm)
                    {
                      if (*v410 != v325)
                      {
                        objc_enumerationMutation(v321);
                      }

                      [*(*(&v409 + 1) + 8 * mm) normalizedFocusScore];
                      if (v327 >= 1.0)
                      {
                        ++v324;
                      }
                    }

                    v323 = [v321 countByEnumeratingWithState:&v409 objects:v453 count:16];
                  }

                  while (v323);
                  v1 = v389;
                  if (!v324)
                  {
LABEL_307:
                    BurstLoggingMessage("Image %s is classified as garbage for portrait mode, no sharp faces.\n", [objc_msgSend(v320 "imageId")]);
                    [v320 setIsGarbage:1];
                  }

                  v315 = v303;
                }

                v317 = [v303 countByEnumeratingWithState:&v413 objects:v454 count:16];
              }

              while (v317);
            }

            if ([v315 count] && objc_msgSend(v315, "count") != 1)
            {
              v328 = 0;
              do
              {
                v329 = [v315 objectAtIndex:v328++];
                v330 = [v315 objectAtIndex:v328];
                BurstLoggingMessage("Checking temporal order: %d vs. %d\n", [v329 temporalOrder], objc_msgSend(v330, "temporalOrder"));
                v331 = [v329 temporalOrder];
                if (v331 == [v330 temporalOrder] - 1 && (objc_msgSend(v330, "isGarbage") & 1) == 0)
                {
                  BurstLoggingMessage("Removing %d:%s\n", [v329 temporalOrder], objc_msgSend(objc_msgSend(v329, "imageId"), "UTF8String"));
                  [v329 setIsGarbage:1];
                }
              }

              while ([v315 count] - 1 > v328);
            }
          }

          v332 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
          if ([v315 count] < 4)
          {
            v407 = 0u;
            v408 = 0u;
            v405 = 0u;
            v406 = 0u;
            v360 = [v315 countByEnumeratingWithState:&v405 objects:v452 count:16];
            if (v360)
            {
              v361 = v360;
              v362 = *v406;
              do
              {
                for (nn = 0; nn != v361; ++nn)
                {
                  if (*v406 != v362)
                  {
                    objc_enumerationMutation(v315);
                  }

                  v364 = *(*(&v405 + 1) + 8 * nn);
                  if (([v364 isGarbage] & 1) == 0 && (objc_msgSend(v364, "emotionallyRejected") & 1) == 0)
                  {
                    [v332 addObject:v364];
                  }
                }

                v361 = [v315 countByEnumeratingWithState:&v405 objects:v452 count:16];
              }

              while (v361);
            }

            v335 = v379;
            if ([v332 count])
            {
              goto LABEL_373;
            }

            v357 = [v315 objectAtIndex:0];
            v356 = v332;
          }

          else
          {
            v333 = [v315 sortedArrayUsingSelector:sel_compareImageOrder_];
            if ((v294 / 4.5) <= 70000.0)
            {
              v334 = v294 / 4.5;
            }

            else
            {
              v334 = 70000.0;
            }

            BurstLoggingMessage("Threshold for dupes: %f\n", v334);
            v335 = v379;
            if ([v333 count])
            {
              v336 = 0;
              v337 = 0;
              v400 = v333;
              do
              {
                v338 = [v333 objectAtIndex:v336];
                v339 = 0.0;
                if ([v333 count] - 1 > v336)
                {
                  v340 = [v333 objectAtIndex:v336 + 1];
                  v341 = [v338 temporalOrder];
                  v339 = v381[([v340 temporalOrder] + v341 * v335)];
                  [v338 computeAEMatrixDifference:v340];
                  v1 = v389;
                  BurstLoggingMessage("Distance between selections %d and %d: %f, %f\n", [v338 temporalOrder], objc_msgSend(v340, "temporalOrder"), v339, v342);
                }

                if ([v333 count] - 1 <= v336 || v339 >= v334)
                {
                  if (v337)
                  {
                    [v337 addObject:v338];
                    v466 = 0u;
                    v465 = 0u;
                    v464 = 0u;
                    v463 = 0u;
                    v343 = [v337 countByEnumeratingWithState:&v463 objects:v467 count:16];
                    if (!v343)
                    {
                      goto LABEL_344;
                    }

                    v344 = v343;
                    v345 = 0;
                    v346 = *v464;
                    v347 = 0.0;
                    do
                    {
                      for (i1 = 0; i1 != v344; ++i1)
                      {
                        if (*v464 != v346)
                        {
                          objc_enumerationMutation(v337);
                        }

                        v349 = *(*(&v463 + 1) + 8 * i1);
                        v350 = [v349 temporalOrder];
                        [v349 imageScore];
                        BurstLoggingMessage("Selection score of %d is %f... isGarbage = %d\n", v350, v351, [v349 isGarbage]);
                        [v349 imageScore];
                        if (v352 > v347 && ([v349 isGarbage] & 1) == 0 && (objc_msgSend(v349, "emotionallyRejected") & 1) == 0)
                        {
                          [v349 imageScore];
                          v347 = v353;
                          v345 = v349;
                        }
                      }

                      v344 = [v337 countByEnumeratingWithState:&v463 objects:v467 count:16];
                    }

                    while (v344);
                    v335 = v379;
                    v333 = v400;
                    if (v345)
                    {
                      BurstLoggingMessage("Choosing candidate %d from a series of dupes\n", [v345 temporalOrder]);
                      [v332 addObject:v345];
                    }

                    else
                    {
LABEL_344:
                      BurstLoggingMessage("Throwing away all dupes due to garbage classification\n");
                    }

                    [v337 removeAllObjects];
                    v337 = 0;
                    v1 = v389;
                  }

                  else
                  {
                    if ([v338 isGarbage] & 1) != 0 || (objc_msgSend(v338, "emotionallyRejected"))
                    {
                      if ([v338 isGarbage])
                      {
                        v354 = "trash";
                      }

                      else
                      {
                        v354 = "reject";
                      }

                      v369 = v354;
                      v335 = v379;
                      BurstLoggingMessage("Tossing out the %s on %d\n", v369, [v338 temporalOrder]);
                    }

                    else
                    {
                      BurstLoggingMessage("Keeping candidate %d\n", [v338 temporalOrder]);
                      [v332 addObject:v338];
                    }

                    v337 = 0;
                  }
                }

                else
                {
                  if (!v337)
                  {
                    v337 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                  }

                  [v337 addObject:v338];
                }

                ++v336;
              }

              while ([v333 count] > v336);
            }

            if ([v332 count])
            {
              goto LABEL_373;
            }

            v355 = [v333 objectAtIndex:{(objc_msgSend(v333, "count") + 1) >> 1}];
            BurstLoggingMessage("All images are garbage. Picking the middle selection = %s.\n", [objc_msgSend(v355 "imageId")]);
            v356 = v332;
            v357 = v355;
          }

          [v356 addObject:v357];
LABEL_373:
          [*(v1 + 32) selectCoverPhotoFromMultiple:v332 burstSize:v335];
          v403 = 0u;
          v404 = 0u;
          v401 = 0u;
          v402 = 0u;
          v365 = [v332 countByEnumeratingWithState:&v401 objects:v451 count:16];
          if (v365)
          {
            v366 = v365;
            v367 = *v402;
            do
            {
              for (i2 = 0; i2 != v366; ++i2)
              {
                if (*v402 != v367)
                {
                  objc_enumerationMutation(v332);
                }

                [*(v1 + 40) addObject:{objc_msgSend(*(*(&v401 + 1) + 8 * i2), "imageId")}];
              }

              v366 = [v332 countByEnumeratingWithState:&v401 objects:v451 count:16];
            }

            while (v366);
          }

LABEL_380:
          free(v381);
          return;
        }

        v60 = [*(*(v1 + 32) + 32) objectAtIndex:0];
        BurstLoggingMessage("All items in one cluster.\n");
LABEL_358:
        v358 = [*(v1 + 32) findBestImage:objc_msgSend(v60 useActionScores:{"burstImages"), 0}];
        if (v358)
        {
          v359 = v358;
          *(*(v1 + 32) + 64) = [MEMORY[0x1E696AEC0] stringWithString:{objc_msgSend(v358, "imageId")}];
          [*(v1 + 40) addObject:{objc_msgSend(v359, "imageId")}];
        }

        goto LABEL_380;
      }
    }
  }
}

- (id)imageClusterForIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->clusterByImageIdentifier)
  {
    self->clusterByImageIdentifier = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    if ([(NSMutableArray *)self->clusterArray count])
    {
      v4 = 0;
      do
      {
        v5 = [(NSMutableArray *)self->clusterArray objectAtIndex:v4];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        burstImages = [v5 burstImages];
        v7 = [burstImages countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(burstImages);
              }

              -[NSMutableDictionary setObject:forKey:](self->clusterByImageIdentifier, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v4], objc_msgSend(*(*(&v25 + 1) + 8 * i), "imageId"));
            }

            v8 = [burstImages countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v8);
        }

        ++v4;
      }

      while ([(NSMutableArray *)self->clusterArray count]> v4);
    }
  }

  v11 = [(NSMutableDictionary *)self->clusterByImageIdentifier objectForKey:identifier];
  if (!v11)
  {
    return 0;
  }

  v12 = -[NSMutableArray objectAtIndex:](self->clusterArray, "objectAtIndex:", [v11 intValue]);
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(v12, "burstImages"), "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  burstImages2 = [v12 burstImages];
  v15 = [burstImages2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(burstImages2);
        }

        [v13 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * j), "imageId")}];
      }

      v16 = [burstImages2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v13;
}

- (BOOL)isFaceDetectionForced
{
  faceAnalysisContext = self->faceAnalysisContext;
  if (faceAnalysisContext)
  {
    LOBYTE(faceAnalysisContext) = [(CAMBurstImageFaceAnalysisContext *)faceAnalysisContext forceFaceDetectionEnable];
  }

  return faceAnalysisContext;
}

- (BOOL)isPortrait
{
  if (![(CAMBurstImageSetInternal *)self bestImageIdentifiersArray])
  {
    [(CAMBurstImageSetInternal *)self bestImageIdentifiers];
  }

  return self->isPortrait;
}

- (BOOL)isAction
{
  if (![(CAMBurstImageSetInternal *)self bestImageIdentifiersArray])
  {
    [(CAMBurstImageSetInternal *)self bestImageIdentifiers];
  }

  return self->isAction;
}

@end