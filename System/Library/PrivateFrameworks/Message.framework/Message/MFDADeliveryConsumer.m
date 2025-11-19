@interface MFDADeliveryConsumer
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)messageDidSendWithContext:(id)a3 sentBytesCount:(unint64_t)a4 receivedBytesCount:(unint64_t)a5;
@end

@implementation MFDADeliveryConsumer

- (void)messageDidSendWithContext:(id)a3 sentBytesCount:(unint64_t)a4 receivedBytesCount:(unint64_t)a5
{
  self->_status = 0;
  self->_bytesRead = a5;
  self->_bytesWritten = a4;
  [(MFDAMailAccountConsumer *)self setDone:1];
}

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v16 = a3;
  v6 = a5;
  self->_status = 1;
  v15 = v6;
  MFWalkUpDAErrorChain(&v15, &v16);
  v7 = v15;

  if (v16 > 32)
  {
    if (v16 == 33)
    {
      v8 = 1050;
      goto LABEL_23;
    }

    v8 = 1055;
    if (v16 == 63 || v16 == 79)
    {
      goto LABEL_23;
    }

LABEL_11:
    v10 = [v7 domain];
    v11 = [v10 isEqualToString:@"ASHTTPConnectionErrorDomain"];

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
      v13 = [v7 domain];
      v14 = [v13 isEqualToString:*MEMORY[0x1E696A978]];

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

  if ((v16 - 5) < 2)
  {
    self->_status = 7;
    v8 = 1053;
LABEL_23:
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v8 localizedDescription:0];
    goto LABEL_24;
  }

  if (v16 != -1)
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