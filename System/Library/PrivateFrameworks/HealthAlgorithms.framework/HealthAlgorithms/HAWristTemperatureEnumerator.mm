@interface HAWristTemperatureEnumerator
- (HAWristTemperatureEnumerator)initWithData:(id)data withSessionStartDate:(id)date numWristTemperatures:(unint64_t)temperatures firstSampleOffset:(unint64_t)offset;
- (id)allObjects;
- (id)convertPackedTemperatureSubsample;
- (id)nextObject;
@end

@implementation HAWristTemperatureEnumerator

- (HAWristTemperatureEnumerator)initWithData:(id)data withSessionStartDate:(id)date numWristTemperatures:(unint64_t)temperatures firstSampleOffset:(unint64_t)offset
{
  dataCopy = data;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = HAWristTemperatureEnumerator;
  v13 = [(HAWristTemperatureEnumerator *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_data, data);
    objc_storeStrong(&v14->_sessionStartDate, date);
    v14->_numWristTemperatures = temperatures;
    v14->_firstSampleOffset = offset;
    v15 = v14;
  }

  return v14;
}

- (id)convertPackedTemperatureSubsample
{
  data = [(HAWristTemperatureEnumerator *)self data];
  [data getBytes:v26 range:{-[HAWristTemperatureEnumerator firstSampleOffset](self, "firstSampleOffset") + 21 * -[HAWristTemperatureEnumerator enumerationIndex](self, "enumerationIndex"), 21}];

  sessionStartDate = [(HAWristTemperatureEnumerator *)self sessionStartDate];
  LODWORD(v5) = v26[0];
  v6 = [sessionStartDate dateByAddingTimeInterval:v5 / 1000.0];

  [(HAWristTemperatureEnumerator *)self setEnumerationIndex:[(HAWristTemperatureEnumerator *)self enumerationIndex]+ 1];
  v7 = objc_alloc(MEMORY[0x277CCAB10]);
  v8 = *&v26[1];
  celsius = [MEMORY[0x277CCAE48] celsius];
  v10 = [v7 initWithDoubleValue:celsius unit:v8];

  v11 = objc_alloc(MEMORY[0x277CCAB10]);
  v12 = *&v26[2];
  celsius2 = [MEMORY[0x277CCAE48] celsius];
  v14 = [v11 initWithDoubleValue:celsius2 unit:v12];

  v15 = objc_alloc(MEMORY[0x277CCAB10]);
  v16 = *&v26[3];
  celsius3 = [MEMORY[0x277CCAE48] celsius];
  v18 = [v15 initWithDoubleValue:celsius3 unit:v16];

  v19 = v27;
  v20 = objc_alloc(MEMORY[0x277CCAB10]);
  v21 = *&v26[4];
  celsius4 = [MEMORY[0x277CCAE48] celsius];
  v23 = [v20 initWithDoubleValue:celsius4 unit:v21];

  v24 = [[HAWristTemperature alloc] initWithComputedTemperatureErrorEstimate:v23 computedTemperature:v10 sensor1Temperature:v14 sensor2Temperature:v18 dataValidity:v19 & 7 timestamp:v6];

  return v24;
}

- (id)nextObject
{
  enumerationIndex = [(HAWristTemperatureEnumerator *)self enumerationIndex];
  if (enumerationIndex >= [(HAWristTemperatureEnumerator *)self numWristTemperatures])
  {
    convertPackedTemperatureSubsample = 0;
  }

  else
  {
    convertPackedTemperatureSubsample = [(HAWristTemperatureEnumerator *)self convertPackedTemperatureSubsample];
  }

  return convertPackedTemperatureSubsample;
}

- (id)allObjects
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[HAWristTemperatureEnumerator numWristTemperatures](self, "numWristTemperatures") - -[HAWristTemperatureEnumerator enumerationIndex](self, "enumerationIndex")}];
  while (1)
  {
    enumerationIndex = [(HAWristTemperatureEnumerator *)self enumerationIndex];
    if (enumerationIndex >= [(HAWristTemperatureEnumerator *)self numWristTemperatures])
    {
      break;
    }

    convertPackedTemperatureSubsample = [(HAWristTemperatureEnumerator *)self convertPackedTemperatureSubsample];
    [v3 addObject:convertPackedTemperatureSubsample];
  }

  return v3;
}

@end