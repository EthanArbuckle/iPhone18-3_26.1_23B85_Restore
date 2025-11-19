@interface MTStopwatchStorage
- (MTStopwatchStorage)init;
- (void)createStopWatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)deleteStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didAddLap:(id)a3 forStopwatch:(id)a4 withCompletion:(id)a5 source:(id)a6;
- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)getStopwatchesWitchCompletion:(id)a3;
- (void)localSetup;
- (void)registerObserver:(id)a3;
- (void)setSystemReady;
- (void)unregisterObserver:(id)a3;
- (void)updateStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
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

- (void)createStopWatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 createStopWatch:v10 withCompletion:v9 source:v8];
}

- (void)updateStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 updateStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)deleteStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 deleteStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didAddLap:(id)a3 forStopwatch:(id)a4 withCompletion:(id)a5 source:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MTStopwatchStorage *)self storageProxy];
  [v14 didAddLap:v13 forStopwatch:v12 withCompletion:v11 source:v10];
}

- (void)getStopwatchesWitchCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTStopwatchStorage *)self storageProxy];
  [v5 getStopwatchesWitchCompletion:v4];
}

- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didClearAllLapsForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didStartLapTimerForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didPauseLapTimerForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didLapLapTimerForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didResetLapTimerForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTStopwatchStorage *)self storageProxy];
  [v11 didResumeLapTimerForStopwatch:v10 withCompletion:v9 source:v8];
}

- (void)setSystemReady
{
  v2 = [(MTStopwatchStorage *)self storageProxy];
  [v2 setSystemReady];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTStopwatchStorage *)self storageProxy];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTStopwatchStorage *)self storageProxy];
  [v5 unregisterObserver:v4];
}

@end