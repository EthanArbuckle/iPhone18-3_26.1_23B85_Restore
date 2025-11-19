@interface VCPImageQualityAnalyzer
- (int)analyzeImageQuality:(id)a3 irisPhotoOffsetSec:(float)a4 cancel:(id)a5;
@end

@implementation VCPImageQualityAnalyzer

- (int)analyzeImageQuality:(id)a3 irisPhotoOffsetSec:(float)a4 cancel:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = a5;
  v34 = [v7 objectForKeyedSubscript:@"BlurResults"];
  v32 = [v7 objectForKeyedSubscript:@"ObstructionResults"];
  if ([v34 count])
  {
    if (v33 && (v33[2]() & 1) != 0)
    {
      v8 = -128;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = v34;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v10)
      {
        v11 = *v43;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [*(*(&v42 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v14 = [v13 objectForKeyedSubscript:@"sharpness"];
            [v14 floatValue];
            v16 = v15;
          }

          v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v10);
      }

      else
      {
        v16 = 0.0;
      }

      v17 = [v7 objectForKeyedSubscript:@"ExposureResults"];
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [v18 objectForKeyedSubscript:@"quality"];
      [v19 floatValue];
      self->_qualityScore = v20;

      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v38 = 0u;
      v21 = v32;
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v22)
      {
        v23 = *v39;
        v24 = a4;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v38 + 1) + 8 * j);
            memset(&v37, 0, sizeof(v37));
            CMTimeRangeMakeFromDictionary(&v37, v26);
            range = v37;
            CMTimeMakeWithSeconds(&time, v24, 600);
            if (CMTimeRangeContainsTime(&range, &time))
            {
              [(__CFDictionary *)v26 vcp_quality];
              *&v27 = v27;
              self->_qualityScore = fmaxf(self->_qualityScore + ((1.0 - *&v27) * -15.0), 0.0);
              goto LABEL_25;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:

      v28 = 0.0;
      if (v16 > 0.2)
      {
        qualityScore = self->_qualityScore;
        if (qualityScore != 0.0)
        {
          v28 = ((qualityScore * 0.75) + (v16 * 0.25)) * 100.0;
        }
      }

      v8 = 0;
      self->_qualityScore = roundf(v28) / 100.0;
    }
  }

  else
  {
    v8 = -50;
  }

  return v8;
}

@end