@interface _DKSyncWindow
+ (id)choppedWindowsFromSortedNormalizedWindows:(id)a3 betweenWindowMinimumDate:(id)a4 andWindowMaximumDate:(id)a5;
+ (id)completedWindowsFromWindows:(void *)a3 firstEvent:(void *)a4 lastEvent:(uint64_t)a5 fetchOrder:(uint64_t)a6 fillOrder:(_BOOL4)a7 hitLimit:;
+ (id)completedWindowsWithSortedEvents:(void *)a3 windows:(uint64_t)a4 fetchOrder:(uint64_t)a5 fillOrder:(_BOOL4)a6 hitLimit:;
+ (id)dictionaryArrayFromWindows:(uint64_t)a1;
+ (id)lastWindowMissingFromSortedNormalizedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:;
+ (id)lastWindowMissingFromSortedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:;
+ (id)redundantWindowsFromSortedWindows:(void *)a3 olderThanDate:;
+ (id)sortedUnionOfSortedWindows:(void *)a3 andSortedWindows:;
+ (id)syncWindowWithStartDate:(void *)a3 endDate:;
+ (id)unionOfSortedSyncWindows:(uint64_t)a1;
+ (id)windowsFromDictionaryArray:(uint64_t)a1;
+ (id)windowsMissingFromSortedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:;
+ (id)windowsThatOverlapWithWindowMinimumDate:(void *)a3 windowMaximumDate:(void *)a4 sortedSyncWindows:;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)event;
- (id)unionWithSyncWindow:(id *)a1;
- (int64_t)compare:(id)a3;
- (uint64_t)isEqualToWindow:(uint64_t)a1;
- (uint64_t)startDate;
- (void)initWithEvent:(void *)a1;
- (void)setEndDate:(uint64_t)a1;
- (void)setStartDate:(uint64_t)a1;
@end

@implementation _DKSyncWindow

+ (id)syncWindowWithStartDate:(void *)a3 endDate:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  [(_DKSyncWindow *)v6 setStartDate:v5];

  [(_DKSyncWindow *)v6 setEndDate:v4];

  return v6;
}

+ (id)sortedUnionOfSortedWindows:(void *)a3 andSortedWindows:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 mutableCopy];

  [v6 addObjectsFromArray:v4];
  [v6 sortUsingSelector:sel_compare_];

  return v6;
}

+ (id)choppedWindowsFromSortedNormalizedWindows:(id)a3 betweenWindowMinimumDate:(id)a4 andWindowMaximumDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] && objc_msgSend(v7, "count"))
  {
    v10 = 0;
    while (1)
    {
      v11 = [v7 objectAtIndexedSubscript:v10];
      v12 = v11;
      if (v11)
      {
        v11 = v11[3];
      }

      v13 = [v11 compare:v8];

      if (v13 == 1)
      {
        break;
      }

      if (++v10 >= [v7 count])
      {
        goto LABEL_23;
      }
    }

    v14 = [v7 count];
    v15 = v14 - 1;
    while (1)
    {
      v16 = v15;
      if (--v14 < 0)
      {
        break;
      }

      v17 = [_DKSyncWindow choppedWindowsFromSortedNormalizedWindows:v7 betweenWindowMinimumDate:v14 andWindowMaximumDate:v9];
      v15 = v16 - 1;
      if (v17)
      {
        goto LABEL_14;
      }
    }

    v14 = -1;
LABEL_14:
    if (!v10 && v14 == [v7 count] - 1)
    {
      v18 = v7;
LABEL_22:
      v20 = v18;
      goto LABEL_24;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v16 < 0)
      {
        v19 = -1;
      }

      else
      {
        v19 = v16;
      }

      v18 = [v7 subarrayWithRange:{v10, v19 - v10 + 1}];
      goto LABEL_22;
    }
  }

LABEL_23:
  v20 = 0;
LABEL_24:

  return v20;
}

+ (id)lastWindowMissingFromSortedNormalizedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if ([v6 count])
  {
    [(_DKSyncWindow *)v6 lastWindowMissingFromSortedNormalizedWindows:v7 windowMinimumDate:v8 windowMaximumDate:&v11];
    v9 = v11;
  }

  else
  {
    v9 = objc_opt_new();
    [(_DKSyncWindow *)v9 setStartDate:v7];
    [(_DKSyncWindow *)v9 setEndDate:v8];
  }

  return v9;
}

+ (id)lastWindowMissingFromSortedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  if ([v6 count])
  {
    [(_DKSyncWindow *)v6 lastWindowMissingFromSortedWindows:v7 windowMinimumDate:v8 windowMaximumDate:&v12];
    v6 = v12;
  }

  v10 = [(_DKSyncWindow *)v9 lastWindowMissingFromSortedNormalizedWindows:v6 windowMinimumDate:v7 windowMaximumDate:v8];

  return v10;
}

+ (id)windowsMissingFromSortedWindows:(void *)a3 windowMinimumDate:(void *)a4 windowMaximumDate:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if ([v6 count])
  {
    v12 = [_DKSyncWindow unionOfSortedSyncWindows:v6];

    v13 = [_DKSyncWindow windowsThatOverlapWithWindowMinimumDate:v7 windowMaximumDate:v8 sortedSyncWindows:v12];

    v14 = [v13 copy];
    v15 = v8;
    v16 = 0;
    while (1)
    {
      [v15 timeIntervalSinceReferenceDate];
      v18 = v17;
      [v7 timeIntervalSinceReferenceDate];
      if (v18 <= v19)
      {
        v6 = v14;
        v11 = v16;
        goto LABEL_11;
      }

      v11 = [(_DKSyncWindow *)v9 lastWindowMissingFromSortedNormalizedWindows:v14 windowMinimumDate:v7 windowMaximumDate:v15];

      if (!v11)
      {
        break;
      }

      [v10 insertObject:v11 atIndex:0];
      v20 = v11[2];

      v6 = [v9 choppedWindowsFromSortedNormalizedWindows:v14 betweenWindowMinimumDate:v7 andWindowMaximumDate:v20];

      if (v6)
      {
        v14 = v6;
        v16 = v11;
        v15 = v20;
        if ([v6 count])
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v6 = v14;
LABEL_11:
    v20 = v15;
LABEL_12:
    if (![v10 count])
    {

      v10 = 0;
    }
  }

  else
  {
    v11 = objc_opt_new();
    [(_DKSyncWindow *)v11 setStartDate:v7];
    [(_DKSyncWindow *)v11 setEndDate:v8];
    [v10 addObject:v11];
  }

  return v10;
}

+ (id)redundantWindowsFromSortedWindows:(void *)a3 olderThanDate:
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if ([v4 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [v4 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = [_DKSyncWindow lastWindowMissingFromSortedWindows:v4 windowMinimumDate:v9 windowMaximumDate:v5];

    if (v10)
    {
      v37 = v10;
      v11 = v10[3];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = v4;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
LABEL_7:
        v16 = 0;
        while (1)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * v16);
          v18 = v17 ? *(v17 + 16) : 0;
          v19 = v18;
          [v19 timeIntervalSinceReferenceDate];
          v21 = v20;
          [v11 timeIntervalSinceReferenceDate];
          v23 = v22;

          if (v21 >= v23 && ([(_DKSyncWindow *)v17 == 0 redundantWindowsFromSortedWindows:v17 olderThanDate:v5, v6]& 1) != 0)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v24 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
            v14 = v24;
            if (v24)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      v10 = v37;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = v4;
      v25 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
LABEL_23:
        v28 = 0;
        while (1)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v11);
          }

          v29 = *(*(&v38 + 1) + 8 * v28);
          v30 = v29 ? *(v29 + 24) : 0;
          [v30 timeIntervalSinceReferenceDate];
          v32 = v31;
          [v5 timeIntervalSinceReferenceDate];
          if (v32 > v33)
          {
            break;
          }

          [v6 addObject:v29];
          if (v26 == ++v28)
          {
            v34 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
            v26 = v34;
            if (v34)
            {
              goto LABEL_23;
            }

            break;
          }
        }

        v10 = 0;
      }
    }

    if ([v6 count] <= 1)
    {

      v6 = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)unionOfSortedSyncWindows:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if ([v3 count])
        {
          [(_DKSyncWindow *)v3 unionOfSortedSyncWindows:v9];
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v10 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v10;
    }

    while (v10);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)completedWindowsWithSortedEvents:(void *)a3 windows:(uint64_t)a4 fetchOrder:(uint64_t)a5 fillOrder:(_BOOL4)a6 hitLimit:
{
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [v11 firstObject];
  v14 = [v11 lastObject];

  v15 = [(_DKSyncWindow *)v12 completedWindowsFromWindows:v10 firstEvent:v13 lastEvent:v14 fetchOrder:a4 fillOrder:a5 hitLimit:a6];

  return v15;
}

