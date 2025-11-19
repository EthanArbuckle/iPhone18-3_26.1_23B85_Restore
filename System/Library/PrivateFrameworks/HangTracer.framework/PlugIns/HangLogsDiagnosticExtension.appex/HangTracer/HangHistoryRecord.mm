@interface HangHistoryRecord
- (int64_t)compare:(id)a3;
@end

@implementation HangHistoryRecord

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [v4 hangDuration];
  v6 = v5;
  [(HangHistoryRecord *)self hangDuration];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    [v4 hangDuration];
    v10 = v9;
    [(HangHistoryRecord *)self hangDuration];
    if (v10 < v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

@end