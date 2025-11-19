@interface CSKeywordAnalyzerNDAPIResult
- (CSKeywordAnalyzerNDAPIResult)init;
- (NSDictionary)dictionary;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CSKeywordAnalyzerNDAPIResult

- (CSKeywordAnalyzerNDAPIResult)init
{
  v3.receiver = self;
  v3.super_class = CSKeywordAnalyzerNDAPIResult;
  result = [(CSKeywordAnalyzerNDAPIResult *)&v3 init];
  if (result)
  {
    result->_bestScore = -1000000.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSKeywordAnalyzerNDAPIResult);
  [(CSKeywordAnalyzerNDAPIResult *)v4 setPhId:self->_phId];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setSamplesFed:self->_samplesFed];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setBestPhrase:self->_bestPhrase];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setBestStart:self->_bestStart];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setBestEnd:self->_bestEnd];
  *&v5 = self->_bestScore;
  [(CSKeywordAnalyzerNDAPIResult *)v4 setBestScore:v5];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setIsEarlyWarning:self->_isEarlyWarning];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setIsRescoring:self->_isRescoring];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setSamplesAtFire:self->_samplesAtFire];
  [(CSKeywordAnalyzerNDAPIResult *)v4 setStartSampleCount:self->_startSampleCount];
  return v4;
}

- (NSDictionary)dictionary
{
  v17[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_samplesFed, @"samples_fed"}];
  v17[0] = v3;
  v16[1] = @"best_phrase";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestPhrase];
  v17[1] = v4;
  v16[2] = @"best_start";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestStart];
  v17[2] = v5;
  v16[3] = @"best_end";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestEnd];
  v17[3] = v6;
  v16[4] = @"best_score";
  *&v7 = self->_bestScore;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v17[4] = v8;
  v16[5] = @"early_warning";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEarlyWarning];
  v17[5] = v9;
  v16[6] = @"is_rescoring";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRescoring];
  v17[6] = v10;
  v16[7] = @"samples_at_fire";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_samplesAtFire];
  v17[7] = v11;
  v16[8] = @"start_sample_count";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_startSampleCount];
  v17[8] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end