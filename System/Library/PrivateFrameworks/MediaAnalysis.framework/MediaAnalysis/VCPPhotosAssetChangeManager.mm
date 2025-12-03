@interface VCPPhotosAssetChangeManager
+ (id)managerForPhotoLibrary:(id)library;
+ (signed)sensitivityFromAnalysis:(id)analysis;
- (VCPPhotosAssetChangeManager)initWithPhotoLibrary:(id)library;
- (id)matchPerson:(CGRect)person withPHFaces:(id)faces withMinIOU:(float)u iou:(float *)iou;
- (int)associateTraitsForAsset:(id)asset withAnalysis:(id)analysis result:(id)result;
- (int)associateTraitsForMovieAsset:(id)asset withAnalysis:(id)analysis result:(id)result;
- (int)associateTraitsWithFaceTorspPrints:(id)prints forAsset:(id)asset withAnalysis:(id)analysis results:(id)results;
- (int)publishPendingChangesWithCancelBlock:(id)block;
- (int)updateAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results cancelBlock:(id)block;
- (int)updateImageAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results;
- (int)updateLegacyAsset:(id)asset withAnalysis:(id)analysis;
- (int)updateMovieAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results;
- (void)dealloc;
@end

@implementation VCPPhotosAssetChangeManager

- (VCPPhotosAssetChangeManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = VCPPhotosAssetChangeManager;
  v6 = [(VCPPhotosAssetChangeManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = +[NSMutableArray array];
    pendingChanges = v7->_pendingChanges;
    v7->_pendingChanges = v8;

    v7->_pendingResourceChangeCount = 0;
  }

  return v7;
}

+ (id)managerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

+ (signed)sensitivityFromAnalysis:(id)analysis
{
  vcp_results = [analysis vcp_results];
  v4 = [vcp_results objectForKeyedSubscript:MediaAnalysisSafetyResultsKey];

  if (v4 && [v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

    if (v6)
    {
      v7 = [v6 objectForKeyedSubscript:MediaAnalysisResultSensitivityAttributeKey];
      v8 = v7;
      if (v7)
      {
        intValue = [v7 intValue];
      }

      else
      {
        intValue = -1;
      }
    }

    else
    {
      intValue = -1;
    }
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (void)dealloc
{
  [(VCPPhotosAssetChangeManager *)self publishPendingChangesWithCancelBlock:&stru_100287530];
  v3.receiver = self;
  v3.super_class = VCPPhotosAssetChangeManager;
  [(VCPPhotosAssetChangeManager *)&v3 dealloc];
}

- (id)matchPerson:(CGRect)person withPHFaces:(id)faces withMinIOU:(float)u iou:(float *)iou
{
  height = person.size.height;
  width = person.size.width;
  y = person.origin.y;
  x = person.origin.x;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  facesCopy = faces;
  v12 = 0;
  v13 = [facesCopy countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (!v13)
  {
    v45 = 0.0;
    v38 = facesCopy;
LABEL_19:

    goto LABEL_20;
  }

  v14 = *v49;
  v45 = 0.0;
  v44 = height;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v49 != v14)
      {
        objc_enumerationMutation(facesCopy);
      }

      v16 = *(*(&v48 + 1) + 8 * i);
      [v16 bodyWidth];
      v18 = v17;
      [v16 bodyHeight];
      if (v18 * v19 > 0.0)
      {
        [v16 bodyCenterX];
        v21 = v20;
        [v16 bodyWidth];
        v23 = v22;
        [v16 bodyCenterY];
        v25 = v24;
        [v16 bodyHeight];
        v27 = v26;
        [v16 bodyWidth];
        v29 = v28;
        [v16 bodyHeight];
        v61.size.height = v30;
        v31 = v21 + v23 * -0.5;
        v32 = v25 + v27 * -0.5;
        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = v44;
        v61.origin.x = v31;
        v61.origin.y = v32;
        v61.size.width = v29;
        v33 = v61.size.height;
        v59 = CGRectUnion(v58, v61);
        v46 = v59.size.height;
        v47 = v59.size.width;
        v59.origin.x = x;
        v59.origin.y = y;
        v59.size.width = width;
        v59.size.height = v44;
        v62.origin.x = v31;
        v62.origin.y = v32;
        v62.size.width = v29;
        v62.size.height = v33;
        v60 = CGRectIntersection(v59, v62);
        v34 = v47 * v46;
        v35 = 0.0;
        if (v34 != 0.0)
        {
          v36 = v60.size.width * v60.size.height;
          v35 = v36 / v34;
        }

        if (v35 > v45 && v35 > u)
        {
          v37 = v16;

          v12 = v37;
          v45 = v35;
        }
      }
    }

    v13 = [facesCopy countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v13);

  if (v12 && MediaAnalysisLogLevel() >= 7)
  {
    v38 = &_os_log_default;
    v39 = &_os_log_default;
    v40 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v40))
    {
      localIdentifier = [v12 localIdentifier];
      *buf = 138412546;
      v53 = localIdentifier;
      v54 = 2048;
      v55 = v45;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "   [%@] found matchPerson with iou %f", buf, 0x16u);

      v38 = &_os_log_default;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (iou)
  {
    *iou = v45;
  }

  return v12;
}

- (int)associateTraitsForMovieAsset:(id)asset withAnalysis:(id)analysis result:(id)result
{
  assetCopy = asset;
  analysisCopy = analysis;
  resultCopy = result;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v8 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      localIdentifier = [assetCopy localIdentifier];
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "   [%@] Associate PHFace HAR result for movie asset", &buf, 0xCu);
    }
  }

  v86 = PHFacePropertySetClustering;
  v10 = [NSArray arrayWithObjects:&v86 count:1];
  v49 = [assetCopy vcp_PHFaces:v10];

  if (v49)
  {
    v11 = [v49 count];
    v12 = 0;
    if (resultCopy && v11)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v13 = v49;
      v14 = [v13 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v14)
      {
        v15 = *v75;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v75 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [resultCopy setObject:&__NSArray0__struct forKeyedSubscript:*(*(&v74 + 1) + 8 * i)];
          }

          v14 = [v13 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v14);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v13;
      v17 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
      v12 = 0;
      if (v17)
      {
        v54 = *v71;
        type = VCPLogToOSLogType[7];
        v48 = MediaAnalysisResultAttributesKey;
        v47 = MediaAnalysisResultHumanActionsAttributeKey;
        *&v18 = 138413058;
        v46 = v18;
        do
        {
          v19 = 0;
          v20 = v12;
          v55 = v17;
          do
          {
            v57 = v20;
            if (*v71 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v70 + 1) + 8 * v19);
            context = objc_autoreleasePoolPush();
            v21 = [analysisCopy vcp_queryActionResultForPHFace:v60];
            v59 = v21;
            if (!v21)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                localIdentifier2 = [assetCopy localIdentifier];
                localIdentifier3 = [v60 localIdentifier];
                LODWORD(buf.start.value) = 138412546;
                *(&buf.start.value + 4) = localIdentifier2;
                LOWORD(buf.start.flags) = 2112;
                *(&buf.start.flags + 2) = localIdentifier3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] No matched action for PHFace %@", &buf, 0x16u);
              }

              v23 = 7;
LABEL_45:
              v12 = v57;
              goto LABEL_46;
            }

            CMTimeRangeMakeFromDictionary(&buf, v21);
            value = buf.start.value;
            flags = buf.start.flags;
            timescale = buf.start.timescale;
            if (buf.start.flags)
            {
              v12 = -18;
              v23 = 10;
              v64 = buf.duration.flags;
              if ((buf.duration.flags & 1) != 0 && !buf.duration.epoch)
              {
                v63 = buf.duration.value;
                if ((buf.duration.value & 0x8000000000000000) == 0)
                {
                  epoch = buf.start.epoch;
                  v61 = buf.duration.timescale;
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                  {
                    localIdentifier4 = [assetCopy localIdentifier];
                    localIdentifier5 = [v60 localIdentifier];
                    time.value = value;
                    time.timescale = timescale;
                    time.flags = flags;
                    time.epoch = epoch;
                    Seconds = CMTimeGetSeconds(&time);
                    rhs.epoch = 0;
                    time.value = value;
                    time.timescale = timescale;
                    time.flags = flags;
                    time.epoch = epoch;
                    rhs.value = v63;
                    rhs.timescale = v61;
                    rhs.flags = v64;
                    CMTimeAdd(&v69, &time, &rhs);
                    v29 = CMTimeGetSeconds(&v69);
                    LODWORD(buf.start.value) = v46;
                    *(&buf.start.value + 4) = localIdentifier4;
                    LOWORD(buf.start.flags) = 2112;
                    *(&buf.start.flags + 2) = localIdentifier5;
                    HIWORD(buf.start.epoch) = 2048;
                    buf.duration.value = Seconds;
                    LOWORD(buf.duration.timescale) = 2048;
                    *(&buf.duration.timescale + 2) = v29;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] Found match action for PHFace %@, at time [%f, %f]", &buf, 0x2Au);
                  }

                  v30 = [(__CFDictionary *)v59 objectForKeyedSubscript:v48, v46];
                  v50 = [v30 objectForKeyedSubscript:v47];

                  v31 = +[NSMutableArray array];
                  v67 = 0u;
                  v68 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v32 = v50;
                  v33 = [v32 countByEnumeratingWithState:&v65 objects:v80 count:16];
                  if (v33)
                  {
                    v34 = *v66;
                    while (2)
                    {
                      for (j = 0; j != v33; j = j + 1)
                      {
                        if (*v66 != v34)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v36 = *(*(&v65 + 1) + 8 * j);
                        v37 = [v32 objectForKeyedSubscript:v36];
                        [v37 floatValue];
                        v39 = v38;

                        v40 = [PHDetectionTrait alloc];
                        LOWORD(v36) = [v36 intValue];
                        buf.start.value = value;
                        buf.start.timescale = timescale;
                        buf.start.flags = flags;
                        buf.start.epoch = epoch;
                        v41 = CMTimeGetSeconds(&buf.start);
                        buf.start.value = v63;
                        buf.start.timescale = v61;
                        buf.start.flags = v64;
                        buf.start.epoch = 0;
                        v42 = [v40 initWithType:1 value:v36 score:v39 startTime:v41 duration:CMTimeGetSeconds(&buf.start)];
                        if (!v42)
                        {

                          v23 = 10;
                          v57 = -18;
                          goto LABEL_44;
                        }

                        [v31 addObject:v42];
                      }

                      v33 = [v32 countByEnumeratingWithState:&v65 objects:v80 count:16];
                      if (v33)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  if ([v31 count])
                  {
                    [resultCopy setObject:v31 forKeyedSubscript:v60];
                  }

                  v23 = 0;
LABEL_44:

                  goto LABEL_45;
                }
              }
            }

            else
            {
              v12 = -18;
              v23 = 10;
            }

LABEL_46:

            objc_autoreleasePoolPop(context);
            if (v23 != 7 && v23)
            {
              goto LABEL_53;
            }

            v19 = v19 + 1;
            v20 = v12;
          }

          while (v19 != v55);
          v17 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
        }

        while (v17);
      }

