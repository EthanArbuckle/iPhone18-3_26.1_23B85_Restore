@interface RTPredictedContextRequest
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextRequest)initWithCoder:(id)a3;
- (RTPredictedContextRequest)initWithIdentifier:(id)a3 predictedContextResult:(id)a4 requestStartDate:(id)a5 requestEndDate:(id)a6 inferenceTriggerReason:(int64_t)a7 memoryFootprintStart:(double)a8 memoryFootprintEnd:(double)a9 clientCount:(unint64_t)a10;
- (id)description;
- (id)inferenceTriggerReasonToString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextRequest

- (RTPredictedContextRequest)initWithIdentifier:(id)a3 predictedContextResult:(id)a4 requestStartDate:(id)a5 requestEndDate:(id)a6 inferenceTriggerReason:(int64_t)a7 memoryFootprintStart:(double)a8 memoryFootprintEnd:(double)a9 clientCount:(unint64_t)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v26.receiver = self;
  v26.super_class = RTPredictedContextRequest;
  v22 = [(RTPredictedContextRequest *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v23->_predictedContextResult, a4);
    objc_storeStrong(&v23->_requestStartDate, a5);
    objc_storeStrong(&v23->_requestEndDate, a6);
    v23->_memoryFootprintStart = a8;
    v23->_memoryFootprintEnd = a9;
    v23->_inferenceTriggerReason = a7;
    v23->_clientCount = a10;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_predictedContextResult forKey:@"predictedContextResult"];
  [v5 encodeObject:self->_requestStartDate forKey:@"requestStartDate"];
  [v5 encodeObject:self->_requestEndDate forKey:@"requestEndDate"];
  [v5 encodeInteger:self->_inferenceTriggerReason forKey:@"inferenceTriggerReason"];
  [v5 encodeDouble:@"memoryFootprintStart" forKey:self->_memoryFootprintStart];
  [v5 encodeDouble:@"memoryFootprintEnd" forKey:self->_memoryFootprintEnd];
  [v5 encodeInteger:self->_clientCount forKey:@"memoryFootprintEnd"];
}

- (RTPredictedContextRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictedContextResult"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestStartDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestEndDate"];
  v9 = [v4 decodeIntegerForKey:@"inferenceTriggerReason"];
  [v4 decodeDoubleForKey:@"memoryFootprintStart"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"memoryFootprintEnd"];
  v13 = v12;
  v14 = [v4 decodeIntegerForKey:@"clientCount"];

  v15 = [(RTPredictedContextRequest *)self initWithIdentifier:v5 predictedContextResult:v6 requestStartDate:v7 requestEndDate:v8 inferenceTriggerReason:v9 memoryFootprintStart:v14 memoryFootprintEnd:v11 clientCount:v13];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(RTPredictedContextRequest *)self identifier];
        if (v8 || ([(RTPredictedContextRequest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(RTPredictedContextRequest *)self identifier];
          v10 = [(RTPredictedContextRequest *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)inferenceTriggerReasonToString
{
  inferenceTriggerReason = self->_inferenceTriggerReason;
  if (inferenceTriggerReason >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Reason (%ld)", inferenceTriggerReason];
  }

  else
  {
    v4 = off_1E80B4D00[inferenceTriggerReason];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  predictedContextResult = self->_predictedContextResult;
  v6 = [(NSDate *)self->_requestStartDate stringFromDate];
  v7 = [(NSDate *)self->_requestEndDate stringFromDate];
  [(NSDate *)self->_requestEndDate timeIntervalSinceDate:self->_requestStartDate];
  v9 = v8;
  v10 = [(RTPredictedContextRequest *)self inferenceTriggerReasonToString];
  v11 = [v3 stringWithFormat:@"identifier, %@, predictedContextResult, %@, requestStartDate, %@, requestEndDate, %@, latency, %.2f, inferenceTriggerReason, %@, memoryFootprintStart, %.4f MB, memoryFootprintEnd, %.4f MB, clientCount, %lu", identifier, predictedContextResult, v6, v7, v9, v10, *&self->_memoryFootprintStart, *&self->_memoryFootprintEnd, self->_clientCount];

  return v11;
}

@end