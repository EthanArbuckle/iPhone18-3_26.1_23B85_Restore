@interface NPKExpressState
- (BOOL)expressEnabledForAllRadioTechnologiesForPass:(id)pass;
- (NPKExpressState)initWithExpressPassConfiguration:(id)configuration;
- (NPKExpressState)initWithNFCState:(unint64_t)state uwbState:(unint64_t)uwbState;
- (id)description;
- (unint64_t)switchStateForMode:(unint64_t)mode;
@end

@implementation NPKExpressState

- (NPKExpressState)initWithNFCState:(unint64_t)state uwbState:(unint64_t)uwbState
{
  v7.receiver = self;
  v7.super_class = NPKExpressState;
  result = [(NPKExpressState *)&v7 init];
  if (result)
  {
    result->_nfcExpressState = state;
    result->_uwbExpressState = uwbState;
  }

  return result;
}

- (NPKExpressState)initWithExpressPassConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy isNFCExpressEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  isUWBExpressEnabled = [configurationCopy isUWBExpressEnabled];

  if (isUWBExpressEnabled)
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
  nfcExpressState = [(NPKExpressState *)self nfcExpressState];
  if (nfcExpressState <= 2)
  {
    [v3 appendString:off_279948728[nfcExpressState]];
  }

  [v3 appendString:@" : "];
  uwbExpressState = [(NPKExpressState *)self uwbExpressState];
  if (uwbExpressState <= 2)
  {
    [v3 appendString:off_279948740[uwbExpressState]];
  }

  [v3 appendString:@""]);

  return v3;
}

- (unint64_t)switchStateForMode:(unint64_t)mode
{
  if (mode == 1)
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

- (BOOL)expressEnabledForAllRadioTechnologiesForPass:(id)pass
{
  passCopy = pass;
  nfcExpressEnabled = [(NPKExpressState *)self nfcExpressEnabled];
  uwbExpressEnabled = [(NPKExpressState *)self uwbExpressEnabled];
  v7 = uwbExpressEnabled;
  if (!nfcExpressEnabled)
  {
    LOBYTE(v9) = 0;
    if (!uwbExpressEnabled)
    {
      goto LABEL_3;
    }

LABEL_5:
    paymentPass = [passCopy paymentPass];
    npkExclusivelyTransactsOverBluetooth = [paymentPass npkExclusivelyTransactsOverBluetooth];

    goto LABEL_6;
  }

  paymentPass2 = [passCopy paymentPass];
  v9 = [paymentPass2 npkSupportsBluetooth] ^ 1;

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  npkExclusivelyTransactsOverBluetooth = 0;
LABEL_6:

  return ((nfcExpressEnabled && v7) | v9 | npkExclusivelyTransactsOverBluetooth) & 1;
}

@end