LABEL_53:

      if (v12)
      {
        [resultCopy removeAllObjects];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v44 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v44))
          {
            localIdentifier6 = [assetCopy localIdentifier];
            LODWORD(buf.start.value) = 138412290;
            *(&buf.start.value + 4) = localIdentifier6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "   [%@] Failed to populate detection traits", &buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)associateTraitsWithFaceTorspPrints:(id)prints forAsset:(id)asset withAnalysis:(id)analysis results:(id)results
{
  printsCopy = prints;
  assetCopy = asset;
  analysisCopy = analysis;
  v60 = analysisCopy;
  resultsCopy = results;
  v59 = printsCopy;
  if (analysisCopy)
  {
    if ([printsCopy count])
    {
      [assetCopy duration];
      LODWORD(analysisCopy) = 0;
      if (resultsCopy && v11 > 0.0)
      {
        [v60 vcp_actionsAggregated];
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        obj = v69 = 0u;
        v51 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v51)
        {
          v54 = *v69;
          v53 = MediaAnalysisResultHumanActionsAttributeKey;
          v52 = MediaAnalysisResultThumbnailIDAttributeKey;
          v46 = MediaAnalysisResultTorsoPrintAttributeKey;
          type = VCPLogToOSLogType[4];
          while (2)
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v69 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v68 + 1) + 8 * i);
              v58 = [obj objectForKeyedSubscript:{v12, v46}];
              v13 = [v58 objectForKeyedSubscript:v53];
              v14 = [v13 objectForKeyedSubscript:v12];
              [v14 floatValue];
              v16 = v15;

              v55 = [v58 objectForKeyedSubscript:v52];
              if (v16 == 0.0)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "associateTraitsForMovieAsset : action with confidence of 0.0f", buf, 2u);
                }
              }

              else
              {
                v17 = [PHDetectionTrait alloc];
                intValue = [v12 intValue];
                [assetCopy duration];
                v49 = [v17 initWithType:1 value:intValue score:v55 startTime:v16 duration:0.0 thumbnailIdentifier:v19];
                if (!v49)
                {
                  goto LABEL_50;
                }

                v20 = [v58 objectForKeyedSubscript:v46];
                v48 = v20;
                if (v20)
                {
                  v21 = [[VNTorsoprint alloc] initWithState:v20 error:0];
                  if (!v21)
                  {
                    v45 = MediaAnalysisLogLevel();
                    if (v45 >= 4 && os_log_type_enabled(&_os_log_default, type))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "queryActionResultForPHFace : failed to decode torsoprintAction", buf, 2u);
                    }

LABEL_49:

LABEL_50:
                    LODWORD(analysisCopy) = -18;
                    goto LABEL_52;
                  }
                }

                else
                {
                  v21 = 0;
                }

                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v22 = v59;
                v23 = [v22 countByEnumeratingWithState:&v64 objects:v75 count:16];
                if (v23)
                {
                  v24 = 0;
                  v25 = *v65;
                  v26 = 0xFFFFFFFFLL;
                  v27 = 1.0;
                  while (2)
                  {
                    v28 = 0;
                    v50 = v24 + v23;
                    do
                    {
                      if (*v65 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v29 = *(*(&v64 + 1) + 8 * v28);
                      torsoprint = [v29 torsoprint];
                      v31 = torsoprint == 0;

                      if (!v31)
                      {
                        torsoprint2 = [v29 torsoprint];
                        v63 = 0;
                        v33 = [torsoprint2 computeDistance:v21 withDistanceFunction:0 error:&v63];
                        v34 = v63;

                        if (v34)
                        {
                          if (MediaAnalysisLogLevel() >= 3)
                          {
                            v43 = VCPLogToOSLogType[3];
                            if (os_log_type_enabled(&_os_log_default, v43))
                            {
                              *buf = 138412290;
                              v74 = v34;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@", buf, 0xCu);
                            }
                          }

                          v20 = v48;
                          goto LABEL_49;
                        }

                        [v33 floatValue];
                        if (v27 <= 0.3)
                        {
                          v36 = v27;
                        }

                        else
                        {
                          v36 = 0.3;
                        }

                        if (v35 < v36)
                        {
                          [v33 floatValue];
                          v27 = v37;
                          v26 = v24;
                        }
                      }

                      v24 = (v24 + 1);
                      v28 = v28 + 1;
                    }

                    while (v23 != v28);
                    v23 = [v22 countByEnumeratingWithState:&v64 objects:v75 count:16];
                    v24 = v50;
                    if (v23)
                    {
                      continue;
                    }

                    break;
                  }

                  if ((v26 & 0x80000000) == 0)
                  {
                    v38 = [NSNumber numberWithInt:v26];
                    v39 = [resultsCopy objectForKeyedSubscript:v38];
                    v40 = v39 == 0;

                    if (v40)
                    {
                      v72 = v49;
                      v22 = [NSArray arrayWithObjects:&v72 count:1];
                      v41 = [NSMutableArray arrayWithArray:v22];
                      v42 = [NSNumber numberWithInt:v26];
                      [resultsCopy setObject:v41 forKeyedSubscript:v42];
                    }

                    else
                    {
                      v22 = [NSNumber numberWithInt:v26];
                      v41 = [resultsCopy objectForKeyedSubscript:v22];
                      [v41 addObject:v49];
                    }

                    goto LABEL_39;
                  }
                }

                else
                {
LABEL_39:
                }
              }
            }

            LODWORD(analysisCopy) = 0;
            v51 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          LODWORD(analysisCopy) = 0;
        }

LABEL_52:
      }
    }

    else
    {
      LODWORD(analysisCopy) = 0;
    }
  }

  return analysisCopy;
}

- (int)associateTraitsForAsset:(id)asset withAnalysis:(id)analysis result:(id)result
{
  assetCopy = asset;
  analysisCopy = analysis;
  resultCopy = result;
  v118 = assetCopy;
  v10 = [assetCopy vcp_PHFaces:0];
  v119 = v10;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_96;
  }

  v11 = [v10 count];
  v12 = 0;
  if (resultCopy && v11)
  {
    selfCopy = self;
    v13 = +[NSMutableDictionary dictionary];
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v14 = v119;
    v15 = [v14 countByEnumeratingWithState:&v145 objects:v156 count:16];
    if (v15)
    {
      v16 = *v146;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v146 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v145 + 1) + 8 * i);
          localIdentifier = [v18 localIdentifier];
          v20 = localIdentifier == 0;

          if (!v20)
          {
            localIdentifier2 = [v18 localIdentifier];
            [v13 setObject:v18 forKeyedSubscript:localIdentifier2];
          }

          [resultCopy setObject:&__NSArray0__struct forKeyedSubscript:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v145 objects:v156 count:16];
      }

      while (v15);
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    vcp_results = [analysisCopy vcp_results];
    obj = [vcp_results objectForKeyedSubscript:MediaAnalysisHumanActionClassificationResultsKey];

    v113 = [obj countByEnumeratingWithState:&v141 objects:v155 count:16];
    if (v113)
    {
      v121 = *v142;
      v123 = MediaAnalysisResultAttributesKey;
      v115 = MediaAnalysisResultFaceIdentifierAttributeKey;
      v104 = MediaAnalysisResultHumanBoundsAttributeKey;
      type = VCPLogToOSLogType[7];
      v107 = MediaAnalysisResultHumanActionsAttributeKey;
      v100 = VCPLogToOSLogType[4];
      do
      {
        v125 = 0;
        do
        {
          if (*v142 != v121)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v141 + 1) + 8 * v125);
          v24 = [v23 objectForKeyedSubscript:v123];
          v127 = [v24 objectForKeyedSubscript:v115];

          v25 = v127;
          if (v127)
          {
            v26 = [v13 objectForKeyedSubscript:v127];
            v27 = v26 == 0;

            if (!v27)
            {
              goto LABEL_25;
            }

            v28 = [v23 objectForKeyedSubscript:v123];
            v29 = [v28 objectForKeyedSubscript:v104];
            v157 = NSRectFromString(v29);
            x = v157.origin.x;
            y = v157.origin.y;
            width = v157.size.width;
            height = v157.size.height;

            LODWORD(v34) = 1060320051;
            v35 = [(VCPPhotosAssetChangeManager *)selfCopy matchPerson:v14 withPHFaces:0 withMinIOU:x iou:y, width, height, v34];
            if (v35)
            {
              [v13 setObject:v35 forKeyedSubscript:v127];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                localIdentifier3 = [v118 localIdentifier];
                localIdentifier4 = [v35 localIdentifier];
                LODWORD(buf.start.value) = 138412802;
                *(&buf.start.value + 4) = localIdentifier3;
                LOWORD(buf.start.flags) = 2112;
                *(&buf.start.flags + 2) = localIdentifier4;
                HIWORD(buf.start.epoch) = 2112;
                buf.duration.value = v127;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] Associated PHFace (%@) with HAR result localIdentifier (%@)", &buf, 0x20u);
              }

LABEL_25:
              memset(&buf, 0, sizeof(buf));
              CMTimeRangeMakeFromDictionary(&buf, v23);
              v38 = 0.0;
              if ((buf.start.flags & 1) != 0 && (buf.duration.flags & 1) != 0 && !buf.duration.epoch)
              {
                v39 = 0.0;
                if ((buf.duration.value & 0x8000000000000000) == 0)
                {
                  time = buf.start;
                  Seconds = CMTimeGetSeconds(&time);
                  time = buf.duration;
                  v41 = CMTimeGetSeconds(&time);
                  v42 = Seconds;
                  *&v41 = v41;
                  v39 = v42;
                  v38 = *&v41;
                }
              }

              else
              {
                v39 = 0.0;
              }

              v111 = [v13 objectForKeyedSubscript:v127];
              v43 = [v23 objectForKeyedSubscript:v123];
              v109 = [v43 objectForKeyedSubscript:v107];

              v44 = +[NSMutableArray array];
              v138 = 0u;
              v139 = 0u;
              v136 = 0u;
              v137 = 0u;
              v45 = v109;
              v46 = [v45 countByEnumeratingWithState:&v136 objects:v153 count:16];
              if (v46)
              {
                v47 = *v137;
LABEL_33:
                v48 = 0;
                while (1)
                {
                  if (*v137 != v47)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v49 = *(*(&v136 + 1) + 8 * v48);
                  v50 = [v45 objectForKeyedSubscript:v49];
                  [v50 floatValue];
                  v52 = v51;

                  v53 = [[PHDetectionTrait alloc] initWithType:1 value:objc_msgSend(v49 score:"intValue") startTime:v52 duration:{v39, v38}];
                  if (!v53)
                  {
                    break;
                  }

                  [v44 addObject:v53];

                  if (v46 == ++v48)
                  {
                    v46 = [v45 countByEnumeratingWithState:&v136 objects:v153 count:16];
                    if (!v46)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_33;
                  }
                }

LABEL_91:
                [resultCopy removeAllObjects];
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v92 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v92))
                  {
                    localIdentifier5 = [v118 localIdentifier];
                    LODWORD(buf.start.value) = 138412290;
                    *(&buf.start.value + 4) = localIdentifier5;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "   [%@] Failed to populate detection traits", &buf, 0xCu);
                  }
                }

                v12 = -18;
LABEL_95:

                goto LABEL_96;
              }

LABEL_39:

              if ([v44 count])
              {
                [resultCopy setObject:v44 forKeyedSubscript:v111];
              }

LABEL_42:
              v25 = v127;
              goto LABEL_43;
            }

            v25 = v127;
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v100))
            {
              localIdentifier6 = [v118 localIdentifier];
              LODWORD(buf.start.value) = 138412546;
              *(&buf.start.value + 4) = localIdentifier6;
              LOWORD(buf.start.flags) = 2112;
              *(&buf.start.flags + 2) = v127;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v100, "   [%@] No matched PHFace for HAR result localIdentifier (%@)", &buf, 0x16u);

              goto LABEL_42;
            }
          }

LABEL_43:

          v125 = v125 + 1;
        }

        while (v125 != v113);
        v55 = [obj countByEnumeratingWithState:&v141 objects:v155 count:16];
        v113 = v55;
      }

      while (v55);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    vcp_results2 = [analysisCopy vcp_results];
    obj = [vcp_results2 objectForKeyedSubscript:MediaAnalysisHumanActionResultsKey];

    typea = [obj countByEnumeratingWithState:&v132 objects:v152 count:16];
    if (!typea)
    {
      goto LABEL_87;
    }

    v108 = *v133;
    v110 = MediaAnalysisResultAttributesKey;
    v105 = MediaAnalysisResultFaceIdentifierAttributeKey;
    v98 = MediaAnalysisResultHumanBoundsAttributeKey;
    v97 = VCPLogToOSLogType[7];
    *v101 = MediaAnalysisResultHumanActionScoreAbsoluteAttributeKey;
    v99 = MediaAnalysisResultHumanActionScoreRelativeAttributeKey;
    v96 = VCPLogToOSLogType[4];
    *&v57 = 138412546;
    v95 = v57;
LABEL_51:
    v116 = 0;
    while (1)
    {
      if (*v133 != v108)
      {
        objc_enumerationMutation(obj);
      }

      v58 = *(*(&v132 + 1) + 8 * v116);
      v127 = [v58 objectForKeyedSubscript:{v110, v95}];
      v59 = [v127 objectForKeyedSubscript:v105];
      if (!v59)
      {
        goto LABEL_81;
      }

      v114 = v59;
      v60 = [v13 objectForKeyedSubscript:v59];
      v61 = v60 == 0;

      if (!v61)
      {
        goto LABEL_61;
      }

      v62 = [v58 objectForKeyedSubscript:v110];
      v63 = [v62 objectForKeyedSubscript:v98];
      v158 = NSRectFromString(v63);
      v64 = v158.origin.x;
      v65 = v158.origin.y;
      v66 = v158.size.width;
      v67 = v158.size.height;

      LODWORD(v68) = 1060320051;
      v69 = [(VCPPhotosAssetChangeManager *)selfCopy matchPerson:v14 withPHFaces:0 withMinIOU:v64 iou:v65, v66, v67, v68];
      if (v69)
      {
        break;
      }

      v59 = v114;
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(&_os_log_default, v96))
      {
        goto LABEL_81;
      }

      localIdentifier7 = [v118 localIdentifier];
      LODWORD(buf.start.value) = v95;
      *(&buf.start.value + 4) = localIdentifier7;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v114;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "   [%@] No matched PHFace for action result localIdentifier (%@)", &buf, 0x16u);

LABEL_80:
      v59 = v114;
LABEL_81:

      if (++v116 == typea)
      {
        v91 = [obj countByEnumeratingWithState:&v132 objects:v152 count:16];
        typea = v91;
        if (!v91)
        {
LABEL_87:

          v12 = 0;
          goto LABEL_95;
        }

        goto LABEL_51;
      }
    }

    [v13 setObject:v69 forKeyedSubscript:v114];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v97))
    {
      localIdentifier8 = [v118 localIdentifier];
      localIdentifier9 = [v69 localIdentifier];
      LODWORD(buf.start.value) = 138412802;
      *(&buf.start.value + 4) = localIdentifier8;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = localIdentifier9;
      HIWORD(buf.start.epoch) = 2112;
      buf.duration.value = v114;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v97, "   [%@] Associated PHFace (%@) with action result localIdentifier (%@)", &buf, 0x20u);
    }

