@interface CNRetry
- (CNRetry)initWithDelegate:(id)delegate;
- (CNRetryDelegate)delegate;
- (id)performAndWait:(id)wait;
@end

@implementation CNRetry

- (CNRetry)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = CNRetry;
  v5 = [(CNRetry *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (id)performAndWait:(id)wait
{
  waitCopy = wait;
  delegate = [(CNRetry *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNRetry *)self delegate];
    v8 = [delegate2 maximumNumberOfAttemptsForRetry:self];

    v47 = v8;
    if (v8 < 1)
    {
LABEL_3:
      v9 = [CNFoundationError errorWithCode:12 userInfo:0];
      goto LABEL_4;
    }
  }

  else
  {
    v47 = 3;
  }

  v9 = 0;
  v11 = 1;
  do
  {
    delegate3 = [(CNRetry *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(CNRetry *)self delegate];
      [delegate4 retry:self willBeginAttempt:v11];
    }

    v15 = 1;
    v10 = waitCopy[2](waitCopy);
    if ([v10 isSuccess])
    {
      delegate5 = [(CNRetry *)self delegate];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        delegate6 = [(CNRetry *)self delegate];
        value = [v10 value];
        [delegate6 retry:self didSucceedWithResult:value];
      }

      goto LABEL_28;
    }

    error = [v10 error];
    v21 = [CNFoundationError errorWithCode:12 underlyingError:error];

    delegate7 = [(CNRetry *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate8 = [(CNRetry *)self delegate];
      error2 = [v10 error];
      v26 = [delegate8 retry:self shouldContinueAfterError:error2 onAttempt:v11];

      v15 = v26;
    }

    delegate9 = [(CNRetry *)self delegate];
    v28 = objc_opt_respondsToSelector();

    v29 = 0.0;
    if (v28)
    {
      delegate10 = [(CNRetry *)self delegate];
      error3 = [v10 error];
      [delegate10 retry:self delayAfterError:error3 onAttempt:v11];
      v29 = v32;
    }

    v9 = v21;
    if (v29 != 0.0)
    {
      delegate11 = [(CNRetry *)self delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        delegate12 = [(CNRetry *)self delegate];
        [delegate12 retry:self willDelayFor:v11 afterAttempt:v29];
      }

      v36 = +[(CNEnvironmentBase *)CNEnvironment];
      schedulerProvider = [v36 schedulerProvider];
      immediateScheduler = [schedulerProvider immediateScheduler];
      v39 = [immediateScheduler afterDelay:&__block_literal_global_21 performBlock:v29];

      delegate13 = [(CNRetry *)self delegate];
      LOBYTE(schedulerProvider) = objc_opt_respondsToSelector();

      if (schedulerProvider)
      {
        delegate14 = [(CNRetry *)self delegate];
        [delegate14 retry:self didDelayFor:v11 afterAttempt:v29];
      }
    }

    delegate15 = [(CNRetry *)self delegate];
    v43 = objc_opt_respondsToSelector();

    if (v43)
    {
      delegate16 = [(CNRetry *)self delegate];
      [delegate16 retry:self didCompleteAttempt:v11];
    }

    if (v11 < v47)
    {
      v45 = v15;
    }

    else
    {
      v45 = 0;
    }

    ++v11;
  }

  while ((v45 & 1) != 0);
  if (!v9)
  {
    goto LABEL_3;
  }

LABEL_4:
  v10 = [CNResult failureWithError:v9];
LABEL_28:

  return v10;
}

- (CNRetryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end