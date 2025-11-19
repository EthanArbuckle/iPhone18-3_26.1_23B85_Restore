@interface _DKQuery
+ (id)executableQueryForQuery:(id)a3;
+ (id)predicateForEventsBetweenStartSecondOfDay:(unint64_t)a3 endSecondOfDay:(unint64_t)a4;
+ (id)predicateForEventsExcludingIntegerValue:(int64_t)a3;
+ (id)predicateForEventsWithCategoryValue:(id)a3;
+ (id)predicateForEventsWithDayOfWeek:(unint64_t)a3;
+ (id)predicateForEventsWithDoubleValue:(double)a3;
+ (id)predicateForEventsWithDoubleValueBetween:(double)a3 and:(double)a4;
+ (id)predicateForEventsWithIdentifierValue:(id)a3;
+ (id)predicateForEventsWithIntegerValue:(int64_t)a3;
+ (id)predicateForEventsWithMinimumDuration:(double)a3;
+ (id)predicateForEventsWithQuantityValue:(id)a3;
+ (id)predicateForEventsWithSourceDeviceIDs:(id)a3;
+ (id)predicateForEventsWithSourceGroupIDs:(id)a3;
+ (id)predicateForEventsWithSourceID:(id)a3;
+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4;
+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4 groupIDs:(id)a5;
+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4 itemIDs:(id)a5;
+ (id)predicateForEventsWithStartAndEndInDateRangeFrom:(id)a3 to:(id)a4;
+ (id)predicateForEventsWithStartOrEndInDateRangeWithFrom:(id)a3 to:(id)a4;
+ (id)predicateForEventsWithStringValue:(id)a3;
+ (id)predicateForEventsWithStringValueInValues:(id)a3;
+ (id)predicateForObjectWithUUID:(id)a3;
+ (id)predicateForObjectsWithMetadataKey:(id)a3;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 andDoubleValue:(double)a4;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 andDoubleValueBetween:(double)a4 andValue:(double)a5;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 andIntegerValue:(int64_t)a4;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 andStringValue:(id)a4;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 andValue:(id)a4;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 inValues:(id)a4;
+ (id)predicateForObjectsWithMetadataKey:(id)a3 likeStringValue:(id)a4;
+ (id)predicateForObjectsWithStructuredMetadataKey:(void *)a3 andValue:;
+ (id)predicateForObjectsWithUUIDs:(id)a3;
+ (id)predicateForSpotlightEventsWithBundleID:(uint64_t)a1;
+ (id)predicateForSpotlightEventsWithBundleID:(void *)a3 sinceDate:;
+ (id)predicateForSpotlightEventsWithDomainIdentifiers:(void *)a3 bundleID:;
+ (id)predicateForSpotlightEventsWithItemIdentifiers:(void *)a3 bundleID:;
+ (id)queryNotExecutableError;
+ (id)structuredMetadataKeyPathForMetadataKey:(id)a3;
- (_DKQuery)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKQuery

+ (id)predicateForObjectWithUUID:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v5 UUIDString];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v8 = [v5 UUIDString];

  v9 = [v3 predicateWithFormat:@"(uuidHash == %@ AND uuid == %@)", v7, v8];

  return v9;
}

+ (id)predicateForObjectsWithUUIDs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
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
        v13 = [v11 UUIDString];
        v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
        [v4 addObject:v14];

        v15 = [v11 UUIDString];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(uuidHash IN %@ AND uuid IN %@)", v4, v5, v19];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)predicateForEventsWithStartOrEndInDateRangeWithFrom:(id)a3 to:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 predicateForEventsWithStartInDateRangeFrom:v7 to:v6];
  v9 = [a1 predicateForEventsWithEndInDateRangeFrom:v7 to:v6];

  v10 = MEMORY[0x1E696AB28];
  v15[0] = v8;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 orPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)predicateForEventsWithStartAndEndInDateRangeFrom:(id)a3 to:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 predicateForEventsWithStartInDateRangeFrom:v7 to:v6];
  v9 = [a1 predicateForEventsWithEndInDateRangeFrom:v7 to:v6];

  v10 = MEMORY[0x1E696AB28];
  v15[0] = v8;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)predicateForEventsWithDayOfWeek:(unint64_t)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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