LABEL_61:
    memset(&buf, 0, sizeof(buf));
    CMTimeRangeMakeFromDictionary(&buf, v58);
    v72 = 0.0;
    if ((buf.start.flags & 1) != 0 && (buf.duration.flags & 1) != 0 && !buf.duration.epoch)
    {
      v73 = 0.0;
      if ((buf.duration.value & 0x8000000000000000) == 0)
      {
        time = buf.start;
        v74 = CMTimeGetSeconds(&time);
        time = buf.duration;
        v75 = CMTimeGetSeconds(&time);
        v76 = v74;
        *&v75 = v75;
        v72 = v76;
        v73 = *&v75;
      }
    }

    else
    {
      v73 = 0.0;
    }

    v112 = [v13 objectForKeyedSubscript:v114];
    v122 = +[NSMutableArray array];
    v77 = [resultCopy objectForKeyedSubscript:v112];
    [v122 addObjectsFromArray:v77];

    v150[0] = *v101;
    v150[1] = v99;
    v151[0] = &off_100294C50;
    v151[1] = &off_100294C68;
    v78 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:2];
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = v78;
    v79 = [v126 countByEnumeratingWithState:&v128 objects:v149 count:16];
    if (v79)
    {
      v124 = *v129;
      while (2)
      {
        for (j = 0; j != v79; j = j + 1)
        {
          if (*v129 != v124)
          {
            objc_enumerationMutation(v126);
          }

          v81 = *(*(&v128 + 1) + 8 * j);
          v82 = [v127 objectForKeyedSubscript:v81];
          v83 = v82 == 0;

          if (!v83)
          {
            v84 = [PHDetectionTrait alloc];
            v85 = [v126 objectForKeyedSubscript:v81];
            intValue = [v85 intValue];
            v87 = [v127 objectForKeyedSubscript:v81];
            [v87 floatValue];
            v89 = [v84 initWithType:2 value:intValue score:v88 startTime:v72 duration:v73];

            if (!v89)
            {

              goto LABEL_91;
            }

            [v122 addObject:v89];
          }
        }

        v79 = [v126 countByEnumeratingWithState:&v128 objects:v149 count:16];
        if (v79)
        {
          continue;
        }

        break;
      }
    }

    if ([v122 count])
    {
      [resultCopy setObject:v122 forKeyedSubscript:v112];
    }

    goto LABEL_80;
  }

LABEL_96:

  return v12;
}

