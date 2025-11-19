@interface IDSDGroupContextNotifyingObserver
- (IDSDGroupContextNotifyingObserver)initWithDelegate:(id)a3;
- (void)dealloc;
@end

@implementation IDSDGroupContextNotifyingObserver

- (IDSDGroupContextNotifyingObserver)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSDGroupContextNotifyingObserver;
  v6 = [(IDSDGroupContextNotifyingObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (void)dealloc
{
  delegate = self->_delegate;
  self->_delegate = 0;

  v4.receiver = self;
  v4.super_class = IDSDGroupContextNotifyingObserver;
  [(IDSDGroupContextNotifyingObserver *)&v4 dealloc];
}

@end