+ (id)predicateForEventsBetweenStartSecondOfDay:(unint64_t)a3 endSecondOfDay:(unint64_t)a4
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startSecondOfDay >= %@ AND startSecondOfDay <= %@) OR  (endSecondOfDay >= %@ AND endSecondOfDay <= %@)", v5, v6, v5, v6];

  return v7;
}

+ (id)predicateForEventsWithMinimumDuration:(double)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [v3 predicateWithFormat:@"((endDate.timeIntervalSinceReferenceDate - startDate.timeIntervalSinceReferenceDate) >= %@)", v4];

  return v5;
}

+ (id)predicateForEventsWithCategoryValue:(id)a3
{
  v4 = [a3 integerValue];

  return [a1 predicateForEventsWithIntegerValue:v4];
}

+ (id)predicateForEventsWithIdentifierValue:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [a1 predicateForEventsWithStringValue:v4];

  return v5;
}

+ (id)predicateForEventsWithQuantityValue:(id)a3
{
  [a3 doubleValue];

  return [a1 predicateForEventsWithDoubleValue:?];
}

+ (id)predicateForEventsWithIntegerValue:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v3 predicateWithFormat:@"valueInteger = %@", v4];

  return v5;
}

+ (id)predicateForEventsExcludingIntegerValue:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v3 predicateWithFormat:@"valueInteger != %@", v4];

  return v5;
}

+ (id)predicateForEventsWithDoubleValue:(double)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [v3 predicateWithFormat:@"valueDouble = %@", v4];

  return v5;
}

+ (id)predicateForEventsWithDoubleValueBetween:(double)a3 and:(double)a4
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a3 >= a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  v6 = [MEMORY[0x1E695DF70] array];
  if (v4 > 2.22507386e-308)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v9 = [v7 predicateWithFormat:@"valueDouble >= %@", v8];
    [v6 addObject:v9];
  }

  if (v5 < 1.79769313e308)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v12 = [v10 predicateWithFormat:@"valueDouble <= %@", v11];
    [v6 addObject:v12];
  }

  if ([v6 count])
  {
    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;

  return v13;
}

+ (id)predicateForEventsWithStringValue:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "hash")}];
  v7 = [v3 predicateWithFormat:@"(valueInteger = %@ AND valueString = %@)", v6, v5];

  return v7;
}

+ (id)predicateForEventsWithStringValueInValues:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
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
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(valueInteger IN %@ AND valueString IN %@)", v5, v6, v15];
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)structuredMetadataKeyPathForMetadataKey:(id)a3
{
  v3 = a3;
  if (v3 && (+[_DKMetadataPersistenceLookupTable keyToAttribute](), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"structuredMetadata.%@", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)predicateForObjectsWithMetadataKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 structuredMetadataKeyPathForMetadataKey:v4];
    if (v5)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v5];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY customMetadata.name = %@", v4];
    }
    v6 = ;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v6;
}

+ (id)predicateForObjectsWithStructuredMetadataKey:(void *)a3 andValue:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (v4 && ([v6 structuredMetadataKeyPathForMetadataKey:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    if (v5)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", v7, v5];
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

+ (id)predicateForObjectsWithMetadataKey:(id)a3 andValue:(id)a4
{
  v5 = a3;
  v6 = [_DKQuery predicateForObjectsWithStructuredMetadataKey:v5 andValue:a4];
  if (!v6)
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_DKQuery *)v5 predicateForObjectsWithMetadataKey:v7 andValue:v8, v9, v10, v11, v12, v13];
    }
  }

  return v6;
}