- (int)updateImageAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results
{
  onlyCopy = only;
  assetCopy = asset;
  analysisCopy = analysis;
  resultsCopy = results;
  v162 = onlyCopy;
  if (!onlyCopy || ![assetCopy vcp_isLivePhoto])
  {
    v9 = +[PHAsset vcp_fullAnalysisImageOnlyTypes]| 8;
LABEL_8:
    if (MediaAnalysisLogLevel() >= 7)
    {
      v12 = &_os_log_default;
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        localIdentifier = [assetCopy localIdentifier];
        [analysisCopy vcp_types];
        v15 = MediaAnalysisTypeShortDescription();
        vcp_types = [analysisCopy vcp_types];
        v17 = MediaAnalysisTypeShortDescription();
        vcp_isLivePhoto = [assetCopy vcp_isLivePhoto];
        *buf = 138413570;
        v19 = @"NO";
        *&buf[4] = localIdentifier;
        *&buf[12] = 2112;
        *&buf[22] = 2048;
        if (vcp_isLivePhoto)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        *&buf[14] = v15;
        if (onlyCopy)
        {
          v19 = @"YES";
        }

        *&buf[24] = vcp_types & v9;
        *v185 = 2112;
        *&v185[2] = v17;
        *&v185[10] = 2112;
        *&v185[12] = v20;
        v186 = 2112;
        v187 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@] Update image asset with analysis type %@ (%llu), required type %@, isLivePhoto:%@, isImageOnly:%@", buf, 0x3Eu);
      }
    }

    if ((v9 & ~[analysisCopy vcp_types]) != 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          [analysisCopy vcp_types];
          v25 = MediaAnalysisTypeDescription();
          v26 = MediaAnalysisTypeDescription();
          *buf = 138412802;
          *&buf[4] = localIdentifier2;
          *&buf[12] = 2112;
          *&buf[14] = v25;
          *&buf[22] = 2112;
          *&buf[24] = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@] updateImageAsset : analysis types %@ does not include required types %@, skip", buf, 0x20u);
        }
      }

      goto LABEL_23;
    }

    v21 = objc_alloc_init(VCPImageChangeEntry);
    v166 = v21;
    [(VCPImageChangeEntry *)v21 setAsset:assetCopy];
    [(VCPImageChangeEntry *)v21 setImageOnly:onlyCopy];
    if (([analysisCopy vcp_types] & 0x2000000000000) != 0)
    {
      vcp_results = [analysisCopy vcp_results];
      v163 = [vcp_results objectForKeyedSubscript:MediaAnalysisMiCaImageCaptionResultsKey];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v29 = &_os_log_default;
        v30 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          localIdentifier3 = [assetCopy localIdentifier];
          *buf = 138412546;
          *&buf[4] = localIdentifier3;
          *&buf[12] = 2112;
          *&buf[14] = v163;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[%@] Update Asset with MediaAnalysisMiCaImageCaptionResultsKey: %@", buf, 0x16u);
        }
      }

      v22 = v163;
    }

    else
    {
      v22 = 0;
    }

    v164 = v22;
    if ([v22 count])
    {
      v32 = [v164 objectAtIndexedSubscript:0];
      v33 = [v32 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
      v34 = [v33 objectForKeyedSubscript:MediaAnalysisResultImageCaptionTextAttributeKey];

      [(VCPImageChangeEntry *)v21 setImageCaption:v34];
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      imageEmbeddingAsset = [resultsCopy imageEmbeddingAsset];
      v36 = imageEmbeddingAsset == 0;

      if (v36)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v37 = &_os_log_default;
          v38 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v38))
          {
            localIdentifier4 = [assetCopy localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[%@] No image embedding results, skip updating imageEmbeddingVersion", buf, 0xCu);
          }
        }
      }

      else
      {
        -[VCPImageChangeEntry setImageEmbeddingVersion:](v21, "setImageEmbeddingVersion:", [resultsCopy imageEmbeddingVersion]);
      }
    }

    if (![assetCopy vcp_isLivePhoto] || -[VCPImageChangeEntry imageOnly](v21, "imageOnly"))
    {
LABEL_125:
      vcp_results2 = [analysisCopy vcp_results];
      v135 = [vcp_results2 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
      -[VCPImageChangeEntry setFaceCount:](v21, "setFaceCount:", [v135 count]);

      v136 = v166;
      if (([analysisCopy vcp_types] & 0x40000000) != 0)
      {
        v137 = +[NSMutableDictionary dictionary];
        v27 = [(VCPPhotosAssetChangeManager *)self associateTraitsForAsset:assetCopy withAnalysis:analysisCopy result:v137];
        if (v27)
        {
LABEL_157:

LABEL_158:
          goto LABEL_159;
        }

        [(VCPImageChangeEntry *)v166 setHumanActions:v137];

        v136 = v166;
      }

      if ((!v162 || ([assetCopy vcp_isLivePhoto] & 1) == 0) && objc_msgSend(assetCopy, "mad_isEligibleForComputeSync"))
      {
        -[VCPImageChangeEntry setAnalysisStage:](v136, "setAnalysisStage:", [assetCopy mad_analysisStageAfterCompletingAnalysis:1]);
        if (MediaAnalysisLogLevel() >= 7)
        {
          v138 = &_os_log_default;
          v139 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v139))
          {
            localIdentifier5 = [assetCopy localIdentifier];
            vcp_typeDescription = [assetCopy vcp_typeDescription];
            v142 = [analysisCopy vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412802;
            *&buf[4] = localIdentifier5;
            *&buf[12] = 2112;
            *&buf[14] = vcp_typeDescription;
            *&buf[22] = 2112;
            *&buf[24] = v142;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v139, "[%@][%@] Existing image/live photo analysis %@", buf, 0x20u);
          }
        }

        v143 = VCPSignPostLog();
        v144 = os_signpost_id_generate(v143);

        v145 = VCPSignPostLog();
        v146 = v145;
        if (v144 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v146, OS_SIGNPOST_INTERVAL_BEGIN, v144, "VCPPhotosAssetChangeManager_Image_PackComputeSyncPayload", "", buf, 2u);
        }

        v147 = [MADComputeSyncPayloadResults payloadDataForAsset:assetCopy targetStage:[(VCPImageChangeEntry *)v166 analysisStage] embeddingResults:resultsCopy fullAnalysisResults:analysisCopy];
        v148 = VCPSignPostLog();
        v149 = v148;
        if (v144 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v148))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v149, OS_SIGNPOST_INTERVAL_END, v144, "VCPPhotosAssetChangeManager_Image_PackComputeSyncPayload", "", buf, 2u);
        }

        if (v147)
        {
          [(VCPImageChangeEntry *)v166 setComputeSyncPayload:v147];
        }

        else if (MediaAnalysisLogLevel() >= 4)
        {
          v150 = &_os_log_default;
          v151 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v151))
          {
            localIdentifier6 = [assetCopy localIdentifier];
            analysisStage = [(VCPImageChangeEntry *)v166 analysisStage];
            mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
            localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
            *buf = 138412802;
            *&buf[4] = localIdentifier6;
            *&buf[12] = 1024;
            *&buf[14] = analysisStage;
            *&buf[18] = 1024;
            *&buf[20] = localAnalysisStage;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v151, "[%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
          }
        }

        v136 = v166;
      }

      [(NSMutableArray *)self->_pendingChanges addObject:v136];
      v27 = 0;
      goto LABEL_158;
    }

    if (([analysisCopy vcp_types] & 0x200000000000) != 0)
    {
      vcp_results3 = [analysisCopy vcp_results];
      v159 = [vcp_results3 objectForKeyedSubscript:MediaAnalysisMiCaVideoCaptionResultsKey];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v42 = &_os_log_default;
        v43 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v43))
        {
          localIdentifier7 = [assetCopy localIdentifier];
          *buf = 138412546;
          *&buf[4] = localIdentifier7;
          *&buf[12] = 2112;
          *&buf[14] = v159;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[%@] Update Asset with MediaAnalysisMiCaVideoCaptionResultsKey: %@", buf, 0x16u);
        }
      }

      v40 = v159;
    }

    else
    {
      v40 = 0;
    }

    v160 = v40;
    if ([v40 count])
    {
      v45 = [v160 objectAtIndexedSubscript:0];
      v46 = [v45 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
      v47 = [v46 objectForKeyedSubscript:MediaAnalysisResultVideoCaptionTextAttributeKey];

      [(VCPImageChangeEntry *)v21 setVideoCaption:v47];
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      videoEmbeddingAsset = [resultsCopy videoEmbeddingAsset];
      v49 = videoEmbeddingAsset == 0;

      if (v49)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v50 = &_os_log_default;
          v51 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v51))
          {
            localIdentifier8 = [assetCopy localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "[%@] No video embedding results, skip updating videoEmbeddingVersion", buf, 0xCu);
          }
        }
      }

      else
      {
        -[VCPImageChangeEntry setVideoEmbeddingVersion:](v21, "setVideoEmbeddingVersion:", [resultsCopy videoEmbeddingVersion]);
      }
    }

    if (([analysisCopy vcp_types] & 0x40000) != 0)
    {
      vcp_results4 = [analysisCopy vcp_results];
      v60 = [vcp_results4 objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

      if ([v60 count])
      {
        v104 = [v60 objectAtIndexedSubscript:0];
        v105 = v104;
        if (v104)
        {
          [v104 vcp_timerange];
        }

        else
        {
          v181 = 0u;
          v182 = 0u;
          v180 = 0u;
        }

        *buf = v180;
        *&buf[16] = v181;
        *v185 = v182;
        [(VCPImageChangeEntry *)v21 setSummaryTimeRange:buf];

        v115 = [v60 objectAtIndexedSubscript:0];
        vcp_flags = [v115 vcp_flags];
        v117 = [v60 objectAtIndexedSubscript:0];
        [v117 vcp_quality];
        v119 = v118 * ((vcp_flags >> 19) & 1);
        *&v119 = v119;
        [(VCPImageChangeEntry *)v21 setAutoplayScore:v119];

        if (!v21)
        {
          goto LABEL_155;
        }

        [(VCPImageChangeEntry *)v21 summaryTimeRange];
        if ((buf[12] & 1) == 0)
        {
          goto LABEL_155;
        }

        [(VCPImageChangeEntry *)v21 summaryTimeRange];
        if ((v179 & 1) == 0)
        {
          goto LABEL_155;
        }

        [(VCPImageChangeEntry *)v21 summaryTimeRange];
        if (v178)
        {
          goto LABEL_155;
        }

        [(VCPImageChangeEntry *)v21 summaryTimeRange];
        if (v177 < 0)
        {
          goto LABEL_155;
        }

        *buf = *&kCMTimeInvalid.value;
        *&buf[16] = kCMTimeInvalid.epoch;
        [(VCPImageChangeEntry *)v21 setKeyFrameTime:buf];
        v120 = [v60 objectAtIndexedSubscript:0];
        v121 = [v120 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

        if (![v121 count] || (v122 = MediaAnalysisResultBestPlaybackCropAttributeKey, objc_msgSend(v121, "objectForKey:", MediaAnalysisResultBestPlaybackCropAttributeKey), v123 = objc_claimAutoreleasedReturnValue(), v124 = v123 == 0, v123, v124))
        {
          [(VCPImageChangeEntry *)v21 setBestPlaybackRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
        }

        else
        {
          v125 = [v121 objectForKey:v122];
          v197 = NSRectFromString(v125);
          [(VCPImageChangeEntry *)v21 setBestPlaybackRect:v197.origin.x, v197.origin.y, v197.size.width, v197.size.height];
        }
      }

      else
      {
        v110 = *&kCMTimeRangeZero.start.epoch;
        *buf = *&kCMTimeRangeZero.start.value;
        *&buf[16] = v110;
        *v185 = *&kCMTimeRangeZero.duration.timescale;
        [(VCPImageChangeEntry *)v21 setSummaryTimeRange:buf];
        [(VCPImageChangeEntry *)v21 setAutoplayScore:0.0];
        *buf = *&kCMTimeInvalid.value;
        *&buf[16] = kCMTimeInvalid.epoch;
        [(VCPImageChangeEntry *)v21 setKeyFrameTime:buf];
        [(VCPImageChangeEntry *)v21 setBestPlaybackRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
      }

      vcp_results5 = [analysisCopy vcp_results];
      v112 = [vcp_results5 objectForKeyedSubscript:MediaAnalysisAnimatedStickerResultsKey];

      if ([v112 count])
      {
        v113 = [v112 objectAtIndexedSubscript:0];
        v114 = v113;
        if (v113)
        {
          [v113 vcp_timerange];
        }

        else
        {
          v175 = 0u;
          v176 = 0u;
          v174 = 0u;
        }

        *buf = v174;
        *&buf[16] = v175;
        *v185 = v176;
        [(VCPImageChangeEntry *)v21 setAnimatedStickerTimeRange:buf];

        v156 = [v112 objectAtIndexedSubscript:0];
        [v156 vcp_quality];
        *&v157 = v157;
        [(VCPImageChangeEntry *)v21 setAnimatedStickerScore:v157];

        if (!v21 || ([(VCPImageChangeEntry *)v21 animatedStickerTimeRange], (buf[12] & 1) == 0) || ([(VCPImageChangeEntry *)v21 animatedStickerTimeRange], (v179 & 1) == 0) || ([(VCPImageChangeEntry *)v21 animatedStickerTimeRange], v178) || ([(VCPImageChangeEntry *)v21 animatedStickerTimeRange], v177 < 0))
        {

          goto LABEL_155;
        }
      }

      else
      {
        v126 = *&kCMTimeRangeZero.start.epoch;
        *buf = *&kCMTimeRangeZero.start.value;
        *&buf[16] = v126;
        *v185 = *&kCMTimeRangeZero.duration.timescale;
        [(VCPImageChangeEntry *)v21 setAnimatedStickerTimeRange:buf];
        [(VCPImageChangeEntry *)v21 setAnimatedStickerScore:0.0];
      }

      vcp_results6 = [analysisCopy vcp_results];
      v128 = [vcp_results6 objectForKeyedSubscript:MediaAnalysisSettlingEffectsGatingResultsKey];

      if ([v128 count])
      {
        v129 = [v128 objectAtIndexedSubscript:0];
        [v129 vcp_quality];
        *&v130 = v130;
        [(VCPImageChangeEntry *)v21 setSettlingEffectScore:v130];

        v131 = [v128 objectAtIndexedSubscript:0];
        v132 = [v131 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
        v133 = [v132 objectForKeyedSubscript:MediaAnalysisSettlingEffectsRankingLevelKey];
        [v133 floatValue];
        [(VCPImageChangeEntry *)v166 setSettlingEffectRankingScore:?];
      }

      else
      {
        [(VCPImageChangeEntry *)v21 setSettlingEffectScore:0.0];
        [(VCPImageChangeEntry *)v21 setSettlingEffectRankingScore:0.0];
      }

      v21 = v166;
    }

    else
    {
      v53 = *&kCMTimeRangeZero.start.epoch;
      *buf = *&kCMTimeRangeZero.start.value;
      *&buf[16] = v53;
      *v185 = *&kCMTimeRangeZero.duration.timescale;
      [(VCPImageChangeEntry *)v21 setSummaryTimeRange:buf];
      LODWORD(v54) = 0.5;
      [(VCPImageChangeEntry *)v21 setAutoplayScore:v54];
      *buf = *&kCMTimeInvalid.value;
      *&buf[16] = kCMTimeInvalid.epoch;
      [(VCPImageChangeEntry *)v21 setKeyFrameTime:buf];
      [(VCPImageChangeEntry *)v21 setBestPlaybackRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
      v55 = *&kCMTimeRangeZero.start.epoch;
      *buf = *&kCMTimeRangeZero.start.value;
      *&buf[16] = v55;
      *v185 = *&kCMTimeRangeZero.duration.timescale;
      [(VCPImageChangeEntry *)v21 setAnimatedStickerTimeRange:buf];
      LODWORD(v56) = 1050253722;
      [(VCPImageChangeEntry *)v21 setAnimatedStickerScore:v56];
      LODWORD(v57) = -1.0;
      [(VCPImageChangeEntry *)v21 setSettlingEffectScore:v57];
      LODWORD(v58) = 0.5;
      [(VCPImageChangeEntry *)v21 setSettlingEffectRankingScore:v58];
    }

    [(VCPImageChangeEntry *)v21 bestPlaybackRect];
    if (!CGRectIsNull(v188))
    {
      [(VCPImageChangeEntry *)v21 bestPlaybackRect];
      x = v189.origin.x;
      y = v189.origin.y;
      width = v189.size.width;
      height = v189.size.height;
      if (CGRectGetMinX(v189) < 0.0)
      {
        goto LABEL_156;
      }

      v190.origin.x = x;
      v190.origin.y = y;
      v190.size.width = width;
      v190.size.height = height;
      if (CGRectGetMinX(v190) > 1.0)
      {
        goto LABEL_156;
      }

      v191.origin.x = x;
      v191.origin.y = y;
      v191.size.width = width;
      v191.size.height = height;
      if (CGRectGetMinY(v191) < 0.0)
      {
        goto LABEL_156;
      }

      v192.origin.x = x;
      v192.origin.y = y;
      v192.size.width = width;
      v192.size.height = height;
      if (CGRectGetMinY(v192) > 1.0)
      {
        goto LABEL_156;
      }

      v193.origin.x = x;
      v193.origin.y = y;
      v193.size.width = width;
      v193.size.height = height;
      if (CGRectGetMaxX(v193) < 0.0)
      {
        goto LABEL_156;
      }

      v194.origin.x = x;
      v194.origin.y = y;
      v194.size.width = width;
      v194.size.height = height;
      if (CGRectGetMaxX(v194) > 1.0)
      {
        goto LABEL_156;
      }

      v195.origin.x = x;
      v195.origin.y = y;
      v195.size.width = width;
      v195.size.height = height;
      if (CGRectGetMaxY(v195) < 0.0)
      {
        goto LABEL_156;
      }

      v196.origin.x = x;
      v196.origin.y = y;
      v196.size.width = width;
      v196.size.height = height;
      if (CGRectGetMaxY(v196) > 1.0)
      {
        goto LABEL_156;
      }
    }

    if (([analysisCopy vcp_types] & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    vcp_results7 = [analysisCopy vcp_results];
    v60 = [vcp_results7 objectForKeyedSubscript:MediaAnalysisLivePhotoEffectsResultsKey];

    if (![v60 count])
    {
LABEL_63:

      v21 = v166;
LABEL_64:
      if (([analysisCopy vcp_types] & 0x200000) != 0)
      {
        [(VCPImageChangeEntry *)v21 setAudioClassification:0];
        vcp_results8 = [analysisCopy vcp_results];
        v66 = [vcp_results8 objectForKeyedSubscript:MediaAnalysisApplauseResultsKey];
        v67 = [v66 count] == 0;

        if (!v67)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 1];
        }

        vcp_results9 = [analysisCopy vcp_results];
        v69 = [vcp_results9 objectForKeyedSubscript:MediaAnalysisBabbleResultsKey];
        v70 = [v69 count] == 0;

        if (!v70)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 2];
        }

        vcp_results10 = [analysisCopy vcp_results];
        v72 = [vcp_results10 objectForKeyedSubscript:MediaAnalysisCheeringResultsKey];
        v73 = [v72 count] == 0;

        if (!v73)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 4];
        }

        vcp_results11 = [analysisCopy vcp_results];
        v75 = [vcp_results11 objectForKeyedSubscript:MediaAnalysisLaughterResultsKey];
        v76 = [v75 count] == 0;

        if (!v76)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 8];
        }

        vcp_results12 = [analysisCopy vcp_results];
        v78 = [vcp_results12 objectForKeyedSubscript:MediaAnalysisVoiceResultsKey];
        v79 = [v78 count] == 0;

        if (!v79)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 0x10];
        }

        vcp_results13 = [analysisCopy vcp_results];
        v81 = [vcp_results13 objectForKeyedSubscript:MediaAnalysisMusicResultsKey];
        v82 = [v81 count] == 0;

        if (!v82)
        {
          [(VCPImageChangeEntry *)v166 setAudioClassification:[(VCPImageChangeEntry *)v166 audioClassification]| 0x20];
        }

        v167 = +[NSMutableSet set];
        v83 = [objc_opt_class() mad_audioTaxonomy:1 useResultsKey:1];
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        allKeys = [v83 allKeys];
        v85 = [allKeys countByEnumeratingWithState:&v170 objects:v183 count:16];
        if (v85)
        {
          v86 = *v171;
          do
          {
            for (i = 0; i != v85; i = i + 1)
            {
              if (*v171 != v86)
              {
                objc_enumerationMutation(allKeys);
              }

              v88 = *(*(&v170 + 1) + 8 * i);
              vcp_results14 = [analysisCopy vcp_results];
              v90 = [vcp_results14 objectForKeyedSubscript:v88];
              v91 = [v90 count] == 0;

              if (!v91)
              {
                v92 = [PHSceneClassification alloc];
                v93 = [v83 objectForKeyedSubscript:v88];
                v94 = [v92 initWithExtendedSceneIdentifier:objc_msgSend(v93 confidence:"longLongValue") boundingBox:3 startTime:1.0 duration:CGRectNull.origin.x classificationType:{CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height, 0.0, 2.0}];

                if (v94)
                {
                  [v167 addObject:v94];
                }
              }
            }

            v85 = [allKeys countByEnumeratingWithState:&v170 objects:v183 count:16];
          }

          while (v85);
        }

        [(VCPImageChangeEntry *)v166 setAudioClassifications:v167];
        v21 = v166;
      }

      if (([analysisCopy vcp_types] & 0x400000000) != 0)
      {
        vcp_results15 = [analysisCopy vcp_results];
        v96 = [vcp_results15 objectForKeyedSubscript:MediaAnalysisAudioQualityResultsKey];

        if ([v96 count])
        {
          v98 = [v96 objectAtIndexedSubscript:0];
          v99 = [v98 objectForKeyedSubscript:MediaAnalysisResultQualityKey];
          [v99 floatValue];
          v101 = v100;

          LODWORD(v102) = 1.0;
          if (v101 < MediaAnalysisAudioQualityThreshold)
          {
            *&v102 = 0.0;
          }

          [(VCPImageChangeEntry *)v166 setAudioScore:v102];
        }

        else
        {
          LODWORD(v97) = 0.5;
          [(VCPImageChangeEntry *)v166 setAudioScore:v97];
        }

        v21 = v166;
      }

      -[VCPImageChangeEntry setScreenTimeDeviceImageSensitivity:](v21, "setScreenTimeDeviceImageSensitivity:", [objc_opt_class() sensitivityFromAnalysis:analysisCopy]);

      v21 = v166;
      goto LABEL_125;
    }

    v61 = [v60 objectAtIndexedSubscript:0];
    v62 = [v61 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

    if (v62)
    {
      v63 = [v62 objectForKeyedSubscript:MediaAnalysisResultLoopSuggestionStateAttributeKey];
      -[VCPImageChangeEntry setLoopSuggestionState:](v166, "setLoopSuggestionState:", [v63 unsignedIntegerValue]);

      v64 = [v62 objectForKeyedSubscript:MediaAnalysisResultLongExposureSuggestionStateAttributeKey];
      -[VCPImageChangeEntry setLongExposureSuggestionState:](v166, "setLongExposureSuggestionState:", [v64 unsignedIntegerValue]);

      goto LABEL_63;
    }

LABEL_155:

LABEL_156:
    v27 = 0;
    v137 = v160;
    goto LABEL_157;
  }

  v9 = +[PHAsset vcp_fullAnalysisImageOnlyTypes];
  if (v9)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      localIdentifier9 = [assetCopy localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[%@] updateImageAsset : required types is MediaAnalysisTypeNone; skip", buf, 0xCu);
    }
  }

LABEL_23:
  v27 = 0;
LABEL_159:

  return v27;
}

