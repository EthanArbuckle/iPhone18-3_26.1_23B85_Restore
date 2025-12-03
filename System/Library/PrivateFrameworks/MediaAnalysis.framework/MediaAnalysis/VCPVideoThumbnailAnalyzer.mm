@interface VCPVideoThumbnailAnalyzer
- (VCPVideoThumbnailAnalyzer)initWithExistingThumbnails:(id)thumbnails;
- (float)computeFaceScore:(id *)score faceResults:(id)results penaltyScore:(float *)penaltyScore;
- (float)distanceBetweenFrames:(float)frames keyFrame2:(float)frame2;
- (id)addThumbnailIdsToFaceAnimalPrint:(id)print isFace:(BOOL)face;
- (id)addThumbnailIdsToHumanActionClassification:(id)classification;
- (id)addThumbnailIdsToSummarizedEmbedding:(id)embedding;
- (id)addThumbnailToResults:(id)results withPrivateResults:(id)privateResults videoRange:(id *)range assetMaxNumThumbnails:(int)thumbnails;
- (id)findThumbnailID:(id *)d;
- (id)getKeyFrameResults:(id)results;
- (id)sceneIdsToThumbnailIdsMapping:(id)mapping;
- (void)addFrameToThumbnails:(id)thumbnails;
- (void)reduceNumThumbnails:(int)thumbnails;
@end

@implementation VCPVideoThumbnailAnalyzer

- (VCPVideoThumbnailAnalyzer)initWithExistingThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  v10.receiver = self;
  v10.super_class = VCPVideoThumbnailAnalyzer;
  v6 = [(VCPVideoThumbnailAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_existingThumbnails, thumbnails);
    v8 = v7;
  }

  return v7;
}

