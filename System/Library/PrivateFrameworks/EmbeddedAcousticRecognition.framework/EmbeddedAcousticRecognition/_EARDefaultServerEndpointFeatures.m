@interface _EARDefaultServerEndpointFeatures
- (_EARDefaultServerEndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(float)a5 acousticEndpointerScore:(float)a6 silencePosterior:(float)a7;
@end

@implementation _EARDefaultServerEndpointFeatures

- (_EARDefaultServerEndpointFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 endOfSentenceLikelihood:(float)a5 acousticEndpointerScore:(float)a6 silencePosterior:(float)a7
{
  v13.receiver = self;
  v13.super_class = _EARDefaultServerEndpointFeatures;
  result = [(_EARDefaultServerEndpointFeatures *)&v13 init];
  if (result)
  {
    result->_wordCount = a3;
    result->_trailingSilenceDuration = a4;
    result->_endOfSentenceLikelihood = a5;
    result->_acousticEndpointerScore = a6;
    result->_silencePosterior = a7;
  }

  return result;
}

@end