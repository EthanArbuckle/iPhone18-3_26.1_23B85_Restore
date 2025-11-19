@interface MFSMTPConnection
- (BOOL)_connectUsingAccount:(id)a3;
- (BOOL)_hasParameter:(id)a3 forKeyword:(id)a4;
- (BOOL)_supportsExtension:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4;
- (BOOL)connectUsingAccount:(id)a3;
- (BOOL)supports8BitMime;
- (BOOL)supportsBinaryMime;
- (BOOL)supportsChunking;
- (BOOL)supportsOutboxCopy;
- (MFSMTPConnection)init;
- (id)_dataForCommand:(const char *)a3 length:(unint64_t)a4 argument:(id)a5 trailer:(const char *)a6;
- (id)authenticationMechanisms;
- (id)dataForMailFrom:(id)a3;
- (id)dataForRcptTo:(id)a3;
- (id)lastResponse;
- (id)lastResponseLine;
- (int)_doHandshakeUsingAccount:(id)a3;
- (int)_getReply;
- (int)_readResponseRange:(_NSRange *)a3 isContinuation:(BOOL *)a4;
- (int)_sendBytes:(const char *)a3 length:(unint64_t)a4 progressHandler:(id)a5;
- (int)_sendCommand:(const char *)a3 length:(unint64_t)a4 argument:(id)a5 trailer:(const char *)a6;
- (int)_sendData:(id)a3;
- (int)_sendData:(id)a3 progressHandler:(id)a4;
- (int)mailFrom:(id)a3;
- (int)noop;
- (int)quit;
- (int)rcptTo:(id)a3;
- (int)sendBData:(id)a3;
- (int)sendData:(id)a3;
- (int)state;
- (int64_t)mailFrom:(id)a3 recipients:(id)a4 withData:(id)a5 host:(id)a6 errorTitle:(id *)a7 errorMessage:(id *)a8 serverResponse:(id *)a9 displayError:(BOOL *)a10 errorCode:(int *)a11 errorUserInfo:(id *)a12;
- (unint64_t)maximumMessageBytes;
- (void)_setLastResponse:(id)a3;
- (void)dealloc;
- (void)setDomainName:(id)a3;
- (void)setUseSaveSent:(BOOL)a3 toFolder:(id)a4;
@end

@implementation MFSMTPConnection

- (MFSMTPConnection)init
{
  v4.receiver = self;
  v4.super_class = MFSMTPConnection;
  v2 = [(MFConnection *)&v4 init];
  if (v2)
  {
    v2->_mdata = [objc_alloc(MEMORY[0x277D24F70]) initWithCapacity:128];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFSMTPConnection;
  [(MFConnection *)&v3 dealloc];
}

- (int)state
{
  v2 = [(MFSMTPResponse *)self->_lastResponse status];
  if (v2 > 0x257)
  {
    return 6;
  }

  else
  {
    return *(&unk_258C4B5F0 + ((v2 / 0x19uLL) & 0xFFFFFFC));
  }
}

- (id)lastResponse
{
  v2 = [(MFSMTPResponse *)self->_lastResponse copy];

  return v2;
}

- (void)setDomainName:(id)a3
{
  v4 = [a3 copyWithZone:{-[MFSMTPConnection zone](self, "zone")}];

  self->_domainName = v4;
}

- (BOOL)supportsOutboxCopy
{
  if ([(MFSMTPConnection *)self _hasParameter:0 forKeyword:@"X-AOL-OUTBOX-COPY"])
  {
    return 1;
  }

  if (self->_dislikesSaveSentMbox)
  {
    return 0;
  }

  return [(MFSMTPConnection *)self _supportsSaveSentExtension];
}

- (BOOL)supports8BitMime
{
  v2 = [(MFSMTPConnection *)self _supportsExtension:@"8BITMIME"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];

    LOBYTE(v2) = [v3 BOOLForKey:@"Enable8BITMIME"];
  }

  return v2;
}

- (BOOL)supportsBinaryMime
{
  v2 = [(MFSMTPConnection *)self _supportsExtension:@"BINARYMIME"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];

    LOBYTE(v2) = [v3 BOOLForKey:@"EnableBINARYMIME"];
  }

  return v2;
}

- (BOOL)supportsChunking
{
  v2 = [(MFSMTPConnection *)self _supportsExtension:@"CHUNKING"];
  if (v2)
  {
    LOBYTE(v2) = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] ^ 1;
  }

  return v2;
}

