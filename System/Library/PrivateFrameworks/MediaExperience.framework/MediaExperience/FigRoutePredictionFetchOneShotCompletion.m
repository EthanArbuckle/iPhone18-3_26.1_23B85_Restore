@interface FigRoutePredictionFetchOneShotCompletion
- (FigRoutePredictionFetchOneShotCompletion)initWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)invokeWithRoutePredictions:(id)a3 predictionContext:(id)a4;
@end

@implementation FigRoutePredictionFetchOneShotCompletion

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigRoutePredictionFetchOneShotCompletion;
  [(FigRoutePredictionFetchOneShotCompletion *)&v3 dealloc];
}

- (void)invokeWithRoutePredictions:(id)a3 predictionContext:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3, a4);

    self->_completionHandler = 0;
  }
}

- (FigRoutePredictionFetchOneShotCompletion)initWithCompletionHandler:(id)a3
{
  v8.receiver = self;
  v8.super_class = FigRoutePredictionFetchOneShotCompletion;
  v4 = [(FigRoutePredictionFetchOneShotCompletion *)&v8 init];
  if (v4 && (v5 = [a3 copy], (v4->_completionHandler = v5) != 0))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end