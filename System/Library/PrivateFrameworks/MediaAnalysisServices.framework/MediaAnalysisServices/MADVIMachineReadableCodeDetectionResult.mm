@interface MADVIMachineReadableCodeDetectionResult
- (MADVIMachineReadableCodeDetectionResult)initWithCoder:(id)a3;
- (MADVIMachineReadableCodeDetectionResult)initWithObservations:(id)a3;
- (NSArray)resultItems;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIMachineReadableCodeDetectionResult

- (MADVIMachineReadableCodeDetectionResult)initWithObservations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADVIMachineReadableCodeDetectionResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observations, a3);
  }

  return v7;
}

- (MADVIMachineReadableCodeDetectionResult)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADVIMachineReadableCodeDetectionResult;
  v5 = [(MADResult *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getVNBarcodeObservationClass_softClass;
    v19 = getVNBarcodeObservationClass_softClass;
    if (!getVNBarcodeObservationClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getVNBarcodeObservationClass_block_invoke;
      v15[3] = &unk_1E8342DE0;
      v15[4] = &v16;
      __getVNBarcodeObservationClass_block_invoke(v15);
      v7 = v17[3];
    }

    v8 = v7;
    _Block_object_dispose(&v16, 8);
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v10 = [v6 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Observations"];
    observations = v5->_observations;
    v5->_observations = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIMachineReadableCodeDetectionResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_observations forKey:{@"Observations", v5.receiver, v5.super_class}];
}

- (unint64_t)executionNanoseconds
{
  v3.receiver = self;
  v3.super_class = MADVIMachineReadableCodeDetectionResult;
  return [(MADResult *)&v3 executionNanoseconds];
}

- (double)executionTimeInterval
{
  v3.receiver = self;
  v3.super_class = MADVIMachineReadableCodeDetectionResult;
  [(MADResult *)&v3 executionTimeInterval];
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"observations: %@>", self->_observations];

  return v3;
}

- (NSArray)resultItems
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_observations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [MADVIMachineReadableCodeDetectionResultItem alloc];
        [v9 topLeft];
        v12 = v11;
        v14 = v13;
        [v9 topRight];
        v16 = v15;
        v18 = v17;
        [v9 bottomLeft];
        v20 = v19;
        v22 = v21;
        [v9 bottomRight];
        v24 = v23;
        v26 = v25;
        v27 = [v9 symbology];
        v28 = [v9 payloadStringValue];
        v29 = [v9 barcodeDescriptor];
        v30 = [(MADVIMachineReadableCodeDetectionResultItem *)v10 initWithTopLeft:v27 topRight:v28 bottomLeft:v29 bottomRight:v12 symbology:v14 payload:v16 andDescriptor:v18, v20, v22, v24, v26];
        [v3 addObject:v30];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  return v3;
}

@end