- (unint64_t)maximumMessageBytes
{
  v12 = *MEMORY[0x277D85DE8];
  result = [(NSMutableArray *)self->_serviceExtensions count];
  if (result)
  {
    v4 = result;
    v5 = 1;
    do
    {
      if ([-[NSMutableArray objectAtIndex:](self->_serviceExtensions objectAtIndex:{v5 - 1), "caseInsensitiveCompare:", @"SIZE"}] || (v7 = -[NSMutableArray objectAtIndex:](self->_serviceExtensions, "objectAtIndex:", v5), !objc_msgSend(v7, "count")))
      {
        v6 = 0;
      }

      else
      {
        v6 = [v7 objectAtIndex:0];
      }

      if (v5 + 1 >= v4)
      {
        break;
      }

      v5 += 2;
    }

    while (!v6);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v6 length];
      Bytes = MFStringGetBytes();
      result = 0;
      if (v8 == Bytes)
      {
        __str[0] = 0;
        result = strtoull(__str, 0, 10);
      }
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)authenticationMechanisms
{
  v3 = [(NSMutableArray *)self->_serviceExtensions count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    do
    {
      if (![-[NSMutableArray objectAtIndex:](self->_serviceExtensions objectAtIndex:{v6 - 1), "caseInsensitiveCompare:", @"AUTH"}])
      {
        v8 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v6];
        if ([v8 count])
        {
          if (v5)
          {
            [v5 addObjectsFromArray:v8];
          }

          else
          {
            v5 = [v8 mutableCopyWithZone:0];
          }
        }
      }

      v7 = v6 + 1;
      v6 += 2;
    }

    while (v7 < v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)authenticateUsingAccount:(id)a3
{
  if (![a3 preferredAuthScheme])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MFSMTPConnection;
  return [(MFConnection *)&v6 authenticateUsingAccount:a3];
}

- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4
{
  v7 = [a4 saslName];
  v8 = [a4 base64EncodeResponseData];
  [a4 setAuthenticationState:1];
  v9 = [a4 responseForServerData:0];
  self->_hideLoggedData = [a4 justSentPlainTextPassword];
  if (v9)
  {
    if (v8)
    {
      [v9 mf_encodeBase64WithoutLineBreaks];
    }

    v10 = [v7 mutableCopyWithZone:0];
    v11 = MFCreateStringWithData();
    [v10 appendString:@" "];
    [v10 appendString:v11];

    v12 = [(MFSMTPConnection *)self _sendCommand:"AUTH " length:5 argument:v10 trailer:0];
  }

  else
  {
    v12 = [(MFSMTPConnection *)self _sendCommand:"AUTH " length:5 argument:v7 trailer:0];
  }

  if (v12 == 2)
  {
    v12 = [(MFSMTPConnection *)self _getReply];
  }

  else
  {
    [a4 setAuthenticationState:3];
  }

  if ([a4 authenticationState] == 1)
  {
    while ((v12 - 4) >= 2)
    {
      if (v12 == 2)
      {
        v17 = a4;
        v18 = 4;
        goto LABEL_27;
      }

      if (v12 != 3)
      {
        goto LABEL_26;
      }

      v13 = [(MFSMTPResponse *)self->_lastResponse lastResponseLine];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MEMORY[0x277CBEA90] data];
      }

      if (v8)
      {
        v13 = [v13 mf_decodeBase64];
      }

      v14 = [a4 responseForServerData:v13];
      self->_hideLoggedData = [a4 justSentPlainTextPassword];
      if (v14)
      {
        if (v8)
        {
          v14 = [v14 mf_encodeBase64WithoutLineBreaks];
        }

        v15 = -[MFSMTPConnection _sendCommand:length:argument:trailer:](self, "_sendCommand:length:argument:trailer:", [v14 bytes], objc_msgSend(v14, "length"), 0, 0);
        if (v15 != 2)
        {
          v12 = v15;
LABEL_26:
          v17 = a4;
          v18 = 3;
LABEL_27:
          [v17 setAuthenticationState:v18];
          goto LABEL_28;
        }

        v12 = [(MFSMTPConnection *)self _getReply];
      }

      else
      {
        [a4 setAuthenticationState:2];
        v12 = 3;
      }

LABEL_28:
      if ([a4 authenticationState] != 1)
      {
        goto LABEL_29;
      }
    }

    v16 = [a3 errorForResponse:self->_lastResponse];
    [v16 setMoreInfo:{-[MFSMTPConnection lastResponseLine](self, "lastResponseLine")}];
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
    v17 = a4;
    v18 = 2;
    goto LABEL_27;
  }

LABEL_29:
  self->_hideLoggedData = 0;
  return [a4 authenticationState] == 4;
}

- (BOOL)connectUsingAccount:(id)a3
{
  v5 = [(MFSMTPConnection *)self _connectUsingAccount:?];
  if (!v5)
  {
    return v5;
  }

  if ([(MFSMTPConnection *)self _doHandshakeUsingAccount:a3]!= 2)
  {
LABEL_16:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (![a3 usesSSL] || !objc_msgSend(*MEMORY[0x277CBF0A0], "isEqualToString:", -[_MFSocket securityProtocol](self->super._socket, "securityProtocol")))
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (![(MFSMTPConnection *)self _hasParameter:0 forKeyword:@"STARTTLS"])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"FAILED_SEND_SSL_NEEDED", @"Check the SSL setting for the outgoing server “%@”.", @"Delayed", objc_msgSend(a3, "hostname")];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"UserFriendlyErrorDescription"];
    v9 = +[MFActivityMonitor currentMonitor];
    v10 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
    v11 = 1034;
LABEL_15:
    [v9 setError:{+[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", v11, v7, v10, v8)}];
    goto LABEL_16;
  }

  if ([(MFSMTPConnection *)self _sendCommand:"STARTTLS" length:8 argument:0 trailer:0]!= 2 || [(MFSMTPConnection *)self _getReply]!= 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"FAILED_SEND_SSL_NEEDED", @"Check the SSL setting for the outgoing server “%@”.", @"Delayed", objc_msgSend(a3, "hostname")];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"UserFriendlyErrorDescription"];
    v9 = +[MFActivityMonitor currentMonitor];
    v10 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
    v11 = 1033;
    goto LABEL_15;
  }

  v6 = [a3 clientCertificates];
  if (v6)
  {
    [(_MFSocket *)self->super._socket setClientCertificates:v6];
  }

  v5 = [(_MFSocket *)self->super._socket setSecurityProtocol:*MEMORY[0x277CBF098]];
  if (v5)
  {
    LOBYTE(v5) = [(MFSMTPConnection *)self _doHandshakeUsingAccount:a3]== 2;
  }

  return v5;
}

- (int)mailFrom:(id)a3
{
  if ([(MFSMTPConnection *)self supportsBinaryMime])
  {
    v5 = "> BODY=BINARYMIME";
  }

  else if ([(MFSMTPConnection *)self supports8BitMime])
  {
    v5 = "> BODY=8BITMIME";
  }

  else
  {
    v5 = ">";
  }

  v6 = [a3 mf_copyIDNAEncodedEmailAddress];
  v7 = [(MFSMTPConnection *)self _sendCommand:"MAIL FROM:<" length:11 argument:v6 trailer:v5];
  if (v7 == 2)
  {
    v7 = [(MFSMTPConnection *)self _getReply];
  }

  return v7;
}

- (int)rcptTo:(id)a3
{
  v4 = [a3 mf_copyIDNAEncodedEmailAddress];
  v5 = [(MFSMTPConnection *)self _sendCommand:"RCPT TO:<" length:9 argument:v4 trailer:">"];
  if (v5 == 2)
  {
    v5 = [(MFSMTPConnection *)self _getReply];
  }

  return v5;
}

- (int)noop
{
  result = [(MFSMTPConnection *)self _sendCommand:"NOOP" length:4 argument:0 trailer:0];
  if (result == 2)
  {

    return [(MFSMTPConnection *)self _getReply];
  }

  return result;
}

