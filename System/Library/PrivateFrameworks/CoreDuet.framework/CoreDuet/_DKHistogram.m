@interface _DKHistogram
- (BOOL)isEqual:(id)a3;
- (_DKHistogram)init;
- (_DKHistogram)initWithCoder:(id)a3;
- (_DKHistogram)initWithHistogram:(id)a3;
- (_DKHistogram)initWithManagedObject:(id)a3;
- (_DKHistogram)initWithValues:(id)a3;
- (double)countForValueDouble:(id)a3;
- (double)relativeFrequencyForValue:(id)a3;
- (id)description;
- (id)insertInManagedObjectContext:(id)a3;
- (unint64_t)countForValue:(id)a3;
- (void)_addPropertiesFrom:(id)a3;
- (void)addHistogram:(id)a3;
- (void)addHistogram:(id)a3 decayingExistingCounts:(double)a4;
- (void)addValue:(id)a3;
- (void)addValue:(id)a3 withCount:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)subtractHistogram:(id)a3;
- (void)subtractValue:(id)a3;
@end

@implementation _DKHistogram

- (_DKHistogram)init
{
  v8.receiver = self;
  v8.super_class = _DKHistogram;
  v2 = [(_DKHistogram *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    histogram = v2->_histogram;
    v2->_histogram = v3;

    v5 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v5;

    v2->_countOverAllValues = 0;
  }

  return v2;
}

- (_DKHistogram)initWithValues:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DKHistogram *)self init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)v5->_histogram objectForKeyedSubscript:v11, v17];
          v13 = [v12 unsignedIntegerValue];

          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 + 1];
          [(NSMutableDictionary *)v5->_histogram setObject:v14 forKeyedSubscript:v11];

          ++v5->_countOverAllValues;
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_DKHistogram)initWithHistogram:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DKHistogram *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_histogram addEntriesFromDictionary:v4];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6->_histogram;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSMutableDictionary *)v6->_histogram objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11), v15];
          v6->_countOverAllValues += [v12 unsignedIntegerValue];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)countForValue:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (double)countForValueDouble:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)relativeFrequencyForValue:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:a3];
  [v4 doubleValue];
  v6 = v5 / self->_countOverAllValues;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v17 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    histogram = self->_histogram;
    v8 = [(_DKHistogram *)v6 histogram];
    if ([(NSMutableDictionary *)histogram isEqualToDictionary:v8])
    {
      identifier = self->_identifier;
      v10 = [(_DKHistogram *)v6 identifier];
      if ([(NSUUID *)identifier isEqual:v10])
      {
        deviceIdentifiers = self->_deviceIdentifiers;
        v12 = [(_DKHistogram *)v6 deviceIdentifiers];
        if ([(NSArray *)deviceIdentifiers isEqualToArray:v12])
        {
          interval = self->_interval;
          v14 = [(_DKHistogram *)v6 interval];
          if ([(NSDateInterval *)interval isEqualToDateInterval:v14])
          {
            stream = self->_stream;
            v16 = [(_DKHistogram *)v6 stream];
            v17 = [(_DKEventStream *)stream isEqual:v16];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addValue:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v8];
  v6 = [v5 unsignedIntegerValue];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1];
  [(NSMutableDictionary *)self->_histogram setObject:v7 forKeyedSubscript:v8];

  ++self->_countOverAllValues;
  objc_autoreleasePoolPop(v4);
}

- (void)addValue:(id)a3 withCount:(double)a4
{
  v11 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v11];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9 + a4];
  [(NSMutableDictionary *)self->_histogram setObject:v10 forKeyedSubscript:v11];

  ++self->_countOverAllValues;
  objc_autoreleasePoolPop(v6);
}

- (void)subtractValue:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v9];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v9];
    v7 = [v6 unsignedIntegerValue];

    if (v7 == 1)
    {
      [(NSMutableDictionary *)self->_histogram removeObjectForKey:v9];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 - 1];
      [(NSMutableDictionary *)self->_histogram setObject:v8 forKeyedSubscript:v9];
    }

    --self->_countOverAllValues;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_addPropertiesFrom:(id)a3
{
  v28 = a3;
  v4 = [(_DKHistogram *)self interval];
  v5 = [v4 startDate];
  v6 = [v28 interval];
  v7 = [v6 startDate];
  v8 = [v5 earlierDate:v7];

  v9 = [v28 interval];
  v10 = [v9 endDate];
  v11 = [(_DKHistogram *)self interval];
  v12 = [v11 endDate];
  v13 = [v10 laterDate:v12];

  if (v8 && v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v13];
  }

  else
  {
    v15 = [v28 interval];

    v16 = v28;
    if (!v15)
    {
      goto LABEL_7;
    }

    v14 = [v28 interval];
  }

  interval = self->_interval;
  self->_interval = v14;

  v16 = v28;
