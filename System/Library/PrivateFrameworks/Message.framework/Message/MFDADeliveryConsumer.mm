@interface MFDADeliveryConsumer
- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error;
- (void)messageDidSendWithContext:(id)context sentBytesCount:(unint64_t)count receivedBytesCount:(unint64_t)bytesCount;
@end

@implementation MFDADeliveryConsumer

- (void)messageDidSendWithContext:(id)context sentBytesCount:(unint64_t)count receivedBytesCount:(unint64_t)bytesCount
{
  self->_status = 0;
  self->_bytesRead = bytesCount;
  self->_bytesWritten = count;
  [(MFDAMailAccountConsumer *)self setDone:1];
}

- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  self->_status = 1;
  v15 = errorCopy;
  MFWalkUpDAErrorChain(&v15, &failedCopy);
  v7 = v15;

  if (failedCopy > 32)
  {
    if (failedCopy == 33)
    {
      v8 = 1050;
      goto LABEL_23;
    }

    v8 = 1055;
    if (failedCopy == 63 || failedCopy == 79)
    {
      goto LABEL_23;
    }

LABEL_11:
    domain = [v7 domain];
    v11 = [domain isEqualToString:@"ASHTTPConnectionErrorDomain"];

    if (v11)
    {
      if ([v7 code] == 413)
      {
        v12 = 1054;
        goto LABEL_21;
      }

      if ([v7 code] != 400 && objc_msgSend(v7, "code") != 404 && objc_msgSend(v7, "code") != 500)
      {
        goto LABEL_22;
      }
    }

    else
    {
      domain2 = [v7 domain];
      v14 = [domain2 isEqualToString:*MEMORY[0x1E696A978]];

      if (!v14)
      {
        goto LABEL_22;
      }

      if ([v7 code] != -1005)
      {
        self->_status = 2;
        goto LABEL_22;
      }
    }

    v12 = 1053;
LABEL_21:
    self->_status = 7;
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v12 localizedDescription:0];
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_22:
    v8 = 1045;
    goto LABEL_23;
  }

  if ((failedCopy - 5) < 2)
  {
    self->_status = 7;
    v8 = 1053;
LABEL_23:
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v8 localizedDescription:0];
    goto LABEL_24;
  }

  if (failedCopy != -1)
  {
    goto LABEL_11;
  }

  v9 = 0;
  self->_status = 9;
LABEL_24:
  [(MFDADeliveryConsumer *)self setError:v9];
  [(MFDAMailAccountConsumer *)self setDone:1];
}

@end