- (int)sendBData:(id)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = [a3 length];
  v21 = [a3 numberOfNewlinesNeedingConversion:0] + v5;
  originalSocketTimeout = self->_originalSocketTimeout;
  if (originalSocketTimeout >= 1)
  {
    if (originalSocketTimeout <= 0xB4)
    {
      v7 = 180;
    }

    else
    {
      v7 = originalSocketTimeout;
    }

    [(_MFSocket *)self->super._socket setTimeout:v7];
  }

  v8 = objc_alloc(MEMORY[0x277CCAB68]);
  v9 = [v8 initWithFormat:@"BDAT %lu LAST\r\n", v19[3]];
  if (-[MFConnection writeData:dontLogBytesInRange:](self, "writeData:dontLogBytesInRange:", [v9 dataUsingEncoding:4], 0x7FFFFFFFFFFFFFFFLL, 0))
  {
    v10 = v19[3] / 0x50uLL;
    if (v10 <= 0x2000)
    {
      v10 = 0x2000;
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__MFSMTPConnection_sendBData___block_invoke;
    v16[3] = &unk_2798B7BB8;
    v16[4] = self;
    v16[5] = v17;
    v16[6] = &v18;
    v16[7] = v10;
    v11 = [objc_alloc(MEMORY[0x277D24F70]) initWithCapacity:0x10000];
    *(v23 + 6) = 2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30__MFSMTPConnection_sendBData___block_invoke_2;
    v15[3] = &unk_2798B7BE0;
    v15[4] = v11;
    v15[5] = self;
    v15[6] = v16;
    v15[7] = &v22;
    [a3 enumerateConvertingNewlinesUsingBlock:v15];
    if (*(v23 + 6) == 2)
    {
      v12 = [(MFSMTPConnection *)self _sendData:v11 progressHandler:v16];
      *(v23 + 6) = v12;
    }

    _Block_object_dispose(v17, 8);
  }

  v13 = *(v23 + 6);
  if (v13 == 2)
  {
    [(MFSMTPConnection *)self _getReply];
    v13 = [(MFSMTPConnection *)self state];
    *(v23 + 6) = v13;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t __30__MFSMTPConnection_sendBData___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) += a2;
  [*(a1[4] + 168) setPercentDone:*(*(a1[5] + 8) + 24) / *(*(a1[6] + 8) + 24) * 0.800000012 + 0.200000003];
  return a1[7];
}

BOOL __30__MFSMTPConnection_sendBData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendBytes:a2 length:a3];
  if ([*(a1 + 32) length] >= 0x10000)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) _sendData:*(a1 + 32) progressHandler:*(a1 + 48)];
    [*(a1 + 32) setLength:0];
  }

  return *(*(*(a1 + 56) + 8) + 24) == 2;
}

- (int)sendData:(id)a3
{
  originalSocketTimeout = self->_originalSocketTimeout;
  if (originalSocketTimeout >= 1)
  {
    socket = self->super._socket;
    if (originalSocketTimeout <= 0x78)
    {
      v7 = 120;
    }

    else
    {
      v7 = originalSocketTimeout;
    }

    [(_MFSocket *)socket setTimeout:v7];
  }

  v8 = +[MFActivityMonitor currentMonitor];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [a3 length];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__MFSMTPConnection_sendData___block_invoke;
  v17[3] = &unk_2798B7C08;
  v17[6] = v18;
  v17[7] = v19;
  v17[4] = a3;
  v17[5] = self;
  v17[8] = (v9 / 0x14) & 0xFFFFFFFFFFFE000;
  [(NSMutableData *)self->_mdata setLength:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __29__MFSMTPConnection_sendData___block_invoke_2;
  v16[3] = &unk_2798B7C30;
  v16[4] = self;
  v16[5] = v8;
  v16[7] = &v20;
  v16[8] = v19;
  v16[6] = v17;
  [a3 enumerateConvertingNewlinesUsingBlock:v16];
  if ((v21[3] & 1) == 0)
  {
    v10 = self->_originalSocketTimeout;
    if (v10 >= 1)
    {
      if (v10 <= 0x258)
      {
        v11 = 600;
      }

      else
      {
        v11 = v10;
      }

      [(_MFSocket *)self->super._socket setTimeout:v11];
    }

    [(MFSMTPConnection *)self _getReply];
    v12 = self->_originalSocketTimeout;
    if (v12 >= 1)
    {
      if (v12 <= 0x12C)
      {
        v13 = 300;
      }

      else
      {
        v13 = v12;
      }

      [(_MFSocket *)self->super._socket setTimeout:v13];
    }
  }

  v14 = [(MFSMTPConnection *)self state];
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t __29__MFSMTPConnection_sendData___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
  [*(*(a1 + 40) + 168) setPercentDone:{((*(*(*(a1 + 56) + 8) + 24) * 0.8) / objc_msgSend(*(a1 + 32), "length")) + 0.200000003}];
  return *(a1 + 64);
}

BOOL __29__MFSMTPConnection_sendData___block_invoke_2(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int a5)
{
  if (*a2 == 46)
  {
    [*(*(a1 + 32) + 128) appendBytes:a2 length:1];
  }

  [*(*(a1 + 32) + 128) appendBytes:a2 length:a3];
  if (a5 && (a4 & 1) == 0)
  {
    [*(*(a1 + 32) + 128) appendBytes:"\r\n" length:2];
  }

  if ([*(*(a1 + 32) + 128) length] >> 13)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5 == 0;
  }

  if (!v10)
  {
    if ([*(a1 + 40) shouldCancel])
    {
      [*(*(a1 + 32) + 112) setStatus:550];
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 32) disconnect];
    }

    else
    {
      if (a5)
      {
        [*(*(a1 + 32) + 128) appendBytes:"." length:1];
        [*(*(a1 + 32) + 128) appendBytes:"\r\n" length:2];
      }

      *(*(*(a1 + 64) + 8) + 24) += a3;
      if (a4)
      {
        --*(*(*(a1 + 64) + 8) + 24);
      }

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _sendData:*(*(a1 + 32) + 128) progressHandler:*(a1 + 48)] != 2;
    }

    [*(*(a1 + 32) + 128) setLength:0];
  }

  return (*(*(*(a1 + 56) + 8) + 24) & 1) == 0;
}