+ (id)predicateForObjectsWithMetadataKey:(id)a3 inValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v9 = [a1 structuredMetadataKeyPathForMetadataKey:v6];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v9, v8];
    }

    else
    {
      v11 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_DKQuery *)v6 predicateForObjectsWithMetadataKey:v11 andValue:v12, v13, v14, v15, v16, v17];
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

+ (id)predicateForObjectsWithMetadataKey:(id)a3 andStringValue:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DKQuery *)a1 predicateForObjectsWithStructuredMetadataKey:v6 andValue:v7];
  if (v8 || ([a1 predicateForObjectsWithMetadataKey:v6], v8 = objc_claimAutoreleasedReturnValue(), !v7))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [_CDHashUtilities md5ForString:v7];
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

+ (id)predicateForObjectsWithMetadataKey:(id)a3 likeStringValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 structuredMetadataKeyPathForMetadataKey:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K LIKE %@", v8, v7];
  }

  else
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_DKQuery *)v6 predicateForObjectsWithMetadataKey:v10 andValue:v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)predicateForObjectsWithMetadataKey:(id)a3 andIntegerValue:(int64_t)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [(_DKQuery *)a1 predicateForObjectsWithStructuredMetadataKey:v6 andValue:v7];

  if (v8 || ([a1 predicateForObjectsWithMetadataKey:v6], v8 = objc_claimAutoreleasedReturnValue(), !a4))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
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

+ (id)predicateForObjectsWithMetadataKey:(id)a3 andDoubleValue:(double)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v8 = [(_DKQuery *)a1 predicateForObjectsWithStructuredMetadataKey:v6 andValue:v7];

  if (v8 || ([a1 predicateForObjectsWithMetadataKey:v6], v8 = objc_claimAutoreleasedReturnValue(), a4 == 0.0))
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
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

+ (id)predicateForObjectsWithMetadataKey:(id)a3 andDoubleValueBetween:(double)a4 andValue:(double)a5
{
  v33[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 predicateForObjectsWithMetadataKey:v8];
  if (a4 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a5)
  {
    a5 = a4;
  }

  v11 = [a1 structuredMetadataKeyPathForMetadataKey:v8];

  if (v10 <= 2.22507386e-308)
  {
    v15 = 0;
  }

  else
  {
    v12 = MEMORY[0x1E696AE18];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v14 = v13;
    if (!v11)
    {
      v15 = [v12 predicateWithFormat:@"ANY customMetadata.doubleValue >= %@", v13];

      if (a5 < 1.79769313e308)
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

  if (a5 >= 1.79769313e308)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
LABEL_14:
    v18 = MEMORY[0x1E696AE18];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
    [v18 predicateWithFormat:@"ANY customMetadata.doubleValue <= %@", v17, v30];
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696AE18];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
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

+ (id)predicateForEventsWithSourceID:(id)a3
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"source.sourceID = %@", a3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = [a1 predicateForEventsWithBundleID:a4];
    v8 = MEMORY[0x1E696AB28];
    v14[0] = v7;
    v9 = [a1 predicateForEventsWithSourceID:v6];

    v14[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v8 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = [a1 predicateForEventsWithSourceID:v6];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4 groupIDs:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [a1 predicateForEventsWithSourceID:a3 bundleID:a4];
  if ([v8 count])
  {
    v10 = [_DKQuery predicateForEventsWithSourceGroupIDs:v8];
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

+ (id)predicateForEventsWithSourceGroupIDs:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v3;
    obj = v3;
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
          [v5 addObject:v11];

          if ([v5 count] >= 0x385)
          {
            v12 = [*(v7 + 2856) orPredicateWithSubpredicates:v5];
            [v4 addObject:v12];
            [MEMORY[0x1E695DF70] array];
            v13 = v4;
            v15 = v14 = v7;

            v5 = v15;
            v7 = v14;
            v4 = v13;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v16 = [*(v7 + 2856) orPredicateWithSubpredicates:v5];
      [v4 addObject:v16];
    }

    v17 = [*(v7 + 2856) orPredicateWithSubpredicates:v4];

    v3 = v20;
  }

  else
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)predicateForEventsWithSourceID:(id)a3 bundleID:(id)a4 itemIDs:(id)a5
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = a4;
    v10 = a3;
    v11 = [v8 predicateWithFormat:@"source.itemID IN %@", a5];
    v12 = MEMORY[0x1E696AB28];
    v20[0] = v11;
    v13 = [a1 predicateForEventsWithSourceID:v10 bundleID:v9];

    v20[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v12 andPredicateWithSubpredicates:v14];
  }

  else
  {
    v16 = a4;
    v17 = a3;
    v15 = [a1 predicateForEventsWithSourceID:v17 bundleID:v16];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)predicateForEventsWithSourceDeviceIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v14 + 1) + 8 * i) UUIDString];
          [v4 addObject:v10];
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

