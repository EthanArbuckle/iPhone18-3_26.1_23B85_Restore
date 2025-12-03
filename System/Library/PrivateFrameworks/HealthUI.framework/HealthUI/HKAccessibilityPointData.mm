@interface HKAccessibilityPointData
- (HKAccessibilityPointData)initWithHorizontalScreenCoordinate:(double)coordinate horizontalTimeCoordinate:(id)timeCoordinate horizontalDate:(id)date values:(id)values;
- (id)description;
@end

@implementation HKAccessibilityPointData

- (HKAccessibilityPointData)initWithHorizontalScreenCoordinate:(double)coordinate horizontalTimeCoordinate:(id)timeCoordinate horizontalDate:(id)date values:(id)values
{
  timeCoordinateCopy = timeCoordinate;
  dateCopy = date;
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = HKAccessibilityPointData;
  v14 = [(HKAccessibilityPointData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_horizontalScreenCoordinate = coordinate;
    objc_storeStrong(&v14->_horizontalTimeCoordinate, timeCoordinate);
    objc_storeStrong(&v15->_horizontalDate, date);
    objc_storeStrong(&v15->_values, values);
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
  horizontalTimeCoordinate = [(HKAccessibilityPointData *)self horizontalTimeCoordinate];
  v10 = [v8 stringWithFormat:@"  horizontalTimeCoordinate: '%@'", horizontalTimeCoordinate];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  horizontalDate = [(HKAccessibilityPointData *)self horizontalDate];
  v13 = [v11 stringWithFormat:@"  horizontalDate: %@", horizontalDate];
  [v3 addObject:v13];

  values = [(HKAccessibilityPointData *)self values];

  v15 = MEMORY[0x1E696AEC0];
  if (values)
  {
    values2 = [(HKAccessibilityPointData *)self values];
    v17 = [v15 stringWithFormat:@"  values %lu:", objc_msgSend(values2, "count")];
    [v3 addObject:v17];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    values3 = [(HKAccessibilityPointData *)self values];
    v19 = [values3 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(values3);
          }

          v23 = [*(*(&v27 + 1) + 8 * i) description];
          v24 = _IndentString(v23, 4);
          [v3 addObject:v24];
        }

        v20 = [values3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }
  }

  else
  {
    values3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  values NULL (no data)"];
    [v3 addObject:values3];
  }

  v25 = [v3 componentsJoinedByString:@"\n"];

  return v25;
}

@end