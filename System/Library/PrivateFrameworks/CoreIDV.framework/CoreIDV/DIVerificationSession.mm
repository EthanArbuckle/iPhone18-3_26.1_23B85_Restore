@interface DIVerificationSession
+ (void)concludeVerification:(id)verification;
- (DIVerificationSession)initWithContext:(id)context;
- (DIVerificationSessionContext)context;
- (id)client;
- (id)configureError;
- (void)concludeVerification;
- (void)confirmVerificationCompletedWithFeedback:(id)feedback;
- (void)getVerificationResultWithOptions:(id)options completion:(id)completion;
- (void)invalidate;
- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion;
- (void)setClient:(id)client;
- (void)setConfigureError:(id)error;
- (void)setContext:(id)context;
- (void)shareVerificationResultWithOptions:(id)options completion:(id)completion;
@end

@implementation DIVerificationSession

+ (void)concludeVerification:(id)verification
{
  verificationCopy = verification;
  v3 = objc_alloc_init(DIVClient);
  v4 = v3;
  if (v3)
  {
    [(DIVClient *)v3 concludeVerification:verificationCopy];
  }
}

- (DIVerificationSession)initWithContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  if (contextCopy && ([contextCopy serviceName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v18.receiver = self;
    v18.super_class = DIVerificationSession;
    v9 = [(DIVerificationSession *)&v18 init];
    v10 = v9;
    if (v9)
    {
      v9->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v9->_context, context);
      configureError = v10->_configureError;
      v10->_configureError = 0;

      v12 = objc_alloc_init(DIVClient);
      client = v10->_client;
      v10->_client = v12;

      v14 = v10->_client;
      if (v14)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __41__DIVerificationSession_initWithContext___block_invoke;
        v16[3] = &unk_278320F70;
        v10 = v10;
        v17 = v10;
        [(DIVClient *)v14 configure:v6 completion:v16];
      }
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  configureError = [(DIVerificationSession *)self configureError];

  if (configureError)
  {
    [(DIVerificationSession *)self setConfigureError:0];
    v9 = objc_alloc_init(DIVClient);
    [(DIVerificationSession *)self setClient:v9];

    client = [(DIVerificationSession *)self client];
    context = [(DIVerificationSession *)self context];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__DIVerificationSession_performVerificationWithAttributes_completion___block_invoke;
    v14[3] = &unk_278320F70;
    v14[4] = self;
    [client configure:context completion:v14];
  }

  client2 = [(DIVerificationSession *)self client];

  if (client2)
  {
    client3 = [(DIVerificationSession *)self client];
    [client3 performVerificationWithAttributes:attributesCopy completion:completionCopy];
  }

  else
  {
    client3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DIVError" code:-2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, client3);
  }
}

- (void)shareVerificationResultWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  client = [(DIVerificationSession *)self client];

  if (client)
  {
    client2 = [(DIVerificationSession *)self client];
    [client2 shareVerificationResultWithOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    client2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DIVError" code:-2 userInfo:0];
    completionCopy[2](completionCopy, 0, client2);
  }
}

- (void)getVerificationResultWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  client = [(DIVerificationSession *)self client];

  if (client)
  {
    client2 = [(DIVerificationSession *)self client];
    [client2 getVerificationResultWithOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    client2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DIVError" code:-2 userInfo:0];
    completionCopy[2](completionCopy, 0, client2);
  }
}

- (void)invalidate
{
  client = [(DIVerificationSession *)self client];
  [client invalidate];
}

- (void)concludeVerification
{
  client = [(DIVerificationSession *)self client];
  [client concludeVerification:0];
}

- (void)confirmVerificationCompletedWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  client = [(DIVerificationSession *)self client];
  [client confirmVerificationCompletedWithFeedback:feedbackCopy];
}

- (void)setClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  client = self->_client;
  self->_client = clientCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConfigureError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  configureError = self->_configureError;
  self->_configureError = errorCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)client
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_client;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (DIVerificationSessionContext)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)configureError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_configureError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end