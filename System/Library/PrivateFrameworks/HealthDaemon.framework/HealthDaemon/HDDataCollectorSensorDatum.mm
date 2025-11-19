@interface HDDataCollectorSensorDatum
- (BOOL)isEqual:(id)a3;
- (HDDataCollectorSensorDatum)initWithCoder:(id)a3;
- (HDDataCollectorSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContext:(id)a5;
- (HDDataCollectorSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContextProvider:(id)a5;
- (NSData)resumeContext;
- (void)encodeWithCoder:(id)a3;
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

- (HDDataCollectorSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContext:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:687 description:{@"Invalid parameter not satisfying: %@", @"dateInterval != nil"}];
  }

  v17.receiver = self;
  v17.super_class = HDDataCollectorSensorDatum;
  v13 = [(HDDataCollectorSensorDatum *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_datumIdentifier, a3);
    objc_storeStrong(&v14->_dateInterval, a4);
    objc_storeStrong(&v14->_resumeContext, a5);
  }

  return v14;
}

- (HDDataCollectorSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContextProvider:(id)a5
{
  v8 = a5;
  v9 = [(HDDataCollectorSensorDatum *)self initWithIdentifier:a3 dateInterval:a4 resumeContext:0];
  if (v9)
  {
    v10 = [v8 copy];
    resumeContextProvider = v9->_resumeContextProvider;
    v9->_resumeContextProvider = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  datumIdentifier = self->_datumIdentifier;
  v5 = a3;
  [v5 encodeObject:datumIdentifier forKey:@"HDDCR_id"];
  [v5 encodeObject:self->_dateInterval forKey:@"HDDCR_ts"];
  v6 = [(HDDataCollectorSensorDatum *)self resumeContext];
  [v5 encodeObject:v6 forKey:@"HDDCR_ctx"];
}

- (HDDataCollectorSensorDatum)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDDataCollectorSensorDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v14 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_id"];
  datumIdentifier = v5->_datumIdentifier;
  v5->_datumIdentifier = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_ts"];
  dateInterval = v5->_dateInterval;
  v5->_dateInterval = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HDDCR_ctx"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_datumIdentifier isEqual:v4[1]])
  {
    v5 = [(NSDateInterval *)self->_dateInterval startDate];
    v6 = [v4[2] startDate];
    if ([v5 isEqual:v6] && (-[NSDateInterval duration](self->_dateInterval, "duration"), v8 = v7, objc_msgSend(v4[2], "duration"), vabdd_f64(v8, v9) <= 0.00000005))
    {
      v11 = [(HDDataCollectorSensorDatum *)self resumeContext];
      v12 = [v4 resumeContext];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [v4 resumeContext];
        if (v13)
        {
          v14 = [(HDDataCollectorSensorDatum *)self resumeContext];
          v15 = [v4 resumeContext];
          v10 = [v14 isEqual:v15];
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