@interface _DKHistogram
- (BOOL)isEqual:(id)equal;
- (_DKHistogram)init;
- (_DKHistogram)initWithCoder:(id)coder;
- (_DKHistogram)initWithHistogram:(id)histogram;
- (_DKHistogram)initWithManagedObject:(id)object;
- (_DKHistogram)initWithValues:(id)values;
- (double)countForValueDouble:(id)double;
- (double)relativeFrequencyForValue:(id)value;
- (id)description;
- (id)insertInManagedObjectContext:(id)context;
- (unint64_t)countForValue:(id)value;
- (void)_addPropertiesFrom:(id)from;
- (void)addHistogram:(id)histogram;
- (void)addHistogram:(id)histogram decayingExistingCounts:(double)counts;
- (void)addValue:(id)value;
- (void)addValue:(id)value withCount:(double)count;
- (void)encodeWithCoder:(id)coder;
- (void)subtractHistogram:(id)histogram;
- (void)subtractValue:(id)value;
@end

@implementation _DKHistogram

- (_DKHistogram)init
{
  v8.receiver = self;
  v8.super_class = _DKHistogram;
  v2 = [(_DKHistogram *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    histogram = v2->_histogram;
    v2->_histogram = dictionary;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;

    v2->_countOverAllValues = 0;
  }

  return v2;
}

- (_DKHistogram)initWithValues:(id)values
{
  v22 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v5 = [(_DKHistogram *)self init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = valuesCopy;
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
          unsignedIntegerValue = [v12 unsignedIntegerValue];

          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
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

- (_DKHistogram)initWithHistogram:(id)histogram
{
  v20 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  v5 = [(_DKHistogram *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_histogram addEntriesFromDictionary:histogramCopy];
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

- (unint64_t)countForValue:(id)value
{
  v3 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:value];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)countForValueDouble:(id)double
{
  v3 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:double];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)relativeFrequencyForValue:(id)value
{
  v4 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:value];
  [v4 doubleValue];
  v6 = v5 / self->_countOverAllValues;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    histogram = self->_histogram;
    histogram = [(_DKHistogram *)v6 histogram];
    if ([(NSMutableDictionary *)histogram isEqualToDictionary:histogram])
    {
      identifier = self->_identifier;
      identifier = [(_DKHistogram *)v6 identifier];
      if ([(NSUUID *)identifier isEqual:identifier])
      {
        deviceIdentifiers = self->_deviceIdentifiers;
        deviceIdentifiers = [(_DKHistogram *)v6 deviceIdentifiers];
        if ([(NSArray *)deviceIdentifiers isEqualToArray:deviceIdentifiers])
        {
          interval = self->_interval;
          interval = [(_DKHistogram *)v6 interval];
          if ([(NSDateInterval *)interval isEqualToDateInterval:interval])
          {
            stream = self->_stream;
            stream = [(_DKHistogram *)v6 stream];
            v17 = [(_DKEventStream *)stream isEqual:stream];
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

- (void)addValue:(id)value
{
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:valueCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->_histogram setObject:v7 forKeyedSubscript:valueCopy];

  ++self->_countOverAllValues;
  objc_autoreleasePoolPop(v4);
}

- (void)addValue:(id)value withCount:(double)count
{
  valueCopy = value;
  v6 = objc_autoreleasePoolPush();
  v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:valueCopy];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9 + count];
  [(NSMutableDictionary *)self->_histogram setObject:v10 forKeyedSubscript:valueCopy];

  ++self->_countOverAllValues;
  objc_autoreleasePoolPop(v6);
}

- (void)subtractValue:(id)value
{
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:valueCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:valueCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    if (unsignedIntegerValue == 1)
    {
      [(NSMutableDictionary *)self->_histogram removeObjectForKey:valueCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue - 1];
      [(NSMutableDictionary *)self->_histogram setObject:v8 forKeyedSubscript:valueCopy];
    }

    --self->_countOverAllValues;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_addPropertiesFrom:(id)from
{
  fromCopy = from;
  interval = [(_DKHistogram *)self interval];
  startDate = [interval startDate];
  interval2 = [fromCopy interval];
  startDate2 = [interval2 startDate];
  v8 = [startDate earlierDate:startDate2];

  interval3 = [fromCopy interval];
  endDate = [interval3 endDate];
  interval4 = [(_DKHistogram *)self interval];
  endDate2 = [interval4 endDate];
  v13 = [endDate laterDate:endDate2];

  if (v8 && v13)
  {
    interval6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v13];
  }

  else
  {
    interval5 = [fromCopy interval];

    v16 = fromCopy;
    if (!interval5)
    {
      goto LABEL_7;
    }

    interval6 = [fromCopy interval];
  }

  interval = self->_interval;
  self->_interval = interval6;

  v16 = fromCopy;
LABEL_7:
  identifier = [v16 identifier];
  identifier = self->_identifier;
  self->_identifier = identifier;

  customIdentifier = [fromCopy customIdentifier];
  customIdentifier = self->_customIdentifier;
  self->_customIdentifier = customIdentifier;

  deviceIdentifiers = self->_deviceIdentifiers;
  deviceIdentifiers = [fromCopy deviceIdentifiers];
  v24 = [(NSArray *)deviceIdentifiers arrayByAddingObjectsFromArray:deviceIdentifiers];
  v25 = self->_deviceIdentifiers;
  self->_deviceIdentifiers = v24;

  stream = [fromCopy stream];
  stream = self->_stream;
  self->_stream = stream;
}

- (void)addHistogram:(id)histogram
{
  v26 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  context = objc_autoreleasePoolPush();
  [(_DKHistogram *)self _addPropertiesFrom:histogramCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  histogram = [histogramCopy histogram];
  v6 = [histogram countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(histogram);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];
        [v11 doubleValue];
        v13 = v12;

        histogram2 = [histogramCopy histogram];
        v15 = [histogram2 objectForKeyedSubscript:v10];
        [v15 doubleValue];
        v17 = v16;

        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13 + v17];
        [(NSMutableDictionary *)self->_histogram setObject:v18 forKeyedSubscript:v10];

        self->_countOverAllValues = (v17 + self->_countOverAllValues);
      }

      v7 = [histogram countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)addHistogram:(id)histogram decayingExistingCounts:(double)counts
{
  histogramCopy = histogram;
  v7 = objc_autoreleasePoolPush();
  [(_DKHistogram *)self _addPropertiesFrom:histogramCopy];
  v8 = [(NSMutableDictionary *)self->_histogram copy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke;
  v16[3] = &unk_1E7368EC0;
  v9 = histogramCopy;
  countsCopy = counts;
  v17 = v9;
  selfCopy = self;
  v19 = &v21;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
  histogram = [v9 histogram];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke_2;
  v12[3] = &unk_1E7368EE8;
  v11 = v8;
  v13 = v11;
  selfCopy2 = self;
  v15 = &v21;
  [histogram enumerateKeysAndObjectsUsingBlock:v12];

  self->_countOverAllValues = llround(v22[3]);
  _Block_object_dispose(&v21, 8);

  objc_autoreleasePoolPop(v7);
}

- (void)subtractHistogram:(id)histogram
{
  v27 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_deviceIdentifiers];
  deviceIdentifiers = self->_deviceIdentifiers;
  self->_deviceIdentifiers = v5;

  v7 = self->_deviceIdentifiers;
  deviceIdentifiers = [histogramCopy deviceIdentifiers];
  [(NSArray *)v7 removeObjectsInArray:deviceIdentifiers];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  histogram = [histogramCopy histogram];
  v10 = [histogram countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(histogram);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v14];
        unsignedIntegerValue = [v15 unsignedIntegerValue];

        v17 = [histogramCopy countForValue:v14];
        if (unsignedIntegerValue <= v17)
        {
          [(NSMutableDictionary *)self->_histogram removeObjectForKey:v14];
        }

        else
        {
          v18 = v17;
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue - v17];
          [(NSMutableDictionary *)self->_histogram setObject:v19 forKeyedSubscript:v14];

          unsignedIntegerValue = v18;
        }

        self->_countOverAllValues -= unsignedIntegerValue;
      }

      v11 = [histogram countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  stream = [(_DKHistogram *)self stream];
  identifier = [(_DKHistogram *)self identifier];
  customIdentifier = [(_DKHistogram *)self customIdentifier];
  interval = [(_DKHistogram *)self interval];
  deviceIdentifiers = [(_DKHistogram *)self deviceIdentifiers];
  histogram = [(_DKHistogram *)self histogram];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKHistogram countOverAllValues](self, "countOverAllValues")}];
  v13 = [v3 stringWithFormat:@"%@:{stream=%@ identifier=%@; customIdentifier=%@, interval=%@; deviceIdentifiers=%@; histogram=%@; countOverAllValues=%@}", v5, stream, identifier, customIdentifier, interval, deviceIdentifiers, histogram, v12];;

  return v13;
}

