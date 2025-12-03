@interface _EFConnectableObservable
- (_EFConnectableObservable)initWithObservable:(id)observable subject:(id)subject;
- (id)connect;
- (id)subscribe:(id)subscribe;
- (void)_disconnect;
@end

@implementation _EFConnectableObservable

- (_EFConnectableObservable)initWithObservable:(id)observable subject:(id)subject
{
  observableCopy = observable;
  subjectCopy = subject;
  v13.receiver = self;
  v13.super_class = _EFConnectableObservable;
  v9 = [(_EFConnectableObservable *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v9->_lock;
    v9->_lock = v10;

    objc_storeStrong(&v9->_observable, observable);
    objc_storeStrong(&v9->_subject, subject);
  }

  return v9;
}

- (id)subscribe:(id)subscribe
{
  v3 = [(EFObservable *)self->_subject subscribe:subscribe];

  return v3;
}

- (id)connect
{
  [(NSLock *)self->_lock lock];
  cancelable = self->_cancelable;
  v4 = cancelable;
  if (!cancelable)
  {
    v5 = objc_alloc_init(EFManualCancelationToken);
    v6 = self->_cancelable;
    self->_cancelable = v5;

    objc_initWeak(&location, self);
    v7 = self->_cancelable;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35___EFConnectableObservable_connect__block_invoke;
    v11[3] = &unk_1E8248558;
    objc_copyWeak(&v12, &location);
    [(EFManualCancelationToken *)v7 addCancelationBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v4 = self->_cancelable;
  }

  v8 = v4;
  [(NSLock *)self->_lock unlock];
  if (!cancelable)
  {
    v9 = [(EFObservable *)self->_observable subscribe:self->_subject];
    [(EFManualCancelationToken *)v8 addCancelable:v9];
  }

  return v8;
}

- (void)_disconnect
{
  [(NSLock *)self->_lock lock];
  cancelable = self->_cancelable;
  self->_cancelable = 0;
  v4 = cancelable;

  [(NSLock *)self->_lock unlock];
}

@end