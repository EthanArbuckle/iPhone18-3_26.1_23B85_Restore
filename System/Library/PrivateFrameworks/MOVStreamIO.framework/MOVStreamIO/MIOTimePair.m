@interface MIOTimePair
+ (id)alignedPTSTimeStamps:(id)a3 withSampleTimes:(id)a4;
+ (id)timePairWithPts:(id *)a3 originalTime:(id *)a4;
+ (id)timePairsForStream:(id)a3 mediaType:(int64_t)a4 inAsset:(id)a5 error:(id *)a6;
+ (id)timePairsForStream:(id)a3 mediaType:(int64_t)a4 inAssetURL:(id)a5 error:(id *)a6;
- (BOOL)isPTSEqualOrCloseToTime:(id *)a3;
- (BOOL)isPTSEqualOrCloseToTime:(id *)a3 tolerance:(id *)a4;
- (MIOTimePair)init;
- (MIOTimePair)initWithPts:(id *)a3 originalTime:(id *)a4;
- (id)copyWithNewPts:(id *)a3;
- (id)description;
@end

@implementation MIOTimePair

+ (id)timePairsForStream:(id)a3 mediaType:(int64_t)a4 inAssetURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CE63D8] assetWithURL:v10];
  if (v11)
  {
    v12 = [MIOTimePair timePairsForStream:v9 mediaType:a4 inAsset:v11 error:a6];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create asset from URL '%@'.", v10];
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:v13 code:5];

    v12 = 0;
  }

  return v12;
}

+ (id)timePairsForStream:(id)a3 mediaType:(int64_t)a4 inAsset:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a5;
  v9 = [MIOMediaTypeUtility matchingAVMediaTypeFromMIOMediaType:a4];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v37 tracksWithMediaType:v9];
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v11)
  {

LABEL_31:
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream '%@'.", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:? code:?];
    v12 = 0;
    v36 = 0;
    goto LABEL_42;
  }

  v12 = 0;
  v13 = *v50;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v50 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v49 + 1) + 8 * i);
      if ([MIOMovieMetadataUtility isTrack:v15 forStreamId:v8 mediaType:v9])
      {
        v16 = v15;

        v12 = v16;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
  }

  while (v11);

  if (!v12)
  {
    goto LABEL_31;
  }

  v35 = [MIOMovieMetadataUtility attachmentsTrackInAsset:v37 forTrack:v12];
  if (v35)
  {
    v33 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v35 outputSettings:0];
    v17 = [MEMORY[0x277CE6410] assetReaderWithAsset:v37 error:a6];
    v31 = v17;
    if (v17)
    {
      if ([v17 canAddOutput:v33])
      {
        [v31 addOutput:v33];
        v28 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v33];
        if ([v31 startReading])
        {
          v36 = objc_opt_new();
          for (j = 0; ; j = v30)
          {
            v30 = [v28 nextTimedMetadataGroup];

            if (!v30)
            {
              break;
            }

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            obj = [v30 items];
            v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v19)
            {
              v20 = *v46;
              while (2)
              {
                for (k = 0; k != v19; ++k)
                {
                  if (*v46 != v20)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = [*(*(&v45 + 1) + 8 * k) value];
                  v23 = [MOVStreamIOUtility plistDeserializedObject:v22 error:a6];
                  if (!v23)
                  {

                    goto LABEL_37;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = [v23 valueForKey:@"OriginalTimestampWhenWrittenToFile"];
                    v25 = v24;
                    if (v24)
                    {
                      memset(&v44, 0, sizeof(v44));
                      CMTimeMakeFromDictionary(&v44, v24);
                      [v30 timeRange];
                      v42 = v40;
                      v43 = v41;
                      v39 = v44;
                      v26 = [MIOTimePair timePairWithPts:&v42 originalTime:&v39];
                      [v36 addObject:v26];
                    }
                  }
                }

                v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        else
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot start reading data for stream '%@'.", v8];
          [MEMORY[0x277CCA9B8] populateReaderError:a6 message:? code:?];
LABEL_37:
          v36 = 0;
        }
      }

      else
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot add output to associated metadata track for stream '%@'.", v8];
        [MEMORY[0x277CCA9B8] populateReaderError:a6 message:? code:?];
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find attachments track for stream '%@'.", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:? code:?];
    v36 = 0;
  }

LABEL_42:

  return v36;
}

