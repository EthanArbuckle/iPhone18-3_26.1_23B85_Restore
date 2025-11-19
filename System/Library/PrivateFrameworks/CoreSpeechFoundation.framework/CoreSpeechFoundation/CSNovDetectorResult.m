@interface CSNovDetectorResult
- (CSNovDetectorResult)initWithResult:(id)a3;
- (NSDictionary)dictionary;
@end

@implementation CSNovDetectorResult

- (NSDictionary)dictionary
{
  v15[7] = *MEMORY[0x1E69E9840];
  v14[0] = @"samples_fed";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sampleFed];
  v15[0] = v3;
  v14[1] = @"best_phrase";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestPhrase];
  v15[1] = v4;
  v14[2] = @"best_start";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestStart];
  v15[2] = v5;
  v14[3] = @"best_end";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestEnd];
  v15[3] = v6;
  v14[4] = @"best_score";
  *&v7 = self->_bestScore;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v15[4] = v8;
  v14[5] = @"early_warning";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_earlyWarning];
  v15[5] = v9;
  v14[6] = @"is_rescoring";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRescoring];
  v15[6] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (CSNovDetectorResult)initWithResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSNovDetectorResult;
  v5 = [(CSNovDetectorResult *)&v8 init];
  if (v5)
  {
    v5->_sampleFed = [v4 sampleFed];
    v5->_bestPhrase = [v4 bestPhrase];
    v5->_bestStart = [v4 bestStart];
    v5->_bestEnd = [v4 bestEnd];
    [v4 bestScore];
    v5->_bestScore = v6;
    v5->_earlyWarning = [v4 earlyWarning];
  }

  return v5;
}

@end