@interface PKTransactionSessionWrapper
- (PKTransactionSessionWrapper)initWithNFSession:(id)session;
- (PKTransactionSessionWrapper)initWithSTSSession:(id)session;
- (void)endSessionWithCompletion:(id)completion;
@end

@implementation PKTransactionSessionWrapper

- (PKTransactionSessionWrapper)initWithNFSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v10.receiver = self;
    v10.super_class = PKTransactionSessionWrapper;
    v6 = [(PKTransactionSessionWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_nfSession, session);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKTransactionSessionWrapper)initWithSTSSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v10.receiver = self;
    v10.super_class = PKTransactionSessionWrapper;
    v6 = [(PKTransactionSessionWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_stsSession, session);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfSession = self->_nfSession;
  if (nfSession)
  {
    v7 = completionCopy;
    [(NFSession *)nfSession endSessionWithCompletion:completionCopy];

    stsSession = self->_stsSession;
    if (!stsSession)
    {
      return;
    }

    completionCopy = 0;
    goto LABEL_5;
  }

  stsSession = self->_stsSession;
  if (stsSession)
  {
LABEL_5:
    v8 = completionCopy;
    [(STSSession *)stsSession endSessionWithCompletion:completionCopy];
    goto LABEL_6;
  }

  if (!completionCopy)
  {
    return;
  }

  v8 = completionCopy;
  (*(completionCopy + 2))(completionCopy);
LABEL_6:
}

@end