- (id)addThumbnailToResults:(id)results withPrivateResults:(id)privateResults videoRange:(id *)range assetMaxNumThumbnails:(int)thumbnails
{
  v81 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  privateResultsCopy = privateResults;
  time = range->var1;
  v9 = CMTimeGetSeconds(&time) / 60.0;
  v10 = llroundf(v9);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  thumbnailsCopy = +[VCPVideoThumbnailAnalyzer getMaxNumThumbnailsPerMin]* v11;
  if (thumbnailsCopy >= thumbnails)
  {
    thumbnailsCopy = thumbnails;
  }

  v58 = thumbnailsCopy;
  if (thumbnailsCopy)
  {
    v64 = [resultsCopy objectForKeyedSubscript:@"VideoEmbeddingResults"];
    v56 = [resultsCopy objectForKeyedSubscript:?];
    v67 = [resultsCopy objectForKeyedSubscript:@"ClassificationResults"];
    v63 = [resultsCopy objectForKeyedSubscript:@"FaceResults"];
    v54 = [resultsCopy objectForKeyedSubscript:?];
    v61 = [resultsCopy objectForKeyedSubscript:@"AnimalResults"];
    v55 = [resultsCopy objectForKeyedSubscript:?];
    v62 = [resultsCopy objectForKeyedSubscript:@"TorsoResults"];
    v66 = [resultsCopy objectForKeyedSubscript:?];
    v13 = [resultsCopy objectForKeyedSubscript:@"FeatureVectorResults"];
    featureResults = self->_featureResults;
    self->_featureResults = v13;

    if (v56 && [v56 count])
    {
      v15 = [v56 objectAtIndexedSubscript:0];
      v16 = [v15 objectForKeyedSubscript:@"attributes"];
      v65 = [v16 objectForKeyedSubscript:@"embeddingIds"];
    }

    else
    {
      v65 = 0;
    }

    v52 = [(VCPVideoThumbnailAnalyzer *)self getKeyFrameResults:resultsCopy];
    array = [MEMORY[0x1E695DF70] array];
    pickedThumbnails = self->_pickedThumbnails;
    self->_pickedThumbnails = array;

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v52;
    v19 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v19)
    {
      v20 = *v72;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v72 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v71 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"attributes"];
          v24 = [v23 objectForKeyedSubscript:@"timestamp"];
          v25 = v24;
          if (v24)
          {
            memset(&time, 0, sizeof(time));
            [v24 floatValue];
            CMTimeMakeWithSeconds(&time, v26, 600);
            v27 = [v23 objectForKey:@"thumbnailScore"];
            v28 = v27 == 0;

            if (v28)
            {
              [v22 objectForKeyedSubscript:@"quality"];
            }

            else
            {
              [v23 objectForKeyedSubscript:@"thumbnailScore"];
            }
            v29 = ;
            [v29 floatValue];
            v31 = v30;

            if (v31 >= 0.25)
            {
              v32 = [VCPFrameWithLabels alloc];
              v70 = time;
              v33 = [(VCPFrameWithLabels *)v32 initWithTimestamp:&v70 score:COERCE_DOUBLE(__PAIR64__(HIDWORD(time.value), LODWORD(v31)))];
              [(VCPFrameWithLabels *)v33 setEmbeddingRepresentativeIDs:v65 embeddingArray:v64];
              [(VCPFrameWithLabels *)v33 setSceneIDsWithConfidence:v67];
              [(VCPFrameWithLabels *)v33 addFaceIDs:v63];
              [(VCPFrameWithLabels *)v33 addFaceIDs:v62];
              [(VCPFrameWithLabels *)v33 addAnimalIDs:v61];
              [(VCPFrameWithLabels *)v33 setActionTypeWithConfidence:v66];
              [(VCPVideoThumbnailAnalyzer *)self addFrameToThumbnails:v33];
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v19);
    }

    if ([(NSMutableArray *)self->_pickedThumbnails count])
    {
      if ([(NSMutableArray *)self->_pickedThumbnails count]> v58)
      {
        [(VCPVideoThumbnailAnalyzer *)self reduceNumThumbnails:v58];
      }

      array2 = [MEMORY[0x1E695DF70] array];
      v59 = [(NSArray *)self->_existingThumbnails count];
      for (j = 0; [(NSMutableArray *)self->_pickedThumbnails count]> j; ++j)
      {
        v35 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"t%04d", v59 + j];
        [v35 setThumbnailID:v36];

        v77[0] = @"start";
        if (v35)
        {
          [v35 timestamp];
        }

        else
        {
          memset(&v70, 0, sizeof(v70));
        }

        time = v70;
        v37 = CMTimeCopyAsDictionary(&time, 0);
        v78[0] = v37;
        v77[1] = @"quality";
        v38 = MEMORY[0x1E696AD98];
        [v35 frameScore];
        v39 = [v38 numberWithFloat:?];
        v78[1] = v39;
        v77[2] = @"attributes";
        v75 = @"thumbnailID";
        thumbnailID = [v35 thumbnailID];
        v76 = thumbnailID;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v78[2] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:3];
        [array2 addObject:v42];
      }

      [resultsCopy setObject:array2 forKeyedSubscript:@"VideoThumbnailResults"];
      if (v56 && [v56 count])
      {
        v43 = [(VCPVideoThumbnailAnalyzer *)self addThumbnailIdsToSummarizedEmbedding:v56];
        [resultsCopy setObject:v43 forKeyedSubscript:@"SummarizedEmbeddingResults"];
      }

      if (v67 && [v67 count])
      {
        v44 = [(VCPVideoThumbnailAnalyzer *)self sceneIdsToThumbnailIdsMapping:v67];
        [resultsCopy setObject:v44 forKeyedSubscript:@"VideoSceneThumbnailResults"];
      }

      if (v54 && [v54 count])
      {
        v45 = [(VCPVideoThumbnailAnalyzer *)self addThumbnailIdsToFaceAnimalPrint:v54 isFace:1];
        [resultsCopy setObject:v45 forKeyedSubscript:@"FacePrintResults"];
      }

      if (v55 && [v55 count])
      {
        v46 = [(VCPVideoThumbnailAnalyzer *)self addThumbnailIdsToFaceAnimalPrint:v55 isFace:0];
        [resultsCopy setObject:v46 forKeyedSubscript:@"AnimalPrintResults"];
      }

      if (v66 && [v66 count])
      {
        v47 = [(VCPVideoThumbnailAnalyzer *)self addThumbnailIdsToHumanActionClassification:v66];
        [resultsCopy setObject:v47 forKeyedSubscript:@"HumanActionClassificationResults"];
      }

      v48 = resultsCopy;
    }

    else
    {
      v50 = resultsCopy;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 67109376;
      HIDWORD(time.value) = v11;
      LOWORD(time.timescale) = 1024;
      *(&time.timescale + 2) = thumbnails;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ThumbnailAnalyzer] maxNumThumbnails set to 0, no thumbnail results will be persisted (numSegments=%d, assetMaxThumbnails=%d)", &time, 0xEu);
    }

    v49 = resultsCopy;
  }

  return resultsCopy;
}

