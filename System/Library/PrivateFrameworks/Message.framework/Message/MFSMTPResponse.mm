@interface MFSMTPResponse
- (MFSMTPResponse)initWithStatus:(unint64_t)a3;
- (id)description;
- (id)errorMessageWithAddress:(id)a3 defaultMessage:(id)a4;
- (int64_t)failureReason;
- (void)_updateEnhancedStatusCodesFromLastResponse;
- (void)setLastResponseLine:(id)a3;
- (void)setStatus:(unint64_t)a3;
@end

@implementation MFSMTPResponse

- (MFSMTPResponse)initWithStatus:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFSMTPResponse;
  result = [(MFSMTPResponse *)&v5 init];
  if (result)
  {
    result->_status = a3;
    *(result + 13) &= 0xC00Fu;
    *(result + 25) &= 0xF003u;
    *(result + 12) &= 0xFC00u;
  }

  return result;
}

- (void)setStatus:(unint64_t)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    *(self + 13) &= 0xC00Fu;
    *(self + 25) &= 0xF003u;
    *(self + 12) &= 0xFC00u;
  }
}

- (void)_updateEnhancedStatusCodesFromLastResponse
{
  lastResponseLine = self->_lastResponseLine;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusString = self->_statusString;
    self->_statusString = 0;

    v6 = [self->_lastResponseLine bytes];
    v7 = [self->_lastResponseLine length];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __60__MFSMTPResponse__updateEnhancedStatusCodesFromLastResponse__block_invoke;
    v19 = &unk_1E7AA33B0;
    v20 = self;
    v21 = a2;
    if (_updateEnhancedStatusCodesFromLastResponse_once != -1)
    {
      dispatch_once(&_updateEnhancedStatusCodesFromLastResponse_once, &v16);
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithBytesNoCopy:v6 length:v7 encoding:1 freeWhenDone:{0, v16, v17, v18, v19, v20, v21}];
    v10 = [_updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex firstMatchInString:v9 options:0 range:{0, v7}];
    v11 = v10;
    if (v10)
    {
      *(self + 12) = *(self + 12) & 0xFC00 | strtoul((v6 + [v10 rangeAtIndex:1]), 0, 10) & 0x3FF;
      *(self + 25) = (4 * (strtoul((v6 + [v11 rangeAtIndex:2]), 0, 10) & 0x3FF)) | *(self + 25) & 0xF003;
      *(self + 13) = (16 * (strtoul((v6 + [v11 rangeAtIndex:3]), 0, 10) & 0x3FF)) | *(self + 13) & 0xC00F;
      v13 = [v11 rangeAtIndex:5];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [v9 substringWithRange:{v13, v12}];
        v15 = self->_statusString;
        self->_statusString = v14;
      }
    }

    else
    {
      *(self + 13) &= 0xC00Fu;
      *(self + 25) &= 0xF003u;
      *(self + 12) &= 0xFC00u;
    }
  }

  else
  {
    *(self + 13) &= 0xC00Fu;
    *(self + 25) &= 0xF003u;
    *(self + 12) &= 0xFC00u;
  }
}

void __60__MFSMTPResponse__updateEnhancedStatusCodesFromLastResponse__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^([0-9]+)\\.([0-9]+)\\.([0-9]+)([ ]+)(.*)" options:16 error:0];
  v3 = _updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex;
  _updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex = v2;

  if (!_updateEnhancedStatusCodesFromLastResponse__responseEnhancedStatusCodesRegex)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SMTPResponse.m" lineNumber:89 description:{@"Unable to init regular expression from %@", @"^([0-9]+)\\.([0-9]+)\\.([0-9]+)([ ]+)(.*)"}];
  }
}

- (void)setLastResponseLine:(id)a3
{
  v5 = a3;
  if (self->_lastResponseLine != v5)
  {
    objc_storeStrong(&self->_lastResponseLine, a3);
    [(MFSMTPResponse *)self _updateEnhancedStatusCodesFromLastResponse];
  }
}

- (int64_t)failureReason
{
  lastResponseLine = self->_lastResponseLine;
  if (lastResponseLine)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lastResponseLine = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_lastResponseLine encoding:4];
    }

    else
    {
      lastResponseLine = 0;
    }
  }

  v4 = &ExtendedStatusCodesTable;
  failureReason_result = &ExtendedStatusCodesTable;
  while (*v4 != (*(self + 12) & 0x3FF) || v4[1] != ((*(self + 25) >> 2) & 0x3FF) || v4[2] != ((*(self + 13) >> 4) & 0x3FF))
  {
    if (*(v4 + 1) && lastResponseLine != 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      [lastResponseLine rangeOfString:v6 options:1];
      v8 = v7;

      v4 = failureReason_result;
      if (v8)
      {
        break;
      }
    }

    v4 += 12;
    failureReason_result = v4;
    if (v4 >= off_1E7AA7D80)
    {
      v9 = -1;
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 2);
LABEL_17:

  return v9;
}

- (id)errorMessageWithAddress:(id)a3 defaultMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFSMTPResponse *)self failureReason];
  if (v8 >= 6)
  {
    v9 = v7;
  }

  else
  {
    v9 = MFLookupLocalizedString(off_1E7AA7DC0[v8], off_1E7AA7DF0[v8], off_1E7AA7E20[v8]);
  }

  v10 = v9;
  if (v6 && v9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v6];

    v10 = v11;
  }

  return v10;
}

- (id)description
{
  if ((*(self + 12) & 0x3FF) != 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (%d.%d.%d) %@", self->_status, *(self + 12) & 0x3FF, (*(self + 25) >> 2) & 0x3FF, (*(self + 13) >> 4) & 0x3FF, self->_statusString];
  }

  else
  {
    status = self->_status;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu %@", status, self->_statusString, v5, v6, v7];
  }
  v3 = ;

  return v3;
}

@end