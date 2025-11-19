@interface AVAssetTrack(MediaAnalysis)
- (double)vcp_cleanApertureRect;
- (double)vcp_fullFrameSize;
- (double)vcp_startTime;
- (uint64_t)vcp_imageOrientation;
- (uint64_t)vcp_orientation;
- (uint64_t)vcp_sampleCountForTimeRange:()MediaAnalysis;
@end

@implementation AVAssetTrack(MediaAnalysis)

- (double)vcp_startTime
{
  [a1 timeRange];
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

- (uint64_t)vcp_orientation
{
  [a1 naturalSize];
  v3 = v2;
  v5 = v4;
  [a1 preferredTransform];
  v6 = orientationForTransform(&v9) - 1;
  if (v3 < v5)
  {
    result = 1;
  }

  else
  {
    result = 3;
  }

  if (v6 <= 6)
  {
    v8 = &unk_1C9F63390;
    if (v3 < v5)
    {
      v8 = &unk_1C9F633C8;
    }

    return v8[v6];
  }

  return result;
}

- (uint64_t)vcp_imageOrientation
{
  [a1 preferredTransform];
  v1 = angleForTransform(v4);
  switch(v1)
  {
    case 90:
      return 6;
    case 270:
      return 8;
    case 180:
      return 3;
  }

  HIDWORD(v3) = -1527099483 * v1 + 47721858;
  LODWORD(v3) = HIDWORD(v3);
  if ((v3 >> 1) >= 0x2D82D83 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Video track rotation angle is not multiple of 90", v4, 2u);
  }

  return 1;
}

- (double)vcp_fullFrameSize
{
  v1 = [a1 formatDescriptions];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];

    *&v3 = *&CMVideoFormatDescriptionGetPresentationDimensions(v2, 0, 0);
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
  }

  return v3;
}

- (double)vcp_cleanApertureRect
{
  v1 = [a1 formatDescriptions];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];

    *&v3 = CMVideoFormatDescriptionGetCleanAperture(v2, 1u);
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
  }

  return v3;
}

- (uint64_t)vcp_sampleCountForTimeRange:()MediaAnalysis
{
  v5 = *(a3 + 16);
  *&range1.start.value = *a3;
  *&range1.start.epoch = v5;
  *&range1.duration.timescale = *(a3 + 32);
  [a1 timeRange];
  if (CMTimeRangeEqual(&range1, &range2))
  {
    v6 = [a1 makeSampleCursorAtFirstSampleInDecodeOrder];
    v7 = [v6 stepInPresentationOrderByCount:0x7FFFFFFFFFFFFFFFLL] + 1;
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
    v8 = *(a3 + 16);
    *&range1.start.value = *a3;
    *&range1.start.epoch = v8;
    *&range1.duration.timescale = *(a3 + 32);
    CMTimeRangeGetEnd(&v12, &range1);
    *&range1.start.value = *a3;
    range1.start.epoch = *(a3 + 16);
    v6 = [a1 makeSampleCursorWithPresentationTimeStamp:&range1];
    v7 = 0;
    do
    {
      if (v6)
      {
        [v6 presentationTimeStamp];
      }

      else
      {
        v10 = 0uLL;
        v11 = 0;
      }

      *&range1.start.value = v10;
      range1.start.epoch = v11;
      range2.start = v12;
      if ((CMTimeCompare(&range1.start, &range2.start) & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
    }

    while ([v6 stepInPresentationOrderByCount:1] >= 1);
  }

  return v7;
}

@end