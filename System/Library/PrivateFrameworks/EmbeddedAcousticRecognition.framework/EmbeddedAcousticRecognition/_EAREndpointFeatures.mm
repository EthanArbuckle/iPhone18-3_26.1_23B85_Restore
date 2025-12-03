@interface _EAREndpointFeatures
- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood acousticEndpointerScore:(double)score pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)self0 silencePosteriorNF:(float)self1 serverFeaturesLatency:(float)self2 eagerResultEndTime:(int64_t)self3;
- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)probability silencePosteriorNF:(float)self0 serverFeaturesLatency:(float)self1;
- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)probability silencePosteriorNF:(float)self0 serverFeaturesLatency:(float)self1 eagerResultEndTime:(int64_t)self2;
- (id)description;
@end

@implementation _EAREndpointFeatures

- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)probability silencePosteriorNF:(float)self0 serverFeaturesLatency:(float)self1
{
  *&v11 = latency;
  *&v12 = f;
  return [(_EAREndpointFeatures *)self initWithWordCount:count trailingSilenceDuration:duration endOfSentenceLikelihood:counts acousticEndpointerScore:0 pauseCounts:likelihood silencePosterior:0.0 clientSilenceFramesCountMs:posterior clientSilenceProbability:ms silencePosteriorNF:probability serverFeaturesLatency:v12 eagerResultEndTime:v11];
}

- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)probability silencePosteriorNF:(float)self0 serverFeaturesLatency:(float)self1 eagerResultEndTime:(int64_t)self2
{
  *&v12 = latency;
  *&v13 = f;
  return [(_EAREndpointFeatures *)self initWithWordCount:count trailingSilenceDuration:duration endOfSentenceLikelihood:counts acousticEndpointerScore:time pauseCounts:likelihood silencePosterior:0.0 clientSilenceFramesCountMs:posterior clientSilenceProbability:ms silencePosteriorNF:probability serverFeaturesLatency:v13 eagerResultEndTime:v12];
}

- (_EAREndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(double)likelihood acousticEndpointerScore:(double)score pauseCounts:(id)counts silencePosterior:(double)posterior clientSilenceFramesCountMs:(double)ms clientSilenceProbability:(double)self0 silencePosteriorNF:(float)self1 serverFeaturesLatency:(float)self2 eagerResultEndTime:(int64_t)self3
{
  countsCopy = counts;
  v29.receiver = self;
  v29.super_class = _EAREndpointFeatures;
  v26 = [(_EAREndpointFeatures *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->_wordCount = count;
    v26->_trailingSilenceDuration = duration;
    v26->_endOfSentenceLikelihood = likelihood;
    v26->_acousticEndpointerScore = score;
    objc_storeStrong(&v26->_pauseCounts, counts);
    v27->_silencePosterior = posterior;
    v27->_clientSilenceFramesCountMs = ms;
    v27->_clientSilenceProbability = probability;
    v27->_silencePosteriorNF = f;
    v27->_serverFeaturesLatency = latency;
    v27->_eagerResultEndTime = time;
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