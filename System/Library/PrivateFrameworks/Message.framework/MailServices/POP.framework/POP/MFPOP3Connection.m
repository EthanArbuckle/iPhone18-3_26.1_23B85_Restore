@interface MFPOP3Connection
+ (id)log;
- (BOOL)_doBasicConnectionWithAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4;
- (BOOL)connectUsingAccount:(id)a3;
- (BOOL)startTLSForAccount:(id)a3;
- (MFPOP3Connection)init;
- (id)authenticationMechanisms;
- (id)capabilities;
- (id)copyMessageHeaderForMessageNumber:(unint64_t)a3;
- (id)copyReplyLineData;
- (id)idForMessageNumber:(int64_t)a3;
- (int64_t)_apopWithUsername:(id)a3 password:(id)a4;
- (int64_t)_getListResults;
- (int64_t)_getStatusFromReply;
- (int64_t)_getUidlResults;
- (int64_t)_pass:(id)a3;
- (int64_t)_readMultilineResponseWithMaxSize:(unint64_t)a3 consumer:(id)a4;
- (int64_t)_retrieveMessage:(unint64_t)a3 ofSize:(unint64_t)a4 consumer:(id)a5;
- (int64_t)_sendCommand:(const char *)a3 withArguments:(id)a4;
- (int64_t)_user:(id)a3;
- (int64_t)dele:(unint64_t)a3;
- (int64_t)deleteMessagesOnServer:(id)a3;
- (int64_t)doStat;
- (int64_t)fetchMessages:(id)a3 intoQueue:(id)a4 serverIDsByNumber:(id)a5;
- (int64_t)getMessageNumbers:(id *)a3 messageIdsByNumber:(id *)a4 numbersByMessageId:(id *)a5;
- (int64_t)getTop:(int)a3 ofMessageNumber:(unint64_t)a4 intoMutableData:(id)a5;
- (int64_t)quit;
- (int64_t)retr:(unint64_t)a3 consumer:(id)a4 intoQueue:(id)a5 idsByNumber:(id)a6 allowIncomplete:(BOOL)a7 queueStatus:(BOOL *)a8;
- (int64_t)retr:(unint64_t)a3 data:(id *)a4;
- (unint64_t)serverMessageCount;
- (unint64_t)sizeOfMessageNumber:(unint64_t)a3;
- (void)disableAPOP;
@end

