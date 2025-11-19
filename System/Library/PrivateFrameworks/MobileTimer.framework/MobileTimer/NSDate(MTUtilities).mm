@interface NSDate(MTUtilities)
+ (id)mtEarliest:()MTUtilities;
+ (id)mtLatest:()MTUtilities;
+ (id)mtNow;
- (BOOL)mtIsAfterOrSameAsDate:()MTUtilities;
- (BOOL)mtIsBeforeOrSameAsDate:()MTUtilities;
- (id)mtDateNearestMatchingComponents:()MTUtilities;
- (id)mtDescription;
- (id)mtMidnightForDate;
- (uint64_t)mtIsAfterDate:()MTUtilities;
- (uint64_t)mtIsBeforeDate:()MTUtilities;
@end

@implementation NSDate(MTUtilities)

+ (id)mtNow
{
  v0 = MTCurrentDateProvider();
  v1 = v0[2]();

  return v1;
}

- (uint64_t)mtIsBeforeDate:()MTUtilities
{
  v4 = a3;
  if (!v4)
  {
    [NSDate(MTUtilities) mtIsBeforeDate:];
  }

  v5 = [a1 earlierDate:v4];
  if (v5 == a1)
  {
    v6 = [a1 isEqualToDate:v4] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mtIsBeforeOrSameAsDate:()MTUtilities
{
  v4 = a3;
  if (!v4)
  {
    [NSDate(MTUtilities) mtIsBeforeOrSameAsDate:];
  }

  v5 = [a1 earlierDate:v4];
  v6 = v5 == a1;

  return v6;
}

- (uint64_t)mtIsAfterDate:()MTUtilities
{
  v4 = a3;
  if (!v4)
  {
    [NSDate(MTUtilities) mtIsAfterDate:];
  }

  v5 = [a1 laterDate:v4];
  if (v5 == a1)
  {
    v6 = [a1 isEqualToDate:v4] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mtIsAfterOrSameAsDate:()MTUtilities
{
  v4 = a3;
  if (!v4)
  {
    [NSDate(MTUtilities) mtIsAfterOrSameAsDate:];
  }

  v5 = [a1 laterDate:v4];
  v6 = v5 == a1;

  return v6;
}

- (id)mtDateNearestMatchingComponents:()MTUtilities
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v6 = [v5 components:224 fromDate:a1];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = a1;
  }

  else
  {
    v9 = [v5 mtPreviousDateBeforeDate:a1 matchingComponents:v4];
    v10 = [v5 mtNextDateAfterDate:a1 matchingComponents:v4];
    [a1 timeIntervalSinceDate:v9];
    v12 = v11;
    [v10 timeIntervalSinceDate:a1];
    if (v13 >= v12)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    v8 = v14;
  }

  return v8;
}

+ (id)mtLatest:()MTUtilities
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (!v6 || [v9 mtIsAfterDate:v6]))
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)mtEarliest:()MTUtilities
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (!v6 || [v9 mtIsBeforeDate:v6]))
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)mtMidnightForDate
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 startOfDayForDate:a1];

  return v3;
}

- (id)mtDescription
{
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  v3 = [a1 descriptionWithLocale:v2];

  return v3;
}

- (void)mtIsBeforeDate:()MTUtilities .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)mtIsBeforeOrSameAsDate:()MTUtilities .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)mtIsAfterDate:()MTUtilities .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)mtIsAfterOrSameAsDate:()MTUtilities .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end