@interface MPCFirstFailureDetector
- (BOOL)processSample:(id)a3;
- (MPCFirstFailureDetector)initWithSamplingTime:(double)a3 renderingLimit:(double)a4;
@end

@implementation MPCFirstFailureDetector

- (BOOL)processSample:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  ++self->_currentSample;
  state = self->_state;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      self->_state = 1;
    }

    [v4 time];
    if (v15 > self->_limit)
    {
      currentSample = self->_currentSample;
      if (self->_currentFailureStartSample == -1)
      {
        self->_currentFailureStartSample = currentSample;
      }

      v6 = 1;
      self->_lastFailureSample = currentSample;
      self->_failureCount = 1;
      v17 = 2;
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  switch(state)
  {
    case 2:
      [v4 time];
      if (v9 >= self->_limit)
      {
        v10 = self->_currentSample;
        if (v10 - self->_lastFailureSample <= 4)
        {
          v11 = self->_failureCount + 1;
          self->_lastFailureSample = v10;
          self->_failureCount = v11;
          self->_state = 3;
LABEL_15:
          v6 = 1;
          break;
        }
      }

      [v5 time];
      if (v18 < self->_limit)
      {
        currentFailureStartSample = self->_currentFailureStartSample;
        if (self->_currentSample - currentFailureStartSample >= 5)
        {
          if (self->_singleSampleFailure)
          {
LABEL_32:
            if (self->_multiSamplesFailure)
            {
              v6 = 0;
              v17 = 4;
LABEL_21:
              self->_state = v17;
              break;
            }

LABEL_36:
            v6 = 0;
            self->_failureCount = 0;
            *&v25 = -1;
            *(&v25 + 1) = -1;
            *&self->_currentFailureStartSample = v25;
            v17 = 1;
            goto LABEL_21;
          }

          v20 = [MPCAudioFailure singleSampleFailure:self->_dT / 1000.0 * currentFailureStartSample duration:?];
          singleSampleFailure = self->_singleSampleFailure;
          self->_singleSampleFailure = v20;
          goto LABEL_30;
        }
      }

LABEL_34:
      v6 = 0;
      break;
    case 3:
      [v4 time];
      if (v12 >= self->_limit)
      {
        v13 = self->_currentSample;
        if (v13 - self->_lastFailureSample <= 4)
        {
          v14 = self->_failureCount + 1;
          self->_lastFailureSample = v13;
          self->_failureCount = v14;
          goto LABEL_15;
        }
      }

      [v5 time];
      if (v22 < self->_limit && self->_currentSample - self->_lastFailureSample >= 5)
      {
        if (self->_multiSamplesFailure)
        {
          goto LABEL_31;
        }

        v23 = [MPCAudioFailure multiSamplesFailure:self->_dT / 1000.0 * self->_currentFailureStartSample duration:self->_dT / 1000.0 * self->_failureCount];
        singleSampleFailure = self->_multiSamplesFailure;
        self->_multiSamplesFailure = v23;
LABEL_30:

LABEL_31:
        if (!self->_singleSampleFailure)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      goto LABEL_34;
    case 4:
      [v4 time];
      v6 = v8 > self->_limit;
      break;
  }

LABEL_35:

  return v6;
}

- (MPCFirstFailureDetector)initWithSamplingTime:(double)a3 renderingLimit:(double)a4
{
  v7.receiver = self;
  v7.super_class = MPCFirstFailureDetector;
  result = [(MPCFirstFailureDetector *)&v7 init];
  if (result)
  {
    result->_dT = a3;
    result->_limit = a4;
    result->_currentFailureStartSample = -1;
  }

  return result;
}

@end