+ (id)dictionaryArrayFromWindows:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 138543874;
    v21 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 16);
          v12 = *(v10 + 24);
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = v12;
        v14 = v13;
        if (v11 && v13)
        {
          v32[0] = @"startDate";
          v32[1] = @"endDate";
          v33[0] = v11;
          v33[1] = v13;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
          [v3 addObject:v15];
        }

        else
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [objc_opt_class() description];
            *buf = v21;
            v27 = v16;
            v28 = 2112;
            v29 = v11;
            v30 = 2112;
            v31 = v14;
            _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to encode window due to missing date where startDate = %@ and endDate = %@", buf, 0x20u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v17 = [v4 countByEnumeratingWithState:&v22 objects:v34 count:16];
      v7 = v17;
    }

    while (v17);
  }

  v18 = [v3 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)windowsFromDictionaryArray:(uint64_t)a1
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138543874;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"startDate", v19}];
        v12 = [v10 objectForKeyedSubscript:@"endDate"];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v20 = [objc_opt_class() description];
            *buf = v19;
            v26 = v20;
            v27 = 2112;
            v28 = v11;
            v29 = 2112;
            v30 = v13;
            _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode window due to missing date where startDate = %@ and endDate = %@", buf, 0x20u);
          }
        }

        else
        {
          v15 = [_DKSyncWindow syncWindowWithStartDate:v11 endDate:v12];
          [v3 addObject:v15];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_event);
    objc_storeStrong(v5 + 2, self->_startDate);
    objc_storeStrong(v5 + 3, self->_endDate);
  }

  return v5;
}

- (uint64_t)isEqualToWindow:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 16) isEqualToDate:v4[2]])
    {
      v5 = [*(a1 + 24) isEqualToDate:v4[3]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_DKSyncWindow *)self isEqualToWindow:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSDate *)self->_startDate dk_localtimeString];
  v5 = [(NSDate *)self->_endDate dk_localtimeString];
  v6 = [v3 stringWithFormat:@"[%@ to %@]", v4, v5];

  return v6;
}

- (id)debugDescription
{
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v6 = v4 - v5;
  event = self->_event;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(_DKSyncWindow *)self description];
  v12 = v11;
  if (event)
  {
    v13 = [(_DKObject *)self->_event UUID];
    v14 = [v8 stringWithFormat:@"<%@ %p: %@ (delta=%f), event=%@>", v10, self, v12, *&v6, v13];
  }

  else
  {
    v14 = [v8 stringWithFormat:@"<%@ %p: %@ (delta=%f)>", v10, self, v11, *&v6];
  }

  return v14;
}

- (void)initWithEvent:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _DKSyncWindow;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = [v4 startDate];
      v7 = a1[2];
      a1[2] = v6;

      v8 = [v4 endDate];
      v9 = a1[3];
      a1[3] = v8;
    }
  }

  return a1;
}

