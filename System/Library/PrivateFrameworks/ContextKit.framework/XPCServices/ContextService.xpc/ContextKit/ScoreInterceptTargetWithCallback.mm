@interface ScoreInterceptTargetWithCallback
- (ScoreInterceptTargetWithCallback)initWithCallback:(id)a3;
@end

@implementation ScoreInterceptTargetWithCallback

- (ScoreInterceptTargetWithCallback)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ScoreInterceptTargetWithCallback;
  v5 = [(ComAppleProactiveLuceneScoreInterceptTargetBase *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    v7 = *(v5 + 10);
    *(v5 + 10) = v6;
  }

  return v5;
}

@end