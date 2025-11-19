@interface CalSigTermCancellableTask
+ (BOOL)performCancellableTask:(id)a3;
@end

@implementation CalSigTermCancellableTask

+ (BOOL)performCancellableTask:(id)a3
{
  v3 = a3;
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
  v9 = [v7 token];
  v3[2](v3, v9);

  [(CalSignalSensor *)v4 stopSensor];
  [(CalSignalSensor *)v5 stopSensor];
  LOBYTE(v3) = [v9 isCancelled];

  return v3;
}

@end