- (int)quit
{
  v3 = [(MFSMTPConnection *)self _sendCommand:"QUIT" length:4 argument:0 trailer:0];
  if (v3 == 2)
  {
    [(MFConnection *)self disconnect];
  }

  return v3;
}

- (id)dataForMailFrom:(id)a3
{
  if ([(MFSMTPConnection *)self supportsBinaryMime])
  {
    v5 = "> BODY=BINARYMIME";
  }

  else if ([(MFSMTPConnection *)self supports8BitMime])
  {
    v5 = "> BODY=8BITMIME";
  }

  else
  {
    v5 = ">";
  }

  v6 = [a3 mf_copyIDNAEncodedEmailAddress];
  v7 = [(MFSMTPConnection *)self _dataForCommand:"MAIL FROM:<" length:11 argument:v6 trailer:v5];

  return v7;
}

- (id)dataForRcptTo:(id)a3
{
  v4 = [a3 mf_copyIDNAEncodedEmailAddress];
  v5 = [(MFSMTPConnection *)self _dataForCommand:"RCPT TO:<" length:9 argument:v4 trailer:">"];

  return v5;
}

- (int64_t)mailFrom:(id)a3 recipients:(id)a4 withData:(id)a5 host:(id)a6 errorTitle:(id *)a7 errorMessage:(id *)a8 serverResponse:(id *)a9 displayError:(BOOL *)a10 errorCode:(int *)a11 errorUserInfo:(id *)a12
{
  v13 = a5;
  v15 = a3;
  v17 = a9;
  v119 = *MEMORY[0x277D85DE8];
  v18 = [MFActivityMonitor currentMonitor:a3];
  if (a10)
  {
    *a10 = 0;
  }

  v19 = [(MFSMTPConnection *)self supportsChunking];
  v99 = v19;
  if (![(MFSMTPConnection *)self supportsPipelining])
  {
    if ([(MFSMTPConnection *)self mailFrom:v15]!= 2)
    {
      *a11 = 1047;
      lastResponse = self->_lastResponse;
      v46 = MFLookupLocalizedString(@"SMTP_INVALID_SENDER_ADDRESS", @"The sender address “%@” was rejected by the server.", @"Delayed");
      v47 = lastResponse;
      v48 = a9;
      *a8 = [(MFSMTPResponse *)v47 errorMessageWithAddress:v15 defaultMessage:v46];
      v49 = [(MFSMTPConnection *)self lastResponseLine];
      v50 = 1;
LABEL_125:
      *v48 = v49;
      goto LABEL_126;
    }

    v97 = v15;
    v91 = v18;
    [self->_delegate setPercentDone:0.15];
    v28 = [a4 count];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v29 = [a4 countByEnumeratingWithState:&v102 objects:v113 count:16];
    if (v29)
    {
      v30 = v29;
      v94 = v13;
      v96 = a7;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = *v103;
      v35 = (0.05 / v28);
      v36 = 0.150000006;
      while (1)
      {
        v37 = 0;
        do
        {
          if (*v103 != v34)
          {
            objc_enumerationMutation(a4);
          }

          v106 = 0;
          v106 = *(*(&v102 + 1) + 8 * v37);
          if ([(MFSMTPConnection *)self rcptTo:?]== 2)
          {
            ++v32;
            v36 = v36 + v35;
            [self->_delegate setPercentDone:v36];
            goto LABEL_31;
          }

          if (v31)
          {
            [v31 addObject:v106];
            if (v33)
            {
              goto LABEL_29;
            }

LABEL_28:
            v33 = [(MFSMTPResponse *)self->_lastResponse status];
            *v17 = [(MFSMTPConnection *)self lastResponseLine];
            goto LABEL_29;
          }

          v31 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:&v106 count:1];
          if (!v33)
          {
            goto LABEL_28;
          }

LABEL_29:
          v38 = MFLogGeneral();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = v106;
            v40 = [(MFSMTPConnection *)self lastResponseLine];
            *buf = 138412546;
            *v112 = v39;
            v17 = a9;
            *&v112[8] = 2112;
            *&v112[10] = v40;
            _os_log_error_impl(&dword_258BDA000, v38, OS_LOG_TYPE_ERROR, "SMTP error for recipient %@: %@", buf, 0x16u);
          }

LABEL_31:
          ++v37;
        }

        while (v30 != v37);
        v41 = [a4 countByEnumeratingWithState:&v102 objects:v113 count:16];
        v30 = v41;
        if (!v41)
        {
          v42 = v33 == 0;
          v13 = v94;
          a7 = v96;
          goto LABEL_42;
        }
      }
    }

    v31 = 0;
    v32 = 0;
    v42 = 1;
