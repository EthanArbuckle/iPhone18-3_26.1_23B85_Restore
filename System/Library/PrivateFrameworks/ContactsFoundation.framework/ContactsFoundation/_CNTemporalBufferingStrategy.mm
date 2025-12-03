@interface _CNTemporalBufferingStrategy
- (_CNTemporalBufferingStrategy)initWithTimeInterval:(double)interval scheduler:(id)scheduler;
- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer;
- (void)bufferDidSendResults:(id)results;
@end

@implementation _CNTemporalBufferingStrategy

- (_CNTemporalBufferingStrategy)initWithTimeInterval:(double)interval scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = _CNTemporalBufferingStrategy;
  v8 = [(_CNTemporalBufferingStrategy *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_interval = interval;
    objc_storeStrong(&v8->_scheduler, scheduler);
    v10 = v9;
  }

  return v9;
}

- (void)buffer:(id)buffer didReceiveResults:(id)results forObserver:(id)observer
{
  bufferCopy = buffer;
  observerCopy = observer;
  sendToken = [(_CNTemporalBufferingStrategy *)self sendToken];

  if (!sendToken)
  {
    scheduler = self->_scheduler;
    interval = self->_interval;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __69___CNTemporalBufferingStrategy_buffer_didReceiveResults_forObserver___block_invoke;
    v16 = &unk_1E6ED5168;
    v17 = bufferCopy;
    v18 = observerCopy;
    v12 = [(CNScheduler *)scheduler afterDelay:&v13 performBlock:interval];
    [(_CNTemporalBufferingStrategy *)self setSendToken:v12, v13, v14, v15, v16];
  }
}

- (void)bufferDidSendResults:(id)results
{
  sendToken = [(_CNTemporalBufferingStrategy *)self sendToken];
  [sendToken cancel];

  [(_CNTemporalBufferingStrategy *)self setSendToken:0];
}

@end