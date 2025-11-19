@interface AVAsset(VCPSlowmo)
- (id)vcp_assetWithoutAdjustments:()VCPSlowmo duration:;
- (void)vcp_scaleRampWithIntervals:()VCPSlowmo andRates:inSlowmoTimerange:withTimeMapping:inComposition:;
- (void)vcp_scaleSlowmoTimeRange:()VCPSlowmo withTimeMapping:inComposition:;
@end

@implementation AVAsset(VCPSlowmo)

- (void)vcp_scaleSlowmoTimeRange:()VCPSlowmo withTimeMapping:inComposition:
{
  v7 = a4;
  v8 = a5;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v9 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v9;
  v13[2] = *(a3 + 32);
  if (v7)
  {
    [v7 vcp_convertToOriginalTimerangeFromScaledTimerange:v13];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v14 = 0uLL;
  }

  *&start.value = v14;
  start.epoch = *&v15[0];
  v10 = *(a3 + 24);
  CMTimeRangeMake(&v12, &start, &v10);
  start = *(v15 + 8);
  [v8 scaleTimeRange:&v12 toDuration:&start];
}

- (void)vcp_scaleRampWithIntervals:()VCPSlowmo andRates:inSlowmoTimerange:withTimeMapping:inComposition:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ((*(a5 + 12) & 1) == 0 || (*(a5 + 36) & 1) == 0 || *(a5 + 40) || (*(a5 + 24) & 0x8000000000000000) != 0 || (*&v24.start.value = *(a5 + 24), v24.start.epoch = *(a5 + 40), start = **&MEMORY[0x1E6960CC0], CMTimeCompare(&v24.start, &start)))
  {
    if ([v13 count])
    {
      v16 = 0;
      v26 = *a5;
      while (v16 < [v13 count] - 1)
      {
        v17 = [v12 objectAtIndexedSubscript:v16];
        [v17 floatValue];
        v19 = v18;
        v20 = [v13 objectAtIndexedSubscript:v16];
        [v20 floatValue];
        v22 = (v19 / v21);

        memset(&v25, 0, sizeof(v25));
        CMTimeMakeWithSeconds(&v25, v22, 600);
        start = v26;
        duration = v25;
        CMTimeRangeMake(&v24, &start, &duration);
        [a1 vcp_scaleSlowmoTimeRange:&v24 withTimeMapping:v14 inComposition:v15];
        start = v26;
        duration = v25;
        CMTimeAdd(&v24.start, &start, &duration);
        v26 = v24.start;
        ++v16;
      }

      start = v26;
      v23 = *(a5 + 16);
      *&v24.start.value = *a5;
      *&v24.start.epoch = v23;
      *&v24.duration.timescale = *(a5 + 32);
      CMTimeRangeGetEnd(&duration, &v24);
      CMTimeRangeFromTimeToTime(&v24, &start, &duration);
      [a1 vcp_scaleSlowmoTimeRange:&v24 withTimeMapping:v14 inComposition:v15];
    }
  }
}

- (id)vcp_assetWithoutAdjustments:()VCPSlowmo duration:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69C0908]);
    v8 = [v6 privateFileURL];
    v9 = [v7 initWithURL:v8];

    v34 = v9;
    if (v9 && ([v9 hasSlowMotionAdjustments] & 1) != 0)
    {
      v33 = [objc_alloc(MEMORY[0x1E69C0900]) initWithVideoAsset:0 videoAdjustments:v9];
      if (v33)
      {
        v10 = [MEMORY[0x1E6988048] composition];
        memset(&v53, 0, sizeof(v53));
        v11 = MEMORY[0x1E6960CC0];
        *&start.start.value = *MEMORY[0x1E6960CC0];
        start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        [a1 duration];
        CMTimeRangeFromTimeToTime(&v53, &start.start, &end.start);
        start = v53;
        *&end.start.value = *&v11->value;
        end.start.epoch = v11->epoch;
        if ([v10 insertTimeRange:&start ofAsset:a1 atTime:&end error:0])
        {
          v26 = objc_alloc_init(MEMORY[0x1E69C0888]);
          v29 = [v26 rampDown];
          v30 = [v26 rampUp];
          [v9 slowMotionRate];
          v50 = 0;
          v51 = 0;
          [v29 computeRampToTargetRate:1 forExport:&v51 outTimeSteps:&v50 outIntermediateRates:?];
          v31 = v51;
          v32 = v50;
          [v9 slowMotionRate];
          v48 = 0;
          v49 = 0;
          [v30 computeRampToTargetRate:1 forExport:&v49 outTimeSteps:&v48 outIntermediateRates:?];
          v27 = v49;
          v28 = v48;
          memset(&start, 0, sizeof(start));
          [v33 slowMotionRampInRangeForExport:1];
          memset(&end, 0, sizeof(end));
          [v33 slowMotionRampOutRangeForExport:1];
          memset(&v46, 0, sizeof(v46));
          [v9 slowMotionTimeRange];
          CMTimeRangeGetEnd(&v46, &range);
          *&range.start.value = *&start.start.value;
          range.start.epoch = start.start.epoch;
          Seconds = CMTimeGetSeconds(&range.start);
          range.start = v46;
          v13 = CMTimeGetSeconds(&range.start);
          memset(&v44, 0, sizeof(v44));
          if (Seconds >= 0.100000001)
          {
            range = start;
            CMTimeRangeGetEnd(&v44, &range);
          }

          else
          {
            v44 = *v11;
          }

          v15 = a2 - v13;
          memset(&v43, 0, sizeof(v43));
          if (v15 >= 0.100000001)
          {
            v43 = end.start;
          }

          else
          {
            range = v53;
            CMTimeRangeGetEnd(&v43, &range);
          }

          memset(&range, 0, sizeof(range));
          v41.start = v44;
          v42 = v43;
          CMTimeRangeFromTimeToTime(&range, &v41.start, &v42);
          if (v15 >= 0.100000001)
          {
            v41 = start;
            [a1 vcp_scaleRampWithIntervals:v31 andRates:v32 inSlowmoTimerange:&v41 withTimeMapping:v33 inComposition:v10];
          }

          memset(&v42, 0, sizeof(v42));
          *&v41.start.value = *&range.start.value;
          v41.start.epoch = range.start.epoch;
          [v33 convertToOriginalTimeFromScaledTime:&v41 forExport:1];
          v40 = v42;
          duration = range.duration;
          CMTimeRangeMake(&v41, &v40, &duration);
          duration = range.duration;
          [v9 slowMotionRate];
          CMTimeMultiplyByFloat64(&v40, &duration, v16);
          [v10 scaleTimeRange:&v41 toDuration:&v40];
          if (Seconds >= 0.100000001)
          {
            v41 = end;
            [a1 vcp_scaleRampWithIntervals:v27 andRates:v28 inSlowmoTimerange:&v41 withTimeMapping:v33 inComposition:v10];
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [v10 tracks];
          v18 = [v17 countByEnumeratingWithState:&v35 objects:v54 count:16];
          if (v18)
          {
            v19 = *v36;
            v20 = *MEMORY[0x1E69875A0];
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v36 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v35 + 1) + 8 * i);
                v23 = [v22 mediaType];
                v24 = [v23 isEqualToString:v20];

                if (v24)
                {
                  [v10 removeTrack:v22];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v35 objects:v54 count:16];
            }

            while (v18);
          }

          v14 = v10;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end