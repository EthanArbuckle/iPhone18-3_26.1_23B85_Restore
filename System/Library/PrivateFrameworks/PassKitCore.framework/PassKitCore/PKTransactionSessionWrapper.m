@interface PKTransactionSessionWrapper
- (PKTransactionSessionWrapper)initWithNFSession:(id)a3;
- (PKTransactionSessionWrapper)initWithSTSSession:(id)a3;
- (void)endSessionWithCompletion:(id)a3;
@end

@implementation PKTransactionSessionWrapper

- (PKTransactionSessionWrapper)initWithNFSession:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKTransactionSessionWrapper;
    v6 = [(PKTransactionSessionWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_nfSession, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKTransactionSessionWrapper)initWithSTSSession:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKTransactionSessionWrapper;
    v6 = [(PKTransactionSessionWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_stsSession, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  nfSession = self->_nfSession;
  if (nfSession)
  {
    v7 = v4;
    [(NFSession *)nfSession endSessionWithCompletion:v4];

    stsSession = self->_stsSession;
    if (!stsSession)
    {
      return;
    }

    v4 = 0;
    goto LABEL_5;
  }

  stsSession = self->_stsSession;
  if (stsSession)
  {
LABEL_5:
    v8 = v4;
    [(STSSession *)stsSession endSessionWithCompletion:v4];
    goto LABEL_6;
  }

  if (!v4)
  {
    return;
  }

  v8 = v4;
  (*(v4 + 2))(v4);
LABEL_6:
}

@end