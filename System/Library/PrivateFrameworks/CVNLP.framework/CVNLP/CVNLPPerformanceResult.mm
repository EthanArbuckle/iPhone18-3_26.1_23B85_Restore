@interface CVNLPPerformanceResult
- (CVNLPPerformanceResult)initWithName:(id)name;
- (id)description;
- (id)dict;
@end

@implementation CVNLPPerformanceResult

- (CVNLPPerformanceResult)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = CVNLPPerformanceResult;
  v6 = [(CVNLPPerformanceResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_name(self, a2, v2, v3);
  cpuTime = self->cpuTime;
  v10 = objc_msgSend_stringWithFormat_(v5, v8, @"[%@: Peak-Delta: %lf, CPU-Time: %lf, Interval: %lf]", v9, v6, *&self->peakdelta, *&cpuTime, *&self->timeInterval);

  return v10;
}

- (id)dict
{
  v27[5] = *MEMORY[0x1E69E9840];
  v26[0] = @"maxpeak";
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, v2, v3, self->maxpeak);
  v27[0] = v5;
  v26[1] = @"peakdelta";
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v6, v7, v8, self->peakdelta);
  v27[1] = v9;
  v26[2] = @"recentpeak";
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, v12, self->recentpeak);
  v27[2] = v13;
  v26[3] = @"current";
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, v16, self->current);
  v27[3] = v17;
  v26[4] = @"timeInterval";
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, self->timeInterval);
  v27[4] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v27, v26, 5);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end