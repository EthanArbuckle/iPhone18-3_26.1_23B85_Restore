@interface MTPerfBaseMeasurement
- (MTPerfBaseMeasurement)initWithMeasurementTransformer:(id)a3 eventData:(id)a4;
- (MTPerfBaseMeasurementTransformation)measurementTransformer;
- (NSArray)additionalFields;
- (NSArray)eventData;
- (id)getAdditionalData;
- (id)metricsData;
- (id)record;
- (void)addFields:(id)a3;
@end

@implementation MTPerfBaseMeasurement

- (NSArray)additionalFields
{
  v2 = [(NSMutableArray *)self->_additionalData copy];

  return v2;
}

- (NSArray)eventData
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)self->_eventData count])
  {
    [v3 addObjectsFromArray:self->_eventData];
  }

  v4 = [(MTPerfBaseMeasurement *)self timestamps];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MTPerfBaseMeasurement *)self timestamps];
    v7 = [v6 copy];
    [v3 addObject:v7];
  }

  v8 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
    v11 = [v10 copy];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (MTPerfBaseMeasurement)initWithMeasurementTransformer:(id)a3 eventData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MTPerfBaseMeasurement;
  v8 = [(MTPerfBaseMeasurement *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_measurementTransformer, v6);
    v10 = [v7 mt_deepCopy];
    eventData = v9->_eventData;
    v9->_eventData = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    timestamps = v9->_timestamps;
    v9->_timestamps = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    measurementSpecificData = v9->_measurementSpecificData;
    v9->_measurementSpecificData = v14;
  }

  return v9;
}

- (void)addFields:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTPerfBaseMeasurement *)v5 getAdditionalData];
  v12 = &v13;
  v7 = v4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v9];
      }

      else
      {
        [v6 addObject:v9];
      }

      v10 = v12++;
      v11 = *v10;

      v9 = v11;
    }

    while (v11);
  }

  objc_sync_exit(v5);
}

- (id)record
{
  v2 = [(MTPerfBaseMeasurement *)self metricsData];
  v3 = [v2 recordEvent];

  return v3;
}

- (id)metricsData
{
  v3 = [(MTPerfBaseMeasurement *)self measurementTransformer];
  v4 = [v3 metricsDataWithPerfMeasurement:self];

  [v4 setAnonymous:1];

  return v4;
}

- (id)getAdditionalData
{
  additionalData = self->_additionalData;
  if (!additionalData)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_additionalData;
    self->_additionalData = v4;

    additionalData = self->_additionalData;
  }

  return additionalData;
}

- (MTPerfBaseMeasurementTransformation)measurementTransformer
{
  WeakRetained = objc_loadWeakRetained(&self->_measurementTransformer);

  return WeakRetained;
}

@end