- (void)setStartDate:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)setEndDate:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (id)event
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (id)unionWithSyncWindow:(id *)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_26;
  }

  v4 = a1 + 2;
  [a1[2] timeIntervalSinceReferenceDate];
  v6 = v5;
  [a1[3] timeIntervalSinceReferenceDate];
  v8 = v7;
  if (v3)
  {
    v9 = v3[2];
  }

  else
  {
    v9 = 0;
  }

  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;
  if (v3)
  {
    v12 = v3[3];
  }

  else
  {
    v12 = 0;
  }

  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;
  if (v6 > v11 || v11 > v8)
  {
    if (v11 <= v6 && v6 <= v13)
    {
      if (v11 <= v8 && v8 <= v13)
      {
        v21 = v3;
        goto LABEL_37;
      }

      v26 = objc_opt_new();
      v19 = v26;
      if (v3)
      {
        v27 = v3[2];
      }

      else
      {
        v27 = 0;
      }

      [(_DKSyncWindow *)v26 setStartDate:v27];
      if (v14 <= v8)
      {
        goto LABEL_51;
      }

LABEL_56:
      if (v3)
      {
        v28 = v3[3];
        goto LABEL_58;
      }

LABEL_64:
      v28 = 0;
      goto LABEL_58;
    }

    if (v6 <= v13 && v13 <= v8)
    {
      v24 = objc_opt_new();
      v19 = v24;
      if (v6 >= v11)
      {
        if (!v3)
        {
          v25 = 0;
          goto LABEL_47;
        }

        v4 = v3 + 2;
      }

      v25 = *v4;
LABEL_47:
      [(_DKSyncWindow *)v24 setStartDate:v25];
      goto LABEL_51;
    }

    if (v11 <= v8 && v8 <= v13)
    {
      v29 = objc_opt_new();
      v19 = v29;
      if (v11 < v6)
      {
        if (!v3)
        {
          [(_DKSyncWindow *)v29 setStartDate:?];
          goto LABEL_64;
        }

        v4 = v3 + 2;
      }

      [(_DKSyncWindow *)v29 setStartDate:?];
      goto LABEL_56;
    }

LABEL_26:
    v19 = 0;
    goto LABEL_38;
  }

  if (v6 <= v13 && v13 <= v8)
  {
    v21 = a1;
LABEL_37:
    v19 = v21;
    goto LABEL_38;
  }

  v19 = objc_opt_new();
  [(_DKSyncWindow *)v19 setStartDate:?];
  if (v8 <= v14)
  {
    goto LABEL_56;
  }

LABEL_51:
  v28 = a1[3];
LABEL_58:
  [(_DKSyncWindow *)v19 setEndDate:v28];
LABEL_38:

  return v19;
}

- (uint64_t)startDate
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

