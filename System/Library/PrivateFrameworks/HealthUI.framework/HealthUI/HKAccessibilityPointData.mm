@interface HKAccessibilityPointData
- (HKAccessibilityPointData)initWithHorizontalScreenCoordinate:(double)a3 horizontalTimeCoordinate:(id)a4 horizontalDate:(id)a5 values:(id)a6;
- (id)description;
@end

@implementation HKAccessibilityPointData

- (HKAccessibilityPointData)initWithHorizontalScreenCoordinate:(double)a3 horizontalTimeCoordinate:(id)a4 horizontalDate:(id)a5 values:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKAccessibilityPointData;
  v14 = [(HKAccessibilityPointData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_horizontalScreenCoordinate = a3;
    objc_storeStrong(&v14->_horizontalTimeCoordinate, a4);
    objc_storeStrong(&v15->_horizontalDate, a5);
    objc_storeStrong(&v15->_values, a6);
  }

  return v15;
}

- (id)description
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKAccessibilityPointData %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  [(HKAccessibilityPointData *)self horizontalScreenCoordinate];
  v7 = [v5 stringWithFormat:@"  horizontalScreenCoordinate: %lg", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(HKAccessibilityPointData *)self horizontalTimeCoordinate];
  v10 = [v8 stringWithFormat:@"  horizontalTimeCoordinate: '%@'", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(HKAccessibilityPointData *)self horizontalDate];
  v13 = [v11 stringWithFormat:@"  horizontalDate: %@", v12];
  [v3 addObject:v13];

  v14 = [(HKAccessibilityPointData *)self values];

  v15 = MEMORY[0x1E696AEC0];
  if (v14)
  {
    v16 = [(HKAccessibilityPointData *)self values];
    v17 = [v15 stringWithFormat:@"  values %lu:", objc_msgSend(v16, "count")];
    [v3 addObject:v17];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [(HKAccessibilityPointData *)self values];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v27 + 1) + 8 * i) description];
          v24 = _IndentString(v23, 4);
          [v3 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  values NULL (no data)"];
    [v3 addObject:v18];
  }

  v25 = [v3 componentsJoinedByString:@"\n"];

  return v25;
}

@end