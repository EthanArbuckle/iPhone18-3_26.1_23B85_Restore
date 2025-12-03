@interface CKOperationStateTimeRange
- (CKOperationStateTimeRange)initWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration;
- (double)absoluteStart;
- (double)absoluteStop;
- (double)executing;
- (double)queueing;
- (double)relativeStart;
- (id)CKPropertiesDescription;
- (int64_t)compareStartTime:(id)time;
- (int64_t)compareStopTime:(id)time;
@end

@implementation CKOperationStateTimeRange

- (double)absoluteStop
{
  objc_msgSend_absoluteStart(self, a2, v2);
  v5 = v4;
  objc_msgSend_duration(self, v6, v7);
  return v5 + v8;
}

- (double)absoluteStart
{
  v3 = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CKOperationStateTimeRange)initWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = CKOperationStateTimeRange;
  v10 = [(CKOperationStateTimeRange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_operationState = state;
    objc_storeStrong(&v10->_startDate, date);
    v11->_duration = duration;
  }

  return v11;
}

- (double)queueing
{
  result = 0.0;
  if (!self->_operationState)
  {
    return self->_duration;
  }

  return result;
}

- (double)executing
{
  result = 0.0;
  if (self->_operationState == 1)
  {
    return self->_duration;
  }

  return result;
}

- (int64_t)compareStartTime:(id)time
{
  timeCopy = time;
  objc_msgSend_absoluteStart(self, v5, v6);
  v8 = v7;
  objc_msgSend_absoluteStart(timeCopy, v9, v10);
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
  }
}

- (int64_t)compareStopTime:(id)time
{
  timeCopy = time;
  objc_msgSend_absoluteStop(self, v5, v6);
  v8 = v7;
  objc_msgSend_absoluteStop(timeCopy, v9, v10);
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
  }
}

- (double)relativeStart
{
  objc_msgSend_absoluteStart(self, a2, v2);
  v4 = v3;
  Current = *&qword_27D71F840;
  if (*&qword_27D71F840 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    qword_27D71F840 = *&Current;
  }

  return v4 - Current;
}

- (id)CKPropertiesDescription
{
  v4 = objc_msgSend_operationState(self, a2, v2);
  if (v4 > 2)
  {
    v7 = @"(UNKNOWN)";
  }

  else
  {
    v7 = off_27854B658[v4];
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_startDate(self, v5, v6);
  objc_msgSend_duration(self, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v8, v12, @"startDate=%@, duration=%0.3f, state=%@", v9, v13, v7);

  return v14;
}

@end