+ (id)windowsThatOverlapWithWindowMinimumDate:(void *)a3 windowMaximumDate:(void *)a4 sortedSyncWindows:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [(_DKSyncWindow *)v10 setStartDate:v6];
  [(_DKSyncWindow *)v10 setEndDate:v7];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [(_DKSyncWindow *)v10 unionWithSyncWindow:v16];

        if (v17)
        {
          [v9 addObject:{v16, v20}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)completedWindowsFromWindows:(void *)a3 firstEvent:(void *)a4 lastEvent:(uint64_t)a5 fetchOrder:(uint64_t)a6 fillOrder:(_BOOL4)a7 hitLimit:
{
  v108 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v74 = a3;
  v73 = a4;
  objc_opt_self();
  v13 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v57 = [objc_opt_class() description];
    v58 = @"UNKNOWN";
    v59 = @"oldest";
    if (a5 != 1)
    {
      v59 = @"UNKNOWN";
    }

    if (a5 == 2)
    {
      v60 = @"newest";
    }

    else
    {
      v60 = v59;
    }

    obja = v57;
    switch(a6)
    {
      case 1:
        v58 = @"always-full";
        break;
      case 2:
        v58 = @"old-to-new";
        break;
      case 3:
        v58 = @"new-to-old";
        break;
    }

    v78 = v58;
    v64 = @"was not";
    if (a7)
    {
      v64 = @"was";
    }

    v70 = v64;
    v82 = [v74 UUID];
    v68 = [v82 UUIDString];
    v80 = [v74 creationDate];
    v72 = [(NSDate *)v80 dk_localtimeString];
    v76 = [v73 UUID];
    v67 = [v76 UUIDString];
    v65 = [v73 creationDate];
    v69 = [(NSDate *)v65 dk_localtimeString];
    _DKSyncLoggingWindowsDescription(v12);
    *buf = 138545410;
    v91 = obja;
    v92 = 2114;
    v93 = v60;
    v94 = 2114;
    v95 = v78;
    v96 = 2114;
    v97 = v70;
    v98 = 2114;
    v99 = v68;
    v100 = 2114;
    v101 = v72;
    v102 = 2114;
    v103 = v67;
    v104 = 2114;
    v105 = v69;
    v107 = v106 = 2114;
    v66 = v107;
    _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Computing completed windows using fetch order %{public}@, fill order %{public}@, limit %{public}@ hit, first event %{public}@ (created %{public}@), last event %{public}@ (created %{public}@) from windows %{public}@", buf, 0x5Cu);
  }

  if (a6 == 1 || (v14 = 0, v74) && v73)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    switch(a6)
    {
      case 3:
        v15 = a5 == 1 && a7;
        a7 = 1;
        break;
      case 2:
        if (a5 != 2)
        {
          a7 = 0;
        }

        v15 = 1;
        break;
      case 1:
        if (a7)
        {
          a7 = a5 == 2;
          v15 = a5 != 2;
        }

        else
        {
          v15 = 0;
        }

        break;
      default:
        v15 = 0;
        a7 = 0;
        break;
    }

    v81 = [v74 creationDate];
    [v81 timeIntervalSinceReferenceDate];
    v17 = v16;
    v79 = [v73 creationDate];
    [v79 timeIntervalSinceReferenceDate];
    v19 = v18;
    v77 = [MEMORY[0x1E695DF00] date];
    [v77 timeIntervalSinceReferenceDate];
    v21 = v20;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v71 = v12;
    obj = v12;
    v22 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v86;
      v75 = v15;
      do
      {
        v25 = 0;
        do
        {
          if (*v86 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v85 + 1) + 8 * v25);
          if (v26)
          {
            v27 = *(v26 + 16);
            v28 = *(v26 + 24);
          }

          else
          {
            v27 = 0;
            v28 = 0;
          }

          v29 = v28;
          [v27 timeIntervalSinceReferenceDate];
          v31 = v30;
          [v29 timeIntervalSinceReferenceDate];
          if (v32 < v17 && a7)
          {
LABEL_30:
            v34 = 0;
            goto LABEL_69;
          }

          v34 = 0;
          v35 = v31 > v19 && v15;
          if (!v35 && v31 <= v21)
          {
            v36 = v32;
            if (v32 > v21)
            {
              v37 = v77;

              v29 = v37;
              v36 = v21;
            }

            v38 = v31 < v17 && a7;
            if (v38 && v17 < v36)
            {
              v42 = [_DKSyncWindow syncWindowWithStartDate:v81 endDate:v29];
              v34 = v42;
              v43 = v31 < v19 && v15;
              if (v43 && v19 < v36)
              {
                if (!v42)
                {
                  goto LABEL_65;
                }

                [_DKSyncWindow syncWindowWithStartDate:v79 endDate:?];
                v46 = v45 = v14;

                v34 = v46;
                v14 = v45;
                v15 = v75;
              }

              if (!v34)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v40 = v31 < v19 && v15;
              if (!v40 || v19 >= v36)
              {
LABEL_66:
                v47 = v26;
                if (!v26)
                {
                  goto LABEL_30;
                }

                v34 = v47;
                goto LABEL_68;
              }

LABEL_65:
              v34 = [_DKSyncWindow syncWindowWithStartDate:v27 endDate:v79];
              if (!v34)
              {
                goto LABEL_66;
              }
            }

LABEL_68:
            [v14 addObject:v34];
          }

LABEL_69:

          ++v25;
        }

        while (v23 != v25);
        v48 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
        v23 = v48;
      }

      while (v48);
    }

    v12 = v71;
  }

  v49 = [v14 lastObject];
  v50 = v49;
  if (v49)
  {
    v51 = *(v49 + 24);
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;
  v53 = [MEMORY[0x1E695DF00] distantFuture];
  if ([v52 isEqualToDate:v53])
  {
    __assert_rtn("+[_DKSyncWindow completedWindowsFromWindows:firstEvent:lastEvent:fetchOrder:fillOrder:hitLimit:]", "_DKSyncWindow.m", 625, "![completedWindows.lastObject.endDate isEqualToDate:[NSDate distantFuture]]");
  }

  v54 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    v62 = v61 = v14;
    v63 = _DKSyncLoggingWindowsDescription(v61);
    *buf = 138543618;
    v91 = v62;
    v92 = 2114;
    v93 = v63;
    _os_log_debug_impl(&dword_191750000, v54, OS_LOG_TYPE_DEBUG, "%{public}@: Computed completed windows %{public}@", buf, 0x16u);

    v14 = v61;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSDate *)self->_startDate compare:v5];
  if (v6 == NSOrderedSame)
  {
    if (v4)
    {
      v7 = v4[3];
    }

    else
    {
      v7 = 0;
    }

    v6 = [(NSDate *)self->_endDate compare:v7];
  }

  return v6;
}

