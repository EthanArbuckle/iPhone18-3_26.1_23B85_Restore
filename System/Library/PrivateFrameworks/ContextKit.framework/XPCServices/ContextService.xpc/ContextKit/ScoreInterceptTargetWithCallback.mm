@interface ScoreInterceptTargetWithCallback
- (ScoreInterceptTargetWithCallback)initWithCallback:(id)callback;
@end

@implementation ScoreInterceptTargetWithCallback

- (ScoreInterceptTargetWithCallback)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = ScoreInterceptTargetWithCallback;
  v5 = [(ComAppleProactiveLuceneScoreInterceptTargetBase *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(callbackCopy);
    v7 = *(v5 + 10);
    *(v5 + 10) = v6;
  }

  return v5;
}

@end