LABEL_7:
  v18 = [v16 identifier];
  identifier = self->_identifier;
  self->_identifier = v18;

  v20 = [v28 customIdentifier];
  customIdentifier = self->_customIdentifier;
  self->_customIdentifier = v20;

  deviceIdentifiers = self->_deviceIdentifiers;
  v23 = [v28 deviceIdentifiers];
  v24 = [(NSArray *)deviceIdentifiers arrayByAddingObjectsFromArray:v23];
  v25 = self->_deviceIdentifiers;
  self->_deviceIdentifiers = v24;

  v26 = [v28 stream];
  stream = self->_stream;
  self->_stream = v26;
}

- (void)addHistogram:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  [(_DKHistogram *)self _addPropertiesFrom:v4];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 histogram];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];
        [v11 doubleValue];
        v13 = v12;

        v14 = [v4 histogram];
        v15 = [v14 objectForKeyedSubscript:v10];
        [v15 doubleValue];
        v17 = v16;

        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13 + v17];
        [(NSMutableDictionary *)self->_histogram setObject:v18 forKeyedSubscript:v10];

        self->_countOverAllValues = (v17 + self->_countOverAllValues);
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)addHistogram:(id)a3 decayingExistingCounts:(double)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  [(_DKHistogram *)self _addPropertiesFrom:v6];
  v8 = [(NSMutableDictionary *)self->_histogram copy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke;
  v16[3] = &unk_1E7368EC0;
  v9 = v6;
  v20 = a4;
  v17 = v9;
  v18 = self;
  v19 = &v21;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
  v10 = [v9 histogram];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke_2;
  v12[3] = &unk_1E7368EE8;
  v11 = v8;
  v13 = v11;
  v14 = self;
  v15 = &v21;
  [v10 enumerateKeysAndObjectsUsingBlock:v12];

  self->_countOverAllValues = llround(v22[3]);
  _Block_object_dispose(&v21, 8);

  objc_autoreleasePoolPop(v7);
}

- (void)subtractHistogram:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_deviceIdentifiers];
  deviceIdentifiers = self->_deviceIdentifiers;
  self->_deviceIdentifiers = v5;

  v7 = self->_deviceIdentifiers;
  v8 = [v4 deviceIdentifiers];
  [(NSArray *)v7 removeObjectsInArray:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v4 histogram];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v14];
        v16 = [v15 unsignedIntegerValue];

        v17 = [v4 countForValue:v14];
        if (v16 <= v17)
        {
          [(NSMutableDictionary *)self->_histogram removeObjectForKey:v14];
        }

        else
        {
          v18 = v17;
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16 - v17];
          [(NSMutableDictionary *)self->_histogram setObject:v19 forKeyedSubscript:v14];

          v16 = v18;
        }

        self->_countOverAllValues -= v16;
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DKHistogram *)self stream];
  v7 = [(_DKHistogram *)self identifier];
  v8 = [(_DKHistogram *)self customIdentifier];
  v9 = [(_DKHistogram *)self interval];
  v10 = [(_DKHistogram *)self deviceIdentifiers];
  v11 = [(_DKHistogram *)self histogram];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKHistogram countOverAllValues](self, "countOverAllValues")}];
  v13 = [v3 stringWithFormat:@"%@:{stream=%@ identifier=%@; customIdentifier=%@, interval=%@; deviceIdentifiers=%@; histogram=%@; countOverAllValues=%@}", v5, v6, v7, v8, v9, v10, v11, v12];;

  return v13;
}

- (_DKHistogram)initWithCoder:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v7 = [v4 setWithArray:v6];

  v8 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v10 = [v8 setWithArray:{v9, v21[0]}];

  v11 = [v5 decodeObjectOfClasses:v7 forKey:@"histogram"];
  v12 = [v5 decodeObjectOfClasses:v10 forKey:@"deviceIdentifiers"];
  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
  v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];

  v17 = [(_DKHistogram *)self initWithHistogram:v11];
  v18 = v17;
  if (v17)
  {
    [(_DKHistogram *)v17 setDeviceIdentifiers:v12];
    [(_DKHistogram *)v18 setInterval:v13];
    [(_DKHistogram *)v18 setStream:v14];
    [(_DKHistogram *)v18 setIdentifier:v15];
    [(_DKHistogram *)v18 setCustomIdentifier:v16];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  histogram = self->_histogram;
  v5 = a3;
  [v5 encodeObject:histogram forKey:@"histogram"];
  [v5 encodeObject:self->_deviceIdentifiers forKey:@"deviceIdentifiers"];
  [v5 encodeObject:self->_interval forKey:@"interval"];
  [v5 encodeObject:self->_stream forKey:@"stream"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
}

- (_DKHistogram)initWithManagedObject:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = _DKHistogram;
  v5 = [(_DKHistogram *)&v47 init];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = MEMORY[0x1E695DF90];
  v7 = [v4 value];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = v4;
  v9 = [v4 value];
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v44;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v44 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v43 + 1) + 8 * i);
      v16 = [v15 stringValue];

      if (v16)
      {
        v17 = [v15 stringValue];
      }

      else
      {
        v18 = [v15 integerValue];

        if (!v18)
        {
          v19 = +[_CDLogging knowledgeChannel];
          v4 = v42;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(_DKHistogram(CoreData) *)v42 initWithManagedObject:v19];
          }

          goto LABEL_25;
        }

        v17 = [v15 integerValue];
      }

      v19 = v17;
      v20 = [v15 count];

      if (!v20)
      {
        v23 = +[_CDLogging knowledgeChannel];
        v4 = v42;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(_DKHistogram(CoreData) *)v42 initWithManagedObject:v23];
        }

