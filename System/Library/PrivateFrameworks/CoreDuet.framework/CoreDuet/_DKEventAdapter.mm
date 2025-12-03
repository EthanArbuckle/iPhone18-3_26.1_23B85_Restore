@interface _DKEventAdapter
- (BOOL)isEqual:(id)equal;
- (double)valueDouble;
- (id)customMetadata;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)streamName;
- (id)structuredMetadata;
- (id)uuid;
- (id)uuidHash;
- (id)valueString;
- (int64_t)endDayOfWeek;
- (int64_t)endSecondOfDay;
- (int64_t)secondsFromGMT;
- (int64_t)startDayOfWeek;
- (int64_t)startSecondOfDay;
- (int64_t)valueInteger;
- (int64_t)valueTypeCode;
- (signed)valueClass;
@end

@implementation _DKEventAdapter

- (id)uuid
{
  uUID = [(_DKObject *)self->_dkEvent UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)uuidHash
{
  v2 = MEMORY[0x1E696AD98];
  uuid = [(_DKEventAdapter *)self uuid];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(uuid, "hash")}];

  return v4;
}

- (id)streamName
{
  stream = [(_DKEvent *)self->_dkEvent stream];
  name = [stream name];

  return name;
}

- (int64_t)secondsFromGMT
{
  timeZone = [(_DKEvent *)self->_dkEvent timeZone];
  secondsFromGMT = [timeZone secondsFromGMT];

  return secondsFromGMT;
}

- (int64_t)startSecondOfDay
{
  startDate = [(_DKEvent *)self->_dkEvent startDate];
  [startDate timeIntervalSinceReferenceDate];
  v4 = v3 % 86400;

  return v4;
}

- (int64_t)startDayOfWeek
{
  startDayOfWeek = self->_startDayOfWeek;
  if (startDayOfWeek)
  {

    return [(NSNumber *)startDayOfWeek longLongValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    startDate = [(_DKEvent *)self->_dkEvent startDate];
    v7 = [currentCalendar components:512 fromDate:startDate];
    weekday = [v7 weekday];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:weekday];
    v10 = self->_startDayOfWeek;
    self->_startDayOfWeek = v9;

    return weekday;
  }
}

- (int64_t)endSecondOfDay
{
  endDate = [(_DKEvent *)self->_dkEvent endDate];
  [endDate timeIntervalSinceReferenceDate];
  v4 = v3 % 86400;

  return v4;
}

- (int64_t)endDayOfWeek
{
  endDayOfWeek = self->_endDayOfWeek;
  if (endDayOfWeek)
  {

    return [(NSNumber *)endDayOfWeek longLongValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    endDate = [(_DKEvent *)self->_dkEvent endDate];
    v7 = [currentCalendar components:512 fromDate:endDate];
    weekday = [v7 weekday];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:weekday];
    v10 = self->_endDayOfWeek;
    self->_endDayOfWeek = v9;

    return weekday;
  }
}