@implementation MFPOP3Connection

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__MFPOP3Connection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __23__MFPOP3Connection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (MFPOP3Connection)init
{
  v6.receiver = self;
  v6.super_class = MFPOP3Connection;
  v2 = [(MFConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfMessagesAvailable = 0;
    v4 = v2;
  }

  return v3;
}

- (id)capabilities
{
  v32 = *MEMORY[0x277D85DE8];
  [(MFPOP3Connection *)self _sendCommand:"CAPA" withArguments:0];
  v3 = [(MFPOP3Connection *)self _getStatusFromReply]== 0;
  v4 = +[MFPOP3Connection log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v6 = [(MFConnection *)self accountLogString];
      v7 = [MEMORY[0x277D281F0] currentMonitor];
      v8 = [v7 error];
      v9 = [v8 ef_publicDescription];
      v28 = 138543618;
      v29 = v6;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_258B68000, v4, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Received CAPA error %{public}@", &v28, 0x16u);
    }

    v10 = 0;
LABEL_5:

    goto LABEL_6;
  }

  if (v5)
  {
    v13 = [(MFConnection *)self accountLogString];
    v28 = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = 0;
    _os_log_impl(&dword_258B68000, v4, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Successful CAPA response %{public}@", &v28, 0x16u);
  }

  v4 = [(MFPOP3Connection *)self copyReplyLineData];
  v10 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  if (v4)
  {
    do
    {
      if ([v4 length]== 3)
      {
        v14 = v4;
        if (!strncmp([v4 bytes], ".\r\n", [v4 length]))
        {
          break;
        }
      }

      v15 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:5];
      v16 = [v4 length];
      v17 = v4;
      v18 = [v4 bytes];
      v19 = memchr(v18, 13, v16);
      if (v19)
      {
        v20 = v19;
        v21 = v19 - v18;
        while (v21)
        {
          v22 = memchr(v18, 32, v21);
          if (v22)
          {
            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v18 length:v22 - v18 encoding:1];
            v24 = &v18[v21];
            v18 = v22 + 1;
            v21 = v24 - (v22 + 1);
          }

          else
          {
            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v18 length:v20 - v18 encoding:1];
            v21 = 0;
          }

          v25 = v23;
          if (v23)
          {
            v26 = [v23 uppercaseString];
            [v15 addObject:v26];
          }
        }
      }

      [v10 addObject:v15];
      v27 = [(MFPOP3Connection *)self copyReplyLineData];

      v4 = v27;
    }

    while (v27);
    goto LABEL_5;
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)authenticationMechanisms
{
  v20 = *MEMORY[0x277D85DE8];
  [(MFPOP3Connection *)self capabilities];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 count];
        if (v8)
        {
          v9 = [v7 objectAtIndexedSubscript:0];
          v10 = [v9 isEqualToString:@"SASL"];

          if (v10)
          {
            if (v3)
            {
              [v3 replaceObjectsInRange:objc_msgSend(v3 withObjectsFromArray:"count") range:{0, v7, 1, v8 - 1}];
            }

            else
            {
              v11 = [v7 subarrayWithRange:{1, v8 - 1}];
              v3 = [v11 mutableCopyWithZone:0];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if ([(MFPOP3Connection *)self supportsAPOP])
  {
    [v3 addObject:*MEMORY[0x277D06F20]];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_doBasicConnectionWithAccount:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = MFPOP3Connection;
  v4 = [(MFConnection *)&v26 connectUsingAccount:a3];
  apopTimeStamp = self->_apopTimeStamp;
  self->_apopTimeStamp = 0;

  if (v4)
  {
    v6 = [(MFPOP3Connection *)self copyReplyLineData];
    if ([v6 length] >= 3 && (v7 = v6, v8 = objc_msgSend(v6, "bytes"), *v8 == 43) && v8[1] == 79 && v8[2] == 75)
    {
      v9 = [v6 mf_rangeOfCString:">\r\n" options:12];
      if (v10)
      {
        v11 = v9;
        v12 = [v6 mf_rangeOfCString:"<" options:4 range:{0, v9 - 1}];
        if (v13)
        {
          v14 = v12;
          v15 = objc_alloc(MEMORY[0x277CBEA90]);
          v16 = v6;
          v17 = [v15 initWithBytes:objc_msgSend(v6 length:{"bytes") + v14, v11 - v14 + 1}];
          v18 = self->_apopTimeStamp;
          self->_apopTimeStamp = v17;
        }
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = +[MFPOP3Connection log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(MFConnection *)self accountLogString];
    v22 = v21;
    v23 = @"NO";
    if (v19)
    {
      v23 = @"YES";
    }

    *buf = 138543618;
    v28 = v21;
    v29 = 2114;
    v30 = v23;
    _os_log_impl(&dword_258B68000, v20, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Successful Connection Established: %{public}@", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)connectUsingAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 credentialAccessibility];
  if (!v5)
  {
    if ([(MFPOP3Connection *)self _doBasicConnectionWithAccount:v4])
    {
      if (![v4 usesSSL])
      {
        goto LABEL_15;
      }

      v11 = *MEMORY[0x277D28288];
      v12 = [*(&self->super.super.isa + v11) securityProtocol];
      v13 = [*MEMORY[0x277CBF0A0] isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_15;
      }

      if ([(MFPOP3Connection *)self startTLSForAccount:v4])
      {
        v14 = [v4 clientCertificates];
        if (v14)
        {
          [*(&self->super.super.isa + v11) setClientCertificates:v14];
        }

        v15 = [(MFConnection *)self enableSSL];

        if (v15)
        {
LABEL_15:
          v16 = [v4 URLString];
          accountURL = self->_accountURL;
          self->_accountURL = v16;
          v10 = 1;
          goto LABEL_16;
        }
      }
    }

    goto LABEL_17;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = MFLookupLocalizedString();
      v7 = [v4 inaccessiblePasswordErrorWithTitle:v6];
      goto LABEL_6;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v6 = MFLookupLocalizedString();
  v7 = [v4 missingPasswordErrorWithTitle:v6];
LABEL_6:
  accountURL = v7;

  if (!accountURL)
  {
    goto LABEL_17;
  }

  v9 = [MEMORY[0x277D281F0] currentMonitor];
  [v9 setError:accountURL];

  v10 = 0;
LABEL_16:

LABEL_18:
  return v10;
}

- (BOOL)authenticateUsingAccount:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D281F0] currentMonitor];
  v49.receiver = self;
  v49.super_class = MFPOP3Connection;
  v6 = [(MFConnection *)&v49 authenticateUsingAccount:v4];
  v7 = +[MFPOP3Connection log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MFConnection *)self accountLogString];
    v9 = v8;
    v10 = @"NO";
    if (v6)
    {
      v10 = @"YES";
    }

    *buf = 138543618;
    v51 = v8;
    v52 = 2114;
    v53 = v10;
    _os_log_impl(&dword_258B68000, v7, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Account loggedIn: %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    v11 = 1;
    goto LABEL_50;
  }

  v12 = [v5 error];
  v13 = v12 == 0;

  if (!v13)
  {
    v11 = 0;
    goto LABEL_50;
  }

  v14 = [v4 username];
  v15 = [v4 password];
  v48 = [v15 dataUsingEncoding:4];

  if (v48)
  {
    if (!-[MFPOP3Connection supportsAPOP](self, "supportsAPOP") || ![v4 shouldAttemptAPOP])
    {
      v16 = 1;
      goto LABEL_15;
    }

    [v4 setShouldAttemptAPOP:0];
    if ([(MFPOP3Connection *)self _apopWithUsername:v14 password:v48])
    {
      v16 = 2;
LABEL_15:
      v17 = 0;
      v47 = *MEMORY[0x277D281D8];
      while (1)
      {
        if (!v16)
        {
          goto LABEL_46;
        }

        v18 = +[MFPOP3Connection log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(MFConnection *)self accountLogString];
          *buf = 138543618;
          v51 = v19;
          v52 = 1024;
          LODWORD(v53) = v16;
          _os_log_impl(&dword_258B68000, v18, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Login attempt %d", buf, 0x12u);
        }

        if ([v5 shouldCancel])
        {
          goto LABEL_24;
        }

        v20 = [(MFPOP3Connection *)self _user:v14];
        if (v20)
        {
          if (v16 == 1)
          {
            break;
          }
        }

        if (v20)
        {
          LOBYTE(v11) = 1;
          goto LABEL_25;
        }

        if (([v5 shouldCancel] & 1) == 0)
        {
          v26 = [(MFPOP3Connection *)self _pass:v48];
          if (!v26 || v16 != 1)
          {
            v11 = 1;
            if (!v26)
            {
              goto LABEL_47;
            }

            goto LABEL_25;
          }

          v27 = [v5 error];

          if (v27)
          {
            v28 = [v27 domain];
            if ([v47 isEqualToString:v28])
            {
              v29 = [v27 code] == 1033;

              if (v29)
              {
                goto LABEL_37;
              }

              v17 = v27;
LABEL_42:
              v23 = +[MFPOP3Connection log];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v35 = [(MFConnection *)self accountLogString];
                v36 = [v17 ef_publicDescription];
                *buf = 138543618;
                v51 = v35;
                v52 = 2112;
                v53 = v36;
                _os_log_error_impl(&dword_258B68000, v23, OS_LOG_TYPE_ERROR, "<Account:%{public}@> Login Failure %@", buf, 0x16u);
              }

LABEL_23:

              goto LABEL_24;
            }

            v17 = v27;
          }

          else
          {
LABEL_37:
            v30 = MEMORY[0x277CCACA8];
            v31 = MFLookupLocalizedString();
            v32 = [v4 hostname];
            v28 = [v30 stringWithFormat:v31, v32];

            v33 = MEMORY[0x277D28200];
            v34 = MFLookupLocalizedString();
            v17 = [v33 errorWithDomain:v47 code:1032 localizedDescription:v28 title:v34 userInfo:0];
          }

          goto LABEL_42;
        }

LABEL_24:
        LOBYTE(v11) = 0;
LABEL_25:
        [(MFPOP3Connection *)self quit];
        if (--v16)
        {
          [(MFConnection *)self disconnect];
          [v5 setError:0];
          LOBYTE(v11) = [(MFPOP3Connection *)self connectUsingAccount:v4];
        }

        if (!v11)
        {
          goto LABEL_46;
        }
      }

      v21 = MEMORY[0x277D28200];
      v22 = MEMORY[0x277CCACA8];
      v23 = MFLookupLocalizedString();
      v24 = [v22 stringWithFormat:v23, v14];
      v25 = [v21 errorWithDomain:v47 code:1030 localizedDescription:v24];

      v17 = v25;
      goto LABEL_23;
    }

    v44 = +[MFPOP3Connection log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [(MFConnection *)self accountLogString];
      *buf = 138543362;
      v51 = v45;
      _os_log_impl(&dword_258B68000, v44, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Login Successful. Setting AuthScheme to ECAuthenticationSchemeAPOP", buf, 0xCu);
    }

    v46 = [MEMORY[0x277D07070] schemeWithName:*MEMORY[0x277D06F20]];
    [v4 setPreferredAuthScheme:v46];

    v17 = 0;
    [v4 savePersistentAccount];
    v11 = 1;
  }

  else
  {
    v37 = MFLookupLocalizedString();
    v17 = [v4 missingPasswordErrorWithTitle:v37];

LABEL_46:
    v11 = 0;
LABEL_47:
    if (v17)
    {
      [v5 setError:v17];
    }
  }

LABEL_50:
  v38 = +[MFPOP3Connection log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [(MFConnection *)self accountLogString];
    v40 = v39;
    v41 = @"Failed";
    if (v11)
    {
      v41 = @"Success";
    }

    *buf = 138543618;
    v51 = v39;
    v52 = 2112;
    v53 = v41;
    _os_log_impl(&dword_258B68000, v38, OS_LOG_TYPE_DEFAULT, "<Account:%{public}@> Login %@", buf, 0x16u);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 saslName];
  v9 = [(MFPOP3Connection *)self _sendCommand:"AUTH" withArguments:v8, 0];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    [v7 setAuthenticationState:1];
    while ([v7 authenticationState] == 1)
    {
      v11 = [(MFPOP3Connection *)self copyReplyLineData];
      *(self + 168) &= ~0x10u;
      if ([v11 length] < 2 || (v12 = objc_msgSend(v11, "bytes"), *v12 != 43) || v12[1] != 32)
      {
        if ([v11 length] >= 3 && (v18 = objc_msgSend(v11, "bytes"), *v18 == 43) && v18[1] == 79 && v18[2] == 75)
        {
          v19 = 4;
        }

        else if ([v11 length] >= 4 && !strncmp(objc_msgSend(v11, "bytes"), "-ERR", 4uLL))
        {
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }

        [v7 setAuthenticationState:v19];
        goto LABEL_26;
      }

      v13 = [v11 mf_subdataWithRange:{2, objc_msgSend(v11, "length") - 2}];
      v14 = [v13 mf_decodeBase64];

      v15 = [v7 responseForServerData:v14];
      v16 = [v15 mf_encodeBase64WithoutLineBreaks];

      if ([v7 justSentPlainTextPassword])
      {
        v17 = 16;
      }

      else
      {
        v17 = 0;
      }

      *(self + 168) = *(self + 168) & 0xEF | v17;
      if (!v16)
      {
        goto LABEL_25;
      }

      if ([(MFPOP3Connection *)self _sendCommand:0 withArguments:v16, 0])
      {
        [v7 setAuthenticationState:3];
LABEL_25:

LABEL_26:
        break;
      }
    }

    *(self + 168) &= ~0x10u;
    if ([v7 authenticationState] == 3)
    {
      [(MFConnection *)self disconnect];
    }

    v10 = [v7 authenticationState] == 4;
  }

  return v10;
}

- (int64_t)quit
{
  if ([(MFConnection *)self isValid])
  {
    v3 = [(MFPOP3Connection *)self _sendCommand:"QUIT" withArguments:0];
    if (!v3)
    {
      v3 = [(MFPOP3Connection *)self _getStatusFromReply];
    }
  }

  else
  {
    v3 = 7;
  }

  [(MFConnection *)self disconnect];
  return v3;
}

- (void)disableAPOP
{
  apopTimeStamp = self->_apopTimeStamp;
  self->_apopTimeStamp = 0;
  MEMORY[0x2821F96F8]();
}

- (int64_t)doStat
{
  v3 = [(MFPOP3Connection *)self _sendCommand:"STAT" withArguments:0];
  if (!v3)
  {
    v4 = [(MFPOP3Connection *)self copyReplyLineData];
    if ([v4 length] >= 3 && (v5 = objc_msgSend(v4, "bytes"), *v5 == 43) && v5[1] == 79 && v5[2] == 75)
    {
      v6 = [v4 bytes];
      v7 = memchr(v6, 32, [v4 length]);
      __endptr = v7;
      v8 = memchr(v6, 13, [v4 length]);
      if (v7 && v8 && v7 < v8)
      {
        self->_numberOfMessagesAvailable = strtoul(v7, &__endptr, 10);
      }

      v3 = 0;
    }

    else
    {
      v3 = 7;
    }
  }

  return v3;
}

- (int64_t)_getListResults
{
  if (self->_listResults)
  {
    return 0;
  }

  v4 = [(MFPOP3Connection *)self _sendCommand:"LIST" withArguments:0];
  if (v4)
  {
    return v4;
  }

  v4 = [(MFPOP3Connection *)self _getStatusFromReply];
  if (v4)
  {
    return v4;
  }

  v6 = [(MFPOP3Connection *)self copyReplyLineData];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  listResults = self->_listResults;
  self->_listResults = v7;

  if (!v6)
  {
    return 7;
  }

  v2 = 7;
  while ([v6 length] != 3 || strncmp(objc_msgSend(v6, "bytes"), ".\r\n", objc_msgSend(v6, "length")))
  {
    v9 = [v6 bytes];
    if (memchr(v9, 13, [v6 length]))
    {
      __endptr = 0;
      v10 = strtoul(v9, &__endptr, 10);
      if (__endptr)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{strtoul(__endptr, 0, 10)}];
        v12 = self->_listResults;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
        [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
      }
    }

    v14 = [(MFPOP3Connection *)self copyReplyLineData];

    v6 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  v2 = 0;
LABEL_18:

  return v2;
}

- (int64_t)_getUidlResults
{
  numbersByMessageId = self->_numbersByMessageId;
  if (!self->_messageIdsByNumber || (v4 = 0, !numbersByMessageId))
  {
    self->_numbersByMessageId = 0;

    messageIdsByNumber = self->_messageIdsByNumber;
    self->_messageIdsByNumber = 0;

    v6 = [(MFPOP3Connection *)self _sendCommand:"UIDL" withArguments:0];
    if (v6)
    {
      return v6;
    }

    v6 = [(MFPOP3Connection *)self _getStatusFromReply];
    if (v6)
    {
      return v6;
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v4 = 7;
      v8 = [(MFPOP3Connection *)self copyReplyLineData];
      if (v8)
      {
        while ([v8 length] != 3 || strncmp(objc_msgSend(v8, "bytes"), ".\r\n", objc_msgSend(v8, "length")))
        {
          v9 = [v8 length];
          v10 = [v8 bytes];
          v11 = memchr(v10, 32, v9);
          v12 = memchr(v10, 13, v9);
          if (v11)
          {
            v13 = v12;
            if (v11 < v12)
            {
              v14 = strtoul(v10, 0, 10);
              if (v14 != -1)
              {
                v15 = v14;
                v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v11 + 1 length:&v13[~v11] encoding:1];
                if (v16)
                {
                  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
                  [(NSMutableDictionary *)v24 setObject:v16 forKeyedSubscript:v17];

                  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
                  [(NSMutableDictionary *)v23 setObject:v18 forKeyedSubscript:v16];
                }
              }
            }
          }

          v19 = [(MFPOP3Connection *)self copyReplyLineData];

          v8 = v19;
          if (!v19)
          {
            goto LABEL_18;
          }
        }

        v4 = 0;
LABEL_18:
      }

      v20 = self->_messageIdsByNumber;
      self->_messageIdsByNumber = v24;
      v21 = v24;

      v22 = self->_numbersByMessageId;
      self->_numbersByMessageId = v23;
    }
  }

  return v4;
}

- (int64_t)getMessageNumbers:(id *)a3 messageIdsByNumber:(id *)a4 numbersByMessageId:(id *)a5
{
  if (![(MFPOP3Connection *)self _getUidlResults]|| (result = [(MFPOP3Connection *)self _getListResults]) == 0)
  {
    messageIdsByNumber = self->_messageIdsByNumber;
    if (messageIdsByNumber)
    {
      [(NSMutableDictionary *)messageIdsByNumber allKeys];
    }

    else
    {
      [(NSMutableDictionary *)self->_listResults allKeys];
    }
    v11 = ;
    v12 = [v11 mutableCopy];

    [v12 sortUsingComparator:&__block_literal_global];
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    if (a4)
    {
      *a4 = self->_messageIdsByNumber;
    }

    if (a5)
    {
      *a5 = self->_numbersByMessageId;
    }

    return 0;
  }

  return result;
}

uint64_t __76__MFPOP3Connection_getMessageNumbers_messageIdsByNumber_numbersByMessageId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongValue];
  v6 = [v4 unsignedLongValue];
  v7 = 1;
  if (v5 <= v6)
  {
    v7 = -1;
  }

  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (unint64_t)serverMessageCount
{
  if ([(MFPOP3Connection *)self _getUidlResults]&& [(MFPOP3Connection *)self _getListResults])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  messageIdsByNumber = self->_messageIdsByNumber;
  if (!messageIdsByNumber)
  {
    messageIdsByNumber = self->_listResults;
    if (!messageIdsByNumber)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return [(NSMutableDictionary *)messageIdsByNumber count];
}

- (id)idForMessageNumber:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(MFPOP3Connection *)self _sendCommand:"UIDL" withArguments:v4, 0];

  v5 = [(MFPOP3Connection *)self copyReplyLineData];
  if ([v5 length] < 3 || (v6 = objc_msgSend(v5, "bytes"), *v6 != 43) || v6[1] != 79 || v6[2] != 75)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v7 = [v5 length];
  v8 = [v5 bytes];
  v9 = memchr(v8, 32, v7);
  v10 = memchr(v9 + 1, 32, v8 + v7 - (v9 + 1));
  v11 = memchr(v8, 13, v7);
  v12 = 0;
  if (v9)
  {
    if (v10)
    {
      v13 = v11;
      if (v11)
      {
        if (v10 < v11)
        {
          if (strtoul(v9 + 1, 0, 10) != -1)
          {
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 + 1 length:&v13[~v10] encoding:1];
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:

  return v12;
}

- (int64_t)_retrieveMessage:(unint64_t)a3 ofSize:(unint64_t)a4 consumer:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  v10 = [(MFPOP3Connection *)self _sendCommand:"RETR" withArguments:v9, 0];
  if (v10)
  {
  }

  else
  {
    v10 = [(MFPOP3Connection *)self _getStatusFromReply];

    if (!v10)
    {
      v10 = [(MFPOP3Connection *)self _readMultilineResponseWithMaxSize:a4 consumer:v8];
    }
  }

  return v10;
}

- (int64_t)retr:(unint64_t)a3 consumer:(id)a4 intoQueue:(id)a5 idsByNumber:(id)a6 allowIncomplete:(BOOL)a7 queueStatus:(BOOL *)a8
{
  v9 = a7;
  v44 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v41 = a5;
  v39 = v14;
  v40 = a6;
  v15 = [(MFPOP3Connection *)self sizeOfMessageNumber:a3];
  v16 = v15;
  if (v15)
  {
    v17 = v15 > 0x2800 && v9;
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v19 = [(MFPOP3Connection *)self getTop:40 ofMessageNumber:a3 intoMutableData:v18];
      if (v19)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = [(MFPOP3Connection *)self _retrieveMessage:a3 ofSize:v15 consumer:v14];
      v18 = [v39 data];
      if (v19)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    if (v18)
    {
      v20 = [v18 mf_rangeOfRFC822HeaderData];
      v22 = v21;
      v36 = [v18 mf_subdataWithRange:{v20, v21}];
      v37 = [objc_alloc(MEMORY[0x277D24F80]) initWithHeaderData:v36 encoding:0xFFFFFFFFLL];
      v23 = EFStringWithUnsignedInteger();
      [v37 setHeader:v23 forKey:@"x-apple-content-length"];

      v24 = [v37 encodedHeaders];
      v38 = [v24 mutableCopy];

      v25 = [v18 mf_subdataWithRange:{v22, objc_msgSend(v18, "length") - v22}];
      [v38 appendData:v25];

      v26 = v36;
      if (v41 && v40)
      {
        v27 = objc_alloc_init(MFPOPMessage);
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
        v29 = [v40 objectForKeyedSubscript:v28];

        [(MFPOPMessage *)v27 setMessageID:v29];
        [(MFPOPMessage *)v27 setMessageNumber:a3];
        [(MFPOPMessage *)v27 setMessageData:v38 isComplete:!v17];
        [(MFPOPMessage *)v27 setAccountURL:self->_accountURL];
        [(MFPOPMessage *)v27 setMessageSize:v16];
        v26 = v36;
        v30 = [v41 addItem:v27];
        if (a8)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        if ((v31 & 1) == 0)
        {
          *a8 = 0;
        }

        v32 = MFLogGeneral();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [(MFPOPMessage *)v27 subject];
          *buf = 138412290;
          v43 = v33;
          _os_log_impl(&dword_258B68000, v32, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
        }
      }
    }

    goto LABEL_22;
  }

  v19 = 7;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

- (int64_t)retr:(unint64_t)a3 data:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v8 = [(MFPOP3Connection *)self retr:a3 consumer:v7 intoQueue:0 idsByNumber:0 allowIncomplete:0 queueStatus:0];
  *a4 = [v7 data];

  return v8;
}

- (int64_t)dele:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v5 = [(MFPOP3Connection *)self _sendCommand:"DELE" withArguments:v4, 0];

  if (v5)
  {
    return v5;
  }

  return [(MFPOP3Connection *)self _getStatusFromReply];
}

- (id)copyMessageHeaderForMessageNumber:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(MFPOP3Connection *)self getTopOfMessageNumber:a3 intoMutableData:v5];
  v6 = [objc_alloc(MEMORY[0x277D24F80]) initWithHeaderData:v5 encoding:0xFFFFFFFFLL];

  return v6;
}