LABEL_25:
        v39 = 0;
        goto LABEL_26;
      }

      v21 = [v15 count];
      [v8 setObject:v21 forKeyedSubscript:v19];

      v22 = [v15 count];
      v12 += [v22 unsignedIntegerValue];
    }

    v11 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v4 = v42;
  v24 = [v42 streamTypeCode];
  v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKObjectType, "objectTypeWithTypeCode:", [v24 integerValue]);

  v26 = [v42 streamName];
  v27 = [_DKEventStream eventStreamWithName:v26 valueType:v25];

  v28 = objc_alloc(MEMORY[0x1E696AB80]);
  v29 = [v42 startDate];
  v30 = [v42 endDate];
  v31 = [v28 initWithStartDate:v29 endDate:v30];
  [(_DKHistogram *)v5 setInterval:v31];

  [(_DKHistogram *)v5 setHistogram:v8];
  v32 = [v42 deviceIdentifier];

  if (v32)
  {
    v33 = [v42 deviceIdentifier];
    v48 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [(_DKHistogram *)v5 setDeviceIdentifiers:v34];
  }

  [(_DKHistogram *)v5 setStream:v27];
  v35 = objc_alloc(MEMORY[0x1E696AFB0]);
  v36 = [v42 identifier];
  v37 = [v35 initWithUUIDString:v36];
  [(_DKHistogram *)v5 setIdentifier:v37];

  v38 = [v42 customIdentifier];
  [(_DKHistogram *)v5 setCustomIdentifier:v38];

  [(_DKHistogram *)v5 setCountOverAllValues:v12];
LABEL_22:
  v39 = v5;
LABEL_26:

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)insertInManagedObjectContext:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695D5B8];
  v6 = +[_DKHistogram entityName];
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:v4];

  v8 = [(_DKHistogram *)self interval];
  v9 = [v8 startDate];
  [v7 setStartDate:v9];

  v10 = [(_DKHistogram *)self interval];
  v11 = [v10 endDate];
  [v7 setEndDate:v11];

  v12 = [(_DKHistogram *)self identifier];
  v13 = [v12 UUIDString];
  [v7 setIdentifier:v13];

  v14 = [(_DKHistogram *)self customIdentifier];
  [v7 setCustomIdentifier:v14];

  v15 = [(_DKHistogram *)self stream];
  v16 = [v15 name];
  [v7 setStreamName:v16];

  v17 = MEMORY[0x1E696AD98];
  v18 = [(_DKHistogram *)self stream];
  v19 = [v18 eventValueType];
  v20 = [v17 numberWithInteger:{objc_msgSend(v19, "typeCode")}];
  [v7 setStreamTypeCode:v20];

  v21 = [(_DKHistogram *)self deviceIdentifiers];
  v22 = [v21 count];

  if (v22 <= 1)
  {
    v24 = [(_DKHistogram *)self deviceIdentifiers];
    v25 = [v24 firstObject];
    [v7 setDeviceIdentifier:v25];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = self;
    obj = [(_DKHistogram *)self histogram];
    v27 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          v31 = v7;
          if (*v41 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v40 + 1) + 8 * i);
          v33 = v4;
          v34 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"HistogramValue" inManagedObjectContext:v4];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v34 setIntegerValue:v32];
          }

          else
          {
            [v34 setStringValue:v32];
          }

          v35 = [(_DKHistogram *)v26 histogram];
          v36 = [v35 objectForKeyedSubscript:v32];
          [v34 setCount:v36];

          v7 = v31;
          [v31 addValueObject:v34];

          v4 = v33;
        }

        v28 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v28);
    }

    [v4 insertObject:v7];
    v23 = v7;
  }

  else
  {
    v23 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v23;
}

@end