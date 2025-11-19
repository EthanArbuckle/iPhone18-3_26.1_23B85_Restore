@interface FRCLivePhotoMetadataReader
- (FRCLivePhotoMetadataReader)init;
- (id)createMetadataAdaptorForAsset:(id)a3;
- (unint64_t)preParseMetadata;
- (void)parseStillImageMetadata:(id)a3;
- (void)printMetadata:(id)a3 withVideoFrame:(id)a4;
- (void)printMetadataListWithVideoTimingInfo:(id)a3;
- (void)readLivePhotoMetadataFromAsset:(id)a3;
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
  v4 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [v5 items];
      v8 = [v7 firstObject];

      if (v8)
      {
        [v8 duration];
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
      v9 = [v8 value];
      deserializeLivePhotoMetadata(v9, &v17, &time2);

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

      v12 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

      v5 = v12;
      if (!v12)
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

- (void)parseStillImageMetadata:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_stillImageTime = **&MEMORY[0x277CC0898];
  *&self->_stillImageTransformAvailable = 0;
  v24 = v4;
  [v4 tracksWithMediaType:*MEMORY[0x277CE5E70]];
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
    v26 = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 formatDescriptions];
        v11 = [v10 objectAtIndexedSubscript:0];

        if (v11)
        {
          v12 = CMMetadataFormatDescriptionGetIdentifiers(v11);
          if ([v12 containsObject:@"mdta/com.apple.quicktime.still-image-time"])
          {
            v13 = v9;
            v14 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v13 outputSettings:0];
            v15 = MEMORY[0x277CE6410];
            v16 = [v13 asset];
            v17 = [v15 assetReaderWithAsset:v16 error:0];

            [v17 addOutput:v14];
            [v17 startReading];
            v18 = [v14 copyNextSampleBuffer];
            if (v18)
            {
              v19 = v18;
              v20 = 0;
              do
              {
                if (CMSampleBufferGetNumSamples(v19))
                {
                  v21 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v19];

                  v20 = v21;
                }

                CFRelease(v19);
                v19 = [v14 copyNextSampleBuffer];
              }

              while (v19);
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
            self = v26;
            *&v26->_stillImageTime.value = v28;
            v26->_stillImageTime.epoch = v29;
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

- (void)readLivePhotoMetadataFromAsset:(id)a3
{
  v4 = a3;
  v5 = findIRAPs(v4);
  v6 = MEMORY[0x277CE6520];
  v7 = [v4 metadata];
  v8 = [v6 metadataItemsFromArray:v7 filteredByIdentifier:@"mdta/com.apple.quicktime.software"];
  v9 = [v8 firstObject];

  v10 = [v9 value];
  [v10 floatValue];
  v12 = v11;

  v13 = MEMORY[0x277CE6520];
  v14 = [v4 metadata];
  v15 = [v13 metadataItemsFromArray:v14 filteredByIdentifier:@"mdta/com.apple.quicktime.model"];
  v16 = [v15 firstObject];

  if (self->_printMetadata)
  {
    printf("OS Version : %.1f\n", v12);
    v17 = [v16 value];
    printf("Model      : %s\n", [v17 UTF8String]);

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metadataList = self->_metadataList;
    self->_metadataList = v18;
  }

  [(FRCLivePhotoMetadataReader *)self parseStillImageMetadata:v4];
  v20 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:v4];
  metadataOutputAdaptor = self->_metadataOutputAdaptor;
  self->_metadataOutputAdaptor = v20;

  if (self->_metadataOutputAdaptor)
  {
    v22 = [(FRCLivePhotoMetadataReader *)self preParseMetadata];
    v23 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:v4];
    v24 = self->_metadataOutputAdaptor;
    self->_metadataOutputAdaptor = v23;

    self->_frameIndex = 0;
    self->_recipe = 0;
    self->_numberOfDroppedFrames = 0;
    v25 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
    if (v25)
    {
      v26 = v25;
      while (1)
      {
        if (![v5 count])
        {
          goto LABEL_11;
        }

        [v26 timeRange];
        time1 = v35;
        v27 = [v5 firstObject];
        v28 = v27;
        if (v27)
        {
          [v27 time];
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

        v31 = [v26 items];
        v32 = [v31 firstObject];

        if (![(FRCLivePhotoMetadataReader *)self processLivePhotoMetadataItem:v32 isIDR:v30 recipeAvailable:v22 != 0])
        {
          break;
        }

        ++self->_frameIndex;

        v33 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

        v26 = v33;
        if (!v33)
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

- (id)createMetadataAdaptorForAsset:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 tracksWithMediaType:*MEMORY[0x277CE5E70]];
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
      v12 = [v11 formatDescriptions];
      v13 = [v12 objectAtIndexedSubscript:0];

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
    v17 = [v7 asset];
    v18 = [v16 initWithAsset:v17 error:0];

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

- (void)printMetadata:(id)a3 withVideoFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  memset(&v16, 0, sizeof(v16));
  v8 = [v6 ptsInNanos] / 1000000000.0;
  if (v6)
  {
    [v6 time];
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
  if (![v6 frameIndex])
  {
    self->_initialOriginalPTS = [v6 ptsInNanos];
    self->_initialTime = v16;
  }

  if (self->_verbose)
  {
    if (v7)
    {
      [v7 presentationTimeStamp];
      printf("Video: %4lld");
    }

    else
    {
      printf("            ");
    }
  }

  if (v6)
  {
    if (self->_verbose)
    {
      if (v7)
      {
        [v7 presentationTimeStamp];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      [v6 time];
      if (CMTimeCompare(&time1, &time2))
      {
        printf(" != ");
        ++self->_ptsMismatches;
      }

      else
      {
        printf("    ");
      }

      [v6 time];
      printf("Metadata: %4lld ", v10);
      [v6 ptsInNanos];
      [v6 originalPTSInNanos];
      printf("\tPTSinNanos: %-15lld \tOriginalPTSinNanos: %-15lld ");
    }

    else
    {
      [v6 time];
      printf("Time %4lld:");
    }

    printf("\tinterpolated:%d", [v6 interpolated]);
    if ([v6 sequenceAdjusterRecipe])
    {
      printf("\trecipe:%ld  displacement:%ld", [v6 sequenceAdjusterRecipe], objc_msgSend(v6, "sequenceAdjusterDisplacement"));
    }

    if ([v6 noRecipeGap])
    {
      printf("\t*");
    }

    if ([v6 isIDR])
    {
      printf("\tIDR");
    }
  }

  putchar(10);
}

- (void)printMetadataListWithVideoTimingInfo:(id)a3
{
  v12 = a3;
  if ([(NSMutableArray *)self->_metadataList count])
  {
    v4 = [(NSMutableArray *)self->_metadataList count];
    v5 = [(NSMutableArray *)v12 count];
    metadataList = v12;
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
        if (i >= [(NSMutableArray *)v12 count])
        {
          v10 = 0;
        }

        else
        {
          v10 = [(NSMutableArray *)v12 objectAtIndex:i];
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