- (int)updateMovieAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results
{
  onlyCopy = only;
  assetCopy = asset;
  analysisCopy = analysis;
  resultsCopy = results;
  v372 = assetCopy;
  v371 = objc_alloc_init(VCPMovieChangeEntry);
  [(VCPMovieChangeEntry *)v371 setAsset:assetCopy];
  v10 = +[PHAsset vcp_fullAnalysisImageOnlyTypes];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v11 = &_os_log_default;
    v12 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      localIdentifier = [assetCopy localIdentifier];
      [analysisCopy vcp_types];
      v14 = MediaAnalysisTypeDescription();
      vcp_types = [analysisCopy vcp_types];
      MediaAnalysisTypeShortDescription();
      v17 = v16 = vcp_types & v10;
      v18 = v17;
      *buf = 138413314;
      v19 = @"NO";
      *&buf[4] = localIdentifier;
      *&buf[12] = 2112;
      if (onlyCopy)
      {
        v19 = @"YES";
      }

      *&buf[14] = v14;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      *v438 = 2112;
      *&v438[2] = v17;
      *&v438[10] = 2112;
      *&v438[12] = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@] Update movie asset with analysis type %@ (%llu), required type %@, imageOnly:%@", buf, 0x34u);
    }
  }

  if (!v10 && onlyCopy)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        localIdentifier2 = [v372 localIdentifier];
        *buf = 138412290;
        *&buf[4] = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@] updateMovieAsset : required types is MediaAnalysisTypeNone; skip", buf, 0xCu);
      }
    }

LABEL_18:
    v27 = 0;
    goto LABEL_83;
  }

  if ((v10 & ~[analysisCopy vcp_types]) != 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        localIdentifier3 = [v372 localIdentifier];
        [analysisCopy vcp_types];
        v25 = MediaAnalysisTypeDescription();
        v26 = MediaAnalysisTypeDescription();
        *buf = 138412802;
        *&buf[4] = localIdentifier3;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        *&buf[24] = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@] updateMovieAsset : analysis types %@ do not include required types %@, skip", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

  if (([analysisCopy vcp_types] & 0x2000000000000) != 0)
  {
    vcp_results = [analysisCopy vcp_results];
    v29 = [vcp_results objectForKeyedSubscript:MediaAnalysisMiCaImageCaptionResultsKey];

    v22 = v29;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v30 = &_os_log_default;
      v31 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        localIdentifier4 = [v372 localIdentifier];
        *buf = 138412546;
        *&buf[4] = localIdentifier4;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@] Update Asset with MediaAnalysisMiCaImageCaptionResultsKey: %@", buf, 0x16u);
      }

      v22 = v29;
    }
  }

  else
  {
    v22 = 0;
  }

  v362 = v22;
  if ([v22 count])
  {
    v33 = [v22 objectAtIndexedSubscript:0];
    v34 = [v33 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
    v35 = [v34 objectForKeyedSubscript:MediaAnalysisResultImageCaptionTextAttributeKey];

    [(VCPMovieChangeEntry *)v371 setImageCaption:v35];
  }

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    imageEmbeddingAsset = [resultsCopy imageEmbeddingAsset];
    v37 = imageEmbeddingAsset == 0;

    if (v37)
    {
      v22 = v362;
      if (MediaAnalysisLogLevel() >= 4)
      {
        v38 = &_os_log_default;
        v39 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v39))
        {
          localIdentifier5 = [v372 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[%@] No image embedding results, skip updating imageEmbeddingVersion", buf, 0xCu);
        }

        v22 = v362;
      }
    }

    else
    {
      v22 = v362;
      -[VCPMovieChangeEntry setImageEmbeddingVersion:](v371, "setImageEmbeddingVersion:", [resultsCopy imageEmbeddingVersion]);
    }
  }

  if (onlyCopy)
  {
    [(VCPMovieChangeEntry *)v371 setImageOnly:1];
    [(NSMutableArray *)self->_pendingChanges addObject:v371];
LABEL_34:
    v27 = 0;
    goto LABEL_82;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v41 = &_os_log_default;
    v42 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v42))
    {
      localIdentifier6 = [v372 localIdentifier];
      [analysisCopy vcp_types];
      v44 = MediaAnalysisTypeShortDescription();
      vcp_types2 = [analysisCopy vcp_types];
      v46 = MediaAnalysisTypeRequiredForMoviePersistence;
      v47 = MediaAnalysisTypeShortDescription();
      *buf = 138413314;
      *&buf[4] = localIdentifier6;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      *&buf[22] = 2048;
      *&buf[24] = v46 & vcp_types2;
      *v438 = 2112;
      *&v438[2] = v47;
      *&v438[10] = 2112;
      *&v438[12] = @"NO";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[%@] Update movie asset with analysis type %@ (%llu), required type %@, imageOnly:%@", buf, 0x34u);
    }

    v22 = v362;
  }

  vcp_types3 = [analysisCopy vcp_types];
  if ((MediaAnalysisTypeRequiredForMoviePersistence & ~vcp_types3) != 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v49 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v49))
      {
        localIdentifier7 = [v372 localIdentifier];
        [analysisCopy vcp_types];
        v51 = MediaAnalysisTypeDescription();
        v52 = MediaAnalysisTypeDescription();
        *buf = 138412802;
        *&buf[4] = localIdentifier7;
        *&buf[12] = 2112;
        *&buf[14] = v51;
        *&buf[22] = 2112;
        *&buf[24] = v52;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v49, "[%@] updateMovieAsset : analysis types %@ does not include required types %@, skip", buf, 0x20u);

        v27 = 0;
        goto LABEL_81;
      }
    }

    goto LABEL_34;
  }

  if (([analysisCopy vcp_types] & 0x200000000000) != 0)
  {
    vcp_results2 = [analysisCopy vcp_results];
    v361 = [vcp_results2 objectForKeyedSubscript:MediaAnalysisMiCaVideoCaptionResultsKey];

    if ([v361 count])
    {
      v54 = [v361 objectAtIndexedSubscript:0];
      v55 = [v54 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
      v56 = [v55 objectForKeyedSubscript:MediaAnalysisResultVideoCaptionTextAttributeKey];

      [(VCPMovieChangeEntry *)v371 setVideoCaption:v56];
    }

    else
    {
      [(VCPMovieChangeEntry *)v371 setVideoCaption:&stru_1002890F8];
    }
  }

  else
  {
    v361 = 0;
  }

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    videoEmbeddingAsset = [resultsCopy videoEmbeddingAsset];
    v58 = videoEmbeddingAsset == 0;

    if (v58)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v59 = &_os_log_default;
        v60 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v60))
        {
          localIdentifier8 = [v372 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v60, "[%@] No video embedding results, skip updating videoEmbeddingVersion", buf, 0xCu);
        }
      }
    }

    else
    {
      -[VCPMovieChangeEntry setVideoEmbeddingVersion:](v371, "setVideoEmbeddingVersion:", [resultsCopy videoEmbeddingVersion]);
    }
  }

  vcp_results3 = [analysisCopy vcp_results];
  v360 = [vcp_results3 objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

  if ([v360 count])
  {
    v63 = [v360 objectAtIndexedSubscript:0];
    v64 = [v63 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

    if ([v64 count])
    {
      v65 = [v360 objectAtIndexedSubscript:0];
      v66 = v65;
      if (v65)
      {
        [v65 vcp_timerange];
      }

      else
      {
        v424 = 0u;
        v425 = 0u;
        v423 = 0u;
      }

      *buf = v423;
      *&buf[16] = v424;
      *v438 = v425;
      [(VCPMovieChangeEntry *)v371 setSummaryTimeRange:buf];

      if (v371)
      {
        [(VCPMovieChangeEntry *)v371 summaryTimeRange];
        if (buf[12])
        {
          [(VCPMovieChangeEntry *)v371 summaryTimeRange];
          if (v422)
          {
            [(VCPMovieChangeEntry *)v371 summaryTimeRange];
            if (!v421)
            {
              [(VCPMovieChangeEntry *)v371 summaryTimeRange];
              if ((v420 & 0x8000000000000000) == 0)
              {
                v181 = [v64 objectForKey:MediaAnalysisResultBestPlaybackCropAttributeKey];
                v440 = NSRectFromString(v181);
                [(VCPMovieChangeEntry *)v371 setBestPlaybackRect:v440.origin.x, v440.origin.y, v440.size.width, v440.size.height];
                [(VCPMovieChangeEntry *)v371 bestPlaybackRect];
                if (CGRectIsNull(v441))
                {
                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v182 = VCPLogToOSLogType[3];
                    if (os_log_type_enabled(&_os_log_default, v182))
                    {
                      localIdentifier9 = [v372 localIdentifier];
                      *buf = 138412290;
                      *&buf[4] = localIdentifier9;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v182, "[%@] CGRectIsNull(change.bestPlaybackRect); skip", buf, 0xCu);
                    }
                  }

LABEL_191:

                  goto LABEL_79;
                }

                v187 = [v360 objectAtIndexedSubscript:0];
                v188 = [v187 objectForKeyedSubscript:MediaAnalysisResultStartKey];
                CMTimeMakeFromDictionary(&v419, v188);
                *buf = v419;
                [(VCPMovieChangeEntry *)v371 setKeyFrameTime:buf];

                [(VCPMovieChangeEntry *)v371 keyFrameTime];
                if ((buf[12] & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v189 = VCPLogToOSLogType[3];
                    if (os_log_type_enabled(&_os_log_default, v189))
                    {
                      localIdentifier10 = [v372 localIdentifier];
                      *buf = 138412290;
                      *&buf[4] = localIdentifier10;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v189, "[%@] CMTIME_IS_INVALID(change.keyFrameTime); skip", buf, 0xCu);
                    }
                  }

                  goto LABEL_191;
                }

                v191 = [v360 objectAtIndexedSubscript:0];
                vcp_flags = [v191 vcp_flags];
                v193 = [v360 objectAtIndexedSubscript:0];
                [v193 vcp_quality];
                v195 = v194 * ((vcp_flags >> 19) & 1);
                *&v195 = v195;
                [(VCPMovieChangeEntry *)v371 setAutoplayScore:v195];

                vcp_results4 = [analysisCopy vcp_results];
                v197 = [vcp_results4 objectForKeyedSubscript:MediaAnalysisKeyFrameResourceResultsKey];

                if ([v197 count])
                {
                  v198 = [v197 objectAtIndexedSubscript:0];
                  v199 = v198 == 0;

                  if (v199)
                  {
                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v310 = VCPLogToOSLogType[3];
                      if (os_log_type_enabled(&_os_log_default, v310))
                      {
                        localIdentifier11 = [v372 localIdentifier];
                        *buf = 138412290;
                        *&buf[4] = localIdentifier11;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v310, "[%@] !(__bridge CGImageRef)keyFrameResourceResults[0]; skip", buf, 0xCu);
                      }
                    }

                    goto LABEL_79;
                  }

                  v200 = [v197 objectAtIndexedSubscript:0];
                  [(VCPMovieChangeEntry *)v371 setKeyFrameResource:CFRetain(v200)];

                  ++self->_pendingResourceChangeCount;
                }

                else
                {
                  [(VCPMovieChangeEntry *)v371 setKeyFrameResource:0];
                }

                goto LABEL_60;
              }
            }
          }
        }
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v80 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v80))
        {
          localIdentifier12 = [v372 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "[%@] CMTIMERANGE_IS_INVALID(change.summaryTimeRange); skip", buf, 0xCu);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v78 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v78))
      {
        localIdentifier13 = [v372 localIdentifier];
        *buf = 138412290;
        *&buf[4] = localIdentifier13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v78, "[%@] Missing summaryResults (!attributes.count); skip", buf, 0xCu);
      }
    }