- (_DKQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DKQuery;
  v5 = [(_DKQuery *)&v9 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = _CDCurrentOrXPCProcessName();
      [(_DKQuery *)v5 setClientName:v6];
    }

    else
    {
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v7 = [v6 processName];
      [(_DKQuery *)v5 setClientName:v7];
    }

    -[_DKQuery setExecuteConcurrently:](v5, "setExecuteConcurrently:", [v4 decodeBoolForKey:@"executeConcurrently"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[_DKQuery executeConcurrently](self forKey:{"executeConcurrently"), @"executeConcurrently"}];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

+ (id)executableQueryForQuery:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F0608888])
  {
    v4 = v3;
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

+ (id)predicateForSpotlightEventsWithBundleID:(uint64_t)a1
{
  v29[6] = *MEMORY[0x1E69E9840];
  v26 = a2;
  objc_opt_self();
  v25 = +[_DKSystemEventStreams appActivityStream];
  v24 = [v25 name];
  v29[0] = v24;
  v23 = +[_DKSystemEventStreams appIntentsStream];
  v2 = [v23 name];
  v29[1] = v2;
  v3 = +[_DKSystemEventStreams appLocationActivityStream];
  v4 = [v3 name];
  v29[2] = v4;
  v5 = +[_CDPortraitStreams entityStream];
  v6 = [v5 name];
  v29[3] = v6;
  v7 = +[_CDPortraitStreams topicStream];
  v8 = [v7 name];
  v29[4] = v8;
  v9 = +[_DKSystemEventStreams safariHistoryStream];
  v10 = [v9 name];
  v29[5] = v10;
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

+ (id)predicateForSpotlightEventsWithDomainIdentifiers:(void *)a3 bundleID:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [_DKQuery predicateForSpotlightEventsWithBundleID:v4];

  v7 = [_DKQuery predicateForEventsWithSourceGroupIDs:v5];

  v8 = MEMORY[0x1E696AB28];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForSpotlightEventsWithItemIdentifiers:(void *)a3 bundleID:
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = MEMORY[0x1E696AE18];
  v7 = +[_DKSource intentsSourceID];
  v30[0] = v7;
  v8 = +[_DKSource spotlightSourceID];
  v30[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v10 = [v6 predicateWithFormat:@"source.itemID IN %@ AND source.bundleID == %@ AND source.sourceID IN %@", v4, v5, v9];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v10, 0}];
  v12 = 0x1E696A000;
  if (v4 && v5 && [v4 count])
  {
    v13 = +[_DKSystemEventStreams appActivityStream];
    v14 = [v13 name];
    v29[0] = v14;
    v15 = +[_DKSystemEventStreams appLocationActivityStream];
    v16 = [v15 name];
    v29[1] = v16;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

    v17 = [_DKQuery predicateForEventsWithStreamNames:v27];
    v18 = [_DKQuery predicateForEventsWithStringValue:v5];
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

+ (id)predicateForSpotlightEventsWithBundleID:(void *)a3 sinceDate:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [_DKQuery predicateForSpotlightEventsWithBundleID:v5];

  v7 = [_DKQuery predicateForEventsWithStartDateAfter:v4];

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