- (id)getKeyFrameResults:(id)results
{
  v54[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v44 = [resultsCopy objectForKeyedSubscript:@"KeyFrameResults"];
  if (v44 && [v44 count])
  {
    v4 = v44;
    array = v44;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [resultsCopy objectForKeyedSubscript:@"QualityResults"];
    v6 = v5;
    if (v5 && [v5 count])
    {
      selfCopy = self;
      memset(&v51, 0, sizeof(v51));
      firstObject = [v6 firstObject];
      CMTimeRangeMakeFromDictionary(&v50, firstObject);
      start = v50.start;
      lastObject = [v6 lastObject];
      CMTimeRangeMakeFromDictionary(&range, lastObject);
      CMTimeRangeGetEnd(&end, &range);
      CMTimeRangeFromTimeToTime(&v51, &start, &end);

      memset(&end, 0, sizeof(end));
      CMTimeMake(&end, 60, 60);
      v43 = [resultsCopy objectForKeyedSubscript:@"FaceResults"];
      v9 = [resultsCopy objectForKeyedSubscript:@"HumanActionResults"];
      v10 = [resultsCopy objectForKeyedSubscript:@"FineSubjectMotionResults"];
      LODWORD(i) = 0;
      LODWORD(j) = 0;
      v13 = 0;
      *&v47.value = *&v51.start.value;
      for (v47.epoch = v51.start.epoch; ; v47.epoch = v50.start.epoch)
      {
        v50 = v51;
        CMTimeRangeGetEnd(&start, &v50);
        *&v50.start.value = *&v47.value;
        v50.start.epoch = v47.epoch;
        range.start = start;
        if ((CMTimeCompare(&v50.start, &range.start) & 0x80000000) == 0)
        {
          break;
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v53 = @"timestamp";
        *&v50.start.value = *&v47.value;
        v50.start.epoch = v47.epoch;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v50.start)];
        v54[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        [dictionary setObject:v16 forKeyedSubscript:@"attributes"];

        for (i = i; ; ++i)
        {
          if ([v6 count] <= i)
          {
            goto LABEL_13;
          }

          memset(&v50, 0, sizeof(v50));
          v17 = [v6 objectAtIndexedSubscript:i];
          CMTimeRangeMakeFromDictionary(&v50, v17);

          range = v50;
          start = v47;
          if (CMTimeRangeContainsTime(&range, &start))
          {
            break;
          }
        }

        v18 = [v6 objectAtIndexedSubscript:i];
        v19 = [v18 objectForKeyedSubscript:@"quality"];
        [v19 floatValue];
        v21 = v20;

        if (v21 < 0.5)
        {
LABEL_13:
          [dictionary setObject:&unk_1F49BB1D8 forKeyedSubscript:@"quality"];
          [array addObject:dictionary];
          goto LABEL_27;
        }

        for (j = j; ; ++j)
        {
          if ([v10 count] <= j)
          {
            v23 = 0;
            goto LABEL_20;
          }

          memset(&v50, 0, sizeof(v50));
          v22 = [v10 objectAtIndexedSubscript:j];
          CMTimeRangeMakeFromDictionary(&v50, v22);

          range = v50;
          start = v47;
          if (CMTimeRangeContainsTime(&range, &start))
          {
            break;
          }
        }

        v24 = [v10 objectAtIndexedSubscript:j];
        v25 = [v24 objectForKeyedSubscript:@"quality"];
        [v25 floatValue];
        v23 = v26;

LABEL_20:
        for (k = v13; ; ++k)
        {
          if ([v9 count] <= k)
          {
            v29 = 0;
            goto LABEL_26;
          }

          memset(&v50, 0, sizeof(v50));
          v28 = [v9 objectAtIndexedSubscript:k];
          CMTimeRangeMakeFromDictionary(&v50, v28);

          range = v50;
          start = v47;
          if (CMTimeRangeContainsTime(&range, &start))
          {
            break;
          }
        }

        v30 = [v9 objectAtIndexedSubscript:k];
        v31 = [v30 objectForKeyedSubscript:@"attributes"];

        v32 = [v31 objectForKeyedSubscript:@"relativeScore"];
        [v32 floatValue];
        v29 = v33;

LABEL_26:
        LODWORD(range.start.value) = 0;
        *&v50.start.value = *&v47.value;
        v50.start.epoch = v47.epoch;
        [(VCPVideoThumbnailAnalyzer *)selfCopy computeFaceScore:&v50 faceResults:v43 penaltyScore:&range];
        LODWORD(v35) = v34;
        LODWORD(v36) = v23;
        LODWORD(v37) = v29;
        [(VCPVideoThumbnailAnalyzer *)selfCopy computeContentScore:v36 faceScore:v35 humanActionScore:v37];
        *&v39 = (((v38 * 0.65) + 0.1) / 0.75) * *&range.start.value;
        v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
        [dictionary setObject:v40 forKeyedSubscript:@"quality"];

        [array addObject:dictionary];
        v13 = k;
LABEL_27:

        *&range.start.value = *&v47.value;
        range.start.epoch = v47.epoch;
        start = end;
        CMTimeAdd(&v50.start, &range.start, &start);
        *&v47.value = *&v50.start.value;
      }
    }

    v4 = v44;
  }

  return array;
}

- (float)computeFaceScore:(id *)score faceResults:(id)results penaltyScore:(float *)penaltyScore
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = results;
  v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v6)
  {
    v7 = 0;
    LOBYTE(v42) = 0;
    LOBYTE(v43) = 0;
    v8 = *v50;
    v9 = 0.0;
    v45 = 1.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        memset(&v48, 0, sizeof(v48));
        CMTimeRangeMakeFromDictionary(&v48, v12);
        range = v48;
        time = *score;
        if (CMTimeRangeContainsTime(&range, &time))
        {
          v13 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"flags"];
          intValue = [v13 intValue];

          v15 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"attributes"];
          v16 = [v15 objectForKeyedSubscript:@"faceBounds"];
          v55 = NSRectFromString(v16);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;

          if (height >= width)
          {
            v21 = height;
          }

          else
          {
            v21 = width;
          }

          v22 = [v15 objectForKeyedSubscript:@"facePosition"];
          intValue2 = [v22 intValue];

          v24 = v21;
          v25 = 1.0;
          if (intValue2 != 16)
          {
            v25 = 0.5;
          }

          v26 = v25 * v24;
          if (v26 > v10)
          {
            v42 = (intValue >> 1) & 1;
            v43 = (intValue >> 2) & 1;
            v9 = v21;
            v10 = v26;
          }

          if (v24 > 0.04)
          {
            v27 = x;
            v28 = y;
            v31 = fminf(v27, v28);
            v32 = (intValue & 4) != 0 || v31 < 0.05;
            v29 = x + width;
            v30 = y + height;
            v33 = fmax(v29, v30);
            v34 = !v32 && v33 <= 0.949999999;
            v35 = v45;
            if (!v34)
            {
              v35 = 0.4;
            }

            v45 = v35;
          }

          ++v7;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v6);

    if (v7 < 1)
    {
      v37 = 0.0;
    }

    else
    {
      if ((v9 + -0.368) >= 0.0)
      {
        v36 = expf(-((v9 + -0.368) * (v9 + -0.368)) / sqrtf(v7));
      }

      else
      {
        v36 = v9 / 0.368;
      }

      v39 = 0.3;
      if ((v42 & 1) == 0)
      {
        v39 = 0.0;
      }

      if (v43)
      {
        v39 = -0.9;
      }

      v37 = v39 + v36;
    }

    v38 = v45;
  }

  else
  {

    v37 = 0.0;
    v38 = 1.0;
  }

  *penaltyScore = v38;

  return v37;
}

