@interface PKPaymentProvisioningControllerCredentialQueue
- (PKPaymentProvisioningControllerCredentialQueue)init;
- (id)completedCredentials;
- (id)credentials;
- (id)nextCredentialToProvision;
- (unint64_t)remaining;
- (void)removeCredential:(id)credential;
- (void)setCredentialsToProvision:(id)provision;
- (void)setCurrentCredential:(id)credential;
@end

@implementation PKPaymentProvisioningControllerCredentialQueue

- (PKPaymentProvisioningControllerCredentialQueue)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentProvisioningControllerCredentialQueue;
  v2 = [(PKPaymentProvisioningControllerCredentialQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completedCredentials = v3->_completedCredentials;
    v3->_completedCredentials = v4;
  }

  return v3;
}

- (void)setCredentialsToProvision:(id)provision
{
  self->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [provision mutableCopy];
  credentials = self->_credentials;
  self->_credentials = v4;

  completedCredentials = self->_completedCredentials;

  [(NSMutableArray *)completedCredentials removeAllObjects];
}

- (void)removeCredential:(id)credential
{
  credentialCopy = credential;
  if (credentialCopy)
  {
    v11 = credentialCopy;
    v5 = [(NSMutableArray *)self->_credentials indexOfObject:credentialCopy];
    credentialCopy = v11;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      [(NSMutableArray *)self->_completedCredentials addObject:v11];
      [(NSMutableArray *)self->_credentials removeObjectAtIndex:v6];
      credentialCopy = v11;
      currentIndex = self->_currentIndex;
      if (currentIndex != 0x7FFFFFFFFFFFFFFFLL && v6 <= currentIndex)
      {
        v8 = currentIndex - 1;
        v9 = currentIndex == 0;
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v9)
        {
          v10 = v8;
        }

        self->_currentIndex = v10;
      }
    }
  }
}

- (id)nextCredentialToProvision
{
  currentIndex = self->_currentIndex;
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = currentIndex + 1;
  }

  v5 = [(NSMutableArray *)self->_credentials count];
  v6 = 0;
  if (v4 < v5)
  {
    v6 = [(NSMutableArray *)self->_credentials objectAtIndex:v4];
    self->_currentIndex = v4;
  }

  return v6;
}

- (void)setCurrentCredential:(id)credential
{
  if (credential)
  {
    v4 = [(NSMutableArray *)self->_credentials indexOfObject:?];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_currentIndex = v4;
}

- (unint64_t)remaining
{
  result = [(NSMutableArray *)self->_credentials count];
  if (result)
  {
    currentIndex = self->_currentIndex;
    if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = ~currentIndex;
    }

    result += v5;
  }

  return result;
}

- (id)credentials
{
  v2 = [(NSMutableArray *)self->_credentials copy];

  return v2;
}

- (id)completedCredentials
{
  v2 = [(NSMutableArray *)self->_completedCredentials copy];

  return v2;
}

@end