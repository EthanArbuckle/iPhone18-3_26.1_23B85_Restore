@interface PKSTSTapToProvisionParameters
- (PKSTSTapToProvisionParameters)init;
- (id)stsParameters;
@end

@implementation PKSTSTapToProvisionParameters

- (PKSTSTapToProvisionParameters)init
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKSTSTapToProvisionParameters;
  v2 = [(PKSTSTapToProvisionParameters *)&v7 init];
  if (v2)
  {
    v8[0] = 0;
    v8[1] = 0;
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v3 getUUIDBytes:v8];

    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:16];
    transactionID = v2->_transactionID;
    v2->_transactionID = v4;
  }

  return v2;
}

- (id)stsParameters
{
  v3 = objc_alloc(getSTSTapToProvisionParametersClass[0]());
  v4 = [MEMORY[0x1E696AB90] zero];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
  }

  v6 = [v3 initWithAmount:v8 currencyCode:self->_currencyCode countryCode:self->_countryCode provisionReadTimeout:self->_timeout transactionId:self->_transactionID unpredictableNumber:self->_nonce];

  return v6;
}

@end