- (unint64_t)sizeOfMessageNumber:(unint64_t)a3
{
  listResults = self->_listResults;
  if (!listResults)
  {
    [(MFPOP3Connection *)self _getListResults];
    listResults = self->_listResults;
    if (!listResults)
    {
      return 0;
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v7 = [(NSMutableDictionary *)listResults objectForKeyedSubscript:v6];
  v8 = [v7 unsignedLongValue];

  return v8;
}

- (int64_t)fetchMessages:(id)a3 intoQueue:(id)a4 serverIDsByNumber:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = a4;
  v31 = a5;
  v9 = [MEMORY[0x277D281F0] currentMonitor];
  if (v8 && [(MFPOP3Connection *)self messagesAvailable])
  {
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 integerForKey:@"POP3MaximumNumberToFetch"];

    v12 = [v8 count];
    v13 = objc_autoreleasePoolPush();
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v11 <= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    v16 = MFLookupLocalizedString();
    [v9 setDisplayName:v16 maxCount:v15];

    v17 = 0;
    v18 = 0;
    v32 = 1;
    while (v15)
    {
      v19 = [v9 shouldCancel];
      v20 = v18 ? 1 : v19;
      if (v20)
      {
        break;
      }

      if (v32 != 1)
      {
        v18 = 0;
        goto LABEL_24;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = v17 + 1;
      [v9 setCurrentCount:v17 + 1];
      v23 = objc_alloc_init(MEMORY[0x277D24EE8]);
      v24 = [v8 objectAtIndexedSubscript:v17];
      v18 = -[MFPOP3Connection retr:consumer:intoQueue:idsByNumber:allowIncomplete:queueStatus:](self, "retr:consumer:intoQueue:idsByNumber:allowIncomplete:queueStatus:", [v24 unsignedLongValue], v23, v30, v31, 1, &v32);

      --v15;
      objc_autoreleasePoolPop(v21);
      v17 = v22;
    }

    if (v18 && ([v9 shouldCancel] & 1) == 0)
    {
      v25 = MFLogGeneral();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v9 error];
        v27 = [v26 ef_publicDescription];
        [(MFPOP3Connection *)v27 fetchMessages:buf intoQueue:v25 serverIDsByNumber:v26];
      }
    }

LABEL_24:
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int64_t)deleteMessagesOnServer:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [MEMORY[0x277D281F0] currentMonitor];
  v7 = 0;
  v8 = 0;
  while (!v8 && v7 < v5)
  {
    v9 = [v4 objectAtIndexedSubscript:v7];
    v10 = [v9 unsignedLongValue];

    v8 = [(MFPOP3Connection *)self dele:v10];
    [v6 setPercentDone:(++v7 / v5)];
  }

  return v8;
}

