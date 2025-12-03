@interface _CNCombinedBufferingStrategy
- (_CNCombinedBufferingStrategy)initWithStrategies:(id)strategies;
- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer;
- (void)bufferDidSendResults:(id)results;
@end

@implementation _CNCombinedBufferingStrategy

- (_CNCombinedBufferingStrategy)initWithStrategies:(id)strategies
{
  strategiesCopy = strategies;
  v10.receiver = self;
  v10.super_class = _CNCombinedBufferingStrategy;
  v5 = [(_CNCombinedBufferingStrategy *)&v10 init];
  if (v5)
  {
    v6 = [strategiesCopy copy];
    strategies = v5->_strategies;
    v5->_strategies = v6;

    v8 = v5;
  }

  return v5;
}

- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer
{
  bufferCopy = buffer;
  resultsCopy = results;
  observerCopy = observer;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___CNCombinedBufferingStrategy_buffer_didReceiveResults_forObserver___block_invoke;
  v14[3] = &unk_1E6ED86C8;
  v15 = bufferCopy;
  v16 = resultsCopy;
  v17 = observerCopy;
  v11 = observerCopy;
  v12 = resultsCopy;
  v13 = bufferCopy;
  [(_CNCombinedBufferingStrategy *)self eachStrategy:v14];
}

- (void)bufferDidSendResults:(id)results
{
  resultsCopy = results;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___CNCombinedBufferingStrategy_bufferDidSendResults___block_invoke;
  v6[3] = &unk_1E6ED86F0;
  v7 = resultsCopy;
  v5 = resultsCopy;
  [(_CNCombinedBufferingStrategy *)self eachStrategy:v6];
}

@end