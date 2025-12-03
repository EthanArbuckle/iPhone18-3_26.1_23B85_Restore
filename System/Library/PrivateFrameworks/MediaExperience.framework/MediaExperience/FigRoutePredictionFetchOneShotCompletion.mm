@interface FigRoutePredictionFetchOneShotCompletion
- (FigRoutePredictionFetchOneShotCompletion)initWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)invokeWithRoutePredictions:(id)predictions predictionContext:(id)context;
@end

@implementation FigRoutePredictionFetchOneShotCompletion

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigRoutePredictionFetchOneShotCompletion;
  [(FigRoutePredictionFetchOneShotCompletion *)&v3 dealloc];
}

- (void)invokeWithRoutePredictions:(id)predictions predictionContext:(id)context
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, predictions, context);

    self->_completionHandler = 0;
  }
}

- (FigRoutePredictionFetchOneShotCompletion)initWithCompletionHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = FigRoutePredictionFetchOneShotCompletion;
  v4 = [(FigRoutePredictionFetchOneShotCompletion *)&v8 init];
  if (v4 && (v5 = [handler copy], (v4->_completionHandler = v5) != 0))
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