@interface HMIVideoAnalyzerTrack
- (BOOL)isClassified;
- (BOOL)isExpiredAtTimeStamp:(id *)stamp;
- (BOOL)isLostAtTimeStamp:(id *)stamp;
- (BOOL)isStationaryAtTimeStamp:(id *)stamp;
- (HMIVideoAnalyzerBlob)lastBlob;
- (HMIVideoAnalyzerTrack)initWithBlob:(id)blob trackIndex:(unint64_t)index;
- (float)similarityToBlob:(id)blob;
- (id)blobAtTimeStamp:(id *)stamp;
- (id)createPackageEventAtTimeStamp:(id *)stamp;
- (id)shortDescription;
- (unint64_t)stationaryIndexToBoundingBox:(CGRect)box;
- (void)appendBlob:(id)blob;
@end

@implementation HMIVideoAnalyzerTrack

- (HMIVideoAnalyzerTrack)initWithBlob:(id)blob trackIndex:(unint64_t)index
{
  blobCopy = blob;
  v16.receiver = self;
  v16.super_class = HMIVideoAnalyzerTrack;
  v7 = [(HMIVideoAnalyzerTrack *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackIndex = index;
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:blobCopy];
    blobs = v8->_blobs;
    v8->_blobs = v9;

    array = [MEMORY[0x277CBEB18] array];
    analysisTimeStamps = v8->_analysisTimeStamps;
    v8->_analysisTimeStamps = array;

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
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  firstObject = [blobs firstObject];
  v23 = firstObject;
  if (firstObject)
  {
    [firstObject timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs2 lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    [lastObject timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time);
  blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject2 = [blobs3 lastObject];
  [lastObject2 boundingBox];
  v16 = HMICGRectDescription(v12, v13, v14, v15);
  eventClasses = [(HMIVideoAnalyzerTrack *)self eventClasses];
  allObjects = [eventClasses allObjects];
  v19 = [allObjects na_map:&__block_literal_global_32];
  v20 = [v19 componentsJoinedByString:{@", "}];
  v21 = [v3 stringWithFormat:@"Track:%.2f-%.2f @ %@ (%@)", *&Seconds, *&v9, v16, v20];

  return v21;
}

- (void)appendBlob:(id)blob
{
  blobCopy = blob;
  v5 = blobCopy;
  if (blobCopy)
  {
    [blobCopy timeStamp];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  firstObject = [blobs firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    [firstObject timeStamp];
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
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    [blobs2 hmf_removeFirstObject];

    if ([(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
    {
      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:[(HMIVideoAnalyzerTrack *)self stationaryBlobIndex]- 1];
    }
  }

  [v5 boundingBox];
  v11 = [(HMIVideoAnalyzerTrack *)self stationaryIndexToBoundingBox:?];
  blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
  [blobs3 addObject:v5];

  if (v11 > [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
  {
    blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
    v14 = [blobs4 count];

    if (v11 < v14)
    {
      while (1)
      {
        analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        v16 = [analysisTimeStamps count];

        if (!v16)
        {
          break;
        }

        analysisTimeStamps2 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        firstObject2 = [analysisTimeStamps2 firstObject];
        v19 = firstObject2;
        if (firstObject2)
        {
          [firstObject2 CMTimeValue];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        blobs5 = [(HMIVideoAnalyzerTrack *)self blobs];
        v21 = [blobs5 objectAtIndexedSubscript:v11];
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

        analysisTimeStamps3 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        [analysisTimeStamps3 hmf_removeFirstObject];
      }

      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:v11];
    }
  }
}

- (unint64_t)stationaryIndexToBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  stationaryBlobIndex = [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex];
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  v10 = [blobs count];

  blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
  v12 = [blobs2 count];

  if (stationaryBlobIndex >= v12)
  {
LABEL_8:
    blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
    stationaryBlobIndex = [blobs3 count];
  }

  else
  {
    v13 = v10 - stationaryBlobIndex;
    while (1)
    {
      blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
      v15 = [blobs4 objectAtIndexedSubscript:stationaryBlobIndex];
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

      stationaryBlobIndex += v21;
      blobs5 = [(HMIVideoAnalyzerTrack *)self blobs];
      v23 = [blobs5 count];

      if (stationaryBlobIndex >= v23)
      {
        goto LABEL_8;
      }
    }
  }

  return stationaryBlobIndex;
}

- (float)similarityToBlob:(id)blob
{
  [blob boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  [lastObject boundingBox];
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
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];

  return lastObject;
}

- (BOOL)isClassified
{
  analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
  if ([analysisTimeStamps count] > 0xE)
  {
    v5 = 1;
  }

  else
  {
    eventClasses = [(HMIVideoAnalyzerTrack *)self eventClasses];
    if ([eventClasses containsObject:objc_opt_class()])
    {
      v5 = 1;
    }

    else
    {
      eventClasses2 = [(HMIVideoAnalyzerTrack *)self eventClasses];
      v5 = [eventClasses2 containsObject:objc_opt_class()];
    }
  }

  return v5;
}

- (BOOL)isLostAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  v6 = lastObject;
  if (lastObject)
  {
    [lastObject timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v9 = *stamp;
  v7 = CMTimeCompare(&v9, &time2) > 0;

  return v7;
}

- (BOOL)isExpiredAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  v6 = lastObject;
  if (lastObject)
  {
    [lastObject timeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v9 = *stamp;
  CMTimeSubtract(&time1, &v9, &rhs);
  CMTimeMakeWithSeconds(&rhs, 3.0, 1000);
  v7 = CMTimeCompare(&time1, &rhs) > 0;

  return v7;
}

- (BOOL)isStationaryAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  v7 = lastObject;
  if (lastObject)
  {
    [lastObject timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *stamp;
  if (CMTimeCompare(&time1, &time2))
  {
    v8 = 0;
  }

  else
  {
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    v10 = [blobs2 objectAtIndexedSubscript:{-[HMIVideoAnalyzerTrack stationaryBlobIndex](self, "stationaryBlobIndex")}];
    v11 = v10;
    if (v10)
    {
      [v10 timeStamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v13 = *stamp;
    CMTimeSubtract(&time2, &v13, &time1);
    CMTimeMakeWithSeconds(&time1, 2.0, 1000);
    v8 = CMTimeCompare(&time2, &time1) > 0;
  }

  return v8;
}

- (id)blobAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  v6 = [blobs count];

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
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    v9 = [blobs2 objectAtIndexedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      [v9 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v19 = *stamp;
    v11 = CMTimeCompare(&v19, &time2);

    if (!v11)
    {
      break;
    }

    blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
    v13 = [blobs3 objectAtIndexedSubscript:v7];
    v14 = v13;
    if (v13)
    {
      [v13 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v19 = *stamp;
    v15 = CMTimeCompare(&v19, &time2);

    if (v15 >= 1)
    {
      goto LABEL_11;
    }
  }

  blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
  v16 = [blobs4 objectAtIndexedSubscript:v7];

LABEL_13:

  return v16;
}

- (id)createPackageEventAtTimeStamp:(id *)stamp
{
  v12 = *stamp;
  v5 = [(HMIVideoAnalyzerTrack *)self blobAtTimeStamp:&v12];
  if (v5)
  {
    analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
    v12 = *stamp;
    v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v12];
    [analysisTimeStamps addObject:v7];

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