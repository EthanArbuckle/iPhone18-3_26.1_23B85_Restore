@interface HAWristTemperatureEnumerator
- (HAWristTemperatureEnumerator)initWithData:(id)a3 withSessionStartDate:(id)a4 numWristTemperatures:(unint64_t)a5 firstSampleOffset:(unint64_t)a6;
- (id)allObjects;
- (id)convertPackedTemperatureSubsample;
- (id)nextObject;
@end

@implementation HAWristTemperatureEnumerator

- (HAWristTemperatureEnumerator)initWithData:(id)a3 withSessionStartDate:(id)a4 numWristTemperatures:(unint64_t)a5 firstSampleOffset:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = HAWristTemperatureEnumerator;
  v13 = [(HAWristTemperatureEnumerator *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_data, a3);
    objc_storeStrong(&v14->_sessionStartDate, a4);
    v14->_numWristTemperatures = a5;
    v14->_firstSampleOffset = a6;
    v15 = v14;
  }

  return v14;
}

- (id)convertPackedTemperatureSubsample
{
  v3 = [(HAWristTemperatureEnumerator *)self data];
  [v3 getBytes:v26 range:{-[HAWristTemperatureEnumerator firstSampleOffset](self, "firstSampleOffset") + 21 * -[HAWristTemperatureEnumerator enumerationIndex](self, "enumerationIndex"), 21}];

  v4 = [(HAWristTemperatureEnumerator *)self sessionStartDate];
  LODWORD(v5) = v26[0];
  v6 = [v4 dateByAddingTimeInterval:v5 / 1000.0];

  [(HAWristTemperatureEnumerator *)self setEnumerationIndex:[(HAWristTemperatureEnumerator *)self enumerationIndex]+ 1];
  v7 = objc_alloc(MEMORY[0x277CCAB10]);
  v8 = *&v26[1];
  v9 = [MEMORY[0x277CCAE48] celsius];
  v10 = [v7 initWithDoubleValue:v9 unit:v8];

  v11 = objc_alloc(MEMORY[0x277CCAB10]);
  v12 = *&v26[2];
  v13 = [MEMORY[0x277CCAE48] celsius];
  v14 = [v11 initWithDoubleValue:v13 unit:v12];

  v15 = objc_alloc(MEMORY[0x277CCAB10]);
  v16 = *&v26[3];
  v17 = [MEMORY[0x277CCAE48] celsius];
  v18 = [v15 initWithDoubleValue:v17 unit:v16];

  v19 = v27;
  v20 = objc_alloc(MEMORY[0x277CCAB10]);
  v21 = *&v26[4];
  v22 = [MEMORY[0x277CCAE48] celsius];
  v23 = [v20 initWithDoubleValue:v22 unit:v21];

  v24 = [[HAWristTemperature alloc] initWithComputedTemperatureErrorEstimate:v23 computedTemperature:v10 sensor1Temperature:v14 sensor2Temperature:v18 dataValidity:v19 & 7 timestamp:v6];

  return v24;
}

- (id)nextObject
{
  v3 = [(HAWristTemperatureEnumerator *)self enumerationIndex];
  if (v3 >= [(HAWristTemperatureEnumerator *)self numWristTemperatures])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HAWristTemperatureEnumerator *)self convertPackedTemperatureSubsample];
  }

  return v4;
}

- (id)allObjects
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[HAWristTemperatureEnumerator numWristTemperatures](self, "numWristTemperatures") - -[HAWristTemperatureEnumerator enumerationIndex](self, "enumerationIndex")}];
  while (1)
  {
    v4 = [(HAWristTemperatureEnumerator *)self enumerationIndex];
    if (v4 >= [(HAWristTemperatureEnumerator *)self numWristTemperatures])
    {
      break;
    }

    v5 = [(HAWristTemperatureEnumerator *)self convertPackedTemperatureSubsample];
    [v3 addObject:v5];
  }

  return v3;
}

@end