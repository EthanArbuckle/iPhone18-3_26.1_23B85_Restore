@interface SubCalDATask
- (DATaskManager)taskManager;
- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error;
- (void)finishWithError:(id)error;
@end

@implementation SubCalDATask

- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = errorCopy;
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

- (void)finishWithError:(id)error
{
  if (!self->_finished)
  {
    errorCopy = error;
    [(SubCalDATask *)self willFinish];
    [(SubCalDATask *)self performDelegateCallbackWithError:errorCopy];

    self->_finished = 1;
    [(SubCalDATask *)self didFinish];
    taskManager = [(SubCalDATask *)self taskManager];
    [taskManager taskDidFinish:self];
  }
}

- (DATaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

@end