LABEL_79:
    v27 = 0;
    goto LABEL_80;
  }

  v67 = *&kCMTimeRangeZero.start.epoch;
  *buf = *&kCMTimeRangeZero.start.value;
  *&buf[16] = v67;
  *v438 = *&kCMTimeRangeZero.duration.timescale;
  [(VCPMovieChangeEntry *)v371 setSummaryTimeRange:buf];
  *buf = *&kCMTimeZero.value;
  *&buf[16] = kCMTimeZero.epoch;
  [(VCPMovieChangeEntry *)v371 setKeyFrameTime:buf];
  [(VCPMovieChangeEntry *)v371 setAutoplayScore:0.0];
  [(VCPMovieChangeEntry *)v371 setKeyFrameResource:0];
  [(VCPMovieChangeEntry *)v371 setBestPlaybackRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
LABEL_60:
  [(VCPMovieChangeEntry *)v371 bestPlaybackRect];
  if (!CGRectIsNull(v439))
  {
    [(VCPMovieChangeEntry *)v371 bestPlaybackRect];
    if (!sub_100156C44(v68, v69, v70, v71))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v83 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v83))
        {
          localIdentifier14 = [v372 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "[%@] !CGRectIsNormalized(change.bestPlaybackRect); skip", buf, 0xCu);
        }
      }

      goto LABEL_79;
    }
  }

  [analysisCopy vcp_quality];
  *&v72 = v72;
  [(VCPMovieChangeEntry *)v371 setVideoScore:v72];
  [(VCPMovieChangeEntry *)v371 videoScore];
  if (v73 < 0.0 || ([(VCPMovieChangeEntry *)v371 videoScore], v74 > 1.0))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v75 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v75))
      {
        localIdentifier15 = [v372 localIdentifier];
        [(VCPMovieChangeEntry *)v371 videoScore];
        *buf = 138412546;
        *&buf[4] = localIdentifier15;
        *&buf[12] = 2048;
        *&buf[14] = v77;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "[%@] change.videoScore %.3f, expect [0.0, 1.0]; skip", buf, 0x16u);
      }
    }

    goto LABEL_79;
  }

  vcp_results5 = [analysisCopy vcp_results];
  v325 = [vcp_results5 objectForKeyedSubscript:MediaAnalysisActivityLevelResultsKey];

  if ([v325 count])
  {
    v87 = [v325 objectAtIndexedSubscript:0];
    v88 = [v87 objectForKeyedSubscript:MediaAnalysisResultQualityKey];
    [v88 floatValue];
    [(VCPMovieChangeEntry *)v371 setActivityScore:?];

    [(VCPMovieChangeEntry *)v371 activityScore];
    if (v89 < 0.0 || ([(VCPMovieChangeEntry *)v371 activityScore], v90 > 1.0))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v91 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v91))
        {
          localIdentifier16 = [v372 localIdentifier];
          [(VCPMovieChangeEntry *)v371 activityScore];
          *buf = 138412546;
          *&buf[4] = localIdentifier16;
          *&buf[12] = 2048;
          *&buf[14] = v93;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "[%@] change.activityScore %.3f, expect [0.0, 1.0]; skip", buf, 0x16u);
        }
      }

      v27 = 0;
      goto LABEL_359;
    }
  }

  else
  {
    LODWORD(v86) = 0.5;
    [(VCPMovieChangeEntry *)v371 setActivityScore:v86];
  }

  vcp_results6 = [analysisCopy vcp_results];
  v319 = [vcp_results6 objectForKeyedSubscript:MediaAnalysisFacePrintResultsKey];

  -[VCPMovieChangeEntry setFaceCount:](v371, "setFaceCount:", [v319 count]);
  photoLibrary = [v372 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v436 = PHFacePropertySetClustering;
  v96 = [NSArray arrayWithObjects:&v436 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v96];

  [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:2];
  v312 = [PHFace fetchFacesInAsset:v372 options:librarySpecificFetchOptions];
  v363 = +[NSMutableArray array];
  v417 = 0u;
  v418 = 0u;
  v415 = 0u;
  v416 = 0u;
  obj = v312;
  v97 = [obj countByEnumeratingWithState:&v415 objects:v435 count:16];
  if (v97)
  {
    v98 = *v416;
    v99 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v97; i = i + 1)
      {
        if (*v416 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v101 = *(*(&v415 + 1) + 8 * i);
        faceClusteringProperties = [v101 faceClusteringProperties];
        groupingIdentifier = [faceClusteringProperties groupingIdentifier];
        v104 = [groupingIdentifier isEqualToString:kVideoFaceGroupIdentifier];

        if (v104)
        {
          [v363 addObject:v101];
          if (MediaAnalysisLogLevel() >= 7)
          {
            v105 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v99))
            {
              localIdentifier17 = [v101 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v99, "Delete fullrange video face [%@]", buf, 0xCu);
            }
          }
        }
      }

      v97 = [obj countByEnumeratingWithState:&v415 objects:v435 count:16];
    }

    while (v97);
  }

  v107 = PHPersonDeleteRequest_ptr;
  if ([v363 count])
  {
    photoLibrary2 = [v372 photoLibrary];
    v413[0] = _NSConcreteStackBlock;
    v413[1] = 3221225472;
    v413[2] = sub_10015A974;
    v413[3] = &unk_100283210;
    v414 = v363;
    v412 = 0;
    v109 = [photoLibrary2 performChangesAndWait:v413 error:&v412];
    array = v412;

    if ((v109 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v184 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v184))
        {
          v185 = [array description];
          *buf = 138412290;
          *&buf[4] = v185;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v184, "Failed to delete faces %@", buf, 0xCu);
        }
      }

      v27 = -18;
      v186 = v414;
LABEL_356:

      v291 = array;
      goto LABEL_357;
    }

    v107 = PHPersonDeleteRequest_ptr;
  }

  [(VCPMovieChangeEntry *)v371 setAudioClassification:0];
  if (([analysisCopy vcp_types] & 0x200000) != 0)
  {
    v364 = +[NSMutableSet set];
    v110 = [objc_opt_class() mad_audioTaxonomy:1 useResultsKey:1];
    v410 = 0u;
    v411 = 0u;
    v408 = 0u;
    v409 = 0u;
    allKeys = [v110 allKeys];
    v112 = [allKeys countByEnumeratingWithState:&v408 objects:v434 count:16];
    if (!v112)
    {
      goto LABEL_124;
    }

    v113 = *v409;
    while (1)
    {
      for (j = 0; j != v112; j = j + 1)
      {
        if (*v409 != v113)
        {
          objc_enumerationMutation(allKeys);
        }

        v115 = *(*(&v408 + 1) + 8 * j);
        vcp_results7 = [analysisCopy vcp_results];
        v117 = [vcp_results7 objectForKeyedSubscript:v115];
        if ([v117 count])
        {
          [v372 duration];
          v119 = v118 > 0.0;

          if (!v119)
          {
            continue;
          }

          v120 = [PHSceneClassification alloc];
          v121 = [v110 objectForKeyedSubscript:v115];
          longLongValue = [v121 longLongValue];
          y = CGRectNull.origin.y;
          width = CGRectNull.size.width;
          height = CGRectNull.size.height;
          [v372 duration];
          vcp_results7 = [v120 initWithExtendedSceneIdentifier:longLongValue confidence:3 boundingBox:1.0 startTime:CGRectNull.origin.x duration:y classificationType:{width, height, 0.0, v126}];

          if (vcp_results7)
          {
            [v364 addObject:vcp_results7];
          }
        }

        else
        {
        }
      }

      v112 = [allKeys countByEnumeratingWithState:&v408 objects:v434 count:16];
      if (!v112)
      {
LABEL_124:

        [(VCPMovieChangeEntry *)v371 setAudioClassifications:v364];
        v107 = PHPersonDeleteRequest_ptr;
        break;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v127 = &_os_log_default;
    v128 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v128))
    {
      localIdentifier18 = [v372 localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v128, "publish full-range scene classification result to movie %@", buf, 0xCu);
    }

    v107 = PHPersonDeleteRequest_ptr;
  }

  if (([analysisCopy vcp_types] & 0x40000004000) == 0)
  {
    goto LABEL_232;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v130 = &_os_log_default;
    v131 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v131))
    {
      localIdentifier19 = [v372 localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v131, "[%@] check scene classification result from full-range video", buf, 0xCu);
    }
  }

  v333 = +[NSMutableSet set];
  v365 = +[NSMutableSet set];
  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  sceneClassifications = [v372 sceneClassifications];
  v134 = [sceneClassifications countByEnumeratingWithState:&v404 objects:v433 count:16];
  if (v134)
  {
    v135 = *v405;
    do
    {
      for (k = 0; k != v134; k = k + 1)
      {
        if (*v405 != v135)
        {
          objc_enumerationMutation(sceneClassifications);
        }

        v137 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v404 + 1) + 8 * k) extendedSceneIdentifier]);
        [v365 addObject:v137];
      }

      v134 = [sceneClassifications countByEnumeratingWithState:&v404 objects:v433 count:16];
    }

    while (v134);
  }

  v138 = +[NSMutableDictionary dictionary];
  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  vcp_results8 = [analysisCopy vcp_results];
  v345 = [vcp_results8 objectForKeyedSubscript:MediaAnalysisClassificationResultsKey];

  v140 = [v345 countByEnumeratingWithState:&v400 objects:v432 count:16];
  if (v140)
  {
    v355 = *v401;
    v350 = MediaAnalysisResultAttributesKey;
    do
    {
      v141 = v140;
      for (m = 0; m != v141; m = m + 1)
      {
        if (*v401 != v355)
        {
          objc_enumerationMutation(v345);
        }

        v143 = [*(*(&v400 + 1) + 8 * m) objectForKeyedSubscript:v350];
        v398 = 0u;
        v399 = 0u;
        v396 = 0u;
        v397 = 0u;
        v144 = v143;
        v145 = [v144 countByEnumeratingWithState:&v396 objects:v431 count:16];
        if (v145)
        {
          v146 = *v397;
          do
          {
            for (n = 0; n != v145; n = n + 1)
            {
              if (*v397 != v146)
              {
                objc_enumerationMutation(v144);
              }

              v148 = *(*(&v396 + 1) + 8 * n);
              v149 = [v144 objectForKeyedSubscript:v148];
              [v149 floatValue];
              v151 = v150;

              v152 = [v138 objectForKeyedSubscript:v148];
              LOBYTE(v149) = v152 == 0;

              if ((v149 & 1) == 0)
              {
                v154 = [v138 objectForKeyedSubscript:v148];
                [v154 floatValue];
                v156 = v155;

                v151 = fmaxf(v156, v151);
              }

              *&v153 = v151;
              v157 = [NSNumber numberWithFloat:v153];
              [v138 setObject:v157 forKeyedSubscript:v148];
            }

            v145 = [v144 countByEnumeratingWithState:&v396 objects:v431 count:16];
          }

          while (v145);
        }
      }

      v140 = [v345 countByEnumeratingWithState:&v400 objects:v432 count:16];
    }

    while (v140);
  }

  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  vcp_results9 = [analysisCopy vcp_results];
  v336 = [vcp_results9 objectForKeyedSubscript:MediaAnalysisSafetyResultsKey];

  v159 = [v336 countByEnumeratingWithState:&v392 objects:v430 count:16];
  if (v159)
  {
    v346 = MediaAnalysisResultAttributesKey;
    v351 = *v393;
    context = MediaAnalysisResultSensitivitySceneResultsKey;
    do
    {
      v160 = 0;
      v356 = v159;
      do
      {
        if (*v393 != v351)
        {
          objc_enumerationMutation(v336);
        }

        v161 = [*(*(&v392 + 1) + 8 * v160) objectForKeyedSubscript:v346];
        v162 = v161;
        if (v161)
        {
          v163 = [v161 objectForKeyedSubscript:context];
          v390 = 0u;
          v391 = 0u;
          v388 = 0u;
          v389 = 0u;
          v164 = v163;
          v165 = [v164 countByEnumeratingWithState:&v388 objects:v429 count:16];
          if (v165)
          {
            v166 = *v389;
            do
            {
              for (ii = 0; ii != v165; ii = ii + 1)
              {
                if (*v389 != v166)
                {
                  objc_enumerationMutation(v164);
                }

                v168 = *(*(&v388 + 1) + 8 * ii);
                v169 = [v164 objectForKeyedSubscript:v168];
                [v169 floatValue];
                v171 = v170;

                v172 = [v138 objectForKeyedSubscript:v168];
                LOBYTE(v169) = v172 == 0;

                if ((v169 & 1) == 0)
                {
                  v174 = [v138 objectForKeyedSubscript:v168];
                  [v174 floatValue];
                  v176 = v175;

                  v171 = fmaxf(v176, v171);
                }

                *&v173 = v171;
                v177 = [NSNumber numberWithFloat:v173];
                [v138 setObject:v177 forKeyedSubscript:v168];
              }

              v165 = [v164 countByEnumeratingWithState:&v388 objects:v429 count:16];
            }

            while (v165);
          }
        }

        v160 = v160 + 1;
      }

      while (v160 != v356);
      v159 = [v336 countByEnumeratingWithState:&v392 objects:v430 count:16];
    }

    while (v159);
  }

  vcp_results10 = [analysisCopy vcp_results];
  v326 = [vcp_results10 objectForKeyedSubscript:MediaAnalysisVideoSceneThumbnailResultsKey];

  if (v326 && [v326 count])
  {
    v179 = [v326 objectAtIndexedSubscript:0];
    v180 = [v179 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
  }

  else
  {
    v180 = 0;
  }

  v352 = v180;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v357 = v138;
  v201 = [v357 countByEnumeratingWithState:&v384 objects:v428 count:16];
  if (!v201)
  {

    goto LABEL_231;
  }

  contexta = 0;
  v202 = *v385;
  v347 = VCPLogToOSLogType[4];
  v337 = VCPLogToOSLogType[6];
  do
  {
    v203 = v201;
    for (jj = 0; jj != v203; jj = jj + 1)
    {
      if (*v385 != v202)
      {
        objc_enumerationMutation(v357);
      }

      v205 = *(*(&v384 + 1) + 8 * jj);
      if (([v365 containsObject:v205] & 1) == 0)
      {
        if (!v352)
        {
          goto LABEL_208;
        }

        v206 = [v352 objectForKeyedSubscript:v205];
        if (!v206)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v207 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v347))
            {
              integerValue = [v205 integerValue];
              *buf = 134217984;
              *&buf[4] = integerValue;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v347, "thumbnail ID for scene ID %ld is NULL", buf, 0xCu);
            }
          }