- (id)addThumbnailIdsToSummarizedEmbedding:(id)embedding
{
  v30 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  v5 = embeddingCopy;
  if (embeddingCopy && (v26 = embeddingCopy, v5 = embeddingCopy, [embeddingCopy count]))
  {
    v27 = [v26 mutableCopy];
    v6 = [v27 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"attributes"];
    v8 = [v7 mutableCopy];
    v24 = @"attributes";

    v25 = v8;
    v9 = [v8 objectForKeyedSubscript:@"embeddingIds"];
    array = [MEMORY[0x1E695DF70] array];
    for (i = 0; [v9 count] > i; ++i)
    {
      for (j = 0; [(NSMutableArray *)self->_pickedThumbnails count]> j; ++j)
      {
        v13 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
        embeddingRepresentativeIDs = [v13 embeddingRepresentativeIDs];
        v15 = [v9 objectAtIndexedSubscript:i];
        v16 = [embeddingRepresentativeIDs containsObject:v15];

        if (v16)
        {
          v19 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
          thumbnailID = [v19 thumbnailID];
          [array addObject:thumbnailID];

          break;
        }

        if (j + 1 == [(NSMutableArray *)self->_pickedThumbnails count])
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v29 = i;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No thunbmail ID mapped to current embedding %d, default to t0", buf, 8u);
          }

          v17 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:0];
          thumbnailID2 = [v17 thumbnailID];
          [array addObject:thumbnailID2];
        }
      }
    }

    [v25 setObject:array forKeyedSubscript:@"thumbnailID"];
    v21 = [v27 objectAtIndexedSubscript:0];
    v22 = [v21 mutableCopy];

    [v22 setObject:v25 forKeyedSubscript:v24];
    [v27 setObject:v22 atIndexedSubscript:0];

    v5 = v26;
  }

  else
  {
    v27 = v5;
  }

  return v27;
}

