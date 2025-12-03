@interface RTPredictedContextRequest
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextRequest)initWithCoder:(id)coder;
- (RTPredictedContextRequest)initWithIdentifier:(id)identifier predictedContextResult:(id)result requestStartDate:(id)date requestEndDate:(id)endDate inferenceTriggerReason:(int64_t)reason memoryFootprintStart:(double)start memoryFootprintEnd:(double)end clientCount:(unint64_t)self0;
- (id)description;
- (id)inferenceTriggerReasonToString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextRequest

- (RTPredictedContextRequest)initWithIdentifier:(id)identifier predictedContextResult:(id)result requestStartDate:(id)date requestEndDate:(id)endDate inferenceTriggerReason:(int64_t)reason memoryFootprintStart:(double)start memoryFootprintEnd:(double)end clientCount:(unint64_t)self0
{
  identifierCopy = identifier;
  resultCopy = result;
  dateCopy = date;
  endDateCopy = endDate;
  v26.receiver = self;
  v26.super_class = RTPredictedContextRequest;
  v22 = [(RTPredictedContextRequest *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_predictedContextResult, result);
    objc_storeStrong(&v23->_requestStartDate, date);
    objc_storeStrong(&v23->_requestEndDate, endDate);
    v23->_memoryFootprintStart = start;
    v23->_memoryFootprintEnd = end;
    v23->_inferenceTriggerReason = reason;
    v23->_clientCount = count;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_predictedContextResult forKey:@"predictedContextResult"];
  [coderCopy encodeObject:self->_requestStartDate forKey:@"requestStartDate"];
  [coderCopy encodeObject:self->_requestEndDate forKey:@"requestEndDate"];
  [coderCopy encodeInteger:self->_inferenceTriggerReason forKey:@"inferenceTriggerReason"];
  [coderCopy encodeDouble:@"memoryFootprintStart" forKey:self->_memoryFootprintStart];
  [coderCopy encodeDouble:@"memoryFootprintEnd" forKey:self->_memoryFootprintEnd];
  [coderCopy encodeInteger:self->_clientCount forKey:@"memoryFootprintEnd"];
}

- (RTPredictedContextRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictedContextResult"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestStartDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestEndDate"];
  v9 = [coderCopy decodeIntegerForKey:@"inferenceTriggerReason"];
  [coderCopy decodeDoubleForKey:@"memoryFootprintStart"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"memoryFootprintEnd"];
  v13 = v12;
  v14 = [coderCopy decodeIntegerForKey:@"clientCount"];

  v15 = [(RTPredictedContextRequest *)self initWithIdentifier:v5 predictedContextResult:v6 requestStartDate:v7 requestEndDate:v8 inferenceTriggerReason:v9 memoryFootprintStart:v14 memoryFootprintEnd:v11 clientCount:v13];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(RTPredictedContextRequest *)self identifier];
        if (identifier || ([(RTPredictedContextRequest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTPredictedContextRequest *)self identifier];
          identifier3 = [(RTPredictedContextRequest *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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
    inferenceTriggerReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Reason (%ld)", inferenceTriggerReason];
  }

  else
  {
    inferenceTriggerReason = off_1E80B4D00[inferenceTriggerReason];
  }

  return inferenceTriggerReason;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  predictedContextResult = self->_predictedContextResult;
  stringFromDate = [(NSDate *)self->_requestStartDate stringFromDate];
  stringFromDate2 = [(NSDate *)self->_requestEndDate stringFromDate];
  [(NSDate *)self->_requestEndDate timeIntervalSinceDate:self->_requestStartDate];
  v9 = v8;
  inferenceTriggerReasonToString = [(RTPredictedContextRequest *)self inferenceTriggerReasonToString];
  v11 = [v3 stringWithFormat:@"identifier, %@, predictedContextResult, %@, requestStartDate, %@, requestEndDate, %@, latency, %.2f, inferenceTriggerReason, %@, memoryFootprintStart, %.4f MB, memoryFootprintEnd, %.4f MB, clientCount, %lu", identifier, predictedContextResult, stringFromDate, stringFromDate2, v9, inferenceTriggerReasonToString, *&self->_memoryFootprintStart, *&self->_memoryFootprintEnd, self->_clientCount];

  return v11;
}

@end