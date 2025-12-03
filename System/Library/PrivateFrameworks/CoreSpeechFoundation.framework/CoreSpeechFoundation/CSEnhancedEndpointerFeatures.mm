@interface CSEnhancedEndpointerFeatures
- (CSEnhancedEndpointerFeatures)initWithTrailingSilenceDuration:(int64_t)duration clientSilenceFramesCount:(double)count endOfSentenceLikelihood:(double)likelihood wordCount:(int64_t)wordCount serverFeaturesLatency:(double)latency clientSilenceProbability:(double)probability rcTrailingSilenceDuration:(int64_t)silenceDuration rcEndOfSentenceLikelihood:(double)self0 rcWordCount:(int64_t)self1 rcServerFeaturesLatency:(double)self2 silencePosterior:(double)self3 acousticEndpointerScore:(double)self4 silencePosteriorNF:(float)self5;
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

- (CSEnhancedEndpointerFeatures)initWithTrailingSilenceDuration:(int64_t)duration clientSilenceFramesCount:(double)count endOfSentenceLikelihood:(double)likelihood wordCount:(int64_t)wordCount serverFeaturesLatency:(double)latency clientSilenceProbability:(double)probability rcTrailingSilenceDuration:(int64_t)silenceDuration rcEndOfSentenceLikelihood:(double)self0 rcWordCount:(int64_t)self1 rcServerFeaturesLatency:(double)self2 silencePosterior:(double)self3 acousticEndpointerScore:(double)self4 silencePosteriorNF:(float)self5
{
  v28.receiver = self;
  v28.super_class = CSEnhancedEndpointerFeatures;
  result = [(CSEnhancedEndpointerFeatures *)&v28 init];
  if (result)
  {
    result->_trailingSilenceDuration = duration;
    result->_clientSilenceFramesCount = count;
    result->_endOfSentenceLikelihood = likelihood;
    result->_wordCount = wordCount;
    result->_serverFeaturesLatency = latency;
    result->_clientSilenceProbability = probability;
    result->_rcTrailingSilenceDuration = silenceDuration;
    result->_rcEndOfSentenceLikelihood = sentenceLikelihood;
    result->_rcWordCount = rcWordCount;
    result->_rcServerFeaturesLatency = featuresLatency;
    result->_silencePosterior = posterior;
    result->_acousticEndpointerScore = score;
    result->_silencePosteriorNF = f;
  }

  return result;
}

@end