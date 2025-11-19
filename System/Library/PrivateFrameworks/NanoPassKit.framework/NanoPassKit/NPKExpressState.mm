@interface NPKExpressState
- (BOOL)expressEnabledForAllRadioTechnologiesForPass:(id)a3;
- (NPKExpressState)initWithExpressPassConfiguration:(id)a3;
- (NPKExpressState)initWithNFCState:(unint64_t)a3 uwbState:(unint64_t)a4;
- (id)description;
- (unint64_t)switchStateForMode:(unint64_t)a3;
@end

@implementation NPKExpressState

- (NPKExpressState)initWithNFCState:(unint64_t)a3 uwbState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = NPKExpressState;
  result = [(NPKExpressState *)&v7 init];
  if (result)
  {
    result->_nfcExpressState = a3;
    result->_uwbExpressState = a4;
  }

  return result;
}

- (NPKExpressState)initWithExpressPassConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 isNFCExpressEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v4 isUWBExpressEnabled];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  return [(NPKExpressState *)self initWithNFCState:v5 uwbState:v7];
}

- (id)description
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"( ");
  v4 = [(NPKExpressState *)self nfcExpressState];
  if (v4 <= 2)
  {
    [v3 appendString:off_279948728[v4]];
  }

  [v3 appendString:@" : "];
  v5 = [(NPKExpressState *)self uwbExpressState];
  if (v5 <= 2)
  {
    [v3 appendString:off_279948740[v5]];
  }

  [v3 appendString:@""]);

  return v3;
}

- (unint64_t)switchStateForMode:(unint64_t)a3
{
  if (a3 == 1)
  {
    result = [(NPKExpressState *)self nfcExpressState];
  }

  else
  {
    result = [(NPKExpressState *)self uwbExpressState];
  }

  if (result != 2)
  {
    return result != 1;
  }

  return result;
}

- (BOOL)expressEnabledForAllRadioTechnologiesForPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKExpressState *)self nfcExpressEnabled];
  v6 = [(NPKExpressState *)self uwbExpressEnabled];
  v7 = v6;
  if (!v5)
  {
    LOBYTE(v9) = 0;
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [v4 paymentPass];
    v10 = [v11 npkExclusivelyTransactsOverBluetooth];

    goto LABEL_6;
  }

  v8 = [v4 paymentPass];
  v9 = [v8 npkSupportsBluetooth] ^ 1;

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 0;
LABEL_6:

  return ((v5 && v7) | v9 | v10) & 1;
}

@end