LABEL_42:
    v51 = MFLogGeneral();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v112 = v32;
      *&v112[4] = 2112;
      *&v112[6] = v31;
      _os_log_impl(&dword_258BDA000, v51, OS_LOG_TYPE_INFO, "SMTP delivery:%d valid recipients; invalid recipients = %@", buf, 0x12u);
    }

    if (!v42)
    {
      if ([v31 count])
      {
        if (a10)
        {
          *a10 = 1;
        }

        *a11 = 1049;
        v53 = self->_lastResponse;
        v54 = [v31 lastObject];
        if ([v31 count] < 2)
        {
          v55 = @"SMTP_1_BAD_RECIPIENT";
          v56 = @"The recipient “%@” was rejected by the server.";
        }

        else
        {
          v55 = @"SMTP_BAD_RECIPIENTS";
          v56 = @"The recipients were rejected by the server.";
        }

        v71 = MFLookupLocalizedString(v55, v56, @"Delayed");
        v72 = v53;
        v73 = v54;
      }

      else
      {
        *a11 = 1049;
        v70 = self->_lastResponse;
        v71 = MFLookupLocalizedString(@"SMTP_RECIPIENTS_UNRECOGNIZED", @"Verify that you have addressed this message correctly. Check your SMTP server settings in Mail Preferences and verify any advanced settings with your system administrator.", @"Delayed");
        v72 = v70;
        v73 = 0;
      }

      v74 = [(MFSMTPResponse *)v72 errorMessageWithAddress:v73 defaultMessage:v71];
      *a8 = v74;
      v50 = 1;
      if (v74)
      {
        goto LABEL_127;
      }

      goto LABEL_129;
    }

    if (self->_useSaveSent && [(MFSMTPConnection *)self _supportsSaveSentExtension])
    {
      if (self->_saveSentMbox)
      {
        v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" imapmailbox=%@", self->_saveSentMbox];
      }

      else
      {
        v52 = 0;
      }

      v83 = [(MFSMTPConnection *)self _sendCommand:"SSNT" length:4 argument:v52 trailer:0]!= 2 || [(MFSMTPConnection *)self _getReply]!= 2;
      self->_dislikesSaveSentMbox = v83;
    }

    if (v99)
    {
      v84 = [(MFSMTPConnection *)self sendBData:v13];
    }

    else
    {
      if ([(MFSMTPConnection *)self _sendCommand:"DATA" length:4 argument:0 trailer:0]!= 2 || [(MFSMTPConnection *)self _getReply]!= 3)
      {
        [(MFSMTPResponse *)self->_lastResponse setStatus:550];
        *a8 = [(MFSMTPResponse *)self->_lastResponse errorMessageWithAddress:0 defaultMessage:MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed")];
        v49 = [(MFSMTPConnection *)self lastResponseLine];
        v50 = 1;
LABEL_124:
        v48 = a9;
        goto LABEL_125;
      }

      v84 = [(MFSMTPConnection *)self sendData:v13];
    }

    v85 = v84;
    if (v84 == 2)
    {
      v50 = 0;
      goto LABEL_126;
    }

    if ([v91 shouldCancel])
    {
      goto LABEL_114;
    }

    if (v85 == 4)
    {
      v86 = self->_lastResponse;
      v76 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_LATER", @"Mail will try to send the message again later.", @"Delayed");
      v77 = v86;
      v78 = v97;
      goto LABEL_119;
    }

    if (v85 == 5)
    {
      v50 = 7;
    }

    else
    {
      v50 = 1;
    }

    v88 = self->_lastResponse;
    v80 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
    v81 = v88;
    v82 = v97;
LABEL_122:
    v87 = [(MFSMTPResponse *)v81 errorMessageWithAddress:v82 defaultMessage:v80];
LABEL_123:
    *a8 = v87;
    v49 = [(MFSMTPConnection *)self lastResponseLine];
    goto LABEL_124;
  }

  v95 = a7;
  v93 = v13;
  [(NSMutableData *)self->_mdata setLength:0];
  [(NSMutableData *)self->_mdata appendData:[(MFSMTPConnection *)self dataForMailFrom:v15]];
  v109 = 0u;
  v110 = 0u;
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v107 = 0uLL;
  v108 = 0uLL;
  v21 = [a4 countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v108;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v108 != v23)
        {
          objc_enumerationMutation(a4);
        }

        [(NSMutableData *)self->_mdata appendData:[(MFSMTPConnection *)self dataForRcptTo:*(*(&v107 + 1) + 8 * i)]];
      }

      v22 = [a4 countByEnumeratingWithState:&v107 objects:v118 count:16];
    }

    while (v22);
  }

  v25 = [a4 count] + v20;
  if (self->_useSaveSent)
  {
    v26 = v99;
    if (![(MFSMTPConnection *)self _supportsSaveSentExtension])
    {
      v43 = 0;
      v44 = v25;
      if (v99)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (self->_saveSentMbox)
    {
      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" imapmailbox=%@", self->_saveSentMbox];
    }

    else
    {
      v27 = 0;
    }

    [(NSMutableData *)self->_mdata appendData:[(MFSMTPConnection *)self _dataForCommand:"SSNT" length:4 argument:v27 trailer:0]];

    v44 = v25 + 1;
    v43 = 1;
  }

  else
  {
    v43 = 0;
    v44 = v25;
  }

  v26 = v99;
  if (!v99)
  {
LABEL_57:
    [(NSMutableData *)self->_mdata appendData:[(MFSMTPConnection *)self dataForDataCmd]];
  }