+ (id)alignedPTSTimeStamps:(id)a3 withSampleTimes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = [v6 times];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x277CC0890];
  while ([v6 count] > v10)
  {
    memset(&v26, 0, sizeof(v26));
    if (v6)
    {
      [v6 timeAtIndex:v10];
    }

    if (v11 >= [v5 count])
    {
      time1 = v26;
      v24 = *v12;
      v13 = [MIOTimePair timePairWithPts:&time1 originalTime:&v24];
      [v9 addObject:v13];
    }

    v14 = [v5 objectAtIndex:v11];
    time1 = v26;
    if ([v14 isPTSEqualOrCloseToTime:&time1])
    {
      time1 = v26;
      v15 = [v14 copyWithNewPts:&time1];
      [v9 addObject:v15];

      v16 = v11 + 1;
    }

    else
    {
      if (v14)
      {
        [v14 pts];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v24 = v26;
      if (CMTimeCompare(&time1, &v24) < 0)
      {
        v16 = v11 + 1;
        v18 = v11 + 1;
        while (1)
        {
          if (v18 >= [v5 count])
          {
            time1 = v26;
            v24 = *v12;
            v21 = [MIOTimePair timePairWithPts:&time1 originalTime:&v24];
            [v9 addObject:v21];

            goto LABEL_25;
          }

          v19 = [v5 objectAtIndex:v18];

          time1 = v26;
          if ([v19 isPTSEqualOrCloseToTime:&time1])
          {
            break;
          }

          if (v19)
          {
            [v19 pts];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v24 = v26;
          ++v18;
          v14 = v19;
          if (CMTimeCompare(&time1, &v24) >= 1)
          {
            time1 = v26;
            v24 = *v12;
            v20 = [MIOTimePair timePairWithPts:&time1 originalTime:&v24];
            [v9 addObject:v20];

            goto LABEL_24;
          }
        }

        time1 = v26;
        v22 = [v19 copyWithNewPts:&time1];
        [v9 addObject:v22];

        v16 = v11 + 2;
LABEL_24:
        v14 = v19;
      }

      else
      {
        time1 = v26;
        v24 = *v12;
        v17 = [MIOTimePair timePairWithPts:&time1 originalTime:&v24];
        [v9 addObject:v17];

        v16 = v11;
      }
    }

LABEL_25:

    ++v10;
    v11 = v16;
  }

  return v9;
}

+ (id)timePairWithPts:(id *)a3 originalTime:(id *)a4
{
  v6 = [MIOTimePair alloc];
  v10 = *a3;
  v9 = *a4;
  v7 = [(MIOTimePair *)v6 initWithPts:&v10 originalTime:&v9];

  return v7;
}

- (MIOTimePair)init
{
  v8.receiver = self;
  v8.super_class = MIOTimePair;
  v2 = [(MIOTimePair *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CC0890];
    v6 = *MEMORY[0x277CC0890];
    v7 = *(MEMORY[0x277CC0890] + 16);
    [(MIOTimePair *)v2 setPts:&v6];
    v6 = *v4;
    v7 = *(v4 + 2);
    [(MIOTimePair *)v3 setOriginalTime:&v6];
  }

  return v3;
}

- (MIOTimePair)initWithPts:(id *)a3 originalTime:(id *)a4
{
  v11.receiver = self;
  v11.super_class = MIOTimePair;
  v6 = [(MIOTimePair *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v9 = *&a3->var0;
    var3 = a3->var3;
    [(MIOTimePair *)v6 setPts:&v9];
    v9 = *&a4->var0;
    var3 = a4->var3;
    [(MIOTimePair *)v7 setOriginalTime:&v9];
  }

  return v7;
}

- (BOOL)isPTSEqualOrCloseToTime:(id *)a3
{
  v6 = *a3;
  CMTimeMakeWithSeconds(&v5, 0.000003, 100000000);
  return [(MIOTimePair *)self isPTSEqualOrCloseToTime:&v6 tolerance:&v5];
}

- (BOOL)isPTSEqualOrCloseToTime:(id *)a3 tolerance:(id *)a4
{
  if ((a3->var2 & 1) == 0)
  {
    return 0;
  }

  v14 = v4;
  v15 = v5;
  [(MIOTimePair *)self pts];
  if ((v13.flags & 1) == 0)
  {
    return 0;
  }

  memset(&v13, 0, sizeof(v13));
  lhs = *a3;
  [(MIOTimePair *)self pts];
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v13, &time);
  time = v13;
  lhs = *a4;
  return CMTimeCompare(&time, &lhs) < 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(MIOTimePair *)self pts];
  Seconds = CMTimeGetSeconds(&time);
  [(MIOTimePair *)self originalTime];
  v5 = [v3 stringWithFormat:@"%f [Orig: %f]", *&Seconds, CMTimeGetSeconds(&time)];

  return v5;
}

- (id)copyWithNewPts:(id *)a3
{
  v5 = *a3;
  [(MIOTimePair *)self originalTime];
  [MIOTimePair timePairWithPts:&v5 originalTime:v4];
  return objc_claimAutoreleasedReturnValue();
}

@end