- (id)sceneIdsToThumbnailIdsMapping:(id)mapping
{
  v50 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = mappingCopy;
  v31 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v31)
  {
    v30 = *v42;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v41 + 1) + 8 * i);
        v32 = [v5 objectForKeyedSubscript:@"attributes"];
        memset(&v40, 0, sizeof(v40));
        CMTimeRangeMakeFromDictionary(&v40, v5);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v6 = v32;
        v7 = 0;
        v8 = [v6 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v8)
        {
          v9 = *v37;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v37 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v36 + 1) + 8 * j);
              allKeys = [dictionary allKeys];
              v13 = [allKeys containsObject:v11];

              if ((v13 & 1) == 0)
              {
                vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
                v15 = [vcp_sharedTaxonomy nodeForExtendedSceneClassId:{objc_msgSend(v11, "longLongValue")}];

                if (v15)
                {
                  [v15 highPrecisionThreshold];
                  v17 = v16;
                  [v15 highRecallThreshold];
                  v19 = v18;
                  [v15 searchThreshold];
                  v21 = v19 >= v17 ? v17 : v19;
                  v22 = v20 >= v21 ? v21 : v20;
                  v23 = [v6 objectForKeyedSubscript:v11];
                  [v23 floatValue];
                  v25 = v24;

                  if (v22 < v25)
                  {
                    if (!v7)
                    {
                      v35 = v40;
                      v7 = [(VCPVideoThumbnailAnalyzer *)self findThumbnailID:&v35];
                    }

                    [dictionary setObject:v7 forKeyedSubscript:v11];
                  }
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v8);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v31);
  }

  v45 = @"attributes";
  v46 = dictionary;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v47 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];

  return v27;
}

