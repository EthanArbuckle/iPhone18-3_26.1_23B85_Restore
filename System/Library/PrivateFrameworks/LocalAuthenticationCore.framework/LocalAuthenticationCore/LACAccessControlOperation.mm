@interface LACAccessControlOperation
- (LACAccessControlOperation)initWithTypeErasedOperation:(id)operation;
- (NSString)keyOp;
@end

@implementation LACAccessControlOperation

- (LACAccessControlOperation)initWithTypeErasedOperation:(id)operation
{
  operationCopy = operation;
  v8.receiver = self;
  v8.super_class = LACAccessControlOperation;
  v6 = [(LACAccessControlOperation *)&v8 init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_rawValue = [operationCopy integerValue];
    }

    else
    {
      v6->_rawValue = 1001;
      objc_storeStrong(&v6->_aksOp, operation);
    }
  }

  return v6;
}

- (NSString)keyOp
{
  rawValue = self->_rawValue;
  if (rawValue <= 3)
  {
    if (rawValue <= 1)
    {
      if (rawValue != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (rawValue != 2)
    {
      v3 = kAKSKeyOpSign;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (rawValue <= 999)
  {
    if (rawValue == 4)
    {
LABEL_17:
      v3 = kAKSKeyOpDecrypt;
      goto LABEL_18;
    }

    if (rawValue == 5)
    {
      v3 = kAKSKeyOpComputeKey;
LABEL_18:
      aksOp = *v3;
LABEL_19:
      v5 = aksOp;
      goto LABEL_20;
    }

LABEL_16:
    v5 = &stru_1F2652748;
    goto LABEL_20;
  }

  if (rawValue != 1000)
  {
    if (rawValue == 1001)
    {
      aksOp = self->_aksOp;
      if (!aksOp)
      {
        aksOp = &stru_1F2652748;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = @"oacl";
LABEL_20:

  return v5;
}

@end