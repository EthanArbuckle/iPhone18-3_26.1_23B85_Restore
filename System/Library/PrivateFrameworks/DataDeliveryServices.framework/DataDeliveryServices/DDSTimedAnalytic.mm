@interface DDSTimedAnalytic
- (DDSTimedAnalytic)initWithIdentifier:(id)a3;
- (unint64_t)durationInSec;
- (void)updateWithAction:(int)a3;
@end

@implementation DDSTimedAnalytic

- (DDSTimedAnalytic)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDSTimedAnalytic;
  v6 = [(DDSTimedAnalytic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_lastAction = 0;
  }

  return v7;
}

- (void)updateWithAction:(int)a3
{
  [(DDSTimedAnalytic *)self setLastAction:?];
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = self;
      v7 = 1;
    }

    else
    {
      if (a3 != 4)
      {
        return;
      }

      v6 = self;
      v7 = 0;
    }

    [(DDSTimedAnalytic *)v6 setSuccess:v7];
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSince1970];
    [(DDSTimedAnalytic *)self setEndTime:?];
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v5 = [(DDSTimedAnalytic *)self retries]+ 1;

        [(DDSTimedAnalytic *)self setRetries:v5];
      }

      return;
    }

    [(DDSTimedAnalytic *)self startTime];
    if (v8 != 0.0)
    {
      return;
    }

    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSince1970];
    [(DDSTimedAnalytic *)self setStartTime:?];
  }
}

- (unint64_t)durationInSec
{
  [(DDSTimedAnalytic *)self endTime];
  v4 = v3;
  [(DDSTimedAnalytic *)self startTime];
  v6 = v4 - v5;
  if (v6 >= 1.0 || v6 <= 0.0)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

@end