LABEL_58:
  v92 = v18;
  [(MFSMTPConnection *)self _sendData:self->_mdata];
  if (!v44)
  {
    v50 = 0;
    a7 = v95;
    if (!v26)
    {
      goto LABEL_126;
    }

    goto LABEL_84;
  }

  v98 = v15;
  v50 = 0;
  v57 = 0;
  v58 = v25 - 1;
  v59 = 0x27F97B000uLL;
  v100 = *MEMORY[0x277D07128];
  v60 = 1;
  do
  {
    v61 = [(MFSMTPConnection *)self _getReply];
    v62 = v61;
    if (v58 == v57)
    {
      v63 = v43;
    }

    else
    {
      v63 = 0;
    }

    if (v63 == 1)
    {
      *(&self->super.super.isa + *(v59 + 3700)) = v61 != 2;
      goto LABEL_80;
    }

    if ((v60 & ((v61 - 4) < 0xFFFFFFFE)) == 1)
    {
      if (v57)
      {
        v64 = v99;
        if (v44 != 1)
        {
          v64 = 1;
        }

        v65 = a12;
        if ((v64 & 1) == 0)
        {
          v66 = [(MFSMTPResponse *)self->_lastResponse errorMessageWithAddress:0 defaultMessage:MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed")];
          goto LABEL_76;
        }

        if (a10)
        {
          *a10 = 1;
        }

        *a11 = 1049;
        v66 = -[MFSMTPResponse errorMessageWithAddress:defaultMessage:](self->_lastResponse, "errorMessageWithAddress:defaultMessage:", [a4 objectAtIndex:v57 - 1], MFLookupLocalizedString(@"SMTP_1_BAD_RECIPIENT", @"The recipient “%@” was rejected by the server.", @"Delayed"));
      }

      else
      {
        *a11 = 1047;
        v66 = [(MFSMTPResponse *)self->_lastResponse errorMessageWithAddress:v98 defaultMessage:MFLookupLocalizedString(@"SMTP_INVALID_SENDER_ADDRESS", @"The sender address “%@” was rejected by the server.", @"Delayed")];
      }

      v65 = a12;
LABEL_76:
      *a8 = v66;
      *a9 = [(MFSMTPConnection *)self lastResponseLine];
      if (v65)
      {
        v116 = v100;
        v114 = @"SMTPFailureReason";
        v115 = MFSMTPFailureReasonString([(MFSMTPResponse *)self->_lastResponse failureReason]);
        v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v60 = 0;
        *v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      }

      else
      {
        v60 = 0;
      }

      v50 = 1;
      v59 = 0x27F97B000;
    }

LABEL_80:
    ++v57;
    --v44;
  }

  while (v44);
  v67 = v60 & (v62 == 3 || v99);
  v26 = v99;
  a7 = v95;
  v15 = v98;
  if ((v67 & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_84:
  [self->_delegate setPercentDone:0.2];
  if (v26)
  {
    v68 = [(MFSMTPConnection *)self sendBData:v93];
  }

  else
  {
    v68 = [(MFSMTPConnection *)self sendData:v93];
  }

  v69 = v68;
  if (v68 != 2)
  {
    if (([v92 shouldCancel] & 1) == 0)
    {
      if (v69 != 4)
      {
        if (v69 == 5)
        {
          v50 = 7;
        }

        else
        {
          v50 = 1;
        }

        v79 = self->_lastResponse;
        v80 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
        v81 = v79;
        v82 = v15;
        goto LABEL_122;
      }

      v75 = self->_lastResponse;
      v76 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_LATER", @"Mail will try to send the message again later.", @"Delayed");
      v77 = v75;
      v78 = v15;
LABEL_119:
      v87 = [(MFSMTPResponse *)v77 errorMessageWithAddress:v78 defaultMessage:v76];
      v50 = 2;
      goto LABEL_123;
    }

LABEL_114:
    v50 = 4;
  }

LABEL_126:
  if (*a8)
  {
LABEL_127:
    if (!*a7)
    {
      *a7 = MFLookupLocalizedString(@"SMTP_SENDING_FAILED_TITLE", @"Unable to Send Email", @"Delayed");
    }
  }

LABEL_129:
  v89 = *MEMORY[0x277D85DE8];
  return v50;
}

- (int)_sendBytes:(const char *)a3 length:(unint64_t)a4 progressHandler:(id)a5
{
  v6 = a4;
  v9 = a4;
  if (a5)
  {
    v10 = (*(a5 + 2))(a5, 0);
    if (v10 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v6)
  {
    while (1)
    {
      v12 = self->_hideLoggedData ? 0 : 0x7FFFFFFFFFFFFFFFLL;
      v13 = self->_hideLoggedData ? v9 : 0;
      if (![(MFConnection *)self writeBytes:a3 length:v9 dontLogBytesInRange:v12, v13])
      {
        break;
      }

      v6 -= v9;
      if (a5)
      {
        v14 = (*(a5 + 2))(a5, v9);
        if (v14 >= v6)
        {
          v15 = v6;
        }

        else
        {
          v15 = v14;
        }

        if (!v14)
        {
          v15 = v6;
        }
      }

      else if (v9 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v9;
      }

      a3 += v9;
      v9 = v15;
      if (!v6)
      {
        goto LABEL_27;
      }
    }

    [(MFSMTPConnection *)self _setLastResponse:0];
    return 4;
  }

  else
  {
LABEL_27:
    [(MFSMTPConnection *)self _setLastResponse:0];
    return 2;
  }
}

- (int)_sendData:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  return [(MFSMTPConnection *)self _sendBytes:v5 length:v6 progressHandler:0];
}

- (int)_sendData:(id)a3 progressHandler:(id)a4
{
  v7 = [a3 bytes];
  v8 = [a3 length];

  return [(MFSMTPConnection *)self _sendBytes:v7 length:v8 progressHandler:a4];
}

- (id)_dataForCommand:(const char *)a3 length:(unint64_t)a4 argument:(id)a5 trailer:(const char *)a6
{
  v12 = [MEMORY[0x277D24F70] data];
  v13 = v12;
  if (a3)
  {
    [v12 appendBytes:a3 length:a4];
  }

  if (a5)
  {
    CStringPtr = CFStringGetCStringPtr(a5, 0x600u);
    if (CStringPtr)
    {
      [v13 appendBytes:CStringPtr length:strlen(CStringPtr)];
      if (!a6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    Length = CFStringGetLength(a5);
    v19 = 0;
    if (Length != MFStringGetBytes())
    {
      [MFSMTPConnection _dataForCommand:a2 length:self argument:a5 trailer:?];
    }

    v16 = [v13 length];
    [v13 setLength:v19 + v16];
    [v13 mutableBytes];
    v18 = 0;
    if (Length != MFStringGetBytes())
    {
      [MFSMTPConnection _dataForCommand:a2 length:self argument:a5 trailer:?];
      if (!a6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (a6)
  {
LABEL_11:
    [v13 appendBytes:a6 length:strlen(a6)];
  }

LABEL_12:
  [v13 appendBytes:"\r\n" length:{2, v18}];
  return v13;
}

- (int)_sendCommand:(const char *)a3 length:(unint64_t)a4 argument:(id)a5 trailer:(const char *)a6
{
  self->_lastCommandTimestamp = time(0);
  [(NSMutableData *)self->_mdata setLength:0];
  [(NSMutableData *)self->_mdata appendData:[(MFSMTPConnection *)self _dataForCommand:a3 length:a4 argument:a5 trailer:a6]];
  mdata = self->_mdata;

  return [(MFSMTPConnection *)self _sendData:mdata];
}

- (int)_getReply
{
  v3 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 1;
  do
  {
    v4 = [(MFSMTPConnection *)self _readResponseRange:&v12 isContinuation:&v11];
    if (v4 > 0x257)
    {
      v5 = 6;
    }

    else
    {
      v5 = *(&unk_258C4B5F0 + ((v4 / 0x19uLL) & 0xFFFFFFC));
    }

    v6 = [[MFSMTPResponse alloc] initWithStatus:v4];
    v7 = v6;
    if (v5 == 2)
    {
      v8 = 0;
LABEL_10:
      [(MFSMTPResponse *)v6 setLastResponseLine:v8];
      goto LABEL_12;
    }

    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13)
    {
      v8 = [(NSMutableData *)self->_mdata subdataWithRange:?];
      v6 = v7;
      goto LABEL_10;
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:MFLookupLocalizedString(@"SMTP_GENERIC_ERROR_FORMAT", @"An error occurred while delivering this message via the SMTP server “%@”", @"Delayed", -[_MFSocket remoteHostname](self->super._socket, "remoteHostname")];
    [(MFSMTPResponse *)v7 setLastResponseLine:v9];

LABEL_12:
    if (v11 != 1)
    {
      goto LABEL_18;
    }

    if (v3)
    {
      [v3 addObject:v7];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v7, 0}];
    }
  }

  while ((v11 & 1) != 0);
  v7 = 0;
LABEL_18:
  [(MFSMTPResponse *)v7 setContinuationResponses:v3];
  [(MFSMTPConnection *)self _setLastResponse:v7];

  return v5;
}

- (int)_readResponseRange:(_NSRange *)a3 isContinuation:(BOOL *)a4
{
  *a3 = xmmword_258C4B590;
  [(NSMutableData *)self->_mdata setLength:0];
  if (![(MFConnection *)self readLineIntoData:self->_mdata])
  {
    v23 = 0;
    v24 = 0;
    if (!a4)
    {
      return v24;
    }

LABEL_16:
    *a4 = v23;
    return v24;
  }

  v8 = [(NSMutableData *)self->_mdata bytes];
  v9 = [(NSMutableData *)self->_mdata length];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MFSMTPConnection__readResponseRange_isContinuation___block_invoke;
  block[3] = &unk_2798B6FC8;
  block[4] = self;
  block[5] = a2;
  if (_readResponseRange_isContinuation__once != -1)
  {
    dispatch_once(&_readResponseRange_isContinuation__once, block);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:v9 encoding:1 freeWhenDone:0];
  v11 = [_readResponseRange_isContinuation___responseRegex firstMatchInString:v10 options:0 range:{0, v9}];
  if (v11)
  {
    v12 = v11;
    if ([v11 numberOfRanges] != 4)
    {
      [MFSMTPConnection _readResponseRange:isContinuation:];
    }

    v30 = v8;
    [v12 range];
    v14 = v13;
    v29 = [v12 rangeAtIndex:1];
    v16 = v15;
    v17 = [v12 rangeAtIndex:2];
    v28 = v18;
    v19 = [v12 rangeAtIndex:3];
    if (v14)
    {
      v21 = v16 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [(NSMutableData *)self->_mdata length];
      v26 = 0;
      v23 = 0;
      v24 = 550;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      v24 = strtoul((v30 + v29), 0, 10);
      if (v28)
      {
        v23 = *(v30 + v17) == 45;
      }

      else
      {
        v23 = 0;
      }
    }

    a3->location = v26;
    a3->length = v27;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (a4)
  {
    goto LABEL_16;
  }

  return v24;
}

uint64_t __54__MFSMTPConnection__readResponseRange_isContinuation___block_invoke(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^([0-9]+)([- ])?(.*)$" options:16 error:0];
  _readResponseRange_isContinuation___responseRegex = result;
  if (!result)
  {
    return __54__MFSMTPConnection__readResponseRange_isContinuation___block_invoke_cold_1(a1);
  }

  return result;
}

- (BOOL)_connectUsingAccount:(id)a3
{
  [(MFSMTPConnection *)self _setLastResponse:0];
  v13.receiver = self;
  v13.super_class = MFSMTPConnection;
  v5 = [(MFConnection *)&v13 connectUsingAccount:a3];
  socket = self->super._socket;
  if (v5)
  {
    v7 = [(_MFSocket *)socket timeout];
    self->_originalSocketTimeout = v7;
    if (v7 >= 1)
    {
      v8 = self->super._socket;
      if (v7 <= 0x12C)
      {
        v9 = 300;
      }

      else
      {
        v9 = v7;
      }

      [(_MFSocket *)self->super._socket setTimeout:v9];
    }

    if ([(MFSMTPConnection *)self _getReply]== 2)
    {
      return 1;
    }
  }

  else
  {

    self->super._socket = 0;
  }

  v11 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  if (!v11 || [v11 code] == 1029)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"FAILED_SEND", @"Check the account settings for the outgoing server “%@”.", @"Delayed", objc_msgSend(a3, "hostname")];
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  }

  return 0;
}

- (int)_doHandshakeUsingAccount:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [(_MFSocket *)self->super._socket sourceIPAddress];
  v41 = a3;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(NSData *)v5 bytes];
  v7 = v6;
  v8 = &cStr[1];
  memset(v50, 0, sizeof(v50));
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  *&cStr[1] = 0u;
  cStr[0] = 91;
  v9 = *(v6 + 1);
  if (v9 == 2)
  {
    v10 = (v6 + 4);
    v11 = 2;
  }

  else
  {
    if (v9 != 30)
    {
      goto LABEL_8;
    }

    __strlcat_chk();
    v8 = &cStr[strlen(&cStr[1]) + 1];
    v10 = (v7 + 8);
    v11 = *(v7 + 1);
  }

  if (inet_ntop(v11, v10, v8, cStr - v8 + 126))
  {
    __strlcat_chk();
    v12 = CFStringCreateWithCString(0, cStr, 0x600u);
    [(MFSMTPConnection *)self setDomainName:v12];
    goto LABEL_9;
  }

LABEL_8:
  v12 = 0;
LABEL_9:
  v13 = 1;
  v42 = 1;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"localhost";
  }

  v39 = v14;
  v40 = [MFSMTPConnection _sendCommand:"_sendCommand:length:argument:trailer:" length:"EHLO " argument:5 trailer:?];
  if (v40 == 2 && v42 == 1)
  {
    v16 = 0x27F97B000uLL;
    *&v15 = 138412290;
    v38 = v15;
    v17 = 1;
    do
    {
      *cStr = 0;
      *&cStr[8] = 0;
      if ([(MFSMTPConnection *)self _readResponseRange:cStr isContinuation:&v42, v38]== 250)
      {
        if (!(v17 & 1 | (*&cStr[8] == 0)))
        {
          v18 = [*(&self->super.super.isa + *(v16 + 3676)) bytes];
          v19 = *&cStr[8];
          v20 = v18 + *cStr;
          *buf = v18 + *cStr;
          if (*&cStr[8] >= 6uLL && !strncasecmp((v18 + *cStr), "AUTH=", 5uLL))
          {
            v21 = v20 + 5;
          }

          else
          {
            v21 = v20 + v19;
          }

          ParameterStringFromBytes = _createParameterStringFromBytes(buf, v21);
          if (ParameterStringFromBytes)
          {
            v23 = _createParameterStringFromBytes(buf, v20 + v19);
            if (v23)
            {
              v24 = v23;
              v25 = 0;
              do
              {
                if (!v25)
                {
                  v25 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:5];
                }

                [v25 addObject:v24];

                v24 = _createParameterStringFromBytes(buf, v20 + v19);
              }

              while (v24);
            }

            else
            {
              v25 = 0;
            }

            serviceExtensions = self->_serviceExtensions;
            if (!serviceExtensions)
            {
              serviceExtensions = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
              self->_serviceExtensions = serviceExtensions;
            }

            [(NSMutableArray *)serviceExtensions addObject:ParameterStringFromBytes];
            v34 = self->_serviceExtensions;
            if (v25)
            {
              [(NSMutableArray *)v34 addObject:v25];
            }

            else
            {
              -[NSMutableArray addObject:](v34, "addObject:", [MEMORY[0x277CBEA60] array]);
            }
          }
        }

        v17 = 0;
        v13 = 0;
      }

      else if ([(MFSMTPResponse *)self->_lastResponse status]!= 500)
      {
        v26 = MFLogGeneral();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v28 = v16;
          v29 = *(v16 + 3676);
          v30 = [*(&self->super.super.isa + v29) bytes];
          v31 = *(&self->super.super.isa + v29);
          v16 = v28;
          v32 = [v27 initWithBytes:v30 length:objc_msgSend(v31 encoding:{"length"), 4}];
          *buf = v38;
          *&buf[4] = v32;
          _os_log_impl(&dword_258BDA000, v26, OS_LOG_TYPE_INFO, "--- Got unexpected EHLO response ESMTP params %@", buf, 0xCu);
        }

        v42 = 0;
      }
    }

    while ((v42 & 1) != 0);
  }

  if ([v41 usesSSL])
  {
    if ((([*MEMORY[0x277CCA670] isEqualToString:{objc_msgSend(objc_msgSend(+[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), "error"), "domain")}] ^ 1) & v13 & 1) == 0)
    {
LABEL_44:
      v35 = v40;
      goto LABEL_57;
    }
  }

  else if ((v13 & 1) == 0)
  {
    goto LABEL_44;
  }

  if (![(_MFSocket *)self->super._socket isWritable])
  {
    v35 = v40;
LABEL_54:
    [(_MFSocket *)self->super._socket abort];

    self->super._socket = 0;
    if ([(MFSMTPConnection *)self _connectUsingAccount:v41])
    {
      v35 = [(MFSMTPConnection *)self _sendCommand:"HELO " length:5 argument:v39 trailer:0];
      if (v35 == 2)
      {
        v35 = [(MFSMTPConnection *)self _getReply];
      }
    }

    goto LABEL_57;
  }

  v35 = v40;
  if ([(MFSMTPConnection *)self _sendCommand:"RSET" length:4 argument:0 trailer:0]== 2)
  {
    [(MFSMTPConnection *)self _getReply];
  }

  if (![(_MFSocket *)self->super._socket isWritable])
  {
    goto LABEL_54;
  }

  if ([(MFSMTPConnection *)self _sendCommand:"HELO " length:5 argument:v39 trailer:0]!= 2)
  {
    goto LABEL_54;
  }

  v35 = [(MFSMTPConnection *)self _getReply];
  if (v35 != 2)
  {
    goto LABEL_54;
  }

