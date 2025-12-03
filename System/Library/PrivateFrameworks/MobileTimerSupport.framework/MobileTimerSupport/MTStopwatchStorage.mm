@interface MTStopwatchStorage
- (MTStopwatchStorage)init;
- (void)createStopWatch:(id)watch withCompletion:(id)completion source:(id)source;
- (void)deleteStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)getStopwatchesWitchCompletion:(id)completion;
- (void)localSetup;
- (void)registerObserver:(id)observer;
- (void)setSystemReady;
- (void)unregisterObserver:(id)observer;
- (void)updateStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
@end

@implementation MTStopwatchStorage

- (MTStopwatchStorage)init
{
  v5.receiver = self;
  v5.super_class = MTStopwatchStorage;
  v2 = [(MTStopwatchStorage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTStopwatchStorage *)v2 localSetup];
  }

  return v3;
}

- (void)localSetup
{
  v3 = objc_opt_new();
  [(MTStopwatchStorage *)self setStorageProxy:v3];
}

- (void)createStopWatch:(id)watch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  watchCopy = watch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy createStopWatch:watchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)updateStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy updateStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)deleteStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy deleteStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  lapCopy = lap;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didAddLap:lapCopy forStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)getStopwatchesWitchCompletion:(id)completion
{
  completionCopy = completion;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy getStopwatchesWitchCompletion:completionCopy];
}

- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didClearAllLapsForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didStartLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didPauseLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didLapLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didResetLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  stopwatchCopy = stopwatch;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy didResumeLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:sourceCopy];
}

- (void)setSystemReady
{
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy setSystemReady];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  storageProxy = [(MTStopwatchStorage *)self storageProxy];
  [storageProxy unregisterObserver:observerCopy];
}

@end