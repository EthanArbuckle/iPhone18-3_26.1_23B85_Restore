@interface MADVIMachineReadableCodeDetectionResult
- (MADVIMachineReadableCodeDetectionResult)initWithCoder:(id)coder;
- (MADVIMachineReadableCodeDetectionResult)initWithObservations:(id)observations;
- (NSArray)resultItems;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIMachineReadableCodeDetectionResult

- (MADVIMachineReadableCodeDetectionResult)initWithObservations:(id)observations
{
  observationsCopy = observations;
  v9.receiver = self;
  v9.super_class = MADVIMachineReadableCodeDetectionResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observations, observations);
  }

  return v7;
}

- (MADVIMachineReadableCodeDetectionResult)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADVIMachineReadableCodeDetectionResult;
  v5 = [(MADResult *)&v14 initWithCoder:coderCopy];
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

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Observations"];
    observations = v5->_observations;
    v5->_observations = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIMachineReadableCodeDetectionResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_observations forKey:{@"Observations", v5.receiver, v5.super_class}];
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
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"observations: %@>", self->_observations];

  return string;
}

- (NSArray)resultItems
{
  v37 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
        symbology = [v9 symbology];
        payloadStringValue = [v9 payloadStringValue];
        barcodeDescriptor = [v9 barcodeDescriptor];
        v30 = [(MADVIMachineReadableCodeDetectionResultItem *)v10 initWithTopLeft:symbology topRight:payloadStringValue bottomLeft:barcodeDescriptor bottomRight:v12 symbology:v14 payload:v16 andDescriptor:v18, v20, v22, v24, v26];
        [array addObject:v30];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  return array;
}

@end