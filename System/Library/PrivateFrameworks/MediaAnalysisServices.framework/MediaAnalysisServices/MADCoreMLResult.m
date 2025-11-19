@interface MADCoreMLResult
+ (id)resultWithVisionResults:(id)a3;
- (MADCoreMLResult)initWithCoder:(id)a3;
- (MADCoreMLResult)initWithVisionResults:(id)a3;
- (id)description;
- (int)_packageCoreMLObservations;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADCoreMLResult

- (MADCoreMLResult)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADCoreMLResult;
  v5 = [(MADResult *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CoreMLObservations"];
    observations = v5->_observations;
    v5->_observations = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADCoreMLResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_observations forKey:@"CoreMLObservations"];
}

- (MADCoreMLResult)initWithVisionResults:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MADCoreMLResult;
  v6 = [(MADResult *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_visionResults, a3), [(MADCoreMLResult *)v7 _packageCoreMLObservations]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

+ (id)resultWithVisionResults:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithVisionResults:v4];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %lu count>", @"CoreMLObservations", -[NSArray count](self->_observations, "count")];

  return v3;
}

- (int)_packageCoreMLObservations
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  visionResults = self->_visionResults;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MADCoreMLResult__packageCoreMLObservations__block_invoke;
  v8[3] = &unk_1E8343078;
  v5 = v3;
  v9 = v5;
  [(NSArray *)visionResults enumerateObjectsUsingBlock:v8];
  objc_storeStrong(&self->_observations, v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = [(NSArray *)self->_observations count];
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADCoreMLResult] Packaged %lu observations", buf, 0xCu);
  }

  return 0;
}

void __45__MADCoreMLResult__packageCoreMLObservations__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 featureName];
    v6 = [v4 featureValue];
    v7 = [MADCoreMLObservation entryWithFeatureName:v5 featureValue:v6];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __45__MADCoreMLResult__packageCoreMLObservations__block_invoke_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v8 = v10;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADCoreMLResult] Ignoring non-compatible result class - %@", &v9, 0xCu);
  }
}

void __45__MADCoreMLResult__packageCoreMLObservations__block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADCoreMLResult] Failed to create coreML result from %@", &v1, 0xCu);
}

@end