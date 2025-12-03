@interface HKAccessibilityData
- (HKAccessibilityData)initWithPointData:(id)data accessibilitySpans:(id)spans;
- (id)description;
@end

@implementation HKAccessibilityData

- (HKAccessibilityData)initWithPointData:(id)data accessibilitySpans:(id)spans
{
  dataCopy = data;
  spansCopy = spans;
  v12.receiver = self;
  v12.super_class = HKAccessibilityData;
  v9 = [(HKAccessibilityData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessibilityPointData, data);
    objc_storeStrong(&v10->_accessibilitySpans, spans);
  }

  return v10;
}

- (id)description
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKChartAccessbilityData %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  accessibilitySpans = [(HKAccessibilityData *)self accessibilitySpans];
  v7 = [v5 stringWithFormat:@"  accessibilitySpans %lu", objc_msgSend(accessibilitySpans, "count")];
  [v3 addObject:v7];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(HKAccessibilityData *)self accessibilitySpans];
  v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        accessibilitySpans2 = [(HKAccessibilityData *)self accessibilitySpans];
        v14 = [accessibilitySpans2 objectForKeyedSubscript:v12];
        v15 = [v14 description];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"    key %@:", v12];
        [v3 addObject:v16];

        v17 = _IndentString(v15, 6);
        [v3 addObject:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  v18 = MEMORY[0x1E696AEC0];
  accessibilityPointData = [(HKAccessibilityData *)self accessibilityPointData];
  v20 = [v18 stringWithFormat:@"  accessibilityPointData %lu", objc_msgSend(accessibilityPointData, "count")];
  [v3 addObject:v20];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  accessibilityPointData2 = [(HKAccessibilityData *)self accessibilityPointData];
  v22 = [accessibilityPointData2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(accessibilityPointData2);
        }

        v26 = [*(*(&v31 + 1) + 8 * j) description];
        v27 = _IndentString(v26, 4);
        [v3 addObject:v27];
      }

      v23 = [accessibilityPointData2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  v28 = [v3 componentsJoinedByString:@"\n"];

  return v28;
}

@end