LABEL_208:
          v206 = 0;
        }

        v209 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
        v210 = [v209 nodeForExtendedSceneClassId:{objc_msgSend(v205, "longLongValue")}];

        if (v210)
        {
          [v210 highPrecisionThreshold];
          v212 = v211;
          [v210 highRecallThreshold];
          v214 = v213;
          [v210 searchThreshold];
          v216 = v214 >= v212 ? v212 : v214;
          v217 = v215 >= v216 ? v216 : v215;
          v218 = [v357 objectForKeyedSubscript:v205];
          [v218 floatValue];
          v220 = v219;

          v221 = v220;
          if (v217 < v221)
          {
            [v372 duration];
            if (v222 > 0.0)
            {
              v223 = [PHSceneClassification alloc];
              longLongValue2 = [v205 longLongValue];
              v225 = CGRectNull.origin.y;
              v226 = CGRectNull.size.width;
              v227 = CGRectNull.size.height;
              [v372 duration];
              v229 = [v223 initWithExtendedSceneIdentifier:longLongValue2 confidence:2 boundingBox:v206 startTime:v221 duration:CGRectNull.origin.x classificationType:v225 thumbnailIdentifier:{v226, v227, 0.0, v228}];
              if (v229)
              {
                [v333 addObject:v229];
                if (MediaAnalysisLogLevel() >= 6)
                {
                  v230 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, v337))
                  {
                    localIdentifier20 = [v372 localIdentifier];
                    contextd = +[PFSceneTaxonomy vcp_sharedTaxonomy];
                    v232 = [contextd mad_sceneNameFromExtendedSceneId:{objc_msgSend(v205, "longLongValue")}];
                    *buf = 138413058;
                    *&buf[4] = localIdentifier20;
                    *&buf[12] = 2112;
                    *&buf[14] = v232;
                    *&buf[22] = 2048;
                    *&buf[24] = v221;
                    *v438 = 2112;
                    *&v438[2] = v206;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v337, "[%@] add scene classification result [%@, %f, %@] from full-range video", buf, 0x2Au);
                  }
                }

                contexta = 1;
              }
            }
          }
        }

        continue;
      }
    }

    v201 = [v357 countByEnumeratingWithState:&v384 objects:v428 count:16];
  }

  while (v201);

  v180 = v352;
  if (contexta)
  {
    [(VCPMovieChangeEntry *)v371 setSceneClassifications:v333];
  }

LABEL_231:

  v107 = PHPersonDeleteRequest_ptr;
LABEL_232:
  if (([analysisCopy vcp_types] & 8) == 0)
  {
    v27 = 0;
    goto LABEL_297;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v233 = &_os_log_default;
    v234 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v234))
    {
      localIdentifier21 = [v372 localIdentifier];
      *buf = 67109378;
      *&buf[4] = 15;
      *&buf[8] = 2112;
      *&buf[10] = localIdentifier21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v234, "publish full-range video faces (processing version %d) to movie %@", buf, 0x12u);
    }

    v107 = PHPersonDeleteRequest_ptr;
  }

  array = [v107[147] array];
  array2 = [v107[147] array];
  v314 = +[NSMutableDictionary dictionary];
  v383 = 0u;
  v381 = 0u;
  v382 = 0u;
  v380 = 0u;
  v322 = v319;
  v236 = [v322 countByEnumeratingWithState:&v380 objects:v427 count:16];
  v27 = 0;
  if (v236)
  {
    v329 = *v381;
    v366 = MediaAnalysisResultAttributesKey;
    v348 = MediaAnalysisResultFacePrintAttributeKey;
    v327 = MediaAnalysisResultThumbnailIDAttributeKey;
    v334 = MediaAnalysisResultTorsoPrintAttributeKey;
    type = VCPLogToOSLogType[7];
    v315 = VCPLogToOSLogType[3];
    do
    {
      v237 = 0;
      v331 = v236;
      do
      {
        if (*v381 != v329)
        {
          objc_enumerationMutation(v322);
        }

        v238 = *(*(&v380 + 1) + 8 * v237);
        contextb = objc_autoreleasePoolPush();
        v239 = [v238 objectForKeyedSubscript:v366];
        v358 = [v239 objectForKeyedSubscript:v348];

        v240 = [v238 objectForKeyedSubscript:v366];
        v353 = [v240 objectForKeyedSubscript:v327];

        v241 = [v238 objectForKeyedSubscript:v366];
        v242 = [v241 objectForKeyedSubscript:v334];

        v338 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v358 error:0];
        v243 = [v338 decodeObjectOfClass:objc_opt_class() forKey:v348];
        if (v243)
        {
          if (!v353)
          {
            v353 = kNULLThumbnailID;
          }

          v244 = +[NSMutableArray array];
          [v243 confidence];
          if (v245 < 0.2)
          {
            goto LABEL_277;
          }

          if (!v242)
          {
            v248 = 0;
            goto LABEL_256;
          }

          v246 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v242 error:0];
          v247 = [v246 decodeObjectOfClass:objc_opt_class() forKey:v334];
          if (!v247)
          {
            if (MediaAnalysisLogLevel() < 3)
            {
              v251 = 83;
            }

            else
            {
              v260 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v315))
              {
                localIdentifier22 = [v372 localIdentifier];
                *buf = 138412290;
                *&buf[4] = localIdentifier22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v315, "Failed to decode torsoprint for asset [%@]", buf, 0xCu);
              }

              v251 = 83;
              v262 = &_os_log_default;
LABEL_286:
            }

            goto LABEL_288;
          }

          v248 = v247;

LABEL_256:
          v252 = [[VNFaceTorsoprint alloc] initWithFaceprint:v243 torsoprint:v248];
          v320 = v248;
          v379 = 0;
          v253 = [v252 serializeStateAndReturnError:&v379];
          v254 = v379;
          v255 = v254;
          if (v253 && !v254)
          {
            v256 = [[PHFaceprint alloc] initWithFaceprintData:v253 faceprintVersion:15];
            v257 = v256 != 0;
            if (v256)
            {
              [v244 addObject:v252];
              [array addObject:v256];
              [array2 addObject:v353];
              goto LABEL_275;
            }

            if (MediaAnalysisLogLevel() >= 3)
            {
              v263 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v315))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v315, "Unable to create faceprint", buf, 2u);
              }
            }

LABEL_274:
            v27 = -18;
            goto LABEL_275;
          }

          if (MediaAnalysisLogLevel() < 3)
          {
            v257 = 0;
            v27 = -18;
          }

          else
          {
            v258 = &_os_log_default;
            if (!os_log_type_enabled(&_os_log_default, v315))
            {
              v256 = &_os_log_default;
              v257 = 0;
              goto LABEL_274;
            }

            v259 = [v255 description];
            *buf = 138412290;
            *&buf[4] = v259;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v315, "Unable to serialize faceTorsoprint %@", buf, 0xCu);

            v257 = 0;
            v27 = -18;
            v256 = &_os_log_default;
LABEL_275:
          }

          if (v257)
          {
LABEL_277:
            if ([v244 count])
            {
              v246 = +[NSMutableDictionary dictionary];
              v262 = &_os_log_default;
              if (![(VCPPhotosAssetChangeManager *)self associateTraitsWithFaceTorspPrints:v244 forAsset:v372 withAnalysis:analysisCopy results:v246])
              {
                v246 = v246;
                v251 = 0;
                v262 = v314;
                v314 = v246;
                goto LABEL_286;
              }

              if (MediaAnalysisLogLevel() >= 3)
              {
                v264 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v315))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v315, "Failed to associateTraits", buf, 2u);
                }

                v27 = -18;
                v251 = 1;
                goto LABEL_286;
              }

              v27 = -18;
              v251 = 1;
LABEL_288:
            }

            else
            {
              v251 = 0;
            }
          }

          else
          {
            v251 = 1;
          }

LABEL_289:

          goto LABEL_290;
        }

        if (MediaAnalysisLogLevel() >= 7)
        {
          v244 = &_os_log_default;
          v249 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier23 = [v372 localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Failed to decode faceprint for asset [%@]", buf, 0xCu);
          }

          v251 = 83;
          goto LABEL_289;
        }

        v251 = 83;
LABEL_290:

        objc_autoreleasePoolPop(contextb);
        if (v251 != 83 && v251)
        {

LABEL_355:
          v186 = array2;
          goto LABEL_356;
        }

        v237 = v237 + 1;
      }

      while (v331 != v237);
      v236 = [v322 countByEnumeratingWithState:&v380 objects:v427 count:16];
    }

    while (v236);
  }

  [(VCPMovieChangeEntry *)v371 setFacesToAdd:array];
  [(VCPMovieChangeEntry *)v371 setFaceThumbnailIds:array2];
  [(VCPMovieChangeEntry *)v371 setHumanActionsForFacesToAdd:v314];

LABEL_297:
  if (([analysisCopy vcp_types] & 0x20000) == 0)
  {
    goto LABEL_337;
  }

  vcp_results11 = [analysisCopy vcp_results];
  v316 = [vcp_results11 objectForKeyedSubscript:MediaAnalysisAnimalPrintResultsKey];

  v266 = PHPersonDeleteRequest_ptr;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v267 = &_os_log_default;
    v268 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v268))
    {
      localIdentifier24 = [v372 localIdentifier];
      *buf = 67109378;
      *&buf[4] = 15;
      *&buf[8] = 2112;
      *&buf[10] = localIdentifier24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v268, "publish full-range video pets (processing version %d) to movie %@", buf, 0x12u);
    }

    v266 = PHPersonDeleteRequest_ptr;
  }

  array2 = [v266[147] array];
  array3 = [v266[147] array];
  array4 = [v266[147] array];
  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
  v270 = v316;
  array = v270;
  v271 = [v270 countByEnumeratingWithState:&v375 objects:v426 count:16];
  if (!v271)
  {
    goto LABEL_336;
  }

  v339 = *v376;
  v354 = MediaAnalysisResultAnimalPrintAttributeKey;
  v359 = MediaAnalysisResultAttributesKey;
  v335 = MediaAnalysisResultThumbnailIDAttributeKey;
  *typea = MediaAnalysisResultFlagsKey;
  v330 = VCPLogToOSLogType[3];
  v332 = VCPLogToOSLogType[7];
  while (2)
  {
    v272 = 0;
    contextc = v271;
    while (2)
    {
      if (*v376 != v339)
      {
        objc_enumerationMutation(array);
      }

      v273 = *(*(&v375 + 1) + 8 * v272);
      v349 = objc_autoreleasePoolPush();
      v274 = [v273 objectForKeyedSubscript:v359];
      v367 = [v274 objectForKeyedSubscript:v354];

      v275 = [v273 objectForKeyedSubscript:v359];
      v276 = [v275 objectForKeyedSubscript:v335];

      v277 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v367 error:0];
      v278 = [v277 decodeObjectOfClass:objc_opt_class() forKey:v354];
      if (!v278)
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          v280 = 103;
          goto LABEL_332;
        }

        v281 = &_os_log_default;
        v282 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v332))
        {
          localIdentifier25 = [v372 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v332, "Failed to decode animalprint for asset [%@]", buf, 0xCu);
        }

        v280 = 103;
LABEL_331:

        goto LABEL_332;
      }

      if (!v276)
      {
        v276 = kNULLThumbnailID;
      }

      [v278 confidence];
      if (v279 >= 0.4)
      {
        v374 = 0;
        v281 = [v278 serializeStateAndReturnError:&v374];
        v284 = v374;
        v285 = v284;
        if (!v281 || v284)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v288 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v330))
            {
              v289 = [v285 description];
              *buf = 138412290;
              *&buf[4] = v289;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v330, "Unable to serialize faceTorsoprint %@", buf, 0xCu);
            }
          }

          v27 = -18;
          v280 = 1;
          v281 = v285;
        }

        else
        {
          v286 = [[PHFaceprint alloc] initWithFaceprintData:v281 faceprintVersion:15];
          if (v286)
          {
            [array2 addObject:v286];
            v287 = [v273 objectForKeyedSubscript:*typea];
            [array3 addObject:v287];

            [array4 addObject:v276];
            v280 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v290 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v330))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v330, "Unable to create faceprint", buf, 2u);
              }
            }

            v27 = -18;
            v280 = 1;
          }
        }

        goto LABEL_331;
      }

      v280 = 0;
LABEL_332:

      objc_autoreleasePoolPop(v349);
      if (v280 != 103 && v280)
      {

        goto LABEL_355;
      }

      if (contextc != ++v272)
      {
        continue;
      }

      break;
    }

    v270 = array;
    v271 = [array countByEnumeratingWithState:&v375 objects:v426 count:16];
    if (v271)
    {
      continue;
    }

    break;
  }

LABEL_336:

  [(VCPMovieChangeEntry *)v371 setAnimalsToAdd:array2];
  [(VCPMovieChangeEntry *)v371 setAnimalsType:array3];
  [(VCPMovieChangeEntry *)v371 setAnimalThumbnailIds:array4];

