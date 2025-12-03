@interface MTPerfBaseMeasurement
- (MTPerfBaseMeasurement)initWithMeasurementTransformer:(id)transformer eventData:(id)data;
- (MTPerfBaseMeasurementTransformation)measurementTransformer;
- (NSArray)additionalFields;
- (NSArray)eventData;
- (id)getAdditionalData;
- (id)metricsData;
- (id)record;
- (void)addFields:(id)fields;
@end

@implementation MTPerfBaseMeasurement

- (NSArray)additionalFields
{
  v2 = [(NSMutableArray *)self->_additionalData copy];

  return v2;
}

- (NSArray)eventData
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)self->_eventData count])
  {
    [array addObjectsFromArray:self->_eventData];
  }

  timestamps = [(MTPerfBaseMeasurement *)self timestamps];
  v5 = [timestamps count];

  if (v5)
  {
    timestamps2 = [(MTPerfBaseMeasurement *)self timestamps];
    v7 = [timestamps2 copy];
    [array addObject:v7];
  }

  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  v9 = [measurementSpecificData count];

  if (v9)
  {
    measurementSpecificData2 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
    v11 = [measurementSpecificData2 copy];
    [array addObject:v11];
  }

  v12 = [array copy];

  return v12;
}

- (MTPerfBaseMeasurement)initWithMeasurementTransformer:(id)transformer eventData:(id)data
{
  transformerCopy = transformer;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = MTPerfBaseMeasurement;
  v8 = [(MTPerfBaseMeasurement *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_measurementTransformer, transformerCopy);
    mt_deepCopy = [dataCopy mt_deepCopy];
    eventData = v9->_eventData;
    v9->_eventData = mt_deepCopy;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    timestamps = v9->_timestamps;
    v9->_timestamps = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    measurementSpecificData = v9->_measurementSpecificData;
    v9->_measurementSpecificData = dictionary2;
  }

  return v9;
}

- (void)addFields:(id)fields
{
  fieldsCopy = fields;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getAdditionalData = [(MTPerfBaseMeasurement *)selfCopy getAdditionalData];
  v12 = &v13;
  v7 = fieldsCopy;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [getAdditionalData addObjectsFromArray:v9];
      }

      else
      {
        [getAdditionalData addObject:v9];
      }

      v10 = v12++;
      v11 = *v10;

      v9 = v11;
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
}

- (id)record
{
  metricsData = [(MTPerfBaseMeasurement *)self metricsData];
  recordEvent = [metricsData recordEvent];

  return recordEvent;
}

- (id)metricsData
{
  measurementTransformer = [(MTPerfBaseMeasurement *)self measurementTransformer];
  v4 = [measurementTransformer metricsDataWithPerfMeasurement:self];

  [v4 setAnonymous:1];

  return v4;
}

- (id)getAdditionalData
{
  additionalData = self->_additionalData;
  if (!additionalData)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_additionalData;
    self->_additionalData = array;

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