- (BOOL)startTLSForAccount:(id)a3
{
  v4 = a3;
  v5 = [(MFPOP3Connection *)self capabilities];
  v6 = v5;
  if (v5 && [v5 indexOfObject:&unk_2869E1158] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(MFPOP3Connection *)self _sendCommand:"STLS" withArguments:0]&& ![(MFPOP3Connection *)self _getStatusFromReply])
    {
      v18 = 1;
      goto LABEL_8;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = MFLookupLocalizedString();
    v16 = [objc_opt_class() accountTypeString];
    v17 = [v4 hostname];
    v11 = [v14 stringWithFormat:v15, v16, v17];

    v12 = [MEMORY[0x277D281F0] currentMonitor];
    v13 = [MEMORY[0x277D28200] errorWithDomain:*MEMORY[0x277D281D8] code:1033 localizedDescription:v11];
    [v12 setError:v13];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = MFLookupLocalizedString();
    v9 = [objc_opt_class() accountTypeString];
    v10 = [v4 hostname];
    v11 = [v7 stringWithFormat:v8, v9, v10, objc_msgSend(v4, "portNumber")];

    v12 = [MEMORY[0x277D281F0] currentMonitor];
    v13 = [MEMORY[0x277D28200] errorWithDomain:*MEMORY[0x277D281D8] code:1034 localizedDescription:v11];
    [v12 setError:v13];
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (int64_t)getTop:(int)a3 ofMessageNumber:(unint64_t)a4 intoMutableData:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  v9 = EFStringWithInt();
  v10 = [(MFPOP3Connection *)self _sendCommand:"TOP" withArguments:v8, v9, 0];
  if (!v10)
  {
    v10 = [(MFPOP3Connection *)self _getStatusFromReply];

    if (v10)
    {
      goto LABEL_4;
    }

    v9 = [(MFPOP3Connection *)self copyReplyLineData];
    if (!v9)
    {
      v10 = 0;
      goto LABEL_4;
    }

    do
    {
      if ([v9 length] == 3 && !strncmp(objc_msgSend(v9, "bytes"), ".\r\n", objc_msgSend(v9, "length")))
      {
        break;
      }

      [v7 appendData:v9];
      v12 = [(MFPOP3Connection *)self copyReplyLineData];

      v9 = v12;
    }

    while (v12);
    v10 = 0;
  }

LABEL_4:
  [v7 mf_convertNetworkLineEndingsToUnix];

  return v10;
}

