@interface CSLPRFIconFetchTask
- (CSLPRFIconFetchTask)init;
- (void)completeWithImage:(id)a3 error:(id)a4;
- (void)invalidate;
@end

@implementation CSLPRFIconFetchTask

- (void)invalidate
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [(CSLPRFIconFetchTask *)self completeWithImage:0 error:v3];
}

- (void)completeWithImage:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(CSLPRFIconFetchTask *)self completion];
  [(CSLPRFIconFetchTask *)self setCompletion:0];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    (v7)[2](v7, v8, v6);
  }
}

- (CSLPRFIconFetchTask)init
{
  v3.receiver = self;
  v3.super_class = CSLPRFIconFetchTask;
  result = [(CSLPRFIconFetchTask *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end