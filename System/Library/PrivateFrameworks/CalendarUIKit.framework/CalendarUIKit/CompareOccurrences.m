@interface CompareOccurrences
@end

@implementation CompareOccurrences

uint64_t CUIKSingleDayTimelineLayout_CompareOccurrences_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 hideTravelTime])
  {
    [v4 start];
  }

  else
  {
    [v4 startWithTravelTime];
  }
  v6 = ;
  if ([v5 hideTravelTime])
  {
    [v5 start];
  }

  else
  {
    [v5 startWithTravelTime];
  }
  v7 = ;
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  [v7 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [v4 end];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  v15 = [v5 end];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;

  if (vabdd_f64(v17, v11) >= 2.22044605e-16)
  {
    v19 = (v14 - v9) / (v17 - v11);
    if (v19 > 0.85 && v19 < 1.2)
    {
      if (v9 >= v11)
      {
        if (v9 <= v11)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_16:
      v18 = -1;
      goto LABEL_18;
    }
  }

  if (v14 >= v17)
  {
    if (v14 <= v17)
    {
LABEL_17:
      v20 = [v4 eventIdentifier];
      v21 = [v5 eventIdentifier];
      v18 = [v20 compare:v21];

      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_9:
  v18 = 1;
LABEL_18:

  return v18;
}

@end