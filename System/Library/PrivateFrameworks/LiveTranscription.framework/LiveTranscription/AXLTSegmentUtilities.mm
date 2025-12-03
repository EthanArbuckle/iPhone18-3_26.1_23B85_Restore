@interface AXLTSegmentUtilities
+ (BOOL)isPuncuation:(id)puncuation;
+ (id)mergeOldSegments:(id)segments withNewSegments:(id)newSegments;
@end

@implementation AXLTSegmentUtilities

+ (id)mergeOldSegments:(id)segments withNewSegments:(id)newSegments
{
  segmentsCopy = segments;
  newSegmentsCopy = newSegments;
  v7 = [newSegmentsCopy count];
  v8 = segmentsCopy;
  if (v7 && (v9 = [segmentsCopy count], v8 = newSegmentsCopy, v9))
  {
    v10 = objc_opt_new();
    v26 = segmentsCopy;
    v11 = [segmentsCopy count];
    v12 = [newSegmentsCopy count];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 0;
      segmentsCopy = v26;
      v25 = v13;
      while (1)
      {
        v16 = [segmentsCopy objectAtIndexedSubscript:v14];
        v17 = [newSegmentsCopy objectAtIndexedSubscript:v15];
        substring = [v16 substring];
        substring2 = [v17 substring];
        if ([substring isEqualToString:substring2])
        {
          [v10 addObject:v16];
          ++v14;
          ++v15;
        }

        else
        {
          v20 = [self isPuncuation:substring];
          v21 = [self isPuncuation:substring2];
          v22 = v21 ^ 1;
          if ((v20 ^ 1) & 1) != 0 || (v22)
          {
            if ((v20 ^ 1 | v21))
            {
              if ((v20 | v22))
              {
                v13 = v25;
                if (((v20 | v21) & 1) == 0)
                {
                  [v10 addObject:v16];
                  ++v14;
                  ++v15;
                }

                segmentsCopy = v26;
                goto LABEL_20;
              }

              ++v15;
            }

            else
            {
              ++v14;
            }
          }

          else
          {
            [v10 addObject:v16];
            ++v14;
            ++v15;
          }

          v13 = v25;
          segmentsCopy = v26;
        }

LABEL_20:

        if (v14 >= v13 || v15 >= v13)
        {
          goto LABEL_26;
        }
      }
    }

    v15 = 0;
    segmentsCopy = v26;
LABEL_26:
    if ([newSegmentsCopy count] > v15 && v15 < objc_msgSend(newSegmentsCopy, "count"))
    {
      do
      {
        v23 = [newSegmentsCopy objectAtIndexedSubscript:v15];
        [v10 addObject:v23];

        ++v15;
      }

      while (v15 < [newSegmentsCopy count]);
      segmentsCopy = v26;
    }
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

+ (BOOL)isPuncuation:(id)puncuation
{
  puncuationCopy = puncuation;
  if ([puncuationCopy length])
  {
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [puncuationCopy stringByTrimmingCharactersInSet:punctuationCharacterSet];
    v6 = [v5 length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end