LABEL_57:
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)_hasParameter:(id)a3 forKeyword:(id)a4
{
  v7 = [(NSMutableArray *)self->_serviceExtensions count];
  v8 = [a3 uppercaseString];
  if (v7 >= 2)
  {
    v10 = v8;
    v11 = 1;
    do
    {
      v12 = [-[NSMutableArray objectAtIndex:](self->_serviceExtensions objectAtIndex:{v11 - 1), "caseInsensitiveCompare:", a4}] == 0;
      v9 = v12;
      v12 = !v12 || v10 == 0;
      if (!v12)
      {
        v9 = [-[NSMutableArray objectAtIndex:](self->_serviceExtensions objectAtIndex:{v11), "indexOfObject:", v10}] != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11 + 2 >= v7)
      {
        break;
      }

      v11 += 2;
    }

    while (!v9);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_supportsExtension:(id)a3
{
  v5 = [(NSMutableArray *)self->_serviceExtensions count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [-[NSMutableArray objectAtIndex:](self->_serviceExtensions objectAtIndex:{v7), "caseInsensitiveCompare:", a3}];
      LOBYTE(v5) = v8 == 0;
      v7 += 2;
    }

    while (v7 < v6 && v8);
  }

  return v5;
}

- (void)_setLastResponse:(id)a3
{
  lastResponse = self->_lastResponse;
  if (lastResponse != a3)
  {

    self->_lastResponse = a3;
  }
}

- (id)lastResponseLine
{
  v2 = [(MFSMTPResponse *)self->_lastResponse lastResponseLine];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:

    return v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = CFStringCreateWithBytes(0, [v2 bytes], objc_msgSend(v2, "length"), 0x600u, 0);
    goto LABEL_5;
  }

  return [v2 description];
}

- (void)setUseSaveSent:(BOOL)a3 toFolder:(id)a4
{
  self->_useSaveSent = a3;
  if (([a4 isEqualToString:self->_saveSentMbox] & 1) == 0)
  {
    self->_dislikesSaveSentMbox = 0;

    self->_saveSentMbox = [a4 copy];
  }
}

@end