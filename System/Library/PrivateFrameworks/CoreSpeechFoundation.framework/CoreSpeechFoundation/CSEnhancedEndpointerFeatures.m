@interface CSEnhancedEndpointerFeatures
- (CSEnhancedEndpointerFeatures)initWithTrailingSilenceDuration:(int64_t)a3 clientSilenceFramesCount:(double)a4 endOfSentenceLikelihood:(double)a5 wordCount:(int64_t)a6 serverFeaturesLatency:(double)a7 clientSilenceProbability:(double)a8 rcTrailingSilenceDuration:(int64_t)a9 rcEndOfSentenceLikelihood:(double)a10 rcWordCount:(int64_t)a11 rcServerFeaturesLatency:(double)a12 silencePosterior:(double)a13 acousticEndpointerScore:(double)a14 silencePosteriorNF:(float)a15;
- (id)toFeatureArray;
@end

@implementation CSEnhancedEndpointerFeatures

- (id)toFeatureArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_trailingSilenceDuration];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_clientSilenceFramesCount];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endOfSentenceLikelihood];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_wordCount];
  [v3 addObject:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_serverFeaturesLatency];
  [v3 addObject:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_clientSilenceProbability];
  [v3 addObject:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rcTrailingSilenceDuration];
  [v3 addObject:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rcEndOfSentenceLikelihood];
  [v3 addObject:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rcWordCount];
  [v3 addObject:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rcServerFeaturesLatency];
  [v3 addObject:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_silencePosterior];
  [v3 addObject:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_acousticEndpointerScore];
  [v3 addObject:v15];

  *&v16 = self->_silencePosteriorNF;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  [v3 addObject:v17];

  return v3;
}

- (CSEnhancedEndpointerFeatures)initWithTrailingSilenceDuration:(int64_t)a3 clientSilenceFramesCount:(double)a4 endOfSentenceLikelihood:(double)a5 wordCount:(int64_t)a6 serverFeaturesLatency:(double)a7 clientSilenceProbability:(double)a8 rcTrailingSilenceDuration:(int64_t)a9 rcEndOfSentenceLikelihood:(double)a10 rcWordCount:(int64_t)a11 rcServerFeaturesLatency:(double)a12 silencePosterior:(double)a13 acousticEndpointerScore:(double)a14 silencePosteriorNF:(float)a15
{
  v28.receiver = self;
  v28.super_class = CSEnhancedEndpointerFeatures;
  result = [(CSEnhancedEndpointerFeatures *)&v28 init];
  if (result)
  {
    result->_trailingSilenceDuration = a3;
    result->_clientSilenceFramesCount = a4;
    result->_endOfSentenceLikelihood = a5;
    result->_wordCount = a6;
    result->_serverFeaturesLatency = a7;
    result->_clientSilenceProbability = a8;
    result->_rcTrailingSilenceDuration = a9;
    result->_rcEndOfSentenceLikelihood = a10;
    result->_rcWordCount = a11;
    result->_rcServerFeaturesLatency = a12;
    result->_silencePosterior = a13;
    result->_acousticEndpointerScore = a14;
    result->_silencePosteriorNF = a15;
  }

  return result;
}

@end