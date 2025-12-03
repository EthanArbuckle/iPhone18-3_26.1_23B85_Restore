@interface CalSigTermCancellableTask
+ (BOOL)performCancellableTask:(id)task;
@end

@implementation CalSigTermCancellableTask

+ (BOOL)performCancellableTask:(id)task
{
  taskCopy = task;
  v4 = [[CalSignalSensor alloc] initWithSignal:15];
  v5 = [[CalSignalSensor alloc] initWithSignal:2];
  v6 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CalSigTermCancellableTask_performCancellableTask___block_invoke;
  aBlock[3] = &unk_1E7EC68D8;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  [(CalSignalSensor *)v4 setFireBlock:v8];
  [(CalSignalSensor *)v5 setFireBlock:v8];
  [(CalSignalSensor *)v4 startSensor];
  [(CalSignalSensor *)v5 startSensor];
  token = [v7 token];
  taskCopy[2](taskCopy, token);

  [(CalSignalSensor *)v4 stopSensor];
  [(CalSignalSensor *)v5 stopSensor];
  LOBYTE(taskCopy) = [token isCancelled];

  return taskCopy;
}

@end