- (int64_t)_readMultilineResponseWithMaxSize:(unint64_t)a3 consumer:(id)a4
{
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:128];
  v8 = [MEMORY[0x277D281F0] currentMonitor];
  v9 = 0;
  v10 = a3;
  v11 = 1;
  v12 = 7;
  while ((v11 & 1) != 0 && [(MFConnection *)self readLineIntoData:v7])
  {
    v13 = [v7 length];
    v14 = [v7 bytes];
    if ([v7 length] == 3 && !strncmp(objc_msgSend(v7, "bytes"), ".\r\n", objc_msgSend(v7, "length")))
    {
      [v6 done];
      v11 = 0;
      v12 = 0;
    }

    else
    {
      if (v13 >= 3 && *v14 == 46)
      {
        v15 = [MEMORY[0x277D24F00] dataWithBytesNoCopy:v14 + 1 length:v13 - 1 freeWhenDone:0];
        [v6 appendData:v15];
      }

      else
      {
        [v7 mf_convertNetworkLineEndingsToUnix];
        [v6 appendData:v7];
      }

      v11 = 1;
    }

    v9 += v13;
    [v8 setPercentDone:(v9 / v10)];
    [v7 setLength:0];
  }

  return v12;
}

- (int64_t)_sendCommand:(const char *)a3 withArguments:(id)a4
{
  v6 = a4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0;
  if (a3 == "PASS")
  {
    v7 = 1;
  }

  else
  {
    v7 = (*(self + 168) >> 4) & 1;
  }

  sendBuffer = self->_sendBuffer;
  if (!sendBuffer)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:64];
    v10 = self->_sendBuffer;
    self->_sendBuffer = v9;

    sendBuffer = self->_sendBuffer;
  }

  [(NSMutableData *)sendBuffer setLength:0];
  if (a3)
  {
    [(NSMutableData *)self->_sendBuffer mf_appendCString:a3];
    v21 = 32;
  }

  if (v7)
  {
    v11 = [(NSMutableData *)self->_sendBuffer length];
    if (a3 == "PASS")
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = 0;
  if (v6)
  {
    v22 = &v23;
    while (1)
    {
      if (v21)
      {
        [(NSMutableData *)self->_sendBuffer appendBytes:&v21 length:1];
      }

      else
      {
        v21 = 32;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = self->_sendBuffer;
      if (isKindOfClass)
      {
        break;
      }

      v16 = [v6 description];
      v17 = [v16 dataUsingEncoding:4];
      [(NSMutableData *)v15 appendData:v17];

      if (v7)
      {
        goto LABEL_22;
      }

LABEL_23:
      v18 = v22++;
      v19 = *v18;

      v6 = v19;
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    [(NSMutableData *)self->_sendBuffer appendData:v6];
    if (!v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = [(NSMutableData *)self->_sendBuffer length]- v12;
    goto LABEL_23;
  }

LABEL_24:
  [(NSMutableData *)self->_sendBuffer mf_appendCString:"\r\n"];
  if ([(MFConnection *)self writeData:self->_sendBuffer dontLogBytesInRange:v12, v13])
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

- (id)copyReplyLineData
{
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:512];
  if (![(MFConnection *)self readLineIntoData:v3])
  {

    return 0;
  }

  return v3;
}

- (int64_t)_getStatusFromReply
{
  v3 = [(MFPOP3Connection *)self copyReplyLineData];
  if ([v3 length] >= 3)
  {
    v4 = [v3 bytes];
    if (*v4 == 43 && v4[1] == 79 && v4[2] == 75)
    {
      v5 = [MEMORY[0x277D281F0] currentMonitor];
      v6 = 0;
      [(MFPOP3Connection *)v5 setError:0];
      goto LABEL_37;
    }
  }

  v5 = self;
  v7 = v3;
  v8 = [v7 bytes];
  v9 = [v7 length];
  v10 = v8 + v9;
  if ([v7 length] < 4 || strncmp(objc_msgSend(v7, "bytes"), "-ERR", 4uLL))
  {
LABEL_17:
    v14 = 5;
    goto LABEL_18;
  }

  if (v9 < 5)
  {
    v8 += 4;
    goto LABEL_17;
  }

  v11 = 0;
  v12 = MEMORY[0x277D85DE0];
  while (1)
  {
    v13 = v11[v8 + 4];
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v12 + 4 * v13 + 60) & 0x4000) == 0)
    {
      goto LABEL_38;
    }

LABEL_14:
    ++v11;
    if (&v11[v8 + 4] >= v10)
    {
      v14 = 5;
      v8 += (v11 + 4);
      goto LABEL_18;
    }
  }

  if (__maskrune(v13, 0x4000uLL))
  {
    goto LABEL_14;
  }

LABEL_38:
  v27 = &v11[v8 + 4];
  if (*v27 != 91)
  {
    v14 = 5;
LABEL_55:
    v8 = v27;
    goto LABEL_18;
  }

  v28 = memchr(&v11[v8 + 5], 93, v9 - v11 - 5);
  if (v28)
  {
    v29 = v28;
    v14 = 0;
    v33 = &v28[-5 - v8] - v11;
    do
    {
      if (&v29[-5 - v8 - strlen(_parsePOPError__KnownPOP3ResponseStrings[v14])] == v11 && !strncasecmp(_parsePOPError__KnownPOP3ResponseStrings[v14], &v11[v8 + 5], v33))
      {
        break;
      }

      ++v14;
    }

    while (v14 != 5);
    v27 = v29 + 1;
  }

  else
  {
    v14 = 5;
  }

  if (v27 >= v10)
  {
    goto LABEL_55;
  }

  v30 = v5;
  v31 = v9 + v8 - v27;
  do
  {
    v32 = *v27;
    if ((v32 & 0x80000000) != 0)
    {
      if (!__maskrune(v32, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x4000) == 0)
    {
      break;
    }

    ++v27;
    --v31;
  }

  while (v31);
  v8 = v27;
  v5 = v30;
LABEL_18:
  if (v8 >= v10)
  {
    v16 = 0;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v8 length:v10 - v8 freeWhenDone:0];
    v16 = MFCreateStringWithData();
  }

  if (v14 >= 5)
  {
    v20 = [MEMORY[0x277D281F0] currentMonitor];
    v21 = [v20 error];

    if (v21)
    {
      v22 = [v21 domain];
      if ([*MEMORY[0x277CCA5B8] isEqualToString:v22])
      {
        v23 = [v21 code];

        if (v23 == 60)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      if ([v21 mf_isUserCancelledError])
      {
LABEL_31:
        v19 = &stru_2869E0620;
        goto LABEL_36;
      }
    }

    v19 = &stru_2869E0620;
    v17 = 1033;
    goto LABEL_33;
  }

  v17 = qword_258B74698[v14];
  v18 = v16;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_2869E0620;
  }

LABEL_33:
  v21 = [MEMORY[0x277D28200] errorWithDomain:*MEMORY[0x277D281D8] code:v17 localizedDescription:v19];
  if (v14 != 5)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [v21 setUserInfoObject:v24 forKey:@"POP3Response"];
  }

  v25 = [MEMORY[0x277D281F0] currentMonitor];
  [v25 setError:v21];

