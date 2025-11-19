@interface IDSCTPNRResponseData
- (IDSCTPNRResponseData)initWithCTResponse:(id)a3 phoneBookNumber:(id)a4;
- (int64_t)_mechanismTypeFromVersion:(id)a3 andSignature:(id)a4;
@end

@implementation IDSCTPNRResponseData

- (IDSCTPNRResponseData)initWithCTResponse:(id)a3 phoneBookNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = IDSCTPNRResponseData;
  v8 = [(IDSCTPNRResponseData *)&v17 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6965290]];
    phoneNumber = v8->_phoneNumber;
    v8->_phoneNumber = v9;

    objc_storeStrong(&v8->_phoneBookNumber, a4);
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69652A8]];
    signature = v8->_signature;
    v8->_signature = v11;

    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6965298]];
    status = v8->_status;
    v8->_status = v13;

    v8->_success = CFEqual(*MEMORY[0x1E69652A0], v8->_status) != 0;
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69652B0]];
    v8->_mechanismUsed = [(IDSCTPNRResponseData *)v8 _mechanismTypeFromVersion:v15 andSignature:v8->_signature];
  }

  return v8;
}

- (int64_t)_mechanismTypeFromVersion:(id)a3 andSignature:(id)a4
{
  v5 = a4;
  if (([a3 intValue] & 0x10) != 0)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "We used RCSToken based PNR.", v13, 2u);
    }

    v9 = 3;
  }

  else
  {
    v6 = [v5 length];
    v7 = [MEMORY[0x1E69A6138] sms];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 < 0x33)
    {
      if (v8)
      {
        *v11 = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "We used SMS based PNR.", v11, 2u);
      }

      v9 = 1;
    }

    else if (v8)
    {
      *buf = 0;
      v9 = 2;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "We used SMSLess based PNR.", buf, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

  return v9;
}

@end