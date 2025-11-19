@interface HMIVideoAnalyzerTrack
- (BOOL)isClassified;
- (BOOL)isExpiredAtTimeStamp:(id *)a3;
- (BOOL)isLostAtTimeStamp:(id *)a3;
- (BOOL)isStationaryAtTimeStamp:(id *)a3;
- (HMIVideoAnalyzerBlob)lastBlob;
- (HMIVideoAnalyzerTrack)initWithBlob:(id)a3 trackIndex:(unint64_t)a4;
- (float)similarityToBlob:(id)a3;
- (id)blobAtTimeStamp:(id *)a3;
- (id)createPackageEventAtTimeStamp:(id *)a3;
- (id)shortDescription;
- (unint64_t)stationaryIndexToBoundingBox:(CGRect)a3;
- (void)appendBlob:(id)a3;
@end

@implementation HMIVideoAnalyzerTrack

- (HMIVideoAnalyzerTrack)initWithBlob:(id)a3 trackIndex:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HMIVideoAnalyzerTrack;
  v7 = [(HMIVideoAnalyzerTrack *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackIndex = a4;
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
    blobs = v8->_blobs;
    v8->_blobs = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    analysisTimeStamps = v8->_analysisTimeStamps;
    v8->_analysisTimeStamps = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    eventClasses = v8->_eventClasses;
    v8->_eventClasses = v13;

    v8->_stationaryBlobIndex = 0;
  }

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v24 = [(HMIVideoAnalyzerTrack *)self blobs];
  v4 = [v24 firstObject];
  v23 = v4;
  if (v4)
  {
    [v4 timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  v6 = [(HMIVideoAnalyzerTrack *)self blobs];
  v7 = [v6 lastObject];
  v8 = v7;
  if (v7)
  {
    [v7 timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time);
  v10 = [(HMIVideoAnalyzerTrack *)self blobs];
  v11 = [v10 lastObject];
  [v11 boundingBox];
  v16 = HMICGRectDescription(v12, v13, v14, v15);
  v17 = [(HMIVideoAnalyzerTrack *)self eventClasses];
  v18 = [v17 allObjects];
  v19 = [v18 na_map:&__block_literal_global_32];
  v20 = [v19 componentsJoinedByString:{@", "}];
  v21 = [v3 stringWithFormat:@"Track:%.2f-%.2f @ %@ (%@)", *&Seconds, *&v9, v16, v20];

  return v21;
}

- (void)appendBlob:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 timeStamp];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v6 = [(HMIVideoAnalyzerTrack *)self blobs];
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    [v7 timeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&time1, &lhs, &rhs);
  CMTimeMakeWithSeconds(&lhs, 3.0, 1000);
  v9 = CMTimeCompare(&time1, &lhs);

  if (v9 >= 1)
  {
    v10 = [(HMIVideoAnalyzerTrack *)self blobs];
    [v10 hmf_removeFirstObject];

    if ([(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
    {
      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:[(HMIVideoAnalyzerTrack *)self stationaryBlobIndex]- 1];
    }
  }

  [v5 boundingBox];
  v11 = [(HMIVideoAnalyzerTrack *)self stationaryIndexToBoundingBox:?];
  v12 = [(HMIVideoAnalyzerTrack *)self blobs];
  [v12 addObject:v5];

  if (v11 > [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
  {
    v13 = [(HMIVideoAnalyzerTrack *)self blobs];
    v14 = [v13 count];

    if (v11 < v14)
    {
      while (1)
      {
        v15 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        v16 = [v15 count];

        if (!v16)
        {
          break;
        }

        v17 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        v18 = [v17 firstObject];
        v19 = v18;
        if (v18)
        {
          [v18 CMTimeValue];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v20 = [(HMIVideoAnalyzerTrack *)self blobs];
        v21 = [v20 objectAtIndexedSubscript:v11];
        v22 = v21;
        if (v21)
        {
          [v21 timeStamp];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        v23 = CMTimeCompare(&time1, &lhs);

        if (v23 > 0)
        {
          break;
        }

        v24 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        [v24 hmf_removeFirstObject];
      }

      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:v11];
    }
  }
}

- (unint64_t)stationaryIndexToBoundingBox:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex];
  v9 = [(HMIVideoAnalyzerTrack *)self blobs];
  v10 = [v9 count];

  v11 = [(HMIVideoAnalyzerTrack *)self blobs];
  v12 = [v11 count];

  if (v8 >= v12)
  {
LABEL_8:
    v24 = [(HMIVideoAnalyzerTrack *)self blobs];
    v8 = [v24 count];
  }

  else
  {
    v13 = v10 - v8;
    while (1)
    {
      v14 = [(HMIVideoAnalyzerTrack *)self blobs];
      v15 = [v14 objectAtIndexedSubscript:v8];
      [v15 boundingBox];
      v20 = HMICGRectMaxElementwiseDistance(v16, v17, v18, v19, x, y, width, height);

      if (v20 < 0.05)
      {
        break;
      }

      v13 = (v13 + 1) >> 1;
      if (v13 <= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = v13;
      }

      v8 += v21;
      v22 = [(HMIVideoAnalyzerTrack *)self blobs];
      v23 = [v22 count];

      if (v8 >= v23)
      {
        goto LABEL_8;
      }
    }
  }

  return v8;
}

- (float)similarityToBlob:(id)a3
{
  [a3 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HMIVideoAnalyzerTrack *)self blobs];
  v13 = [v12 lastObject];
  [v13 boundingBox];
  HMICGRectIntersectionOverUnion(v5, v7, v9, v11, v14, v15, v16, v17);
  v19 = v18;

  result = 0.0;
  if (v19 > 0.5)
  {
    return v19;
  }

  return result;
}

- (HMIVideoAnalyzerBlob)lastBlob
{
  v2 = [(HMIVideoAnalyzerTrack *)self blobs];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)isClassified
{
  v3 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
  if ([v3 count] > 0xE)
  {
    v5 = 1;
  }

  else
  {
    v4 = [(HMIVideoAnalyzerTrack *)self eventClasses];
    if ([v4 containsObject:objc_opt_class()])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(HMIVideoAnalyzerTrack *)self eventClasses];
      v5 = [v6 containsObject:objc_opt_class()];
    }
  }

  return v5;
}

- (BOOL)isLostAtTimeStamp:(id *)a3
{
  v4 = [(HMIVideoAnalyzerTrack *)self blobs];
  v5 = [v4 lastObject];
  v6 = v5;
  if (v5)
  {
    [v5 timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v9 = *a3;
  v7 = CMTimeCompare(&v9, &time2) > 0;

  return v7;
}

- (BOOL)isExpiredAtTimeStamp:(id *)a3
{
  v4 = [(HMIVideoAnalyzerTrack *)self blobs];
  v5 = [v4 lastObject];
  v6 = v5;
  if (v5)
  {
    [v5 timeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v9 = *a3;
  CMTimeSubtract(&time1, &v9, &rhs);
  CMTimeMakeWithSeconds(&rhs, 3.0, 1000);
  v7 = CMTimeCompare(&time1, &rhs) > 0;

  return v7;
}

- (BOOL)isStationaryAtTimeStamp:(id *)a3
{
  v5 = [(HMIVideoAnalyzerTrack *)self blobs];
  v6 = [v5 lastObject];
  v7 = v6;
  if (v6)
  {
    [v6 timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *a3;
  if (CMTimeCompare(&time1, &time2))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HMIVideoAnalyzerTrack *)self blobs];
    v10 = [v9 objectAtIndexedSubscript:{-[HMIVideoAnalyzerTrack stationaryBlobIndex](self, "stationaryBlobIndex")}];
    v11 = v10;
    if (v10)
    {
      [v10 timeStamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v13 = *a3;
    CMTimeSubtract(&time2, &v13, &time1);
    CMTimeMakeWithSeconds(&time1, 2.0, 1000);
    v8 = CMTimeCompare(&time2, &time1) > 0;
  }

  return v8;
}

- (id)blobAtTimeStamp:(id *)a3
{
  v5 = [(HMIVideoAnalyzerTrack *)self blobs];
  v6 = [v5 count];

  v7 = v6;
  while (1)
  {
    if (v7 < 1)
    {
LABEL_11:
      v16 = 0;
      goto LABEL_13;
    }

    --v7;
    v8 = [(HMIVideoAnalyzerTrack *)self blobs];
    v9 = [v8 objectAtIndexedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      [v9 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v19 = *a3;
    v11 = CMTimeCompare(&v19, &time2);

    if (!v11)
    {
      break;
    }

    v12 = [(HMIVideoAnalyzerTrack *)self blobs];
    v13 = [v12 objectAtIndexedSubscript:v7];
    v14 = v13;
    if (v13)
    {
      [v13 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v19 = *a3;
    v15 = CMTimeCompare(&v19, &time2);

    if (v15 >= 1)
    {
      goto LABEL_11;
    }
  }

  v17 = [(HMIVideoAnalyzerTrack *)self blobs];
  v16 = [v17 objectAtIndexedSubscript:v7];

LABEL_13:

  return v16;
}

- (id)createPackageEventAtTimeStamp:(id *)a3
{
  v12 = *a3;
  v5 = [(HMIVideoAnalyzerTrack *)self blobAtTimeStamp:&v12];
  if (v5)
  {
    v6 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
    v12 = *a3;
    v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v12];
    [v6 addObject:v7];

    v8 = [HMIVideoAnalyzerEventPackage alloc];
    v9 = [[HMIConfidence alloc] initWithValue:&unk_284075678 levelThresholds:1.0];
    [v5 boundingBox];
    v10 = [(HMIVideoAnalyzerEventPackage *)v8 initWithConfidence:v9 boundingBox:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end