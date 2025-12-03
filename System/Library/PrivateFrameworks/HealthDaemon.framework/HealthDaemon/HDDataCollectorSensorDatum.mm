@interface HDDataCollectorSensorDatum
- (BOOL)isEqual:(id)equal;
- (HDDataCollectorSensorDatum)initWithCoder:(id)coder;
- (HDDataCollectorSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContext:(id)context;
- (HDDataCollectorSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContextProvider:(id)provider;
- (NSData)resumeContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDataCollectorSensorDatum

- (NSData)resumeContext
{
  resumeContextProvider = self->_resumeContextProvider;
  if (resumeContextProvider)
  {
    v4 = resumeContextProvider[2](resumeContextProvider, a2);
  }

  else
  {
    v4 = self->_resumeContext;
  }

  return v4;
}

- (HDDataCollectorSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContext:(id)context
{
  identifierCopy = identifier;
  intervalCopy = interval;
  contextCopy = context;
  if (!intervalCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:687 description:{@"Invalid parameter not satisfying: %@", @"dateInterval != nil"}];
  }

  v17.receiver = self;
  v17.super_class = HDDataCollectorSensorDatum;
  v13 = [(HDDataCollectorSensorDatum *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_datumIdentifier, identifier);
    objc_storeStrong(&v14->_dateInterval, interval);
    objc_storeStrong(&v14->_resumeContext, context);
  }

  return v14;
}

- (HDDataCollectorSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContextProvider:(id)provider
{
  providerCopy = provider;
  v9 = [(HDDataCollectorSensorDatum *)self initWithIdentifier:identifier dateInterval:interval resumeContext:0];
  if (v9)
  {
    v10 = [providerCopy copy];
    resumeContextProvider = v9->_resumeContextProvider;
    v9->_resumeContextProvider = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  datumIdentifier = self->_datumIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:datumIdentifier forKey:@"HDDCR_id"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"HDDCR_ts"];
  resumeContext = [(HDDataCollectorSensorDatum *)self resumeContext];
  [coderCopy encodeObject:resumeContext forKey:@"HDDCR_ctx"];
}

- (HDDataCollectorSensorDatum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HDDataCollectorSensorDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v14 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_id"];
  datumIdentifier = v5->_datumIdentifier;
  v5->_datumIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_ts"];
  dateInterval = v5->_dateInterval;
  v5->_dateInterval = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_ctx"];
  resumeContext = v5->_resumeContext;
  v5->_resumeContext = v10;

  if (!v5->_datumIdentifier)
  {
    goto LABEL_5;
  }

  if (v5->_dateInterval)
  {
LABEL_4:
    v12 = v5;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_datumIdentifier isEqual:equalCopy[1]])
  {
    startDate = [(NSDateInterval *)self->_dateInterval startDate];
    startDate2 = [equalCopy[2] startDate];
    if ([startDate isEqual:startDate2] && (-[NSDateInterval duration](self->_dateInterval, "duration"), v8 = v7, objc_msgSend(equalCopy[2], "duration"), vabdd_f64(v8, v9) <= 0.00000005))
    {
      resumeContext = [(HDDataCollectorSensorDatum *)self resumeContext];
      resumeContext2 = [equalCopy resumeContext];
      if (resumeContext == resumeContext2)
      {
        v10 = 1;
      }

      else
      {
        resumeContext3 = [equalCopy resumeContext];
        if (resumeContext3)
        {
          resumeContext4 = [(HDDataCollectorSensorDatum *)self resumeContext];
          resumeContext5 = [equalCopy resumeContext];
          v10 = [resumeContext4 isEqual:resumeContext5];
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end