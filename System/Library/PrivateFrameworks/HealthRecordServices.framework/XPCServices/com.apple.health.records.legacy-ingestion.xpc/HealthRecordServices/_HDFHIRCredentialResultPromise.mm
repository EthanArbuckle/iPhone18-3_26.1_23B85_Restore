@interface _HDFHIRCredentialResultPromise
- (HDFHIRCredentialResult)result;
- (_HDFHIRCredentialResultPromise)init;
- (void)fulfillWithResult:(id)result;
@end

@implementation _HDFHIRCredentialResultPromise

- (_HDFHIRCredentialResultPromise)init
{
  v3.receiver = self;
  v3.super_class = _HDFHIRCredentialResultPromise;
  result = [(_HDFHIRCredentialResultPromise *)&v3 init];
  if (result)
  {
    result->_resultLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (HDFHIRCredentialResult)result
{
  os_unfair_lock_lock(&self->_resultLock);
  v3 = self->_result;
  if (!v3)
  {
    sub_10000BCFC();
  }

  os_unfair_lock_unlock(&self->_resultLock);

  return v3;
}

- (void)fulfillWithResult:(id)result
{
  resultCopy = result;
  os_unfair_lock_lock(&self->_resultLock);
  if (self->_result)
  {
    sub_10000BD94();
  }

  result = self->_result;
  self->_result = resultCopy;

  os_unfair_lock_unlock(&self->_resultLock);
}

@end