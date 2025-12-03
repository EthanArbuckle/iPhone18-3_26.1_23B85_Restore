@interface _DKQuery
+ (id)executableQueryForQuery:(id)query;
+ (id)predicateForEventsBetweenStartSecondOfDay:(unint64_t)day endSecondOfDay:(unint64_t)ofDay;
+ (id)predicateForEventsExcludingIntegerValue:(int64_t)value;
+ (id)predicateForEventsWithCategoryValue:(id)value;
+ (id)predicateForEventsWithDayOfWeek:(unint64_t)week;
+ (id)predicateForEventsWithDoubleValue:(double)value;
+ (id)predicateForEventsWithDoubleValueBetween:(double)between and:(double)and;
+ (id)predicateForEventsWithIdentifierValue:(id)value;
+ (id)predicateForEventsWithIntegerValue:(int64_t)value;
+ (id)predicateForEventsWithMinimumDuration:(double)duration;
+ (id)predicateForEventsWithQuantityValue:(id)value;
+ (id)predicateForEventsWithSourceDeviceIDs:(id)ds;
+ (id)predicateForEventsWithSourceGroupIDs:(id)ds;
+ (id)predicateForEventsWithSourceID:(id)d;
+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD;
+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD groupIDs:(id)ds;
+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD itemIDs:(id)ds;
+ (id)predicateForEventsWithStartAndEndInDateRangeFrom:(id)from to:(id)to;
+ (id)predicateForEventsWithStartOrEndInDateRangeWithFrom:(id)from to:(id)to;
+ (id)predicateForEventsWithStringValue:(id)value;
+ (id)predicateForEventsWithStringValueInValues:(id)values;
+ (id)predicateForObjectWithUUID:(id)d;
+ (id)predicateForObjectsWithMetadataKey:(id)key;
+ (id)predicateForObjectsWithMetadataKey:(id)key andDoubleValue:(double)value;
+ (id)predicateForObjectsWithMetadataKey:(id)key andDoubleValueBetween:(double)between andValue:(double)value;
+ (id)predicateForObjectsWithMetadataKey:(id)key andIntegerValue:(int64_t)value;
+ (id)predicateForObjectsWithMetadataKey:(id)key andStringValue:(id)value;
+ (id)predicateForObjectsWithMetadataKey:(id)key andValue:(id)value;
+ (id)predicateForObjectsWithMetadataKey:(id)key inValues:(id)values;
+ (id)predicateForObjectsWithMetadataKey:(id)key likeStringValue:(id)value;
+ (id)predicateForObjectsWithStructuredMetadataKey:(void *)key andValue:;
+ (id)predicateForObjectsWithUUIDs:(id)ds;
+ (id)predicateForSpotlightEventsWithBundleID:(uint64_t)d;
+ (id)predicateForSpotlightEventsWithBundleID:(void *)d sinceDate:;
+ (id)predicateForSpotlightEventsWithDomainIdentifiers:(void *)identifiers bundleID:;
+ (id)predicateForSpotlightEventsWithItemIdentifiers:(void *)identifiers bundleID:;
+ (id)queryNotExecutableError;
+ (id)structuredMetadataKeyPathForMetadataKey:(id)key;
- (_DKQuery)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKQuery

+ (id)predicateForObjectWithUUID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E696AD98];
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(uUIDString, "hash")}];
  uUIDString2 = [dCopy UUIDString];

  v9 = [v3 predicateWithFormat:@"(uuidHash == %@ AND uuid == %@)", v7, uUIDString2];

  return v9;
}

+ (id)predicateForObjectsWithUUIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AD98];
        uUIDString = [v11 UUIDString];
        v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(uUIDString, "hash")}];
        [array addObject:v14];

        uUIDString2 = [v11 UUIDString];
        [array2 addObject:uUIDString2];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(uuidHash IN %@ AND uuid IN %@)", array, array2, v19];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)predicateForEventsWithStartOrEndInDateRangeWithFrom:(id)from to:(id)to
{
  v15[2] = *MEMORY[0x1E69E9840];
  toCopy = to;
  fromCopy = from;
  v8 = [self predicateForEventsWithStartInDateRangeFrom:fromCopy to:toCopy];
  v9 = [self predicateForEventsWithEndInDateRangeFrom:fromCopy to:toCopy];

  v10 = MEMORY[0x1E696AB28];
  v15[0] = v8;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 orPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)predicateForEventsWithStartAndEndInDateRangeFrom:(id)from to:(id)to
{
  v15[2] = *MEMORY[0x1E69E9840];
  toCopy = to;
  fromCopy = from;
  v8 = [self predicateForEventsWithStartInDateRangeFrom:fromCopy to:toCopy];
  v9 = [self predicateForEventsWithEndInDateRangeFrom:fromCopy to:toCopy];

  v10 = MEMORY[0x1E696AB28];
  v15[0] = v8;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)predicateForEventsWithDayOfWeek:(unint64_t)week
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:week];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDayOfWeek == %@ || endDayOfWeek == %@)", v3, v3];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(endDayOfWeek > startDayOfWeek AND  startDayOfWeek < %@ AND  endDayOfWeek > %@)", v3, v3];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(endDayOfWeek < startDayOfWeek AND  startDayOfWeek > %@ AND endDayOfWeek < %@)", v3, v3];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v7 orPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForEventsBetweenStartSecondOfDay:(unint64_t)day endSecondOfDay:(unint64_t)ofDay
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:day];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:ofDay];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startSecondOfDay >= %@ AND startSecondOfDay <= %@) OR  (endSecondOfDay >= %@ AND endSecondOfDay <= %@)", v5, v6, v5, v6];

  return v7;
}

+ (id)predicateForEventsWithMinimumDuration:(double)duration
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v5 = [v3 predicateWithFormat:@"((endDate.timeIntervalSinceReferenceDate - startDate.timeIntervalSinceReferenceDate) >= %@)", v4];

  return v5;
}

+ (id)predicateForEventsWithCategoryValue:(id)value
{
  integerValue = [value integerValue];

  return [self predicateForEventsWithIntegerValue:integerValue];
}

+ (id)predicateForEventsWithIdentifierValue:(id)value
{
  stringValue = [value stringValue];
  v5 = [self predicateForEventsWithStringValue:stringValue];

  return v5;
}

+ (id)predicateForEventsWithQuantityValue:(id)value
{
  [value doubleValue];

  return [self predicateForEventsWithDoubleValue:?];
}

+ (id)predicateForEventsWithIntegerValue:(int64_t)value
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v5 = [v3 predicateWithFormat:@"valueInteger = %@", v4];

  return v5;
}

+ (id)predicateForEventsExcludingIntegerValue:(int64_t)value
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v5 = [v3 predicateWithFormat:@"valueInteger != %@", v4];

  return v5;
}

+ (id)predicateForEventsWithDoubleValue:(double)value
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v5 = [v3 predicateWithFormat:@"valueDouble = %@", v4];

  return v5;
}

+ (id)predicateForEventsWithDoubleValueBetween:(double)between and:(double)and
{
  if (between >= and)
  {
    betweenCopy = and;
  }

  else
  {
    betweenCopy = between;
  }

  if (between >= and)
  {
    andCopy2 = between;
  }

  else
  {
    andCopy2 = and;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (betweenCopy > 2.22507386e-308)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:betweenCopy];
    v9 = [v7 predicateWithFormat:@"valueDouble >= %@", v8];
    [array addObject:v9];
  }

  if (andCopy2 < 1.79769313e308)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:andCopy2];
    v12 = [v10 predicateWithFormat:@"valueDouble <= %@", v11];
    [array addObject:v12];
  }

  if ([array count])
  {
    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;

  return v13;
}

+ (id)predicateForEventsWithStringValue:(id)value
{
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E696AD98];
  valueCopy = value;
  v6 = [v4 numberWithInteger:{objc_msgSend(valueCopy, "hash")}];
  valueCopy = [v3 predicateWithFormat:@"(valueInteger = %@ AND valueString = %@)", v6, valueCopy];

  return valueCopy;
}

+ (id)predicateForEventsWithStringValueInValues:(id)values
{
  v20 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v4 = valuesCopy;
  if (valuesCopy && [valuesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "hash")}];
          [array addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(valueInteger IN %@ AND valueString IN %@)", array, v6, v15];
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)structuredMetadataKeyPathForMetadataKey:(id)key
{
  keyCopy = key;
  if (keyCopy && (+[_DKMetadataPersistenceLookupTable keyToAttribute](), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:keyCopy], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"structuredMetadata.%@", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [self structuredMetadataKeyPathForMetadataKey:keyCopy];
    if (v5)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v5];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY customMetadata.name = %@", keyCopy];
    }
    v6 = ;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v6;
}