- (double)valueDouble
{
  value = [(_DKEvent *)self->_dkEvent value];
  [value doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)valueInteger
{
  value = [(_DKEvent *)self->_dkEvent value];
  integerValue = [value integerValue];

  return integerValue;
}

- (id)valueString
{
  value = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    value2 = [(_DKEvent *)self->_dkEvent value];
    stringValue = [value2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (signed)valueClass
{
  value = [(_DKEvent *)self->_dkEvent value];
  uUID = [value UUID];

  if (uUID)
  {
    return 0;
  }

  value2 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  value3 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    return 2;
  }

  value4 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)valueTypeCode
{
  if (![(_DKEventAdapter *)self valueClass])
  {
    return 0;
  }

  value = [(_DKEvent *)self->_dkEvent value];
  typeCode = [value typeCode];

  return typeCode;
}

- (id)structuredMetadata
{
  v26 = *MEMORY[0x1E69E9840];
  structuredMetadata = self->_structuredMetadata;
  if (structuredMetadata)
  {
    v3 = structuredMetadata;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = objc_autoreleasePoolPush();
    metadata = [(_DKEvent *)self->_dkEvent metadata];
    v8 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = metadata;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:{v14, v21}];
          if (v15)
          {
            v16 = [v9 objectForKeyedSubscript:v14];
            [v5 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v6);
    v17 = [v5 copy];
    v18 = self->_structuredMetadata;
    self->_structuredMetadata = v17;

    v3 = v17;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)customMetadata
{
  v55 = *MEMORY[0x1E69E9840];
  customMetadata = self->_customMetadata;
  if (customMetadata)
  {
    v3 = customMetadata;
    goto LABEL_36;
  }

  v5 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  metadata = [(_DKEvent *)self->_dkEvent metadata];
  v7 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = metadata;
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = v9;
  v11 = 0x1E696A000uLL;
  v12 = *v47;
  v43 = v5;
  v44 = v7;
  v45 = *v47;
  do
  {
    v13 = 0;
    do
    {
      if (*v47 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v46 + 1) + 8 * v13);
      v15 = [v8 objectForKeyedSubscript:v14];
      v16 = [v7 objectForKeyedSubscript:v14];
      if (!v16)
      {
        v17 = *(v11 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *(v11 + 3776);
          v19 = v15;
          v20 = [_CDHashUtilities md5ForString:v19];
          [v18 stringWithFormat:@"%@S", v20];
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v15;
          IsFloatType = CFNumberIsFloatType(v20);
          v23 = *(v11 + 3776);
          if (IsFloatType)
          {
            v24 = [v23 stringWithFormat:@"%@D", v20];
            v21 = v24;
            if (v20)
            {
              v52[0] = @"name";
              v52[1] = @"doubleValue";
              v53[0] = v14;
              v53[1] = v20;
              v52[2] = @"valueHash";
              v25 = &stru_1F05B9908;
              if (v24)
              {
                v25 = v24;
              }

              v53[2] = v25;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
              [v43 addObject:v26];

              v5 = v43;
              goto LABEL_28;
            }

LABEL_25:
            v50[0] = @"name";
            v50[1] = @"valueHash";
            v33 = &stru_1F05B9908;
            if (v21)
            {
              v33 = v21;
            }

            v51[0] = v14;
            v51[1] = v33;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
            [v5 addObject:v20];
LABEL_28:

            v11 = 0x1E696A000;
            v12 = v45;
            goto LABEL_29;
          }

          [v23 stringWithFormat:@"%@I", v20];
          v21 = LABEL_23:;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = *(v11 + 3776);
            v20 = v15;
            [(__CFNumber *)v20 timeIntervalSinceReferenceDate];
            v28 = v27;
            v7 = v44;
            [v28 stringWithFormat:@"%fT", v29];
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = *(v11 + 3776);
            v31 = v15;
            v20 = [_CDHashUtilities md5ForData:v31];
            v32 = v30;
            v7 = v44;
            v21 = [v32 stringWithFormat:@"%@B", v20];

            v5 = v43;
          }

          else
          {
            if (![v15 conformsToProtocol:&unk_1F05F0800])
            {
              v21 = 0;
              goto LABEL_25;
            }

            v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15];
            v34 = *(v11 + 3776);
            v19 = [_CDHashUtilities md5ForData:v20];
            v35 = v34;
            v5 = v43;
            [v35 stringWithFormat:@"%@O", v19];
            v21 = LABEL_11:;

            v7 = v44;
          }
        }

        goto LABEL_25;
      }

LABEL_29:

      ++v13;
    }

    while (v10 != v13);
    v36 = [v8 countByEnumeratingWithState:&v46 objects:v54 count:16];
    v10 = v36;
  }

  while (v36);
LABEL_35:

  objc_autoreleasePoolPop(context);
  v37 = [v5 copy];
  v38 = selfCopy->_customMetadata;
  selfCopy->_customMetadata = v37;

  v3 = v37;
LABEL_36:
  v39 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_DKEvent *)self->_dkEvent isEqual:equalCopy[5]];

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  dkEvent = self->_dkEvent;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_dkEvent;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end