@interface MRDSleepObserver
- (MRDSleepObserver)init;
- (MRDSleepObserverDelegate)delegate;
- (void)notifyDelegateOfSleepWithCompletion:(id)completion;
- (void)notifyDelegateOfWake;
@end

@implementation MRDSleepObserver

- (void)notifyDelegateOfWake
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 sleepObserverSystemDidWake:self];
  }
}

- (MRDSleepObserver)init
{
  v7.receiver = self;
  v7.super_class = MRDSleepObserver;
  v2 = [(MRDSleepObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_connection = IORegisterForSystemPower(v2, &v2->_port, sub_100016E58, &v2->_identifier);
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(v3->_port);
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
  }

  return v3;
}

- (void)notifyDelegateOfSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 sleepObserverSystemWillSleep:self completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (MRDSleepObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end