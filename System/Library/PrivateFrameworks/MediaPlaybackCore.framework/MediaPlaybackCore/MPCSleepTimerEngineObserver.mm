@interface MPCSleepTimerEngineObserver
- (MPCSleepTimerEngineObserver)initWithDelegate:(id)a3;
- (MPCSleepTimerEngineObserverDelegate)delegate;
- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5;
- (void)engine:(id)a3 didEndPlaybackOfItem:(id)a4;
@end

@implementation MPCSleepTimerEngineObserver

- (MPCSleepTimerEngineObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5
{
  v6 = [(MPCSleepTimerEngineObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 didChangeItemElapsedTime:a4];
  }
}

- (void)engine:(id)a3 didEndPlaybackOfItem:(id)a4
{
  v4 = [(MPCSleepTimerEngineObserver *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v4 didEndPlaybackForCurrentItem];
  }
}

- (MPCSleepTimerEngineObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCSleepTimerEngineObserver;
  v5 = [(MPCSleepTimerEngineObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MPCSleepTimerEngineObserver *)v5 setDelegate:v4];
  }

  return v6;
}

@end