- (id)addThumbnailIdsToFaceAnimalPrint:(id)print isFace:(BOOL)face
{
  faceCopy = face;
  printCopy = print;
  v22 = [printCopy mutableCopy];
  for (i = 0; i < [v22 count]; ++i)
  {
    v7 = [v22 objectAtIndexedSubscript:i];
    v8 = [v7 mutableCopy];

    v9 = [v8 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 mutableCopy];

    if (faceCopy)
    {
      [v10 objectForKeyedSubscript:@"faceId"];
    }

    else
    {
      [v10 objectForKeyedSubscript:@"animalId"];
    }
    v11 = ;
    for (j = 0; [(NSMutableArray *)self->_pickedThumbnails count]> j; ++j)
    {
      v13 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
      if (faceCopy)
      {
        [v13 faceIDs];
      }

      else
      {
        [v13 animalIDs];
      }
      v14 = ;

      v15 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
      [v15 frameScore];
      if (v16 >= 0.0)
      {
        v17 = [v14 containsObject:v11];

        if (v17)
        {
          v18 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:j];
          thumbnailID = [v18 thumbnailID];
          [v10 setObject:thumbnailID forKeyedSubscript:@"thumbnailID"];

          break;
        }
      }

      else
      {
      }
    }

    [v8 setObject:v10 forKeyedSubscript:@"attributes"];
    [v22 setObject:v8 atIndexedSubscript:i];
  }

  return v22;
}

- (id)addThumbnailIdsToHumanActionClassification:(id)classification
{
  classificationCopy = classification;
  v5 = [classificationCopy mutableCopy];
  for (i = 0; i < [v5 count]; ++i)
  {
    v7 = [v5 objectAtIndexedSubscript:i];
    v8 = [v7 mutableCopy];

    v9 = [v8 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 mutableCopy];

    CMTimeRangeMakeFromDictionary(&v13, v8);
    v11 = [(VCPVideoThumbnailAnalyzer *)self findThumbnailID:&v13];
    [v10 setObject:v11 forKeyedSubscript:@"thumbnailID"];
    [v8 setObject:v10 forKeyedSubscript:@"attributes"];
    [v5 setObject:v8 atIndexedSubscript:i];
  }

  return v5;
}

- (id)findThumbnailID:(id *)d
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pickedThumbnails count])
  {
    v5 = 0;
    v6 = 0xFFFFFFFF00000000;
    do
    {
      v7 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v5];
      [v7 frameScore];
      if (v8 >= 0.0)
      {
        v9 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v5];
        v10 = v9;
        if (v9)
        {
          [v9 startTime];
        }

        else
        {
          v30 = 0uLL;
          v31 = 0;
        }

        *&time1.start.value = v30;
        time1.start.epoch = v31;
        time2 = d->var0;
        v11 = CMTimeCompare(&time1.start, &time2);

        if (v11 >= 0)
        {
          if (v5)
          {
            v17 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v5];
            v18 = v17;
            if (v17)
            {
              [v17 timestamp];
            }

            else
            {
              memset(&time1, 0, 24);
            }

            Seconds = CMTimeGetSeconds(&time1.start);
            *&time1.start.value = *&d->var0.var0;
            time1.start.epoch = d->var0.var3;
            v21 = CMTimeGetSeconds(&time1.start);

            v22 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v6 >> 32];
            v23 = v22;
            if (v22)
            {
              [v22 timestamp];
            }

            else
            {
              memset(&time1, 0, 24);
            }

            v24 = CMTimeGetSeconds(&time1.start);
            *&time1.start.value = *&d->var0.var0;
            time1.start.epoch = d->var0.var3;
            v25 = CMTimeGetSeconds(&time1.start);

            v26 = Seconds - v21;
            v27 = v24 - v25;
            pickedThumbnails = self->_pickedThumbnails;
            if (fabsf(v26) < fabsf(v27))
            {
              [(NSMutableArray *)pickedThumbnails objectAtIndexedSubscript:v5];
            }

            else
            {
              [(NSMutableArray *)pickedThumbnails objectAtIndexedSubscript:v6 >> 32];
            }
            v29 = ;
            thumbnailID = [v29 thumbnailID];
          }

          else
          {
            v19 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:0];
            thumbnailID = [v19 thumbnailID];
          }

          goto LABEL_14;
        }
      }

      else
      {
      }

      ++v5;
      v6 += 0x100000000;
    }

    while ([(NSMutableArray *)self->_pickedThumbnails count]> v5);
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *&time1.start.value = *&d->var0.var0;
    time1.start.epoch = d->var0.var3;
    v12 = CMTimeGetSeconds(&time1.start);
    v13 = *&d->var0.var3;
    *&time1.start.value = *&d->var0.var0;
    *&time1.start.epoch = v13;
    *&time1.duration.timescale = *&d->var1.var1;
    CMTimeRangeGetEnd(&time2, &time1);
    v14 = CMTimeGetSeconds(&time2);
    LODWORD(time1.start.value) = 134218240;
    *(&time1.start.value + 4) = v12;
    LOWORD(time1.start.flags) = 2048;
    *(&time1.start.flags + 2) = v14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPVideoThumbnailAnalyzer] Didn't find thumbnail for range [%.2f, %.2f] - set to default (0)", &time1, 0x16u);
  }

  thumbnailID = 0;
