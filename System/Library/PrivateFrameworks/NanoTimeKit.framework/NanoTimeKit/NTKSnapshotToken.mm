@interface NTKSnapshotToken
- (NTKSnapshotToken)initWithPriority:(unint64_t)priority callback:(id)callback;
- (id)callback;
- (unint64_t)priority;
- (void)dealloc;
- (void)setPriority:(unint64_t)priority;
- (void)setRequest:(id)request;
@end

@implementation NTKSnapshotToken

- (NTKSnapshotToken)initWithPriority:(unint64_t)priority callback:(id)callback
{
  callbackCopy = callback;
  v13.receiver = self;
  v13.super_class = NTKSnapshotToken;
  v7 = [(NTKSnapshotToken *)&v13 init];
  v8 = v7;
  if (v7)
  {
    request = v7->_request;
    v7->_request = 0;

    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_priority = priority;
    v10 = _Block_copy(callbackCopy);
    callback = v8->_callback;
    v8->_callback = v10;
  }

  return v8;
}

- (void)dealloc
{
  [(NTKSnapshotRequest *)self->_request updatePriority];
  v3.receiver = self;
  v3.super_class = NTKSnapshotToken;
  [(NTKSnapshotToken *)&v3 dealloc];
}

- (unint64_t)priority
{
  os_unfair_lock_lock(&self->_lock);
  lock_priority = self->_lock_priority;
  os_unfair_lock_unlock(&self->_lock);
  return lock_priority;
}

- (void)setPriority:(unint64_t)priority
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_priority = priority;
  os_unfair_lock_unlock(&self->_lock);
  request = self->_request;

  [(NTKSnapshotRequest *)request updatePriority];
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  request = self->_request;
  self->_request = requestCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)callback
{
  v2 = _Block_copy(self->_callback);

  return v2;
}

@end