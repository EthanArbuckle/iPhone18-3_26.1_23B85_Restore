@interface MPCSleepTimerEngineObserver
- (MPCSleepTimerEngineObserver)initWithDelegate:(id)delegate;
- (MPCSleepTimerEngineObserverDelegate)delegate;
- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate;
- (void)engine:(id)engine didEndPlaybackOfItem:(id)item;
@end

@implementation MPCSleepTimerEngineObserver

- (MPCSleepTimerEngineObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate
{
  delegate = [(MPCSleepTimerEngineObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeItemElapsedTime:time];
  }
}

- (void)engine:(id)engine didEndPlaybackOfItem:(id)item
{
  v4 = [(MPCSleepTimerEngineObserver *)self delegate:engine];
  if (objc_opt_respondsToSelector())
  {
    [v4 didEndPlaybackForCurrentItem];
  }
}

- (MPCSleepTimerEngineObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MPCSleepTimerEngineObserver;
  v5 = [(MPCSleepTimerEngineObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MPCSleepTimerEngineObserver *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

@end