LABEL_14:

  return thumbnailID;
}

- (void)addFrameToThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  for (i = 0; ; ++i)
  {
    v5 = [(NSMutableArray *)self->_pickedThumbnails count];
    pickedThumbnails = self->_pickedThumbnails;
    if (v5 <= i)
    {
      [(NSMutableArray *)pickedThumbnails addObject:thumbnailsCopy];
      goto LABEL_8;
    }

    v7 = [(NSMutableArray *)pickedThumbnails objectAtIndexedSubscript:i];
    v8 = [thumbnailsCopy compareWith:v7];

    if (v8 == 2)
    {
      goto LABEL_8;
    }

    if (v8 == 3)
    {
      break;
    }
  }

  v9 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:i];
  [thumbnailsCopy mergeWith:v9];

  [(NSMutableArray *)self->_pickedThumbnails setObject:thumbnailsCopy atIndexedSubscript:i];
LABEL_8:
}

- (void)reduceNumThumbnails:(int)thumbnails
{
  v66[2] = *MEMORY[0x1E69E9840];
  v59 = [(NSMutableArray *)self->_pickedThumbnails count]- thumbnails;
  if (v59 < 1)
  {
    return;
  }

  array = [MEMORY[0x1E695DF70] array];
  for (i = 1; [(NSMutableArray *)self->_pickedThumbnails count]> i; i = v16 + 2)
  {
    memset(&v65, 0, sizeof(v65));
    v5 = i - 1;
    v6 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 timestamp];
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
    }

    memset(&v64, 0, sizeof(v64));
    v8 = v5 + 1;
    v9 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v5 + 1];
    v10 = v9;
    if (v9)
    {
      [v9 timestamp];
    }

    else
    {
      memset(&v64, 0, sizeof(v64));
    }

    time = v65;
    Seconds = CMTimeGetSeconds(&time);
    time = v64;
    v12 = CMTimeGetSeconds(&time);
    v13 = Seconds;
    *&v14 = v12;
    *&v12 = v13;
    [(VCPVideoThumbnailAnalyzer *)self distanceBetweenFrames:v12 keyFrame2:v14];
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v66[0] = v15;
    v16 = v8 - 1;
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v8 - 1];
    v66[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    [array addObject:v18];
  }

  [array sortUsingComparator:&__block_literal_global_52];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0;
  do
  {
    v21 = [array objectAtIndexedSubscript:v20];
    v22 = [v21 objectAtIndexedSubscript:1];
    intValue = [v22 intValue];

    intValue2 = (intValue + 1);
    while (1)
    {
      v25 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:intValue];
      [v25 frameScore];
      v27 = v26 < 0.0;

      if (!v27)
      {
        break;
      }

      v28 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      v29 = [dictionary objectForKeyedSubscript:v28];
      intValue = [v29 intValue];
    }

    while (1)
    {
      v32 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:intValue2];
      [v32 frameScore];
      v34 = v33 < 0.0;

      if (!v34)
      {
        break;
      }

      v30 = [MEMORY[0x1E696AD98] numberWithInt:intValue2];
      v31 = [dictionary objectForKeyedSubscript:v30];
      intValue2 = [v31 intValue];
    }

    if (intValue <= intValue2)
    {
      v35 = intValue2;
    }

    else
    {
      v35 = intValue;
    }

    if (intValue >= intValue2)
    {
      v36 = intValue2;
    }

    else
    {
      v36 = intValue;
    }

    v61 = v35;
    v62 = v36;
    v37 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:?];
    v38 = v20;
    [v37 frameScore];
    v40 = v39;
    v41 = v62;
    v42 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v62];
    [v42 frameScore];
    if (v40 <= v43)
    {
    }

    else
    {
      v44 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v62];
      [v44 frameScore];
      v46 = v45 < 0.3;

      v20 = v38;
      if (v46)
      {
        v47 = v62;
        v61 = v62;
        v62 = v35;
        [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v41];
        goto LABEL_28;
      }
    }

    v47 = v35;
    [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v35];
    v48 = LABEL_28:;
    LODWORD(v49) = -1.0;
    [v48 setFrameScore:v49];

    v50 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v62];
    v51 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v61];
    [v50 mergeWith:v51];

    v52 = [MEMORY[0x1E696AD98] numberWithInt:v62];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:v47];
    [dictionary setObject:v52 forKeyedSubscript:v53];

    ++v20;
  }

  while (v20 != v59);
  v54 = [(NSMutableArray *)self->_pickedThumbnails count];
  if (v54 >= 1)
  {
    v55 = (v54 & 0x7FFFFFFF) + 1;
    do
    {
      v56 = [(NSMutableArray *)self->_pickedThumbnails objectAtIndexedSubscript:v55 - 2];
      [v56 frameScore];
      v58 = v57 < 0.0;

      if (v58)
      {
        [(NSMutableArray *)self->_pickedThumbnails removeObjectAtIndex:v55 - 2];
      }

      --v55;
    }

    while (v55 > 1);
  }
}

