@interface BWInferenceResult
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp;
- (BOOL)isValid;
- (BWInferenceResult)initWithResult:(id)a3 replacementInferences:(id)a4 replacementPreventionReason:(id)a5;
- (char)initWithInferenceType:(void *)a3 inferences:(void *)a4 preventionReason:(__int128 *)a5 atTimestamp:;
- (id)description;
- (void)dealloc;
@end

@implementation BWInferenceResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceResult;
  [(BWInferenceResult *)&v3 dealloc];
}

- (BOOL)isValid
{
  if (self->_timestamp.timescale)
  {
    v2 = [(NSDictionary *)self->_inferences count];
    if (v2)
    {
      LOBYTE(v2) = self->_preventionReason == 0;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = BWInferenceTypeDescription(self->_inferenceType);
  if ([(BWInferenceResult *)self isValid])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@ %p> inferenceType: %@, isValid: %@, inferences: %lu (keys: %@), preventionReason: %@", v4, self, v5, v6, -[NSDictionary count](self->_inferences, "count"), -[NSDictionary allKeys](self->_inferences, "allKeys"), self->_preventionReason];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (char)initWithInferenceType:(void *)a3 inferences:(void *)a4 preventionReason:(__int128 *)a5 atTimestamp:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = BWInferenceResult;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = v9;
  if (v9)
  {
    *(v9 + 2) = a2;
    v11 = *a5;
    *(v9 + 28) = *(a5 + 2);
    *(v9 + 12) = v11;
    *(v9 + 5) = [a3 copy];
    *(v10 + 6) = [a4 copy];
  }

  return v10;
}

- (BWInferenceResult)initWithResult:(id)a3 replacementInferences:(id)a4 replacementPreventionReason:(id)a5
{
  v9 = [a3 inferenceType];
  if (a3)
  {
    [a3 timestamp];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
  }

  return [(BWInferenceResult *)self initWithInferenceType:v9 inferences:a4 preventionReason:a5 atTimestamp:&v11];
}

@end