+ (BOOL)choppedWindowsFromSortedNormalizedWindows:(void *)a1 betweenWindowMinimumDate:(uint64_t)a2 andWindowMaximumDate:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 objectAtIndexedSubscript:a2];
  v5 = v4;
  if (v4)
  {
    v4 = v4[2];
  }

  v6 = [v4 compare:a3] == -1;

  return v6;
}

+ (void)lastWindowMissingFromSortedNormalizedWindows:(void *)a3 windowMinimumDate:(uint64_t *)a4 windowMaximumDate:.cold.1(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a1 lastObject];
  v32 = v8;
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if ([v10 isEqualToDate:a2])
  {
    v11 = v32;
    if (v32)
    {
      v11 = v32[3];
    }

    v12 = [v11 isEqualToDate:a3];

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (v32)
  {
    v13 = v32[2];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if ([v14 compare:a2] == 1)
  {
  }

  else
  {
    v15 = v32;
    if (v32)
    {
      v15 = v32[3];
    }

    v16 = [v15 compare:a3];

    if (v16 != -1)
    {
LABEL_16:
      v17 = 0;
      goto LABEL_28;
    }
  }

  v18 = v32;
  if (v32)
  {
    v18 = v32[3];
  }

  if ([v18 compare:a3] == -1)
  {
    v17 = objc_opt_new();
    v28 = v32;
    if (v32)
    {
      v28 = v32[3];
    }

    v29 = [v28 laterDate:a2];
    [(_DKSyncWindow *)v17 setStartDate:v29];

    v30 = v17;
    v31 = a3;
  }

  else
  {
    if ([a1 count] != 1)
    {
      v19 = [a1 objectAtIndex:{objc_msgSend(a1, "count") - 2}];
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 24);
      }

      else
      {
        v21 = 0;
      }

      v22 = [a2 laterDate:v21];
      if (v32)
      {
        v23 = v32[2];
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      [v24 timeIntervalSinceReferenceDate];
      v26 = v25;
      [v22 timeIntervalSinceReferenceDate];
      if (v26 - v27 > 0.000001)
      {
        v17 = objc_opt_new();
        [(_DKSyncWindow *)v17 setStartDate:v22];
        [(_DKSyncWindow *)v17 setEndDate:v24];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_28;
    }

    v17 = objc_opt_new();
    [(_DKSyncWindow *)v17 setStartDate:a2];
    if (v32)
    {
      v31 = v32[2];
    }

    else
    {
      v31 = 0;
    }

    v30 = v17;
  }

  [(_DKSyncWindow *)v30 setEndDate:v31];
LABEL_28:
  *a4 = v17;
}

+ (void)lastWindowMissingFromSortedWindows:(void *)a3 windowMinimumDate:(uint64_t *)a4 windowMaximumDate:.cold.1(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [_DKSyncWindow unionOfSortedSyncWindows:a1];

  *a4 = [_DKSyncWindow windowsThatOverlapWithWindowMinimumDate:a2 windowMaximumDate:a3 sortedSyncWindows:v8];
}

+ (uint64_t)redundantWindowsFromSortedWindows:(void *)a3 olderThanDate:(void *)a4 .cold.1(char a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 24);
  }

  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  [a3 timeIntervalSinceReferenceDate];
  if (v9 > v10)
  {
    return 1;
  }

  [a4 addObject:a2];
  return 0;
}

+ (void)unionOfSortedSyncWindows:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [a1 lastObject];
  v5 = [(_DKSyncWindow *)v4 unionWithSyncWindow:a2];
  v6 = v5;
  if (!v5)
  {
    v7 = a1;
    v8 = a2;
    goto LABEL_5;
  }

  if (v5 != v4)
  {
    [a1 removeObjectAtIndex:{objc_msgSend(a1, "count") - 1}];
    v7 = a1;
    v8 = v6;
LABEL_5:
    [v7 addObject:v8];
  }
}

@end