LABEL_36:
  v6 = 7;
LABEL_37:

  return v6;
}

- (int64_t)_apopWithUsername:(id)a3 password:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_apopTimeStamp)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[13] = v8;
    *&c.data[6] = v8;
    *&c.data[10] = v8;
    *&c.Nl = v8;
    *&c.data[2] = v8;
    *&c.A = v8;
    v21 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:32];
    CC_MD5_Init(&c);
    v9 = self->_apopTimeStamp;
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      CC_MD5_Update(&c, [(NSData *)v10 bytes], [(NSData *)v10 length]);
    }

    v12 = v7;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      CC_MD5_Update(&c, [v13 bytes], objc_msgSend(v13, "length"));
    }

    v15 = v21;
    memset(md, 170, sizeof(md));
    CC_MD5_Final(md, &c);
    v16 = v15;
    for (i = 0; i != 16; ++i)
    {
      memset(v23, 170, sizeof(v23));
      __snprintf_chk(v23, 3uLL, 0, 3uLL, "%02x", md[i]);
      [v16 appendBytes:v23 length:2];
    }

    [(MFPOP3Connection *)self _sendCommand:"APOP" withArguments:v6, v16, 0];
    v18 = [(MFPOP3Connection *)self _getStatusFromReply];
  }

  else
  {
    v18 = 7;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int64_t)_user:(id)a3
{
  v4 = a3;
  [(MFPOP3Connection *)self _sendCommand:"USER" withArguments:v4, 0];
  v5 = [(MFPOP3Connection *)self _getStatusFromReply];

  return v5;
}

- (int64_t)_pass:(id)a3
{
  v4 = a3;
  [(MFPOP3Connection *)self _sendCommand:"PASS" withArguments:v4, 0];
  v5 = [(MFPOP3Connection *)self _getStatusFromReply];

  return v5;
}

- (void)fetchMessages:(os_log_t)log intoQueue:(void *)a4 serverIDsByNumber:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_258B68000, log, OS_LOG_TYPE_ERROR, "failed: %{public}@", buf, 0xCu);
}

@end