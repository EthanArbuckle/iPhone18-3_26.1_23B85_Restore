@interface _EARDefaultServerEndpointFeatures
- (_EARDefaultServerEndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(float)likelihood acousticEndpointerScore:(float)score silencePosterior:(float)posterior;
@end

@implementation _EARDefaultServerEndpointFeatures

- (_EARDefaultServerEndpointFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration endOfSentenceLikelihood:(float)likelihood acousticEndpointerScore:(float)score silencePosterior:(float)posterior
{
  v13.receiver = self;
  v13.super_class = _EARDefaultServerEndpointFeatures;
  result = [(_EARDefaultServerEndpointFeatures *)&v13 init];
  if (result)
  {
    result->_wordCount = count;
    result->_trailingSilenceDuration = duration;
    result->_endOfSentenceLikelihood = likelihood;
    result->_acousticEndpointerScore = score;
    result->_silencePosterior = posterior;
  }

  return result;
}

@end