@interface SubCalDATask
- (DATaskManager)taskManager;
- (void)cancelTaskWithReason:(int)a3 underlyingError:(id)a4;
- (void)finishWithError:(id)a3;
@end

@implementation SubCalDATask

- (void)cancelTaskWithReason:(int)a3 underlyingError:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:v7];
  [(SubCalDATask *)self finishWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  if (!self->_finished)
  {
    v5 = a3;
    [(SubCalDATask *)self willFinish];
    [(SubCalDATask *)self performDelegateCallbackWithError:v5];

    self->_finished = 1;
    [(SubCalDATask *)self didFinish];
    v6 = [(SubCalDATask *)self taskManager];
    [v6 taskDidFinish:self];
  }
}

- (DATaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

@end