- (_DKHistogram)initWithCoder:(id)coder
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
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

  v11 = [coderCopy decodeObjectOfClasses:v7 forKey:@"histogram"];
  v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"deviceIdentifiers"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];

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

- (void)encodeWithCoder:(id)coder
{
  histogram = self->_histogram;
  coderCopy = coder;
  [coderCopy encodeObject:histogram forKey:@"histogram"];
  [coderCopy encodeObject:self->_deviceIdentifiers forKey:@"deviceIdentifiers"];
  [coderCopy encodeObject:self->_interval forKey:@"interval"];
  [coderCopy encodeObject:self->_stream forKey:@"stream"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
}

- (_DKHistogram)initWithManagedObject:(id)object
{
  v50 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v47.receiver = self;
  v47.super_class = _DKHistogram;
  v5 = [(_DKHistogram *)&v47 init];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = MEMORY[0x1E695DF90];
  value = [objectCopy value];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(value, "count")}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = objectCopy;
  value2 = [objectCopy value];
  v10 = [value2 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
        objc_enumerationMutation(value2);
      }

      v15 = *(*(&v43 + 1) + 8 * i);
      stringValue = [v15 stringValue];

      if (stringValue)
      {
        stringValue2 = [v15 stringValue];
      }

      else
      {
        integerValue = [v15 integerValue];

        if (!integerValue)
        {
          v19 = +[_CDLogging knowledgeChannel];
          objectCopy = v42;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(_DKHistogram(CoreData) *)v42 initWithManagedObject:v19];
          }

          goto LABEL_25;
        }

        stringValue2 = [v15 integerValue];
      }

      v19 = stringValue2;
      v20 = [v15 count];

      if (!v20)
      {
        v23 = +[_CDLogging knowledgeChannel];
        objectCopy = v42;
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

    v11 = [value2 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_19:

  objectCopy = v42;
  streamTypeCode = [v42 streamTypeCode];
  v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKObjectType, "objectTypeWithTypeCode:", [streamTypeCode integerValue]);

  streamName = [v42 streamName];
  v27 = [_DKEventStream eventStreamWithName:streamName valueType:v25];

  v28 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [v42 startDate];
  endDate = [v42 endDate];
  v31 = [v28 initWithStartDate:startDate endDate:endDate];
  [(_DKHistogram *)v5 setInterval:v31];

  [(_DKHistogram *)v5 setHistogram:v8];
  deviceIdentifier = [v42 deviceIdentifier];

  if (deviceIdentifier)
  {
    deviceIdentifier2 = [v42 deviceIdentifier];
    v48 = deviceIdentifier2;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [(_DKHistogram *)v5 setDeviceIdentifiers:v34];
  }

  [(_DKHistogram *)v5 setStream:v27];
  v35 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [v42 identifier];
  v37 = [v35 initWithUUIDString:identifier];
  [(_DKHistogram *)v5 setIdentifier:v37];

  customIdentifier = [v42 customIdentifier];
  [(_DKHistogram *)v5 setCustomIdentifier:customIdentifier];

  [(_DKHistogram *)v5 setCountOverAllValues:v12];
LABEL_22:
  v39 = v5;
LABEL_26:

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)insertInManagedObjectContext:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = MEMORY[0x1E695D5B8];
  v6 = +[_DKHistogram entityName];
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:contextCopy];

  interval = [(_DKHistogram *)self interval];
  startDate = [interval startDate];
  [v7 setStartDate:startDate];

  interval2 = [(_DKHistogram *)self interval];
  endDate = [interval2 endDate];
  [v7 setEndDate:endDate];

  identifier = [(_DKHistogram *)self identifier];
  uUIDString = [identifier UUIDString];
  [v7 setIdentifier:uUIDString];

  customIdentifier = [(_DKHistogram *)self customIdentifier];
  [v7 setCustomIdentifier:customIdentifier];

  stream = [(_DKHistogram *)self stream];
  name = [stream name];
  [v7 setStreamName:name];

  v17 = MEMORY[0x1E696AD98];
  stream2 = [(_DKHistogram *)self stream];
  eventValueType = [stream2 eventValueType];
  v20 = [v17 numberWithInteger:{objc_msgSend(eventValueType, "typeCode")}];
  [v7 setStreamTypeCode:v20];

  deviceIdentifiers = [(_DKHistogram *)self deviceIdentifiers];
  v22 = [deviceIdentifiers count];

  if (v22 <= 1)
  {
    deviceIdentifiers2 = [(_DKHistogram *)self deviceIdentifiers];
    firstObject = [deviceIdentifiers2 firstObject];
    [v7 setDeviceIdentifier:firstObject];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
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
          v33 = contextCopy;
          v34 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"HistogramValue" inManagedObjectContext:contextCopy];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v34 setIntegerValue:v32];
          }

          else
          {
            [v34 setStringValue:v32];
          }

          histogram = [(_DKHistogram *)selfCopy histogram];
          v36 = [histogram objectForKeyedSubscript:v32];
          [v34 setCount:v36];

          v7 = v31;
          [v31 addValueObject:v34];

          contextCopy = v33;
        }

        v28 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v28);
    }

    [contextCopy insertObject:v7];
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