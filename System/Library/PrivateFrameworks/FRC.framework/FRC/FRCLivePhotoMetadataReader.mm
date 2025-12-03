@interface FRCLivePhotoMetadataReader
- (FRCLivePhotoMetadataReader)init;
- (id)createMetadataAdaptorForAsset:(id)asset;
- (unint64_t)preParseMetadata;
- (void)parseStillImageMetadata:(id)metadata;
- (void)printMetadata:(id)metadata withVideoFrame:(id)frame;
- (void)printMetadataListWithVideoTimingInfo:(id)info;
- (void)readLivePhotoMetadataFromAsset:(id)asset;
@end

@implementation FRCLivePhotoMetadataReader

- (FRCLivePhotoMetadataReader)init
{
  v3.receiver = self;
  v3.super_class = FRCLivePhotoMetadataReader;
  result = [(FRCLivePhotoMetadataReader *)&v3 init];
  result->_printMetadata = 1;
  return result;
}

- (unint64_t)preParseMetadata
{
  memset(&v18, 0, sizeof(v18));
  CMTimeMakeWithSeconds(&v18, 1.0, 600);
  self->_totalFrames = 0;
  v3 = MEMORY[0x277CC0898];
  self->_numberOfInterpolatedFrames = 0;
  self->_burstDropTime = *v3;
  nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
  if (nextTimedMetadataGroup)
  {
    v5 = nextTimedMetadataGroup;
    v6 = 0;
    while (1)
    {
      items = [v5 items];
      firstObject = [items firstObject];

      if (firstObject)
      {
        [firstObject duration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v15 = v18;
      CMTimeMinimum(&v17, &v15, &time2);
      v18 = v17;
      v17.value = 0;
      time2.value = 0;
      value = [firstObject value];
      deserializeLivePhotoMetadata(value, &v17, &time2);

      if (!v17.value)
      {
        break;
      }

      FigLivePhotoMetadataV3 = getFigLivePhotoMetadataV3(v17.value);
      if (!FigLivePhotoMetadataV3)
      {
        break;
      }

      v11 = *FigLivePhotoMetadataV3;
      if ((v11 & 0x20) != 0)
      {
        self->_numberOfInterpolatedFrames += *(FigLivePhotoMetadataV3 + 58);
      }

      v6 += (v11 >> 3) & 1;
      free(v17.value);
      ++self->_totalFrames;

      nextTimedMetadataGroup2 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

      v5 = nextTimedMetadataGroup2;
      if (!nextTimedMetadataGroup2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  time2 = v18;
  CMTimeMultiplyByRatio(&v17, &time2, 19, 10);
  *&self->_droppingThreshold.value = *&v17.value;
  epoch = v17.epoch;
  self->_droppingThreshold.epoch = v17.epoch;
  *&time2.value = *&self->_droppingThreshold.value;
  time2.epoch = epoch;
  CMTimeConvertScale(&v17, &time2, v18.timescale, kCMTimeRoundingMethod_QuickTime);
  self->_droppingThreshold = v17;
  return v6;
}

- (void)parseStillImageMetadata:(id)metadata
{
  v35 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  self->_stillImageTime = **&MEMORY[0x277CC0898];
  *&self->_stillImageTransformAvailable = 0;
  v24 = metadataCopy;
  [metadataCopy tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v25 = *v31;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        formatDescriptions = [v9 formatDescriptions];
        v11 = [formatDescriptions objectAtIndexedSubscript:0];

        if (v11)
        {
          v12 = CMMetadataFormatDescriptionGetIdentifiers(v11);
          if ([v12 containsObject:@"mdta/com.apple.quicktime.still-image-time"])
          {
            v13 = v9;
            v14 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v13 outputSettings:0];
            v15 = MEMORY[0x277CE6410];
            asset = [v13 asset];
            v17 = [v15 assetReaderWithAsset:asset error:0];

            [v17 addOutput:v14];
            [v17 startReading];
            copyNextSampleBuffer = [v14 copyNextSampleBuffer];
            if (copyNextSampleBuffer)
            {
              copyNextSampleBuffer2 = copyNextSampleBuffer;
              v20 = 0;
              do
              {
                if (CMSampleBufferGetNumSamples(copyNextSampleBuffer2))
                {
                  v21 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:copyNextSampleBuffer2];

                  v20 = v21;
                }

                CFRelease(copyNextSampleBuffer2);
                copyNextSampleBuffer2 = [v14 copyNextSampleBuffer];
              }

              while (copyNextSampleBuffer2);
            }

            else
            {
              v20 = 0;
            }

            [v17 cancelReading];
            v22 = v20;

            if (v22)
            {
              [v22 timeRange];
            }

            else
            {
              v29 = 0;
              v28 = 0u;
            }

            v7 = v25;
            self = selfCopy;
            *&selfCopy->_stillImageTime.value = v28;
            selfCopy->_stillImageTime.epoch = v29;
          }

          if ([v12 containsObject:@"mdta/com.apple.quicktime.live-photo-still-image-transform"])
          {
            self->_stillImageTransformAvailable = 1;
          }

          if ([v12 containsObject:@"mdta/com.apple.quicktime.live-photo-still-image-transform-reference-dimensions"])
          {
            self->_stillImageTransformReferenceDimensionsAvailable = 1;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)readLivePhotoMetadataFromAsset:(id)asset
{
  assetCopy = asset;
  v5 = findIRAPs(assetCopy);
  v6 = MEMORY[0x277CE6520];
  metadata = [assetCopy metadata];
  v8 = [v6 metadataItemsFromArray:metadata filteredByIdentifier:@"mdta/com.apple.quicktime.software"];
  firstObject = [v8 firstObject];

  value = [firstObject value];
  [value floatValue];
  v12 = v11;

  v13 = MEMORY[0x277CE6520];
  metadata2 = [assetCopy metadata];
  v15 = [v13 metadataItemsFromArray:metadata2 filteredByIdentifier:@"mdta/com.apple.quicktime.model"];
  firstObject2 = [v15 firstObject];

  if (self->_printMetadata)
  {
    printf("OS Version : %.1f\n", v12);
    value2 = [firstObject2 value];
    printf("Model      : %s\n", [value2 UTF8String]);

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metadataList = self->_metadataList;
    self->_metadataList = v18;
  }

  [(FRCLivePhotoMetadataReader *)self parseStillImageMetadata:assetCopy];
  v20 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:assetCopy];
  metadataOutputAdaptor = self->_metadataOutputAdaptor;
  self->_metadataOutputAdaptor = v20;

  if (self->_metadataOutputAdaptor)
  {
    preParseMetadata = [(FRCLivePhotoMetadataReader *)self preParseMetadata];
    v23 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:assetCopy];
    v24 = self->_metadataOutputAdaptor;
    self->_metadataOutputAdaptor = v23;

    self->_frameIndex = 0;
    self->_recipe = 0;
    self->_numberOfDroppedFrames = 0;
    nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
    if (nextTimedMetadataGroup)
    {
      v26 = nextTimedMetadataGroup;
      while (1)
      {
        if (![v5 count])
        {
          goto LABEL_11;
        }

        [v26 timeRange];
        time1 = v35;
        firstObject3 = [v5 firstObject];
        v28 = firstObject3;
        if (firstObject3)
        {
          [firstObject3 time];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        v29 = CMTimeCompare(&time1, &time2);

        if (!v29)
        {
          [v5 removeObjectAtIndex:0];
          v30 = 1;
        }

        else
        {
LABEL_11:
          v30 = 0;
        }

        items = [v26 items];
        firstObject4 = [items firstObject];

        if (![(FRCLivePhotoMetadataReader *)self processLivePhotoMetadataItem:firstObject4 isIDR:v30 recipeAvailable:preParseMetadata != 0])
        {
          break;
        }

        ++self->_frameIndex;

        nextTimedMetadataGroup2 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

        v26 = nextTimedMetadataGroup2;
        if (!nextTimedMetadataGroup2)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      self->_numberOfMetadataFrames = self->_frameIndex;
    }
  }
}

- (id)createMetadataAdaptorForAsset:(id)asset
{
  v28 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v4 = [assetCopy tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v24;
  v9 = *MEMORY[0x277CF3BD0];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      formatDescriptions = [v11 formatDescriptions];
      v13 = [formatDescriptions objectAtIndexedSubscript:0];

      if (v13)
      {
        v14 = CMMetadataFormatDescriptionGetIdentifiers(v13);
        if ([v14 containsObject:v9])
        {
          v15 = v11;

          v7 = v15;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v6);
  if (v7)
  {
    v16 = objc_alloc(MEMORY[0x277CE6410]);
    asset = [v7 asset];
    v18 = [v16 initWithAsset:asset error:0];

    v19 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v7 outputSettings:0];
    if ([v18 canAddOutput:v19])
    {
      [v18 addOutput:v19];
      v20 = [MEMORY[0x277CE6420] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:v19];
      [v18 startReading];
    }

    else
    {
      puts("Error: cannot add metadata output");
      v20 = 0;
    }
  }

  else
  {
LABEL_15:
    puts("Error : No LivePhoto metadata track");
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)printMetadata:(id)metadata withVideoFrame:(id)frame
{
  metadataCopy = metadata;
  frameCopy = frame;
  memset(&v16, 0, sizeof(v16));
  v8 = [metadataCopy ptsInNanos] / 1000000000.0;
  if (metadataCopy)
  {
    [metadataCopy time];
    v9 = v14;
  }

  else
  {
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  CMTimeMakeWithSeconds(&v16, v8, v9);
  if (![metadataCopy frameIndex])
  {
    self->_initialOriginalPTS = [metadataCopy ptsInNanos];
    self->_initialTime = v16;
  }

  if (self->_verbose)
  {
    if (frameCopy)
    {
      [frameCopy presentationTimeStamp];
      printf("Video: %4lld");
    }

    else
    {
      printf("            ");
    }
  }

  if (metadataCopy)
  {
    if (self->_verbose)
    {
      if (frameCopy)
      {
        [frameCopy presentationTimeStamp];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      [metadataCopy time];
      if (CMTimeCompare(&time1, &time2))
      {
        printf(" != ");
        ++self->_ptsMismatches;
      }

      else
      {
        printf("    ");
      }

      [metadataCopy time];
      printf("Metadata: %4lld ", v10);
      [metadataCopy ptsInNanos];
      [metadataCopy originalPTSInNanos];
      printf("\tPTSinNanos: %-15lld \tOriginalPTSinNanos: %-15lld ");
    }

    else
    {
      [metadataCopy time];
      printf("Time %4lld:");
    }

    printf("\tinterpolated:%d", [metadataCopy interpolated]);
    if ([metadataCopy sequenceAdjusterRecipe])
    {
      printf("\trecipe:%ld  displacement:%ld", [metadataCopy sequenceAdjusterRecipe], objc_msgSend(metadataCopy, "sequenceAdjusterDisplacement"));
    }

    if ([metadataCopy noRecipeGap])
    {
      printf("\t*");
    }

    if ([metadataCopy isIDR])
    {
      printf("\tIDR");
    }
  }

  putchar(10);
}

- (void)printMetadataListWithVideoTimingInfo:(id)info
{
  infoCopy = info;
  if ([(NSMutableArray *)self->_metadataList count])
  {
    v4 = [(NSMutableArray *)self->_metadataList count];
    v5 = [(NSMutableArray *)infoCopy count];
    metadataList = infoCopy;
    if (v4 > v5)
    {
      metadataList = self->_metadataList;
    }

    v7 = [(NSMutableArray *)metadataList count];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        printf("[%3ld] ", i);
        if (i >= [(NSMutableArray *)infoCopy count])
        {
          v10 = 0;
        }

        else
        {
          v10 = [(NSMutableArray *)infoCopy objectAtIndex:i];
        }

        if (i >= [(NSMutableArray *)self->_metadataList count])
        {
          v11 = 0;
        }

        else
        {
          v11 = [(NSMutableArray *)self->_metadataList objectAtIndex:i];
        }

        [(FRCLivePhotoMetadataReader *)self printMetadata:v11 withVideoFrame:v10];
      }
    }
  }
}

@end