uint64_t __49__VCPVideoThumbnailAnalyzer_reduceNumThumbnails___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 firstObject];
  [v6 floatValue];
  v8 = v7;
  v9 = [v5 firstObject];
  [v9 floatValue];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [v4 firstObject];
    [v13 floatValue];
    v15 = v14;
    v16 = [v5 firstObject];
    [v16 floatValue];
    v18 = v17;

    if (v15 >= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (float)distanceBetweenFrames:(float)frames keyFrame2:(float)frame2
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_featureResults;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v28;
    v10 = INFINITY;
    v11 = INFINITY;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"start"];
        CMTimeMakeFromDictionary(&time, v14);
        Seconds = CMTimeGetSeconds(&time);

        v16 = [v13 objectForKeyedSubscript:@"attributes"];
        v17 = [v16 objectForKeyedSubscript:@"featureVector"];

        v18 = Seconds;
        v19 = vabds_f32(v18, frames);
        if (v19 < v10)
        {
          v20 = [VCPImageDescriptor descriptorWithData:v17];

          v10 = v19;
          v8 = v20;
        }

        v21 = vabds_f32(v18, frame2);
        if (v21 < v11)
        {
          v22 = [VCPImageDescriptor descriptorWithData:v17];

          v11 = v21;
          v7 = v22;
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);

    v23 = -1.0;
    if (v8 && v7)
    {
      LODWORD(time.value) = 0;
      [v8 computeDistance:&time toDescriptor:v7];
      v23 = *&time.value;
    }
  }

  else
  {

    v8 = 0;
    v7 = 0;
    v23 = -1.0;
  }

  return v23;
}

@end