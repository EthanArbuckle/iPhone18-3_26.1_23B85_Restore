@interface _EAREndpointFeatures
- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 acousticEndpointerScore:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 clientSilenceFramesCountMs:(double)a9 clientSilenceProbability:(double)a10 silencePosteriorNF:(float)a11 serverFeaturesLatency:(float)a12 eagerResultEndTime:(int64_t)a13;
- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 clientSilenceFramesCountMs:(double)a8 clientSilenceProbability:(double)a9 silencePosteriorNF:(float)a10 serverFeaturesLatency:(float)a11;
- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 clientSilenceFramesCountMs:(double)a8 clientSilenceProbability:(double)a9 silencePosteriorNF:(float)a10 serverFeaturesLatency:(float)a11 eagerResultEndTime:(int64_t)a12;
- (id)description;
@end

@implementation _EAREndpointFeatures

- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 clientSilenceFramesCountMs:(double)a8 clientSilenceProbability:(double)a9 silencePosteriorNF:(float)a10 serverFeaturesLatency:(float)a11
{
  *&v11 = a11;
  *&v12 = a10;
  return [(_EAREndpointFeatures *)self initWithWordCount:a3 trailingSilenceDuration:a4 endOfSentenceLikelihood:a6 acousticEndpointerScore:0 pauseCounts:a5 silencePosterior:0.0 clientSilenceFramesCountMs:a7 clientSilenceProbability:a8 silencePosteriorNF:a9 serverFeaturesLatency:v12 eagerResultEndTime:v11];
}

- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 clientSilenceFramesCountMs:(double)a8 clientSilenceProbability:(double)a9 silencePosteriorNF:(float)a10 serverFeaturesLatency:(float)a11 eagerResultEndTime:(int64_t)a12
{
  *&v12 = a11;
  *&v13 = a10;
  return [(_EAREndpointFeatures *)self initWithWordCount:a3 trailingSilenceDuration:a4 endOfSentenceLikelihood:a6 acousticEndpointerScore:a12 pauseCounts:a5 silencePosterior:0.0 clientSilenceFramesCountMs:a7 clientSilenceProbability:a8 silencePosteriorNF:a9 serverFeaturesLatency:v13 eagerResultEndTime:v12];
}

- (_EAREndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(double)a5 acousticEndpointerScore:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 clientSilenceFramesCountMs:(double)a9 clientSilenceProbability:(double)a10 silencePosteriorNF:(float)a11 serverFeaturesLatency:(float)a12 eagerResultEndTime:(int64_t)a13
{
  v25 = a7;
  v29.receiver = self;
  v29.super_class = _EAREndpointFeatures;
  v26 = [(_EAREndpointFeatures *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->_wordCount = a3;
    v26->_trailingSilenceDuration = a4;
    v26->_endOfSentenceLikelihood = a5;
    v26->_acousticEndpointerScore = a6;
    objc_storeStrong(&v26->_pauseCounts, a7);
    v27->_silencePosterior = a8;
    v27->_clientSilenceFramesCountMs = a9;
    v27->_clientSilenceProbability = a10;
    v27->_silencePosteriorNF = a11;
    v27->_serverFeaturesLatency = a12;
    v27->_eagerResultEndTime = a13;
  }

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  wordCount = self->_wordCount;
  trailingSilenceDuration = self->_trailingSilenceDuration;
  endOfSentenceLikelihood = self->_endOfSentenceLikelihood;
  v7 = [(NSArray *)self->_pauseCounts componentsJoinedByString:@", "];
  v8 = [v3 stringWithFormat:@"{ wordCount: %ld, trailingSilenceDuration: %ld, endOfSentenceLikelihood: %f, pauseCounts:(%@), silencePosterior: %f, clientSilenceFramesCountMs: %f, clientSilenceProbability: %f, silencePosteriorNF: %f, serverFeaturesLatency: %f, eagerResultEndTime: %ld }", wordCount, trailingSilenceDuration, *&endOfSentenceLikelihood, v7, *&self->_silencePosterior, *&self->_clientSilenceFramesCountMs, *&self->_clientSilenceProbability, self->_silencePosteriorNF, self->_serverFeaturesLatency, self->_eagerResultEndTime];

  return v8;
}

@end