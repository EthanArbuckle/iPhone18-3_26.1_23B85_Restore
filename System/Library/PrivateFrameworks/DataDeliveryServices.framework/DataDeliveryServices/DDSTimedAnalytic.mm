@interface DDSTimedAnalytic
- (DDSTimedAnalytic)initWithIdentifier:(id)identifier;
- (unint64_t)durationInSec;
- (void)updateWithAction:(int)action;
@end

@implementation DDSTimedAnalytic

- (DDSTimedAnalytic)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DDSTimedAnalytic;
  v6 = [(DDSTimedAnalytic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_lastAction = 0;
  }

  return v7;
}

- (void)updateWithAction:(int)action
{
  [(DDSTimedAnalytic *)self setLastAction:?];
  if (action > 2)
  {
    if (action == 3)
    {
      selfCopy2 = self;
      v7 = 1;
    }

    else
    {
      if (action != 4)
      {
        return;
      }

      selfCopy2 = self;
      v7 = 0;
    }

    [(DDSTimedAnalytic *)selfCopy2 setSuccess:v7];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    [(DDSTimedAnalytic *)self setEndTime:?];
  }

  else
  {
    if (action != 1)
    {
      if (action == 2)
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

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
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