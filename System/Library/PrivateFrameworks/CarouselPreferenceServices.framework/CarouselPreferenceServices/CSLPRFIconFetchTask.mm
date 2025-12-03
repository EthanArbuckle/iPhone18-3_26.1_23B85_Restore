@interface CSLPRFIconFetchTask
- (CSLPRFIconFetchTask)init;
- (void)completeWithImage:(id)image error:(id)error;
- (void)invalidate;
@end

@implementation CSLPRFIconFetchTask

- (void)invalidate
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [(CSLPRFIconFetchTask *)self completeWithImage:0 error:v3];
}

- (void)completeWithImage:(id)image error:(id)error
{
  imageCopy = image;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  completion = [(CSLPRFIconFetchTask *)self completion];
  [(CSLPRFIconFetchTask *)self setCompletion:0];
  os_unfair_lock_unlock(&self->_lock);
  if (completion)
  {
    (completion)[2](completion, imageCopy, errorCopy);
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