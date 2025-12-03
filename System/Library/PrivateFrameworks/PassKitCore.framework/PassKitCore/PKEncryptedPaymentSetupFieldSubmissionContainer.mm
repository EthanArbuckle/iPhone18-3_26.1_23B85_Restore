@interface PKEncryptedPaymentSetupFieldSubmissionContainer
- (PKEncryptedPaymentSetupFieldSubmissionContainer)initWithValue:(id)value format:(unint64_t)format scheme:(id)scheme certificates:(id)certificates;
- (id)_tlvRepresentation;
- (id)dataRepresentation;
@end

@implementation PKEncryptedPaymentSetupFieldSubmissionContainer

- (PKEncryptedPaymentSetupFieldSubmissionContainer)initWithValue:(id)value format:(unint64_t)format scheme:(id)scheme certificates:(id)certificates
{
  valueCopy = value;
  schemeCopy = scheme;
  certificatesCopy = certificates;
  v17.receiver = self;
  v17.super_class = PKEncryptedPaymentSetupFieldSubmissionContainer;
  v14 = [(PKEncryptedPaymentSetupFieldSubmissionContainer *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_value, value);
    v15->_format = format;
    v15->_encryptionScheme = schemeCopy;
    objc_storeStrong(&v15->_encryptionCertificates, certificates);
  }

  return v15;
}

- (id)dataRepresentation
{
  if (self->_format > 1)
  {
    _tlvRepresentation = 0;
  }

  else
  {
    _tlvRepresentation = [(PKEncryptedPaymentSetupFieldSubmissionContainer *)self _tlvRepresentation];
  }

  return _tlvRepresentation;
}

- (id)_tlvRepresentation
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __69__PKEncryptedPaymentSetupFieldSubmissionContainer__tlvRepresentation__block_invoke;
  v14 = &unk_1E79CECE8;
  v4 = v3;
  v15 = v4;
  v5 = _Block_copy(&v11);
  v6 = PKCreatePinBlockISO1Format(self->_value);
  v5[2](v5, 192, v6);
  if (self->_nonce)
  {
    (v5[2])(v5, 193);
  }

  v16[0] = 0;
  v16[1] = 0;
  v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  [v7 getUUIDBytes:{v16, v11, v12, v13, v14}];

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v16 length:16];
  v5[2](v5, 194, v8);
  if (self->_transactionId)
  {
    (v5[2])(v5, 209);
  }

  v9 = [v4 copy];

  return v9;
}

void __69__PKEncryptedPaymentSetupFieldSubmissionContainer__tlvRepresentation__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v13 = a2;
  [v6 appendBytes:&v13 length:1];
  v7 = [v5 length];
  if (v7 <= 0xFE)
  {
    v12 = [v5 length];
    v8 = *(a1 + 32);
    v9 = &v12;
    v10 = 1;
LABEL_5:
    [v8 appendBytes:v9 length:v10];
    [*(a1 + 32) appendData:v5];

    return;
  }

  if (v7 <= 0xFFFE)
  {
    v11 = [v5 length];
    v8 = *(a1 + 32);
    v9 = &v11;
    v10 = 2;
    goto LABEL_5;
  }

  __break(1u);
}

@end