LABEL_337:
  if (([analysisCopy vcp_types] & 0x40000000) != 0)
  {
    v291 = +[NSMutableDictionary dictionary];
    v27 = [(VCPPhotosAssetChangeManager *)self associateTraitsForMovieAsset:v372 withAnalysis:analysisCopy result:v291];
    if (!v27)
    {
      [(VCPMovieChangeEntry *)v371 setHumanActions:v291];

      goto LABEL_340;
    }

LABEL_357:
  }

  else
  {
LABEL_340:
    -[VCPMovieChangeEntry setScreenTimeDeviceImageSensitivity:](v371, "setScreenTimeDeviceImageSensitivity:", [objc_opt_class() sensitivityFromAnalysis:analysisCopy]);
    if ([v372 mad_isEligibleForComputeSync])
    {
      -[VCPMovieChangeEntry setAnalysisStage:](v371, "setAnalysisStage:", [v372 mad_analysisStageAfterCompletingAnalysis:1]);
      if (MediaAnalysisLogLevel() >= 6)
      {
        v292 = &_os_log_default;
        v293 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v293))
        {
          localIdentifier26 = [v372 localIdentifier];
          vcp_typeDescription = [v372 vcp_typeDescription];
          v296 = [analysisCopy vcp_analysisDescriptionWithResultDetails:1];
          *buf = 138412802;
          *&buf[4] = localIdentifier26;
          *&buf[12] = 2112;
          *&buf[14] = vcp_typeDescription;
          *&buf[22] = 2112;
          *&buf[24] = v296;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v293, "[%@][%@] Existing movie analysis %@", buf, 0x20u);
        }
      }

      v297 = VCPSignPostLog();
      v298 = os_signpost_id_generate(v297);

      v299 = VCPSignPostLog();
      v300 = v299;
      if (v298 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v299))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v300, OS_SIGNPOST_INTERVAL_BEGIN, v298, "VCPPhotosAssetChangeManager_Movie_PackComputeSyncPayload", "", buf, 2u);
      }

      v301 = [MADComputeSyncPayloadResults payloadDataForAsset:v372 targetStage:[(VCPMovieChangeEntry *)v371 analysisStage] embeddingResults:resultsCopy fullAnalysisResults:analysisCopy];
      v302 = VCPSignPostLog();
      v303 = v302;
      if (v298 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v302))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v303, OS_SIGNPOST_INTERVAL_END, v298, "VCPPhotosAssetChangeManager_Movie_PackComputeSyncPayload", "", buf, 2u);
      }

      if (v301)
      {
        [(VCPMovieChangeEntry *)v371 setComputeSyncPayload:v301];
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v304 = &_os_log_default;
        v305 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v305))
        {
          localIdentifier27 = [v372 localIdentifier];
          analysisStage = [(VCPMovieChangeEntry *)v371 analysisStage];
          mediaAnalysisProperties = [v372 mediaAnalysisProperties];
          localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
          *buf = 138412802;
          *&buf[4] = localIdentifier27;
          *&buf[12] = 1024;
          *&buf[14] = analysisStage;
          *&buf[18] = 1024;
          *&buf[20] = localAnalysisStage;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v305, "[%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }
      }
    }

    [(NSMutableArray *)self->_pendingChanges addObject:v371];
    v27 = 0;
  }

LABEL_359:
LABEL_80:

LABEL_81:
  v22 = v362;
LABEL_82:

LABEL_83:
  return v27;
}

- (int)updateLegacyAsset:(id)asset withAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  if (([analysisCopy vcp_types] & 0x40000) != 0)
  {
    v8 = objc_alloc_init(VCPLegacyChangeEntry);
    [(VCPLegacyChangeEntry *)v8 setAsset:assetCopy];
    -[VCPLegacyChangeEntry setMediaAnalysisVersion:](v8, "setMediaAnalysisVersion:", [analysisCopy vcp_version]);
    vcp_results = [analysisCopy vcp_results];
    v10 = [vcp_results objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

    if ([v10 count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

      if ([v12 count])
      {
        v13 = [v10 objectAtIndexedSubscript:0];
        v14 = v13;
        if (v13)
        {
          [v13 vcp_timerange];
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
        }

        *buf = v33;
        *&buf[16] = v34;
        v37 = v35;
        [(VCPLegacyChangeEntry *)v8 setSummaryTimeRange:buf];

        v21 = [v10 objectAtIndexedSubscript:0];
        vcp_flags = [v21 vcp_flags];
        v23 = 0.0;
        if ((vcp_flags & 0x80000) != 0)
        {
          *&v23 = 1.0;
        }

        [(VCPLegacyChangeEntry *)v8 setAutoplayScore:v23];

        if (v8)
        {
          [(VCPLegacyChangeEntry *)v8 summaryTimeRange];
          if (buf[12])
          {
            [(VCPLegacyChangeEntry *)v8 summaryTimeRange];
            if (v32)
            {
              [(VCPLegacyChangeEntry *)v8 summaryTimeRange];
              if (!v31)
              {
                [(VCPLegacyChangeEntry *)v8 summaryTimeRange];
                if ((v30 & 0x8000000000000000) == 0)
                {

                  goto LABEL_7;
                }
              }
            }
          }
        }
      }

      else
      {
      }

LABEL_27:

      goto LABEL_28;
    }

    v15 = *&kCMTimeRangeZero.start.epoch;
    *buf = *&kCMTimeRangeZero.start.value;
    *&buf[16] = v15;
    v37 = *&kCMTimeRangeZero.duration.timescale;
    [(VCPLegacyChangeEntry *)v8 setSummaryTimeRange:buf];
    [(VCPLegacyChangeEntry *)v8 setAutoplayScore:0.0];
LABEL_7:
    if ([assetCopy mad_isEligibleForComputeSync])
    {
      -[VCPLegacyChangeEntry setAnalysisStage:](v8, "setAnalysisStage:", [assetCopy mad_analysisStageAfterCompletingAnalysis:1]);
      if (MediaAnalysisLogLevel() >= 6)
      {
        v16 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          localIdentifier = [assetCopy localIdentifier];
          vcp_typeDescription = [assetCopy vcp_typeDescription];
          v19 = [analysisCopy vcp_analysisDescriptionWithResultDetails:1];
          *buf = 138412802;
          *&buf[4] = localIdentifier;
          *&buf[12] = 2112;
          *&buf[14] = vcp_typeDescription;
          *&buf[22] = 2112;
          *&buf[24] = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[%@][%@] Existing legacy analysis %@", buf, 0x20u);
        }
      }

      v20 = [MADComputeSyncPayloadResults payloadDataForAsset:assetCopy targetStage:[(VCPLegacyChangeEntry *)v8 analysisStage] embeddingResults:0 fullAnalysisResults:analysisCopy];
      if (v20)
      {
        [(VCPLegacyChangeEntry *)v8 setComputeSyncPayload:v20];
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v24 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          analysisStage = [(VCPLegacyChangeEntry *)v8 analysisStage];
          mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
          localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
          *buf = 138412802;
          *&buf[4] = localIdentifier2;
          *&buf[12] = 1024;
          *&buf[14] = analysisStage;
          *&buf[18] = 1024;
          *&buf[20] = localAnalysisStage;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }
      }
    }

    [(NSMutableArray *)self->_pendingChanges addObject:v8];
    goto LABEL_27;
  }

LABEL_28:

  return 0;
}

- (int)updateAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id)results cancelBlock:(id)block
{
  onlyCopy = only;
  assetCopy = asset;
  analysisCopy = analysis;
  resultsCopy = results;
  blockCopy = block;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v16 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      localIdentifier = [assetCopy localIdentifier];
      vcp_typeDescription = [assetCopy vcp_typeDescription];
      [analysisCopy vcp_types];
      v19 = MediaAnalysisTypeDescription();
      v20 = v19;
      v21 = @"NO";
      *buf = 138413058;
      v45 = localIdentifier;
      if (onlyCopy)
      {
        v21 = @"YES";
      }

      v46 = 2112;
      *v47 = vcp_typeDescription;
      *&v47[8] = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[%@] Updating asset (%@) with results %@ (imageOnly: %@)", buf, 0x2Au);
    }
  }

  vcp_dateModified = [analysisCopy vcp_dateModified];
  vcp_modificationDate = [assetCopy vcp_modificationDate];
  v24 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

  if ((v24 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        vcp_dateModified2 = [analysisCopy vcp_dateModified];
        vcp_modificationDate2 = [assetCopy vcp_modificationDate];
        *buf = 138412802;
        v45 = localIdentifier2;
        v46 = 2112;
        *v47 = vcp_dateModified2;
        *&v47[8] = 2112;
        v48 = vcp_modificationDate2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[%@] analysis vcp_dateModified: %@, but asset vcp_modificationDate: %@; skip updating ...", buf, 0x20u);
      }
    }

    goto LABEL_30;
  }

  vcp_version = [analysisCopy vcp_version];
  v26 = MediaAnalysisVersion;
  if (vcp_version == MediaAnalysisVersion || onlyCopy && (([assetCopy isVideo] & 1) != 0 || objc_msgSend(assetCopy, "vcp_isLivePhoto")))
  {
    if ([assetCopy isVideo])
    {
      v27 = [(VCPPhotosAssetChangeManager *)self updateMovieAsset:assetCopy analysis:analysisCopy imageOnly:onlyCopy vskResults:resultsCopy];
    }

    else
    {
      v27 = [(VCPPhotosAssetChangeManager *)self updateImageAsset:assetCopy analysis:analysisCopy imageOnly:onlyCopy vskResults:resultsCopy];
    }

LABEL_22:
    v35 = v27;
    if (v27)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if ([analysisCopy vcp_version] < v26 && (v32 = objc_msgSend(analysisCopy, "vcp_version"), objc_msgSend(assetCopy, "mediaAnalysisProperties"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "mediaAnalysisVersion") < v32, v33, v34))
  {
    if (([assetCopy isVideo] & 1) != 0 || objc_msgSend(assetCopy, "vcp_isLivePhoto"))
    {
      v27 = [(VCPPhotosAssetChangeManager *)self updateLegacyAsset:assetCopy withAnalysis:analysisCopy];
      goto LABEL_22;
    }
  }

  else if (MediaAnalysisLogLevel() >= 7)
  {
    v36 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v36))
    {
      localIdentifier3 = [assetCopy localIdentifier];
      vcp_version2 = [analysisCopy vcp_version];
      mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
      mediaAnalysisImageVersion = [mediaAnalysisProperties mediaAnalysisImageVersion];
      mediaAnalysisProperties2 = [assetCopy mediaAnalysisProperties];
      mediaAnalysisVersion = [mediaAnalysisProperties2 mediaAnalysisVersion];
      *buf = 138413058;
      v45 = localIdentifier3;
      v46 = 1024;
      *v47 = vcp_version2;
      *&v47[4] = 1024;
      *&v47[6] = mediaAnalysisImageVersion;
      LOWORD(v48) = 1024;
      *(&v48 + 2) = mediaAnalysisVersion;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@] Nothing to update Photos analysis vcp_version %d, Photos mediaAnalysisImageVersion %d, mediaAnalysisVersion %d", buf, 0x1Eu);
    }
  }

LABEL_27:
  if ([(NSMutableArray *)self->_pendingChanges count]<= 0x63 && self->_pendingResourceChangeCount < 5 || (v35 = [(VCPPhotosAssetChangeManager *)self publishPendingChangesWithCancelBlock:blockCopy]) == 0)
  {
LABEL_30:
    v35 = 0;
  }

LABEL_31:

  return v35;
}

- (int)publishPendingChangesWithCancelBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableArray *)self->_pendingChanges count];
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v6 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        qos_class_self();
        v7 = VCPMAQoSDescription();
        *buf = 67109378;
        *&buf[4] = v5;
        LOWORD(v29) = 2112;
        *(&v29 + 2) = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "  Publishing PHAssetPropertySetMediaAnalysis for %d assets (QoS: %@)", buf, 0x12u);
      }
    }

    v8 = +[MADStateHandler sharedStateHandler];
    [v8 addBreadcrumb:{@"[PhotosAssetChangeManager] Persisting %d assets to Photos", v5}];

    v9 = +[MADStateHandler sharedStateHandler];
    [v9 enterKnownTimeoutRisk:1];

    v10 = VCPSignPostLog();
    v11 = os_signpost_id_generate(v10);

    v12 = VCPSignPostLog();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPFullAnalysisPersistChanges", "", buf, 2u);
    }

    *buf = 0;
    *&v29 = buf;
    *(&v29 + 1) = 0x3032000000;
    v30 = sub_10015B828;
    v31 = sub_10015B838;
    v32 = self->_pendingChanges;
    v14 = +[NSMutableArray array];
    pendingChanges = self->_pendingChanges;
    self->_pendingChanges = v14;

    self->_pendingResourceChangeCount = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10015B840;
    v27[3] = &unk_100283450;
    v27[4] = buf;
    v16 = objc_retainBlock(v27);
    photoLibrary = self->_photoLibrary;
    v26 = 0;
    v18 = [(PHPhotoLibrary *)photoLibrary mad_performChangesAndWait:v16 activity:1 cancelBlock:blockCopy extendTimeoutBlock:&stru_100287550 error:&v26];
    v19 = v26;
    v20 = VCPSignPostLog();
    v21 = v20;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v11, "VCPFullAnalysisPersistChanges", "", v25, 2u);
    }

    v22 = +[MADStateHandler sharedStateHandler];
    [v22 exitKnownTimeoutRisk];

    v23 = +[MADStateHandler sharedStateHandler];
    [v23 addBreadcrumb:{@"[PhotosAssetChangeManager] Finished persisting %d assets to Photos", v5}];

    if (v18)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = [v19 code];
    }

    _Block_object_dispose(buf, 8);
  }

  return v5;
}

@end