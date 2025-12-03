@interface _DPJSONSegment
- (_DPJSONSegment)initWithKey:(id)key serverAlgorithmString:(id)string parameterDictionary:(id)dictionary records:(id)records;
- (id)fixDoubleValuesInDictionary:(id)dictionary;
- (id)jsonSegmentString;
- (id)parameterStringFrom:(id)from;
@end

@implementation _DPJSONSegment

- (_DPJSONSegment)initWithKey:(id)key serverAlgorithmString:(id)string parameterDictionary:(id)dictionary records:(id)records
{
  keyCopy = key;
  stringCopy = string;
  dictionaryCopy = dictionary;
  recordsCopy = records;
  v18.receiver = self;
  v18.super_class = _DPJSONSegment;
  v15 = [(_DPJSONSegment *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_key, key);
    objc_storeStrong(&v16->_serverAlgorithmString, string);
    objc_storeStrong(&v16->_records, records);
    objc_storeStrong(&v16->_parameterDictionary, dictionary);
  }

  return v16;
}

- (id)parameterStringFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy && ([fromCopy isEqualToDictionary:MEMORY[0x277CBEC10]] & 1) == 0)
  {
    v7 = [(_DPJSONSegment *)self fixDoubleValuesInDictionary:v5];
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:0];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fixDoubleValuesInDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v17}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 doubleValue];
          if (floor(v12) != v12)
          {
            v13 = [MEMORY[0x277CCA980] numberWithDouble:?];
            [v4 setObject:v13 forKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)jsonSegmentString
{
  context = objc_autoreleasePoolPush();
  v3 = [(_DPJSONSegment *)self parameterStringFrom:self->_parameterDictionary];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"{\nalgorithm: %@, \nkey: %@, \n", self->_serverAlgorithmString, self->_key];
  v5 = v4;
  if (v3)
  {
    [v4 appendFormat:@"parameters: %@, \n", v3];
  }

  [v5 appendString:@"records: [\n"];
  v6 = [&stru_2839671C8 mutableCopy];
  if ([(NSArray *)self->_records count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [(NSArray *)self->_records objectAtIndexedSubscript:v7];
      jsonString = [v9 jsonString];
      [v6 appendString:jsonString];

      if (v7 >= [(NSArray *)self->_records count]- 1)
      {
        v11 = @"\n";
      }

      else
      {
        v11 = @",\n";
      }

      [v6 appendString:v11];

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while (v7 < [(NSArray *)self->_records count]);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v6, @"]\n}"];

  objc_autoreleasePoolPop(context);

  return v12;
}

@end