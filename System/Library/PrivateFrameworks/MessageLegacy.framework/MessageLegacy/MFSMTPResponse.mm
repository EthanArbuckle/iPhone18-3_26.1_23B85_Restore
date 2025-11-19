@interface MFSMTPResponse
- (MFSMTPResponse)initWithStatus:(int)a3;
- (id)description;
- (id)errorMessageWithAddress:(id)a3 defaultMessage:(id)a4;
- (int)failureReason;
- (void)_updateEnhancedStatusCodesFromLastResponse;
- (void)dealloc;
- (void)setLastResponseLine:(id)a3;
- (void)setStatus:(int)a3;
@end

@implementation MFSMTPResponse

- (MFSMTPResponse)initWithStatus:(int)a3
{
  v5.receiver = self;
  v5.super_class = MFSMTPResponse;
  result = [(MFSMTPResponse *)&v5 init];
  if (result)
  {
    result->_status = a3;
    *(result + 11) &= 0xC00Fu;
    *(result + 21) &= 0xF003u;
    *(result + 10) &= 0xFC00u;
  }

  return result;
}

- (void)setStatus:(int)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    *(self + 11) &= 0xC00Fu;
    *(self + 21) &= 0xF003u;
    *(self + 10) &= 0xFC00u;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFSMTPResponse;
  [(MFSMTPResponse *)&v3 dealloc];
}

- (void)_updateEnhancedStatusCodesFromLastResponse
{
  lastResponseLine = self->_lastResponseLine;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_statusString = 0;
    v5 = [self->_lastResponseLine bytes];
    v6 = [self->_lastResponseLine length];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __60__MFSMTPResponse__updateEnhancedStatusCodesFromLastResponse__block_invoke;
    v16 = &unk_2798B6FC8;
    v17 = self;
    v18 = a2;
    if (_updateEnhancedStatusCodesFromLastResponse_once != -1)
    {
      dispatch_once(&_updateEnhancedStatusCodesFromLastResponse_once, &v13);
    }

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v7 initWithBytesNoCopy:v5 length:v6 encoding:1 freeWhenDone:{0, v13, v14, v15, v16, v17, v18}];
    v9 = [_updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex firstMatchInString:v8 options:0 range:{0, v6}];
    if (v9)
    {
      v10 = v9;
      *(self + 10) = *(self + 10) & 0xFC00 | strtoul((v5 + [v9 rangeAtIndex:1]), 0, 10) & 0x3FF;
      *(self + 21) = (4 * (strtoul((v5 + [v10 rangeAtIndex:2]), 0, 10) & 0x3FF)) | *(self + 21) & 0xF003;
      *(self + 11) = (16 * (strtoul((v5 + [v10 rangeAtIndex:3]), 0, 10) & 0x3FF)) | *(self + 11) & 0xC00F;
      v11 = [v10 rangeAtIndex:5];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_statusString = [v8 substringWithRange:{v11, v12}];
      }
    }

    else
    {
      *(self + 11) &= 0xC00Fu;
      *(self + 21) &= 0xF003u;
      *(self + 10) &= 0xFC00u;
    }
  }

  else
  {
    *(self + 11) &= 0xC00Fu;
    *(self + 21) &= 0xF003u;
    *(self + 10) &= 0xFC00u;
  }
}

uint64_t __60__MFSMTPResponse__updateEnhancedStatusCodesFromLastResponse__block_invoke(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^([0-9]+)\\.([0-9]+)\\.([0-9]+)([ ]+)(.*)" options:16 error:0];
  _updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex = result;
  if (!result)
  {
    return __60__MFSMTPResponse__updateEnhancedStatusCodesFromLastResponse__block_invoke_cold_1(a1);
  }

  return result;
}

- (void)setLastResponseLine:(id)a3
{
  lastResponseLine = self->_lastResponseLine;
  if (lastResponseLine != a3)
  {

    self->_lastResponseLine = a3;

    [(MFSMTPResponse *)self _updateEnhancedStatusCodesFromLastResponse];
  }
}

- (int)failureReason
{
  lastResponseLine = self->_lastResponseLine;
  if (lastResponseLine)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lastResponseLine = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_lastResponseLine encoding:4];
    }

    else
    {
      lastResponseLine = 0;
    }
  }

  v4 = &ExtendedStatusCodesTable;
  failureReason_result = &ExtendedStatusCodesTable;
  while (*v4 != (*(self + 10) & 0x3FF) || v4[1] != ((*(self + 21) >> 2) & 0x3FF) || v4[2] != ((*(self + 11) >> 4) & 0x3FF))
  {
    if (*(v4 + 1) && lastResponseLine != 0)
    {
      [lastResponseLine rangeOfString:? options:?];
      v4 = failureReason_result;
      if (v6)
      {
        break;
      }
    }

    v4 += 12;
    failureReason_result = v4;
    if (v4 >= off_2798B7D28)
    {
      v7 = -1;
      goto LABEL_17;
    }
  }

  v7 = *(v4 + 4);
LABEL_17:

  return v7;
}

- (id)errorMessageWithAddress:(id)a3 defaultMessage:(id)a4
{
  v6 = [(MFSMTPResponse *)self failureReason];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = @"MF_SMTP_SENDING_LIMIT_EXCEEDED";
        v8 = @"Sending the message failed because you exceeded your sending limit.";
        goto LABEL_13;
      case 4:
        v7 = @"NO_PASSWORD_PROVIDED_ERROR";
        v8 = @"No password provided.\n\nPlease go to Mail Account Settings and enter a password.";
        v9 = 0;
        goto LABEL_14;
      case 5:
        v7 = @"SMTP_INVALID_SENDER_ADDRESS";
        v8 = @"The sender address “%@” was rejected by the server.";
        goto LABEL_13;
    }
  }

  else
  {
    switch(v6)
    {
      case 0:
        v7 = @"MF_SMTP_RECIPIENT_UNKNOWN";
        v8 = @"The recipient “%@” was rejected by the server because the user is unknown.";
        goto LABEL_13;
      case 1:
        v7 = @"MF_SMTP_RECIPIENT_RELAYING_NOT_ALLOWED";
        v8 = @"The recipient “%@” was rejected by the server because it does not allow relaying.";
        goto LABEL_13;
      case 2:
        v7 = @"MF_SMTP_RECIPIENT_INVALID_ADDRESS";
        v8 = @"The recipient “%@” was rejected by the server because it is not a valid email address.";
LABEL_13:
        v9 = @"Delayed";
LABEL_14:
        a4 = MFLookupLocalizedString(v7, v8, v9);
        break;
    }
  }

  if (a3 && a4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:a4, a3];
  }

  else
  {
    return a4;
  }
}

- (id)description
{
  if ((*(self + 10) & 0x3FF) != 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%d (%d.%d.%d) %@", self->_status, *(self + 10) & 0x3FF, (*(self + 21) >> 2) & 0x3FF, (*(self + 11) >> 4) & 0x3FF, self->_statusString];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%d %@", self->_status, self->_statusString, v3, v4, v5];
  }
}

@end