@interface IDSValidationSigningResult
- (IDSValidationSigningResult)initWithAbsintheResultData:(id)data absintheServerKey:(id)key absintheError:(id)error baaResult:(id)result;
- (IDSValidationSigningResult)initWithBaaResult:(id)result;
@end

@implementation IDSValidationSigningResult

- (IDSValidationSigningResult)initWithAbsintheResultData:(id)data absintheServerKey:(id)key absintheError:(id)error baaResult:(id)result
{
  dataCopy = data;
  keyCopy = key;
  errorCopy = error;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = IDSValidationSigningResult;
  v15 = [(IDSValidationSigningResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_absintheResultData, data);
    objc_storeStrong(&v16->_absintheServerKey, key);
    objc_storeStrong(&v16->_absintheError, error);
    objc_storeStrong(&v16->_baaResult, result);
  }

  return v16;
}

- (IDSValidationSigningResult)initWithBaaResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = IDSValidationSigningResult;
  v6 = [(IDSValidationSigningResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    absintheResultData = v6->_absintheResultData;
    v6->_absintheResultData = 0;

    absintheServerKey = v7->_absintheServerKey;
    v7->_absintheServerKey = 0;

    absintheError = v7->_absintheError;
    v7->_absintheError = 0;

    objc_storeStrong(&v7->_baaResult, result);
  }

  return v7;
}

@end