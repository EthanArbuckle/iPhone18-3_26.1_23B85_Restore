@interface CSKeywordAnalyzerNDEAPIResult
- (CSKeywordAnalyzerNDEAPIResult)init;
- (CSKeywordAnalyzerNDEAPIResult)initWithBlob:(id)a3 isEarlyDetected:(BOOL)a4;
- (NSDictionary)dictionary;
@end

@implementation CSKeywordAnalyzerNDEAPIResult

- (NSDictionary)dictionary
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"samples_fed";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_samplesFed];
  v14[0] = v3;
  v13[1] = @"best_start";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestStart];
  v14[1] = v4;
  v13[2] = @"best_end";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestEnd];
  v14[2] = v5;
  v13[3] = @"best_score";
  *&v6 = self->_bestScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v14[3] = v7;
  v13[4] = @"is_secondchance";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSecondChance];
  v14[4] = v8;
  v13[5] = @"isEarlyDetect";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEarlyDetect];
  v14[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (CSKeywordAnalyzerNDEAPIResult)initWithBlob:(id)a3 isEarlyDetected:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CSKeywordAnalyzerNDEAPIResult;
  v7 = [(CSKeywordAnalyzerNDEAPIResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [v6 bytes];
      *&v10 = *v9;
      *(&v10 + 1) = HIDWORD(*v9);
      *&v8->_samplesFed = v10;
      v8->_bestEnd = *(v9 + 8);
      v8->_bestScore = *(v9 + 12);
      v8->_isSecondChance = *(v9 + 16);
      v8->_isEarlyDetect = a4;
    }

    else
    {
      v7->_bestScore = -1000000.0;
    }
  }

  return v8;
}

- (CSKeywordAnalyzerNDEAPIResult)init
{
  v3.receiver = self;
  v3.super_class = CSKeywordAnalyzerNDEAPIResult;
  result = [(CSKeywordAnalyzerNDEAPIResult *)&v3 init];
  if (result)
  {
    result->_bestScore = -1000000.0;
  }

  return result;
}

@end