+ (id)predicateForObjectsWithStructuredMetadataKey:(void *)key andValue:
{
  v4 = a2;
  keyCopy = key;
  v6 = objc_opt_self();
  if (v4 && ([v6 structuredMetadataKeyPathForMetadataKey:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    if (keyCopy)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", v7, keyCopy];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v7, v11];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key andValue:(id)value
{
  keyCopy = key;
  v6 = [_DKQuery predicateForObjectsWithStructuredMetadataKey:keyCopy andValue:value];
  if (!v6)
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_DKQuery *)keyCopy predicateForObjectsWithMetadataKey:v7 andValue:v8, v9, v10, v11, v12, v13];
    }
  }

  return v6;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key inValues:(id)values
{
  keyCopy = key;
  valuesCopy = values;
  v8 = valuesCopy;
  if (keyCopy && [valuesCopy count])
  {
    v9 = [self structuredMetadataKeyPathForMetadataKey:keyCopy];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v9, v8];
    }

    else
    {
      v11 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_DKQuery *)keyCopy predicateForObjectsWithMetadataKey:v11 andValue:v12, v13, v14, v15, v16, v17];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key andStringValue:(id)value
{
  v19[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = [(_DKQuery *)self predicateForObjectsWithStructuredMetadataKey:keyCopy andValue:valueCopy];
  if (v8 || ([self predicateForObjectsWithMetadataKey:keyCopy], v8 = objc_claimAutoreleasedReturnValue(), !valueCopy))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [_CDHashUtilities md5ForString:valueCopy];
    v13 = [v11 stringWithFormat:@"%@S", v12];
    v14 = [v10 predicateWithFormat:@"ANY customMetadata.valueHash == %@", v13];

    v15 = MEMORY[0x1E696AB28];
    v19[0] = v8;
    v19[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v15 andPredicateWithSubpredicates:v16];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key likeStringValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [self structuredMetadataKeyPathForMetadataKey:keyCopy];
  if (v8)
  {
    valueCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K LIKE %@", v8, valueCopy];
  }

  else
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_DKQuery *)keyCopy predicateForObjectsWithMetadataKey:v10 andValue:v11, v12, v13, v14, v15, v16];
    }

    valueCopy = 0;
  }

  return valueCopy;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key andIntegerValue:(int64_t)value
{
  v19[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v8 = [(_DKQuery *)self predicateForObjectsWithStructuredMetadataKey:keyCopy andValue:v7];

  if (v8 || ([self predicateForObjectsWithMetadataKey:keyCopy], v8 = objc_claimAutoreleasedReturnValue(), !value))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v13 = [v11 stringWithFormat:@"%@I", v12];
    v14 = [v10 predicateWithFormat:@"ANY customMetadata.valueHash == %@", v13];

    v15 = MEMORY[0x1E696AB28];
    v19[0] = v14;
    v19[1] = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v15 andPredicateWithSubpredicates:v16];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key andDoubleValue:(double)value
{
  v19[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v8 = [(_DKQuery *)self predicateForObjectsWithStructuredMetadataKey:keyCopy andValue:v7];

  if (v8 || ([self predicateForObjectsWithMetadataKey:keyCopy], v8 = objc_claimAutoreleasedReturnValue(), value == 0.0))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    v13 = [v11 stringWithFormat:@"%@D", v12];
    v14 = [v10 predicateWithFormat:@"ANY customMetadata.valueHash = %@", v13];

    v15 = MEMORY[0x1E696AB28];
    v19[0] = v14;
    v19[1] = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v15 andPredicateWithSubpredicates:v16];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForObjectsWithMetadataKey:(id)key andDoubleValueBetween:(double)between andValue:(double)value
{
  v33[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [self predicateForObjectsWithMetadataKey:keyCopy];
  if (between >= value)
  {
    betweenCopy = value;
  }

  else
  {
    betweenCopy = between;
  }

  if (between >= value)
  {
    value = between;
  }

  v11 = [self structuredMetadataKeyPathForMetadataKey:keyCopy];

  if (betweenCopy <= 2.22507386e-308)
  {
    v15 = 0;
  }

  else
  {
    v12 = MEMORY[0x1E696AE18];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:betweenCopy];
    v14 = v13;
    if (!v11)
    {
      v15 = [v12 predicateWithFormat:@"ANY customMetadata.doubleValue >= %@", v13];

      if (value < 1.79769313e308)
      {
        goto LABEL_14;
      }

LABEL_18:
      if (v15)
      {
        v19 = 0;
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    v15 = [v12 predicateWithFormat:@"%K >= %@", v11, v13];
  }

  if (value >= 1.79769313e308)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
LABEL_14:
    v18 = MEMORY[0x1E696AE18];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    [v18 predicateWithFormat:@"ANY customMetadata.doubleValue <= %@", v17, v30];
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696AE18];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [v16 predicateWithFormat:@"%K <= %@", v11, v17];
  v19 = LABEL_15:;

  if (v15 && v19)
  {
    v20 = MEMORY[0x1E696AB28];
    v33[0] = v9;
    v33[1] = v15;
    v33[2] = v19;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v33;
    v23 = 3;
LABEL_22:
    v24 = [v21 arrayWithObjects:v22 count:v23];
    v25 = [v20 andPredicateWithSubpredicates:v24];

    goto LABEL_26;
  }

  if (v15)
  {
LABEL_21:
    v20 = MEMORY[0x1E696AB28];
    v32[0] = v9;
    v32[1] = v15;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v32;
    v23 = 2;
    goto LABEL_22;
  }

  if (v19)
  {
    v26 = MEMORY[0x1E696AB28];
    v31[0] = v9;
    v31[1] = v19;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v25 = [v26 andPredicateWithSubpredicates:v27];

    goto LABEL_26;
  }

LABEL_25:
  v25 = v9;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)predicateForEventsWithSourceID:(id)d
{
  if (d)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"source.sourceID = %@", d];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD
{
  v14[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (iD)
  {
    v7 = [self predicateForEventsWithBundleID:iD];
    v8 = MEMORY[0x1E696AB28];
    v14[0] = v7;
    v9 = [self predicateForEventsWithSourceID:dCopy];

    v14[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v8 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = [self predicateForEventsWithSourceID:dCopy];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD groupIDs:(id)ds
{
  v16[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v9 = [self predicateForEventsWithSourceID:d bundleID:iD];
  if ([dsCopy count])
  {
    v10 = [_DKQuery predicateForEventsWithSourceGroupIDs:dsCopy];
    v11 = MEMORY[0x1E696AB28];
    v16[0] = v9;
    v16[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];
  }

  else
  {
    v13 = v9;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForEventsWithSourceGroupIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = dsCopy;
    obj = dsCopy;
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    v7 = 0x1E696A000uLL;
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.groupID BEGINSWITH %@", *(*(&v22 + 1) + 8 * i)];
          [array2 addObject:v11];

          if ([array2 count] >= 0x385)
          {
            v12 = [*(v7 + 2856) orPredicateWithSubpredicates:array2];
            [array addObject:v12];
            [MEMORY[0x1E695DF70] array];
            v13 = array;
            v15 = v14 = v7;

            array2 = v15;
            v7 = v14;
            array = v13;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    if ([array2 count])
    {
      v16 = [*(v7 + 2856) orPredicateWithSubpredicates:array2];
      [array addObject:v16];
    }

    v17 = [*(v7 + 2856) orPredicateWithSubpredicates:array];

    dsCopy = v20;
  }

  else
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)predicateForEventsWithSourceID:(id)d bundleID:(id)iD itemIDs:(id)ds
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (ds)
  {
    v8 = MEMORY[0x1E696AE18];
    iDCopy = iD;
    dCopy = d;
    v11 = [v8 predicateWithFormat:@"source.itemID IN %@", ds];
    v12 = MEMORY[0x1E696AB28];
    v20[0] = v11;
    v13 = [self predicateForEventsWithSourceID:dCopy bundleID:iDCopy];

    v20[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v12 andPredicateWithSubpredicates:v14];
  }

  else
  {
    iDCopy2 = iD;
    dCopy2 = d;
    v15 = [self predicateForEventsWithSourceID:dCopy2 bundleID:iDCopy2];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)predicateForEventsWithSourceDeviceIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          uUIDString = [*(*(&v14 + 1) + 8 * i) UUIDString];
          [v4 addObject:uUIDString];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.deviceID IN %@", v4];
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (_DKQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _DKQuery;
  v5 = [(_DKQuery *)&v9 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      processInfo = _CDCurrentOrXPCProcessName();
      [(_DKQuery *)v5 setClientName:processInfo];
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      [(_DKQuery *)v5 setClientName:processName];
    }

    -[_DKQuery setExecuteConcurrently:](v5, "setExecuteConcurrently:", [coderCopy decodeBoolForKey:@"executeConcurrently"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_DKQuery executeConcurrently](self forKey:{"executeConcurrently"), @"executeConcurrently"}];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

+ (id)executableQueryForQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy conformsToProtocol:&unk_1F0608888])
  {
    v4 = queryCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)queryNotExecutableError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Query is not executable";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)predicateForSpotlightEventsWithBundleID:(uint64_t)d
{
  v29[6] = *MEMORY[0x1E69E9840];
  v26 = a2;
  objc_opt_self();
  v25 = +[_DKSystemEventStreams appActivityStream];
  name = [v25 name];
  v29[0] = name;
  v23 = +[_DKSystemEventStreams appIntentsStream];
  name2 = [v23 name];
  v29[1] = name2;
  v3 = +[_DKSystemEventStreams appLocationActivityStream];
  name3 = [v3 name];
  v29[2] = name3;
  v5 = +[_CDPortraitStreams entityStream];
  name4 = [v5 name];
  v29[3] = name4;
  v7 = +[_CDPortraitStreams topicStream];
  name5 = [v7 name];
  v29[4] = name5;
  v9 = +[_DKSystemEventStreams safariHistoryStream];
  name6 = [v9 name];
  v29[5] = name6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  v22 = [_DKQuery predicateForEventsWithStreamNames:v11];

  v12 = MEMORY[0x1E696AE18];
  v13 = +[_DKSource intentsSourceID];
  v28[0] = v13;
  v14 = +[_DKSource spotlightSourceID];
  v28[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v16 = [v12 predicateWithFormat:@"source.bundleID == %@ AND source.sourceID IN %@", v26, v15];

  v17 = MEMORY[0x1E696AB28];
  v27[0] = v22;
  v27[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)predicateForSpotlightEventsWithDomainIdentifiers:(void *)identifiers bundleID:
{
  v13[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = a2;
  objc_opt_self();
  v6 = [_DKQuery predicateForSpotlightEventsWithBundleID:identifiersCopy];

  v7 = [_DKQuery predicateForEventsWithSourceGroupIDs:v5];

  v8 = MEMORY[0x1E696AB28];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForSpotlightEventsWithItemIdentifiers:(void *)identifiers bundleID:
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  identifiersCopy = identifiers;
  objc_opt_self();
  v6 = MEMORY[0x1E696AE18];
  v7 = +[_DKSource intentsSourceID];
  v30[0] = v7;
  v8 = +[_DKSource spotlightSourceID];
  v30[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v10 = [v6 predicateWithFormat:@"source.itemID IN %@ AND source.bundleID == %@ AND source.sourceID IN %@", v4, identifiersCopy, v9];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v10, 0}];
  v12 = 0x1E696A000;
  if (v4 && identifiersCopy && [v4 count])
  {
    v13 = +[_DKSystemEventStreams appActivityStream];
    name = [v13 name];
    v29[0] = name;
    v15 = +[_DKSystemEventStreams appLocationActivityStream];
    name2 = [v15 name];
    v29[1] = name2;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

    v17 = [_DKQuery predicateForEventsWithStreamNames:v27];
    v18 = [_DKQuery predicateForEventsWithStringValue:identifiersCopy];
    v19 = +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
    v20 = [_DKQuery predicateForObjectsWithMetadataKey:v19 inValues:v4];
    v21 = MEMORY[0x1E696AB28];
    v28[0] = v17;
    v28[1] = v18;
    v28[2] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v23 = [v21 andPredicateWithSubpredicates:v22];

    v12 = 0x1E696A000uLL;
    [v11 addObject:v23];
  }

  v24 = [*(v12 + 2856) orPredicateWithSubpredicates:v11];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)predicateForSpotlightEventsWithBundleID:(void *)d sinceDate:
{
  v13[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = a2;
  objc_opt_self();
  v6 = [_DKQuery predicateForSpotlightEventsWithBundleID:v5];

  v7 = [_DKQuery predicateForEventsWithStartDateAfter:dCopy];

  v8 = MEMORY[0x1E696AB28];
  v13[0] = v7;
  v13[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)predicateForObjectsWithMetadataKey:(uint64_t)a3 andValue:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "Invalid key provided to predicateForObjectsWithMetadataKey: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end