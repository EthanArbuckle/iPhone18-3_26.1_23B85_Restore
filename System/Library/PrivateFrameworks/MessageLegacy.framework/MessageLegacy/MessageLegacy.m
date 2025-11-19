void _MFSocketNetworkThread(void *a1)
{
  [a1 lockWhenCondition:0];
  v2 = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], 1.79769313e308, 60.0, 0, 0, _DoNothingTimerCallBack, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, v2, *MEMORY[0x277CBF058]);
  NetworkThread = [MEMORY[0x277CCACC8] currentThread];
  [a1 unlockWithCondition:1];
  [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];

  CFRelease(v2);
}

void sub_258BDDF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BDF210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2048;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  *(a3 + 32) = 2048;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return [a1 domain];
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x2Au);
}

void *_openConnectionForAccount(void *a1, int a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_41;
  }

  if (a2)
  {
    v4 = [a1 secureConnectionSettings];
  }

  else
  {
    v4 = [a1 insecureConnectionSettings];
  }

  obj = v4;
  v5 = [a1 defaultPortNumber];
  v6 = [a1 defaultSecurePortNumber];
  v7 = [a1 usesSSL];
  v8 = [a1 portNumber];
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v8;
    if (v9 != v8)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v35 + 1) + 8 * i);
            v16 = [v15 usesSSL];
            if (v16)
            {
              v17 = v6;
            }

            else
            {
              v17 = v5;
            }

            if (v10 != v17)
            {
              [v15 setPortNumber:{objc_msgSend(a1, "portNumber")}];
              if (v16)
              {
                v18 = [v15 copy];
                [v18 setTryDirectSSL:{objc_msgSend(v15, "tryDirectSSL") ^ 1}];
                if (!v12)
                {
                  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                [v12 addObject:v18];
              }
            }
          }

          v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v11);
        if (v12)
        {
          obj = [obj arrayByAddingObjectsFromArray:v12];
        }
      }
    }
  }

  v19 = +[MFActivityMonitor currentMonitor];
  v20 = [obj count];
  v21 = 0;
  v22 = 0;
LABEL_33:
  if (v22 >= v20)
  {
LABEL_40:

LABEL_41:
    v26 = 0;
    goto LABEL_43;
  }

  while (1)
  {
    v25 = [obj objectAtIndex:v22];
    [a1 applySettingsAsDefault:v25];
    v26 = [a1 _newConnection];
    [v26 setAllowsFallbacks:0];
    v27 = [v26 connectUsingAccount:a1];
    v28 = v27 ^ 1;
    if (!v33)
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      break;
    }

    v29 = [v19 error];
    if (v27)
    {
      goto LABEL_43;
    }

    ++v22;
    v21 = v26;
    if (!v29)
    {
      goto LABEL_33;
    }

    v23 = [MFConnection shouldTryFallbacksAfterError:?];
    if (v22 >= v20 || !v23)
    {
      goto LABEL_40;
    }
  }

  *v33 = v25;
  [v19 error];
LABEL_43:
  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t _closeConnection(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a1 quit];
  }

  else
  {

    return [a1 disconnect];
  }
}

void _logEvent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  [_LogLock lock];
  v13 = [MEMORY[0x277CBEB28] data];
  v14 = v13;
  context = v12;
  if (!a3 || !a4 || a5 == 0x7FFFFFFFFFFFFFFFLL || a5 >= a4 || !a6)
  {
    v15 = a3;
    v16 = a4;
LABEL_5:
    [v13 appendBytes:v15 length:v16];
    goto LABEL_6;
  }

  [v13 appendBytes:a3 length:a5];
  [v14 appendBytes:"[Omitted]" length:9];
  v16 = a4 - (a6 + a5);
  if (a4 != a6 + a5)
  {
    v15 = a3 + a6 + a5;
    v13 = v14;
    goto LABEL_5;
  }

LABEL_6:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = _LogClasses;
  v18 = [_LogClasses countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (class_getClassMethod(v22, sel_logConnection_type_data_))
        {
          [v22 logConnection:a1 type:a2 data:v14];
        }

        else
        {
          [v22 logBytes:objc_msgSend(v14 length:{"bytes"), objc_msgSend(v14, "length")}];
        }

        [v22 flushLog];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  [_LogLock unlock];
  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_258BE8C3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
    objc_end_catch();
    JUMPOUT(0x258BE8BC4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _fillBuffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 encryptionBufferSize];
    v23 = 0;
    if (_readBytesFromSocket(a1, &v23, 4, 1) != 4)
    {
LABEL_20:
      v11 = 0;
      *(a1 + 56) = 0;
      return v11;
    }

    v3 = v23;
    v4 = bswap32(v23) >> 16;
    if (*(a1 + 64) != v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = malloc_type_realloc(v5, v4, 0x26E76850uLL);
      }

      else
      {
        v6 = malloc_type_malloc(v4, 0x567EB821uLL);
      }

      *(a1 + 40) = v6;
      *(a1 + 64) = v4;
    }

    if (v3 && _readBytesFromSocket(a1, *(a1 + 40), v4, 1) >= 1)
    {
      v10 = [*(a1 + 8) createDecryptedDataForBytes:*(a1 + 40) length:v4];
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = [v10 length];
    v13 = *(a1 + 64);
    v14 = *(a1 + 40);
    if (v12 != v13)
    {
      v14 = malloc_type_realloc(*(a1 + 40), v13, 0xF970104uLL);
      *(a1 + 40) = v14;
      v12 = *(a1 + 64);
    }

    [v10 getBytes:v14 length:v12];
    *(a1 + 48) = *(a1 + 64);
    *(a1 + 56) = 0;
  }

  else
  {
    v7 = *(a1 + 72);
    if (!v7)
    {
      v7 = 0x8000;
      *(a1 + 72) = 0x8000;
    }

    v8 = *(a1 + 40);
    if (v7 != *(a1 + 64))
    {
      if (v8)
      {
        v8 = malloc_type_realloc(*(a1 + 40), v7, 0xD41562BDuLL);
      }

      else
      {
        v8 = malloc_type_malloc(v7, 0x4B97C7C5uLL);
      }

      *(a1 + 40) = v8;
      *(a1 + 64) = v7;
    }

    BytesFromSocket = _readBytesFromSocket(a1, v8, v7, 0);
    *(a1 + 48) = BytesFromSocket & ~(BytesFromSocket >> 63);
    if (BytesFromSocket < 1)
    {
      goto LABEL_20;
    }
  }

  if ((*(a1 + 108) & 4) != 0)
  {
    v15 = objc_alloc_init(MEMORY[0x277D24F70]);
    v16 = *(a1 + 88);
    v17 = *(a1 + 40);
    v16->avail_in = *(a1 + 48);
    v16->next_in = v17;
    do
    {
      v16->avail_out = NSPageSize();
      v16->next_out = *(a1 + 96);
      if (inflate(v16, 0) == -2)
      {
        __assert_rtn("_fillBuffer", "Connection.m", 903, "Z_STREAM_ERROR != err");
      }

      [v15 appendBytes:*(a1 + 96) length:NSPageSize() - v16->avail_out];
    }

    while (!v16->avail_out);
    v18 = [v15 length];
    if (v18)
    {
      *(a1 + 64) = v18;
      *(a1 + 48) = v18;
      v19 = malloc_type_realloc(*(a1 + 40), v18, 0xA11F4DE3uLL);
      *(a1 + 40) = v19;
      memcpy(v19, [v15 bytes], *(a1 + 64));
      v20 = *(a1 + 48) > 0;
    }

    else
    {
      v20 = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 56) = 0;
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  if (*(a1 + 48) < 1 || ((v11 = 1, ![*(a1 + 8) encryptionBufferSize]) ? (v21 = 1) : (v21 = 2), _logEvent(a1, v21, *(a1 + 40), *(a1 + 48), 0x7FFFFFFFFFFFFFFFuLL, 0), *(a1 + 48) < 1))
  {
    _fillBuffer_cold_1();
    return 1;
  }

  return v11;
}

void sub_258BE91B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    *(v2 + 48) = 0;
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
    [v3 raise];
    objc_end_catch();
    JUMPOUT(0x258BE8FECLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _setupSSLDomainError(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 code];
  if (v6 > -9813)
  {
    switch(v6)
    {
      case -9812:
        v7 = @"SSL_UNKNOWN_ROOT_CERT_FORMAT";
        v8 = @"The root certificate for this server could not be verified.";
        goto LABEL_16;
      case -9808:
        v7 = @"SSL_BAD_CERT_FORMAT";
        v8 = @"The format of the certificate for the server is bad.";
        goto LABEL_16;
      case -9807:
        v7 = @"SSL_CERT_CHAIN_INVALID_FORMAT";
        v8 = @"The certificate for the server is invalid.";
        goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v6 == -9843)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = @"SSL_HOST_MISMATCH_MESSAGE";
    v11 = @"The certificate hostname does not match “%@”.";
LABEL_13:
    v12 = [v9 stringWithFormat:MFLookupLocalizedString(v10, v11, @"Delayed", a2];
    goto LABEL_17;
  }

  if (v6 == -9814)
  {
    v7 = @"SSL_CERT_EXPIRED_FORMAT";
    v8 = @"The certificate for this server has expired.";
    goto LABEL_16;
  }

  if (v6 != -9813)
  {
LABEL_12:
    v9 = MEMORY[0x277CCACA8];
    v10 = @"SSL_GENERIC_READ_ERROR";
    v11 = @"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.";
    goto LABEL_13;
  }

  v7 = @"SSL_NO_ROOT_CERT_FORMAT";
  v8 = @"There is no root certificate for this server.";
LABEL_16:
  v12 = MFLookupLocalizedString(v7, v8, @"Delayed");
LABEL_17:
  v13 = v12;
  if ([a3 count])
  {
    [a1 setUserInfoObject:a3 forKey:@"MFSSLErrorCertificateKey"];
  }

  [a1 setLocalizedDescription:v13];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SSL_ALERT_TITLE_FORMAT", @"Unable to verify SSL server %@", @"Delayed", a2];

  return [a1 setShortDescription:v14];
}

uint64_t _readBytesFromSocket(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v5 = a3;
    v8 = 0;
    while (1)
    {
      v9 = [*(a1 + 24) readBytes:a2 length:v5];
      if (v9 < 0)
      {
        break;
      }

      v10 = v9;
      *(a1 + 32) = CFAbsoluteTimeGetCurrent();
      if (!v10)
      {
        break;
      }

      v8 += v10;
      [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
      v5 -= v10;
      if (v5)
      {
        a2 += v10;
        if (a4)
        {
          continue;
        }
      }

      return v8;
    }

    v11 = +[MFActivityMonitor currentMonitor];
    v12 = *(a1 + 24);
    v13 = [v11 error];
    v14 = [v12 remoteHostname];
    if (!v13)
    {
      v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1045 localizedDescription:0];
      [v11 setError:v13];
      if (!v13 || [(NSError *)v13 mf_isUserCancelledError])
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if ([*MEMORY[0x277CCA5B8] isEqualToString:{-[MFError domain](v13, "domain")}])
    {
      if ([(MFError *)v13 code]== 60)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CONNECTION_TIMED_OUT", @"The connection to the server “%@” on port %d timed out.", @"Delayed", v14, objc_msgSend(v12, "remotePortNumber")];
LABEL_20:
        v17 = v15;
        goto LABEL_22;
      }
    }

    else if ([*MEMORY[0x277CCA670] isEqualToString:{-[MFError domain](v13, "domain")}])
    {
      _setupSSLDomainError(v13, v14, [v12 serverCertificates]);
      v16 = [(MFError *)v13 localizedDescription];
      if (!v16 || (v17 = v16, [&stru_2869ED3E0 isEqualToString:v16]))
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SSL_GENERIC_READ_ERROR", @"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.", @"Delayed", v14, v19];
        goto LABEL_20;
      }

LABEL_22:
      if ([(NSError *)v13 mf_isUserCancelledError])
      {
LABEL_26:
        [*(a1 + 24) abort];
        return -1;
      }

      if (v17)
      {
LABEL_25:
        [(MFError *)v13 setLocalizedDescription:v17];
        goto LABEL_26;
      }

LABEL_24:
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed", v14];
      goto LABEL_25;
    }

    v17 = 0;
    goto LABEL_22;
  }

  return 0;
}

uint64_t getDeliveryAccounts()
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (!_deliveryAccounts)
  {
    v0 = +[MFAccountStore sharedAccountStore];
    v5[0] = *MEMORY[0x277CB8CF8];
    v1 = [objc_msgSend(v0 accountsWithTypeIdentifiers:objc_msgSend(MEMORY[0x277CBEA60] error:{"arrayWithObjects:count:", v5, 1), 0), "mutableCopy"}];
    _deliveryAccounts = v1;
    if (!v1 || ![v1 count])
    {
      v2 = +[SMTPAccount newDefaultInstance];

      _deliveryAccounts = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v2, 0}];
    }
  }

  result = _deliveryAccounts;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _appendQuotedString(void *a1, uint64_t a2, void *a3)
{
  if ([a1 length])
  {
    [a1 appendBytes:" length:{", 1}];
  }

  [a1 mf_appendCString:a2];
  v14 = 61;
  [a1 appendBytes:&v14 length:1];
  v15 = 34;
  [a1 appendBytes:&v15 length:1];
  v6 = [a3 bytes];
  v7 = [a3 length];
  if (v7 >= 1)
  {
    v8 = v6 + v7;
    v9 = v6;
    while (1)
    {
      v10 = *v9;
      if (v10 == 34 || v10 == 92)
      {
        break;
      }

      if (++v9 >= v8)
      {
        v11 = 0;
LABEL_10:
        if (v9 > v6)
        {
          [a1 appendBytes:v6 length:&v9[-v6]];
        }

        if (v11)
        {
          v16 = 92;
          [a1 appendBytes:&v16 length:1];
          v12 = *v9++;
          v17 = v12;
          [a1 appendBytes:&v17 length:1];
        }

        v6 = v9;
        if (v9 >= v8)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = 1;
    goto LABEL_10;
  }

LABEL_15:
  v18 = 34;
  return [a1 appendBytes:&v18 length:1];
}

uint64_t _appendValue(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 length])
  {
    [a1 appendBytes:" length:{", 1}];
  }

  [a1 mf_appendCString:a2];
  v7 = 61;
  [a1 appendBytes:&v7 length:1];
  return [a1 appendData:a3];
}

CFStringRef copyToken(const UInt8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 >= v2)
  {
    v3 = 0;
  }

  else
  {
LABEL_2:
    v3 = *v1;
  }

  v4 = v2 - v1;
  do
  {
    while (1)
    {
      do
      {
        v5 = v3;
        v3 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v3 = 0;
      *a1 = ++v1;
      --v4;
      if (v1 < v2)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  v6 = v1;
  if (v1 < v2)
  {
    v6 = v1;
    while (1)
    {
      v7 = *v6;
      if ((v7 - 33) > 0x5D)
      {
        break;
      }

      v8 = (v7 - 34) > 0x3B || ((1 << (v7 - 34)) & 0xE0000007F0024C1) == 0;
      if (!v8 || v7 == 123 || v7 == 125)
      {
        break;
      }

      *a1 = ++v6;
      if (!--v4)
      {
        v6 = v2;
        break;
      }
    }
  }

  if (v1 >= v6)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithBytesNoCopy(0, v1, v6 - v1, 0x600u, 0, *MEMORY[0x277CBED00]);
  }
}

CFDataRef quoted_string(const UInt8 **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
LABEL_2:
    v4 = *v2;
    goto LABEL_4;
  }

  v4 = 0;
  do
  {
    while (1)
    {
      do
      {
LABEL_4:
        v5 = v4;
        v4 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v4 = 0;
      *a1 = ++v2;
      if (v2 < v3)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  if (v2 >= v3 || *v2 != 34)
  {
    return 0;
  }

  v6 = v2 + 1;
  *a1 = v6;
  v7 = MEMORY[0x277CBED00];
  if (v6 >= v3)
  {
    v10 = v6;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = *MEMORY[0x277CBED00];
  v10 = v6;
  while (1)
  {
    v11 = *v6;
    if (v11 == 92)
    {
      if (!v8)
      {
        v8 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
        v6 = *a1;
      }

      v12 = a1[1];
      if (v10 < v6)
      {
        [(__CFData *)v8 appendBytes:v10 length:v12 - v10];
        v6 = *a1;
        v12 = a1[1];
      }

      if ((v6 + 1) < v12)
      {
        *a1 = v6 + 1;
        [__CFData appendBytes:v8 length:"appendBytes:length:"];
        v6 = *a1;
      }

      v10 = v6;
      goto LABEL_24;
    }

    if (v11 == 34)
    {
      break;
    }

LABEL_24:
    *a1 = ++v6;
    if (v6 >= a1[1])
    {
      if (!v8)
      {
        goto LABEL_31;
      }

      if (v10 < v6)
      {
        goto LABEL_36;
      }

      return v8;
    }
  }

  if (v8)
  {
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    v10 = *a1;
    v6 = *a1 + 1;
    *a1 = v6;
LABEL_36:
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    return v8;
  }

  v8 = CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, v9);
  v10 = *a1;
  v6 = *a1 + 1;
  *a1 = v6;
  if (v8)
  {
    return v8;
  }

LABEL_31:
  v14 = *v7;

  return CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, v14);
}

void *copyQuotedTokenList(const UInt8 **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a1 < a1[1] && **a1 == 34)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    v3 = a1[1];
    v4 = (*a1 + 1);
    *a1 = v4;
    if (v4 < v3)
    {
      while (1)
      {
        v5 = copyToken(a1);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        [v2 addObject:v5];

        v7 = 0;
        v8 = *a1;
LABEL_15:
        if (v8 >= a1[1] || v7 != 0)
        {
          goto LABEL_21;
        }
      }

      if (*a1 >= a1[1])
      {
        v9 = 0;
      }

      else
      {
        v9 = **a1;
        if (v9 == 44)
        {
LABEL_13:
          v7 = 0;
          goto LABEL_14;
        }

        if (v9 == 34)
        {
          v7 = 1;
LABEL_14:
          v8 = *a1 + 1;
          *a1 = v8;
          goto LABEL_15;
        }
      }

      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v15 = v9;
        _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "*** Parse failure(unexpected character '%c'). Ignoring", buf, 8u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

void *_createResponseData(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  data = 58;
  memset(&c, 0, sizeof(c));
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32];
  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32];
  CC_MD5_Init(&c);
  if (a4)
  {
    CC_MD5_Update(&c, "AUTHENTICATE", 0xCu);
  }

  CC_MD5_Update(&c, &data, 1u);
  v10 = *(a3 + 40);
  if (v10)
  {
    CC_MD5_Update(&c, [*(a3 + 40) bytes], objc_msgSend(v10, "length"));
  }

  if ((*(a1 + 38) & 2) != 0)
  {
    CC_MD5_Update(&c, ":00000000000000000000000000000000", 0x21u);
  }

  CC_MD5_Final(md, &c);
  v11 = 0;
  do
  {
    v12 = v11 + 1;
    snprintf(__str, 3uLL, "%02x", md[v11]);
    [v9 appendBytes:__str length:2];
    v11 = v12;
  }

  while (v12 != 16);
  CC_MD5_Init(&c);
  v13 = *(a3 + 24);
  if (v13)
  {
    CC_MD5_Update(&c, [*(a3 + 24) bytes], objc_msgSend(v13, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v14 = *(a3 + 48);
  if (v14)
  {
    CC_MD5_Update(&c, [*(a3 + 48) bytes], objc_msgSend(v14, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v15 = *(a3 + 32);
  if (v15)
  {
    CC_MD5_Update(&c, [*(a3 + 32) bytes], objc_msgSend(v15, "length"));
  }

  CC_MD5_Final(__str, &c);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, __str, 0x10u);
  CC_MD5_Update(&c, &data, 1u);
  v16 = *(a2 + 8);
  if (v16)
  {
    CC_MD5_Update(&c, [*(a2 + 8) bytes], objc_msgSend(v16, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a3)
  {
    CC_MD5_Update(&c, [*a3 bytes], objc_msgSend(*a3, "length"));
  }

  if ((*(a1 + 38) & 2) != 0)
  {
    CC_MD5_Final((a3 + 64), &c);
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      snprintf(md, 3uLL, "%02x", *(a3 + 64 + v19));
      [v8 appendBytes:md length:2];
      v19 = v20;
    }

    while (v20 != 16);
  }

  else
  {
    CC_MD5_Final(md, &c);
    v17 = 0;
    do
    {
      v18 = v17 + 1;
      snprintf(v31, 3uLL, "%02x", md[v17]);
      [v8 appendBytes:v31 length:2];
      v17 = v18;
    }

    while (v18 != 16);
  }

  CC_MD5_Init(&c);
  if (v8)
  {
    CC_MD5_Update(&c, [v8 bytes], objc_msgSend(v8, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v21 = *(a2 + 8);
  if (v21)
  {
    CC_MD5_Update(&c, [v21 bytes], objc_msgSend(v21, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v22 = *(a3 + 8);
  if (v22)
  {
    CC_MD5_Update(&c, [*(a3 + 8) bytes], objc_msgSend(v22, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a3)
  {
    CC_MD5_Update(&c, [*a3 bytes], objc_msgSend(*a3, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v23 = *(a3 + 16);
  if (v23)
  {
    CC_MD5_Update(&c, [v23 bytes], objc_msgSend(v23, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (v9)
  {
    CC_MD5_Update(&c, [v9 bytes], objc_msgSend(v9, "length"));
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:32];
  CC_MD5_Final(md, &c);
  v25 = 0;
  do
  {
    v26 = v25 + 1;
    snprintf(v31, 3uLL, "%02x", md[v25]);
    [v24 appendBytes:v31 length:2];
    v25 = v26;
  }

  while (v26 != 16);

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t _GetTextBreakLocale()
{
  v0 = _GetTextBreakLocale___TextBreakLocale;
  if (!_GetTextBreakLocale___TextBreakLocale)
  {
    v1 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    if (!v1)
    {
      v1 = [objc_msgSend(MEMORY[0x277CBEAF8] "currentLocale")];
    }

    v0 = v1;
    _GetTextBreakLocale___TextBreakLocale = v0;
  }

  return [v0 UTF8String];
}

void _appendParagraphToOutput(__CFString *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v7 = a3;
    if (a3 > 0)
    {
      v10 = a5;
    }

    else
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      v11 = a3;
      do
      {
        [(__CFString *)a1 appendString:@"<BLOCKQUOTE type=cite>"];
        --v11;
      }

      while (v11);
    }

    if (a5)
    {
      [(__CFString *)a1 appendString:@"<SPAN>"];
      v12 = [a2 length];
      if (v12)
      {
        v13 = v12;
        v14 = malloc_type_malloc(2 * v12 + 2, 0x1000040BDFB0063uLL);
        if (v14)
        {
          v15 = v14;
          [a2 getCharacters:v14];
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v15[v16];
            chars = v18;
            if (v18 == 9)
            {
              v19 = @" &nbsp; &nbsp;";
            }

            else
            {
              v19 = 0;
            }

            if (v17 != 1 && v18 == 32)
            {
              if (v15[v17 - 2] == 32)
              {
                v19 = @"&nbsp;";
              }

              else
              {
                v19 = 0;
              }
            }

            if (v18 == 60)
            {
              v19 = @"&lt;";
            }

            if (v18 == 62)
            {
              v19 = @"&gt;";
            }

            if (v18 == 38)
            {
              v20 = @"&amp;";
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              [(__CFString *)a1 appendString:?];
            }

            else
            {
              CFStringAppendCharacters(a1, &chars, 1);
            }

            v16 = v17;
          }

          while (v13 > v17++);
          free(v15);
        }
      }

      if (a4)
      {
        [(__CFString *)a1 appendString:@"</SPAN><BR>"];
      }

      if (v10)
      {
        do
        {
          [(__CFString *)a1 appendString:@"</BLOCKQUOTE>"];
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      [(__CFString *)a1 appendString:a2];
      if (a4)
      {

        [(__CFString *)a1 appendString:a4];
      }
    }
  }
}

void ___weakDDURLifierClass_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(GSSystemRootDirectory() stringByAppendingPathComponent:{@"System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore", "fileSystemRepresentation"}];
  if (dlopen(v0, 1))
  {
    _weakDDURLifierClass_sDDURLifierClass = NSClassFromString(&cfstr_Ddurlifier.isa);
    if (!_weakDDURLifierClass_sDDURLifierClass)
    {
      v1 = MFLogGeneral();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        v2 = "#Warning NSClassFromString(@DDURLifier) returned Nil";
        v3 = v1;
        v4 = 2;
LABEL_7:
        _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, v2, &v7, v4);
      }
    }
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = dlerror();
      v2 = "#Warning Failed to load DataDetectorsCore.framework (%s)";
      v3 = v5;
      v4 = 12;
      goto LABEL_7;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void _dispatch_sync(void *a1)
{
  if (_dispatch_sync_token != -1)
  {
    _dispatch_sync_cold_1();
  }

  v2 = dispatch_group_create();
  dispatch_group_async(v2, _dispatch_sync__queue, a1);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  dispatch_release(v2);
}

dispatch_queue_t ___dispatch_sync_block_invoke()
{
  result = dispatch_queue_create("com.apple.message.InvocationQueueState", 0);
  _dispatch_sync__queue = result;
  return result;
}

MFLibraryStore *initializeSharedInstance()
{
  result = objc_alloc_init(MFLibraryStore);
  _sharedInstance = result;
  return result;
}

uint64_t partDataFromFullBodyData(void *a1, uint64_t a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  result = [a1 fullBodyDataForMessage:a2 andHeaderDataIfReadilyAvailable:0 isComplete:&v13 downloadIfNecessary:a5 usePartDatas:0 didDownload:a6];
  if (result)
  {
    if (v13 == 1 && (v9 = result, v10 = [a3 range], v12 = v11, v10 + v11 <= objc_msgSend(v9, "length")))
    {
      result = [v9 mf_subdataWithRange:{v10, v12}];
      if (a4)
      {
        *a4 = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *_allEmailAddressesIncludingFullName(int a1, int a2)
{
  v62 = *MEMORY[0x277D85DE8];
  +[MailAccount mf_lock];
  v2 = &_DefaultTimeout;
  if (_allEmailAddresses)
  {
    v3 = _allEmailAddressesWithFullUserName == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || _allReceiveEmailAliasAddresses == 0 || _allReceiveEmailAliasAddressesWithFullUserName == 0)
  {
    +[MailAccount mf_unlock];
    obj = +[MailAccount mailAccounts];
    +[MailAccount mf_lock];
    if (!_allEmailAddresses || !_allEmailAddressesWithFullUserName || !_allReceiveEmailAliasAddresses || !_allReceiveEmailAliasAddressesWithFullUserName)
    {

      _allEmailAddresses = 0;
      _allEmailAddressesWithFullUserName = 0;

      _allReceiveEmailAliasAddresses = 0;
      _allReceiveEmailAliasAddressesWithFullUserName = 0;
      _allEmailAddresses = objc_alloc_init(MEMORY[0x277CBEB18]);
      _allEmailAddressesWithFullUserName = objc_alloc_init(MEMORY[0x277CBEB18]);
      _allReceiveEmailAliasAddresses = objc_alloc_init(MEMORY[0x277CBEB18]);
      _allReceiveEmailAliasAddressesWithFullUserName = objc_alloc_init(MEMORY[0x277CBEB18]);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v6)
      {
        v46 = *v57;
        do
        {
          v7 = 0;
          v45 = v6;
          do
          {
            if (*v57 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v56 + 1) + 8 * v7);
            v47 = v7;
            if ([v49 isActive])
            {
              v8 = 1;
              do
              {
                v48 = v8;
                v9 = (v8 & 1) == 0;
                v10 = &selRef_emailAddresses;
                if (v9)
                {
                  v10 = &selRef_receiveEmailAliasAddressesList;
                }

                v11 = *v10;
                v12 = &_allEmailAddresses;
                if (v9)
                {
                  v12 = &_allReceiveEmailAliasAddresses;
                }

                v13 = *v12;
                v14 = &_allEmailAddressesWithFullUserName;
                if (v9)
                {
                  v14 = &_allReceiveEmailAliasAddressesWithFullUserName;
                }

                v51 = *v14;
                v15 = [v49 performSelector:v11];
                v16 = [(__CFAllocator *)v15 count];
                if (v16)
                {
                  allocator = 0;
                  v17 = 0;
                  do
                  {
                    v18 = v17;
                    v19 = [(__CFAllocator *)v15 objectAtIndex:v17++];
                    if (v18 + 1 < v16)
                    {
                      v20 = v19;
                      v21 = v18 + 1;
                      while (1)
                      {
                        v22 = [(__CFAllocator *)v15 objectAtIndex:v21];
                        v24 = [v22 rangeOfString:v20 options:8];
                        if (v24 != 0x7FFFFFFFFFFFFFFFLL && [v22 length] > (v24 + v23) && objc_msgSend(v22, "characterAtIndex:") == 64)
                        {
                          break;
                        }

                        if (v16 == ++v21)
                        {
                          goto LABEL_44;
                        }
                      }

                      MutableCopy = allocator;
                      if (!allocator)
                      {
                        MutableCopy = CFArrayCreateMutableCopy(0, v16, v15);
                      }

                      allocator = MutableCopy;
                      CFArrayExchangeValuesAtIndices(MutableCopy, v18, v21);
                    }

LABEL_44:
                    ;
                  }

                  while (v17 != v16);
                  if (allocator)
                  {
                    v15 = allocator;
                  }
                }

                v26 = [v49 fullUserName];
                v27 = v26;
                if (v26 && [v26 rangeOfString:{@", "}] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v27, "rangeOfString:", @"") == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v27];
                }

                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v28 = [(__CFAllocator *)v15 countByEnumeratingWithState:&v52 objects:v60 count:16];
                if (v28)
                {
                  v29 = *v53;
                  do
                  {
                    for (i = 0; i != v28; ++i)
                    {
                      if (*v53 != v29)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v31 = *(*(&v52 + 1) + 8 * i);
                      if (v31 && ([*(*(&v52 + 1) + 8 * i) isEqualToString:&stru_2869ED3E0] & 1) == 0)
                      {
                        if (v27 && ([v27 isEqualToString:&stru_2869ED3E0] & 1) == 0)
                        {
                          v32 = [MEMORY[0x277CCACA8] mf_formattedAddressWithName:v27 email:v31 useQuotes:1];
                        }

                        else
                        {
                          v32 = v31;
                        }

                        v33 = v32;
                        if (v32 && [v51 indexOfObject:v32] == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v51 addObject:v33];
                        }

                        if ([v13 indexOfObject:v31] == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v13 addObject:v31];
                        }
                      }
                    }

                    v28 = [(__CFAllocator *)v15 countByEnumeratingWithState:&v52 objects:v60 count:16];
                  }

                  while (v28);
                }

                v8 = 0;
              }

              while ((v48 & 1) != 0);
            }

            v7 = v47 + 1;
          }

          while (v47 + 1 != v45);
          v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
          v2 = &_DefaultTimeout;
        }

        while (v6);
      }
    }
  }

  v34 = v2;
  v35 = _allEmailAddressesWithFullUserName;
  v36 = _allEmailAddresses;
  if (a2)
  {
    if (a1)
    {
      if (![_allReceiveEmailAliasAddressesWithFullUserName count])
      {
        v36 = v35;
        goto LABEL_84;
      }

      v37 = [v35 arrayByAddingObjectsFromArray:_allReceiveEmailAliasAddressesWithFullUserName];
      goto LABEL_82;
    }

    v39 = v34;
    if ([*(v34 + 206) count])
    {
      v37 = [v36 arrayByAddingObjectsFromArray:*(v39 + 206)];
LABEL_82:
      v36 = v37;
    }
  }

  else
  {
    if (a1)
    {
      v36 = _allEmailAddressesWithFullUserName;
    }

    v38 = v36;
  }

LABEL_84:
  +[MailAccount mf_unlock];
  v40 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_258BF7D78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 buf)
{
  if (a2 == 1)
  {
    v33 = objc_begin_catch(a1);
    v34 = MFLogGeneral();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v33;
      _os_log_impl(&dword_258BDA000, v34, OS_LOG_TYPE_INFO, "Exception while getting all email addresses: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x258BF7D20);
  }

  _Unwind_Resume(a1);
}

uint64_t _resetAllEmailAddresses()
{
  +[MailAccount mf_lock];

  _allEmailAddresses = 0;
  _allEmailAddressesWithFullUserName = 0;

  _allReceiveEmailAliasAddresses = 0;
  _allReceiveEmailAliasAddressesWithFullUserName = 0;

  return +[MailAccount mf_unlock];
}

uint64_t _invalidateMailboxCache(uint64_t a1)
{
  *(a1 + 64) &= ~0x20000u;
  [*(a1 + 56) invalidate];
  [a1 mf_lock];
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  return [a1 mf_unlock];
}

uint64_t _configureMailboxCache(uint64_t a1)
{
  error[4] = *MEMORY[0x277D85DE8];
  if ([a1 _shouldConfigureMailboxCache])
  {
    [a1 mf_lock];
    if (!*(a1 + 56))
    {
      v2 = [a1 _copyMailboxWithParent:0 name:0 attributes:18 dictionary:0];
      *(a1 + 56) = v2;
      if ([v2 type] != 8)
      {
        [*(a1 + 56) setType:8];
      }
    }

    v3 = *(a1 + 64);
    if ((v3 & 0x20000) == 0)
    {
      *(a1 + 64) = v3 | 0x20000;
      v4 = [a1 mailboxCachePath];
      v5 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithContentsOfFile:v4 options:1 error:0];
      if (!*(a1 + 56))
      {
        _configureMailboxCache_cold_1();
      }

      v6 = v5;
      if (v5)
      {
        error[0] = 0;
        v7 = CFPropertyListCreateWithData(0, v5, 1uLL, 0, error);
        if (error[0])
        {
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _readMailboxCache(MailAccount *)"];
          [v12 handleFailureInFunction:v13 file:@"MailAccount.m" lineNumber:3455 description:{@"%@", -[__CFError localizedDescription](error[0], "localizedDescription")}];
        }

        Value = CFDictionaryGetValue(v7, @"mboxes");
        [a1 _readCustomInfoFromMailboxCache:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 _loadMailboxListingIntoCache:0 attributes:0 children:Value parent:*(a1 + 56)];
        }

        if (error[0])
        {
        }

        if (v7)
        {
        }
      }
    }

    result = [a1 mf_unlock];
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    return _invalidateMailboxCache(a1);
  }

  return result;
}

uint64_t _recurseIntoFileSystem(void *a1, id *a2)
{
  v4 = [a1 objectForKey:@"MailboxName"];
  result = [objc_msgSend(a1 objectForKey:{@"MailboxAttributes", "unsignedIntValue"}];
  if ((result & 1) == 0)
  {
    v6 = result;
    v7 = [a2[1] length];
    v8 = [a2[2] childWithName:v4];
    if (v8)
    {
      v9 = v8;
      v10 = v8;
    }

    else
    {
      v9 = [*a2 _copyMailboxWithParent:a2[2] name:v4 attributes:v6 dictionary:0];
    }

    [a2[1] appendString:@"/"];
    [a2[1] appendString:v4];
    [*a2 _loadEntriesFromFileSystemPath:a2[1] parent:v9];

    v11 = a2[1];
    v12 = [v11 length] - v7;

    return [v11 deleteCharactersInRange:{v7, v12}];
  }

  return result;
}

void sub_258BFF2AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x258BFF254);
  }

  _Unwind_Resume(a1);
}

void *encodedURLComponent(void *result)
{
  v1 = result;
  if (result)
  {
    result = [result stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x277CBEBC0], "ef_defaultAllowedCharacterSet")}];
  }

  if (!result)
  {
    return v1;
  }

  return result;
}

CFComparisonResult _MFCompareMailboxDictionariesByName(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = [a1 objectForKey:@"MailboxName"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a2 objectForKey:@"MailboxName"];
  if (!v5)
  {
    return 0;
  }

  return CFStringCompare(v4, v5, 0);
}

CFComparisonResult _compareNameWithMailboxDictionary(__CFString *a1, __CFString *a2, __CFString *a3)
{
  v3 = a2;
  v4 = a1;
  if (a1 == a3)
  {
    v3 = [(__CFString *)a2 objectForKey:@"MailboxName"];
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = [(__CFString *)a1 objectForKey:@"MailboxName"];
    if (!v4)
    {
      return 0;
    }
  }

  if (!v3)
  {
    return 0;
  }

  return CFStringCompare(v4, v3, 0);
}

__CFString *NSStringFromMailboxUidType(int a1)
{
  if (a1 > 6)
  {
    v1 = @"SentMessagesSpecialMailboxUid";
    v11 = @"DraftsSpecialMailboxUid";
    v12 = @"OutboxSpecialMailboxUid";
    if (a1 != 106)
    {
      v12 = 0;
    }

    if (a1 != 105)
    {
      v11 = v12;
    }

    if (a1 != 104)
    {
      v1 = v11;
    }

    v13 = @"ArchiveSpecialMailboxUid";
    v14 = @"TrashSpecialMailboxUid";
    if (a1 != 103)
    {
      v14 = 0;
    }

    if (a1 != 102)
    {
      v13 = v14;
    }

    if (a1 <= 103)
    {
      v1 = v13;
    }

    v6 = @"INBOXSpecialMailboxUid";
    v15 = @"JunkSpecialMailboxUid";
    if (a1 != 101)
    {
      v15 = 0;
    }

    if (a1 != 100)
    {
      v6 = v15;
    }

    v16 = @"InboxUid";
    v17 = @"RootMailboxUid";
    if (a1 != 8)
    {
      v17 = 0;
    }

    if (a1 != 7)
    {
      v16 = v17;
    }

    if (a1 <= 99)
    {
      v6 = v16;
    }

    v10 = a1 <= 101;
  }

  else
  {
    v1 = @"SentMessagesUid";
    v2 = @"DraftsMailboxUid";
    v3 = @"OutboxUid";
    if (a1 != 6)
    {
      v3 = 0;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v4 = @"ArchiveMailboxUid";
    v5 = @"TrashMailboxUid";
    if (a1 != 3)
    {
      v5 = 0;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 <= 3)
    {
      v1 = v4;
    }

    v6 = @"GenericMailboxUid";
    v7 = @"JunkMailboxUid";
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    v8 = @"InvalidMailboxUidType";
    v9 = @"RootlessMailboxUid";
    if (a1 != -100)
    {
      v9 = 0;
    }

    if (a1 != -500)
    {
      v8 = v9;
    }

    if (a1 < 0)
    {
      v6 = v8;
    }

    v10 = a1 <= 1;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

uint64_t _MFChildWithPredicate(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  [a1 mf_lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a1[7];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (a2(v11, a3))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  [a1 mf_unlock];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mailboxHasName(id *a1, uint64_t a2)
{
  [a1 mf_lock];
  v4 = [a1[4] compare:a2] == 0;
  [a1 mf_unlock];
  return v4;
}

uint64_t mailboxHasExtraAttribute(void *a1, uint64_t a2)
{
  v3 = [a1 extraAttributes];

  return [v3 containsObject:a2];
}

uint64_t _MFDescendantWithPredicate(void *a1, unsigned int (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  [a1 mf_lock];
  v6 = [a1 depthFirstEnumerator];
  do
  {
    v7 = [v6 nextObject];
    v8 = v7;
  }

  while (v7 && !a2(v7, a3));
  [a1 mf_unlock];
  return v8;
}

CFComparisonResult _MFCompareMailboxUidsWithResultCodes(uint64_t a1, uint64_t a2, void *a3, CFComparisonResult a4, uint64_t a5, CFComparisonResult a6)
{
  if (a1 == a2)
  {
    return a5;
  }

  if (!a1)
  {
    return a6;
  }

  if (!a2)
  {
    return a4;
  }

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (v12 && !v13)
  {
    return a6;
  }

  if (!v12 && v13)
  {
    return a4;
  }

  if (v12 < v13)
  {
    return a6;
  }

  if (v12 > v13)
  {
    return a4;
  }

  if (a3 && (*(a1 + 40) & 0x10) == 0 && (*(a2 + 40) & 0x10) == 0)
  {
    v14 = [a3 _pathComponentForUidName:*(a1 + 32)];
    v15 = [a3 _pathComponentForUidName:*(a2 + 32)];
LABEL_20:
    v16 = v15;
    goto LABEL_22;
  }

  if ([a1 account])
  {
    v14 = [a1 displayName];
  }

  else
  {
    v14 = *(a1 + 32);
  }

  if ([a2 account])
  {
    v15 = [a2 displayName];
    goto LABEL_20;
  }

  v16 = *(a2 + 32);
LABEL_22:
  if (v14 == v16)
  {
    return a5;
  }

  if (v14)
  {
    a6 = a4;
    if (v16)
    {
      a6 = CFStringCompare(v14, v16, 0x61uLL);
      if (a6 == a5)
      {
        return CFStringCompare(v14, v16, 0x60uLL);
      }
    }
  }

  return a6;
}

uint64_t bindParentAndChild(void *a1, id *a2)
{
  result = [MEMORY[0x277D24FC0] weakReferenceWithObject:a1];
  if (result != a2[6])
  {
    v5 = result;
    [a2 mf_lock];

    a2[6] = v5;
    result = [a2 mf_unlock];
  }

  if (a1)
  {
    [a1 mf_lock];
    v6 = a1[7];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      a1[7] = v6;
    }

    [v6 addObject:a2];

    return [a1 mf_unlock];
  }

  return result;
}

id _stringByAppendingPathComponentsUsingSpecialDisplayNames(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v11 = a3;
  if (!a3)
  {
    v11 = [a1 topMailbox];
  }

  if (v11 == a1 || !a1)
  {
    return a4;
  }

  v14 = 0;
  v15 = a1;
  do
  {
    ++v14;
    v15 = [v15 parent];
  }

  while (v11 != v15 && v15);
  if (a4)
  {
    v16 = [a4 mutableCopyWithZone:0];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  v18 = v16;
  Mutable = CFArrayCreateMutable(0, v14, MEMORY[0x277CBF128]);
  if (a2)
  {
    v20 = [a1 type];
    if (a5)
    {
      if (v20 != 7 && [a5 length] && (objc_msgSend(a1, "isShared") & 1) == 0)
      {
        if (a4 && [a4 length])
        {
          [v18 appendString:@"/"];
        }

        [v18 appendString:a5];
      }
    }
  }

  if (v11 != a1)
  {
    v21 = a1;
    while (1)
    {
      v22 = [a2 persistentNameForMailbox:v21];
      if (!v22)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v22)
      {
        CFArrayAppendValue(Mutable, [v22 stringByReplacingOccurrencesOfString:@"/" withString:@"_"]);
      }

      v21 = [v21 parent];
      if (v21 == v11)
      {
        goto LABEL_35;
      }
    }

    if (a7)
    {
      v23 = [v21 displayNameUsingSpecialNames];
    }

    else
    {
      v23 = [v21 name];
    }

    v22 = v23;
    if (!a2)
    {
      goto LABEL_26;
    }

LABEL_25:
    v22 = [a2 _pathComponentForUidName:v22];
    goto LABEL_26;
  }

LABEL_35:
  Count = CFArrayGetCount(Mutable);
  if (Count)
  {
    v25 = Count - 1;
    do
    {
      if ([v18 length])
      {
        [v18 appendString:@"/"];
      }

      [v18 appendString:{CFArrayGetValueAtIndex(Mutable, v25--)}];
    }

    while (v25 != -1);
  }

  if (a6 && [a1 isStore])
  {
    [v18 appendString:@"."];
    [v18 appendString:a6];
  }

  return v18;
}

unint64_t _MFFlagsBySettingValueForKey(unint64_t a1, void *a2, unsigned int a3)
{
  if ([a2 isEqual:@"MessageIsRead"])
  {
    if ((a1 & 1) != a3)
    {
      return a1 & 0xFFFFFFFFFFFFFFFELL | a3;
    }

    return a1;
  }

  if ([a2 isEqual:@"MessageIsDeleted"])
  {
    v6 = (a1 >> 1) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    v8 = a3 == 0;
    v9 = 2;
LABEL_13:
    if (v8)
    {
      v9 = 0;
    }

    v10 = v9 | v7;
    if (v6 != a3)
    {
      return v10;
    }

    return a1;
  }

  if ([a2 isEqualToString:@"MessageWasRepliedTo"])
  {
    v6 = (a1 >> 2) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v8 = a3 == 0;
    v9 = 4;
    goto LABEL_13;
  }

  if ([a2 isEqualToString:@"MessageWasForwarded"])
  {
    v6 = (a1 >> 8) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v8 = a3 == 0;
    v9 = 256;
    goto LABEL_13;
  }

  if ([a2 isEqualToString:@"MessageWasRedirected"])
  {
    v6 = (a1 >> 9) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v8 = a3 == 0;
    v9 = 512;
    goto LABEL_13;
  }

  if ([a2 isEqualToString:@"MessageIsJunk"])
  {
    if (((a1 >> 21) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x200000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageIsNotJunk"])
  {
    if (((a1 & 0x80000000) != 0) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x80000000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageIsFlagged"])
  {
    if (((a1 >> 4) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFFFFFFFFEFLL;
    v13 = a3 == 0;
    v14 = 16;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageIsServerSearchResult"])
  {
    if (((a1 >> 7) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFFFFFFFF7FLL;
    v13 = a3 == 0;
    v14 = 128;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageIsThreadSearchResult"])
  {
    if (((a1 >> 20) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFFFFEFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x100000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageSenderIsVIP"])
  {
    if (((a1 >> 24) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFFFEFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x1000000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageDeliveryInProgress"])
  {
    if (((a1 >> 37) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFDFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x2000000000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageQueuedForDelivery"])
  {
    if (((a1 >> 38) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFBFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x4000000000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageNeedsSyncConfirmation"])
  {
    if (((a1 >> 22) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFFFFFFBFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x400000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageToContainsAccountAddress"])
  {
    if (((a1 >> 39) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFF7FFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x8000000000;
    goto LABEL_52;
  }

  if ([a2 isEqualToString:@"MessageCcContainsAccountAddress"])
  {
    if (((a1 >> 40) & 1) == a3)
    {
      return a1;
    }

    v12 = a1 & 0xFFFFFEFFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x10000000000;
LABEL_52:
    if (v13)
    {
      v14 = 0;
    }

    return v14 | v12;
  }

  if ([a2 isEqualToString:@"MessageToOrCcContainsAccountAddress"])
  {
    v15 = 0x8000000000;
    if (!a3)
    {
      v15 = 0;
    }

    v16 = v15 | a1 & 0xFFFFFE7FFFFFFFFFLL;
    v17 = 0x10000000000;
    if (!a3)
    {
      v17 = 0;
    }

    return v16 | v17;
  }

  else if (([a2 isEqualToString:@"_Encoding"] & 1) == 0)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      _MFFlagsBySettingValueForKey_cold_1(a2, v18);
    }
  }

  return a1;
}

unint64_t MFMessageFlagsByApplyingDictionary(unint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        a1 = _MFFlagsBySettingValueForKey(a1, *(*(&v11 + 1) + 8 * v8), [a2 mf_BOOLForKey:*(*(&v11 + 1) + 8 * v8)]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t _MFFlagsBySettingNumberOfAttachments(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 63;
  }

  if (a2 > 0x3E)
  {
    v4 = 62;
  }

  v5 = 8;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = 0x800000;
  if (!a3)
  {
    v6 = 0;
  }

  return v6 & 0xFFFFFFFFFFFF03FFLL | a1 & 0xFFFFFFFFFF7F03F7 | v5 & 0xFFFFFFFFFFFF03FFLL | ((v4 & 0x3F) << 10);
}

uint64_t _formatFlowedOptions(void *a1)
{
  result = [objc_msgSend(a1 bodyParameterForKey:{@"format", "isEqualToString:", @"flowed"}];
  if (result)
  {
    v3 = [a1 bodyParameterForKey:@"delsp"];
    if (!v3)
    {
      return 1;
    }

    v4 = v3;
    if ([v3 caseInsensitiveCompare:@"yes"] && objc_msgSend(v4, "caseInsensitiveCompare:", @"y"))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void *MFDescriptionForMessageFlags(uint64_t a1)
{
  v2 = "read";
  if ((a1 & 1) == 0)
  {
    v2 = "unread";
  }

  v3 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"0x%llx (%s"), a1, v2;
  v4 = v3;
  if ((a1 & 0x200000) != 0)
  {
    [v3 appendFormat:@", junk"];
    if ((a1 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a1 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  [v4 appendFormat:@", not-junk"];
  if ((a1 & 2) == 0)
  {
LABEL_6:
    if ((a1 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v4 appendFormat:@", deleted"];
  if ((a1 & 4) == 0)
  {
LABEL_7:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v4 appendFormat:@", answered"];
  if ((a1 & 0x100) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v4 appendFormat:@", forwarded"];
  if ((a1 & 0x200) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v4 appendFormat:@", redirected"];
  if ((a1 & 0x10) == 0)
  {
LABEL_10:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v4 appendFormat:@", flagged"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_11:
    if ((a1 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v4 appendFormat:@", VIP"];
  if ((a1 & 8) == 0)
  {
LABEL_12:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v4 appendFormat:@", encrypted"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_13:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v4 appendFormat:@", signed"];
  if ((a1 & 0x20) == 0)
  {
LABEL_14:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v4 appendFormat:@", recent"];
  if ((a1 & 0x40) == 0)
  {
LABEL_15:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v4 appendFormat:@", draft"];
  if ((a1 & 0x80) == 0)
  {
LABEL_16:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v4 appendFormat:@", server search result"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_17:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  [v4 appendFormat:@", thread search result"];
  if ((a1 & 0x400000) != 0)
  {
LABEL_18:
    [v4 appendFormat:@", needs sync"];
  }

LABEL_19:
  if ((WORD1(a1) & 7) == 3)
  {
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [v4 appendFormat:@", priority=%x", WORD1(a1) & 7];
    if ((a1 & 0x400000000) == 0)
    {
LABEL_21:
      if ((a1 & 0x2000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }
  }

  [v4 appendFormat:@", partial"];
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_44:
    [v4 appendFormat:@", temp UID"];
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  [v4 appendFormat:@", delivery"];
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_23:
  if ((a1 & 0x200000000) != 0)
  {
LABEL_24:
    [v4 appendString:{@", indexed message body"}];
  }

LABEL_25:
  [v4 appendFormat:@""]);
  return v4;
}

uint64_t MFMailDirectory()
{
  v9 = *MEMORY[0x277D85DE8];
  if (!MFMailDirectory___MailDir)
  {
    MFMailDirectory___MailDir = [objc_msgSend(CPSharedResourcesDirectory() stringByAppendingPathComponent:{@"Library", "stringByAppendingPathComponent:", @"Mail"}];
    v0 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v0 fileExistsAtPath:MFMailDirectory___MailDir] & 1) == 0)
    {
      if ([v0 mf_makeCompletePath:MFMailDirectory___MailDir mode:448])
      {
        v1 = open([MFMailDirectory___MailDir fileSystemRepresentation], 0);
        if (v1 < 0)
        {
          v4 = MFLogGeneral();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v8 = MFMailDirectory___MailDir;
            _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Could not open fd for %@", buf, 0xCu);
          }
        }

        else
        {
          v2 = v1;
          if (fcntl(v1, 64, 4))
          {
            v3 = MFLogGeneral();
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v8 = MFMailDirectory___MailDir;
              _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Could not set protection class on %@", buf, 0xCu);
            }
          }

          close(v2);
        }
      }
    }
  }

  result = MFMailDirectory___MailDir;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFMailDirectoryURL()
{
  if (MFMailDirectoryURL_onceToken != -1)
  {
    MFMailDirectoryURL_cold_1();
  }

  return MFMailDirectoryURL___MailDirURL;
}

uint64_t __MFMailDirectoryURL_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:MFMailDirectory()];
  MFMailDirectoryURL___MailDirURL = result;
  return result;
}

id MFSetUserAgent(id result)
{
  if (_userAgent != result)
  {
    v1 = result;

    result = v1;
    _userAgent = result;
  }

  return result;
}

uint64_t MFReadLoggingDefaults()
{
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];

  return +[MFConnection readLoggingDefaults];
}

id MFMessageFrameworkBundle()
{
  result = messageFrameworkBundle;
  if (!messageFrameworkBundle)
  {
    result = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MessageLegacy"];
    messageFrameworkBundle = result;
  }

  return result;
}

uint64_t MFLookupLocalizedString(uint64_t a1, uint64_t a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = @"Message";
  }

  v5 = MFMessageFrameworkBundle();

  return [v5 localizedStringForKey:a1 value:&stru_2869ED3E0 table:v4];
}

uint64_t (*MFComparatorFunctionForSortOrder(uint64_t a1))()
{
  if ([@"readstatus" isEqualToString:a1])
  {
    v2 = _compareMsgsByReadStatus;
  }

  else
  {
    v3 = &off_2869ECF60;
    v4 = 5;
    while (--v4)
    {
      v5 = v3 + 2;
      v6 = [*v3 isEqualToString:a1];
      v3 = v5;
      if (v6)
      {
        v2 = *(v5 - 1);
        goto LABEL_8;
      }
    }

    v2 = 0;
  }

LABEL_8:
  if (v2)
  {
    return v2;
  }

  else
  {
    return _compareMsgsByDateReceived;
  }
}

uint64_t _compareMsgsByReadStatus(void *a1, void *a2, unsigned __int8 *a3)
{
  v6 = [a1 messageFlags];
  v7 = [a2 messageFlags];
  if (v6 == v7)
  {
LABEL_2:

    return _compareMsgsByDate(a1, a2, a3);
  }

  v9 = *a3;
  if ((v6 & 1) != 0 && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v7 & 1) != 0 && (v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = [a1 messageFlags];
  v13 = [a2 messageFlags];
  if ((v12 & 4) != 0 && (v13 & 4) == 0)
  {
    goto LABEL_12;
  }

  if ((v13 & 4) != 0 && (v12 & 4) == 0)
  {
    goto LABEL_7;
  }

  if ((v12 & 4) != 0)
  {
    goto LABEL_2;
  }

  v14 = [a1 messageFlags];
  v15 = [a2 messageFlags];
  if ((v14 & 0x100) != 0 && (v15 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  if ((v15 & 0x100) != 0 && (v14 & 0x100) == 0)
  {
LABEL_7:
    v10 = v9 == 0;
    v11 = -1;
    goto LABEL_13;
  }

  if ((v14 & 0x100) != 0)
  {
    goto LABEL_2;
  }

  v16 = [a1 messageFlags];
  v17 = [a2 messageFlags];
  if ((v16 & 0x200) != 0 && (v17 & 0x200) == 0)
  {
LABEL_12:
    v10 = v9 == 0;
    v11 = 1;
LABEL_13:
    if (v10)
    {
      return -v11;
    }

    else
    {
      return v11;
    }
  }

  if ((v17 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  result = v9 ? -1 : 1;
  if ((v16 & 0x200) != 0)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t _compareMsgsBySender(void *a1, void *a2, unsigned __int8 *a3)
{
  v6 = [a1 senderAddressComment];
  v7 = [a2 senderAddressComment];
  if (v6 == v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  if (v6 && v7)
  {
    if (*a3)
    {
      v7 = v6;
    }

    else
    {
      v8 = v6;
    }

    result = [v7 localizedCaseInsensitiveCompare:v8];
    if (result)
    {
      return result;
    }

LABEL_23:

    return _compareMsgsByDate(a1, a2, a3);
  }

  v9 = -1;
  if (!*a3)
  {
    v9 = 1;
  }

  v10 = 1;
  if (!*a3)
  {
    v10 = -1;
  }

  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6 == 0;
  }

  if (v11)
  {
    v10 = 0;
  }

  if (v6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7 == 0;
  }

  if (v12)
  {
    result = v10;
  }

  else
  {
    result = v9;
  }

  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t _compareMsgsByFlags(void *a1, void *a2, unsigned __int8 *a3)
{
  v6 = [a1 messageFlags];
  v7 = [a2 messageFlags];
  v8 = *a3;
  if ((v6 & 0x10) == 0 && (v7 & 0x10) != 0)
  {
    if (*a3)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (*a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if ((v7 & 0x10) == 0 && (v6 & 0x10) != 0)
  {
    return v9;
  }

  v10 = [a1 priority];
  v11 = [a2 priority];
  v12 = -1;
  if (!v8)
  {
    v12 = 1;
  }

  v13 = v11 <= v10 ? 0 : v9;
  v9 = v11 >= v10 ? v13 : v12;
  if (v9)
  {
    return v9;
  }

  return _compareMsgsByDate(a1, a2, a3);
}

uint64_t _compareMsgsByDate(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = *a3;
  if (a3[1] == 1)
  {
    [a1 dateReceivedAsTimeIntervalSince1970];
    v7 = v6;
    [a2 dateReceivedAsTimeIntervalSince1970];
  }

  else
  {
    [a1 dateSentAsTimeIntervalSince1970];
    v7 = v9;
    [a2 dateSentAsTimeIntervalSince1970];
  }

  if (v7 < v8)
  {
    v10 = v5 == 0;
    v11 = -1;
    goto LABEL_8;
  }

  if (v7 > v8)
  {
    v10 = v5 == 0;
    v11 = 1;
LABEL_8:
    if (v10)
    {
      return -v11;
    }

    else
    {
      return v11;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v13 = [a1 libraryID];
  v14 = [a2 libraryID];
  v15 = 1;
  if (!v5)
  {
    v15 = -1;
  }

  if (v13 <= v14)
  {
    v15 = 0;
  }

  v16 = -1;
  if (!v5)
  {
    v16 = 1;
  }

  if (v13 < v14)
  {
    return v16;
  }

  else
  {
    return v15;
  }
}

void _appendPartHeadersToConsumer(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D24F80]) init];
  Value = CFDictionaryGetValue(a3, a2);
  if (([@"multipart" isEqualToString:{objc_msgSend(a2, "type")}] & 1) == 0 && !objc_msgSend(Value, "length"))
  {
    [a2 range];
    if (v7)
    {
      [a2 range];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = @"unknown";
      }

      else
      {
        [a2 range];
        v9 = EFStringWithUnsignedInteger();
      }

      [v10 setHeader:v9 forKey:@"x-apple-content-length"];
    }
  }

  _appendHeadersToMessageHeaders(a1, a2, v10);
  if ([objc_msgSend(v10 "encodedHeaders")])
  {
    MFDataConsumerConsumeCompleteData();
  }
}

void _appendPartDataToConsumer(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(a4, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = CFDictionaryGetValue(a4, Value);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = Value;
    Value = a2;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if ([v11 length])
  {
    if ([objc_msgSend(Value "contentTransferEncoding")])
    {
      v12 = [objc_alloc(MEMORY[0x277D24ED8]) initWithConsumer:a3];
      [v12 setStandardLineBreak];
      [v12 setAllowSlash:1];
      [v12 setPadChar:61];
      MFDataConsumerConsumeCompleteData();
      [v12 done];
    }

    else
    {
      MFDataConsumerConsumeCompleteData();
    }
  }

LABEL_9:
  v13 = [@"multipart" isEqualToString:{objc_msgSend(Value, "type")}];
  v14 = [Value firstChildPart];
  v15 = v14;
  v27 = v13;
  if ((v13 & 1) == 0 && !v14)
  {
    return;
  }

  if (v13 && (v16 = [objc_msgSend(Value bodyParameterForKey:{@"boundary", "ef_lossyDefaultCStringBytes"}]) != 0)
  {
    v17 = v16;
    v26 = strlen(v16);
    if (!v15)
    {
LABEL_33:
      v28 = objc_alloc_init(MEMORY[0x277D24F70]);
      [v28 mf_appendCString:"\n--"];
      [v28 appendBytes:v17 length:v26];
      [v28 mf_appendCString:"--\n"];
      MFDataConsumerConsumeCompleteData();

      return;
    }

    v24 = Value;
    v25 = v17;
    v18 = 0;
  }

  else
  {
    if (!v15)
    {
      return;
    }

    v24 = Value;
    v25 = 0;
    v26 = 0;
    v18 = 1;
  }

  v23 = *MEMORY[0x277D24E78];
  while (1)
  {
    v19 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v20 = CFDictionaryGetValue(a4, v15);
    if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v21 = v15;
    }

    if ((a5 & 1) != 0 || v27 && ([@"signed" isEqualToString:{objc_msgSend(v24, "subtype")}] & 1) != 0 || (objc_msgSend(objc_msgSend(v21, "type"), "isEqual:", @"multipart") & 1) != 0 || objc_msgSend(CFDictionaryGetValue(a4, v21), "length") || objc_msgSend(v21, "bodyParameterForKey:", v23))
    {
      if ((v18 & 1) == 0)
      {
        v22 = objc_alloc_init(MEMORY[0x277D24F70]);
        [v22 mf_appendCString:"\n--"];
        [v22 appendBytes:v25 length:v26];
        [v22 appendBytes:"\n" length:1];
        MFDataConsumerConsumeCompleteData();

        _appendPartHeadersToConsumer(a1, v21, a4);
      }

      _appendPartDataToConsumer(a1, v21, a3, a4, a5);
    }

    if (v18)
    {
      break;
    }

    v15 = [v15 nextSiblingPart];
    [v19 drain];
    if (!v15)
    {
      v17 = v25;
      goto LABEL_33;
    }
  }

  [v19 drain];
}

id _createPartAndDataForString(void *a1, void *a2, void *a3, __CFDictionary *a4)
{
  v4 = a1;
  if (a1)
  {
    v8 = [a3 isEqualToString:@"html"];
    if (v8 && [v4 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@"&nbsp;"];
    }

    if (a2)
    {
      [a2 cfStringEncoding];
      v9 = MFCreateDataWithString();
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    if ((v10 & 1) == 0)
    {
      a2 = [MEMORY[0x277D24F60] charsetForEncoding:1536];
      [a2 cfStringEncoding];
      v9 = MFCreateDataWithString();
    }

    if (!v9)
    {
      if ((v8 & 1) == 0 && v4 && [v4 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@" "];
      }

      a2 = [v4 mf_bestMimeCharsetForMessageDeliveryUsingSubtype:a3];
      [a2 cfStringEncoding];
      v11 = MFCreateDataWithString();
      if (!v11)
      {
        return 0;
      }

      v9 = v11;
    }

    v4 = objc_alloc_init(MEMORY[0x277D24F68]);
    [v4 setType:@"text"];
    [v4 setSubtype:a3];
    [v4 setBodyParameter:objc_msgSend(a2 forKey:{"charsetName"), @"charset"}];
    CFDictionarySetValue(a4, v4, v9);
  }

  return v4;
}

id _createOutgoingMessageFromTopLevelMimePart(uint64_t a1, id a2, void *a3, const __CFDictionary *a4)
{
  v8 = a3;
  if (!a3)
  {
    v8 = objc_alloc_init(MEMORY[0x277D24F80]);
  }

  OutgoingMessageBody = _makeOutgoingMessageBody(a1);
  v9 = [(MFMessageBody *)OutgoingMessageBody message];
  v10 = +[MFActivityMonitor currentMonitor];
  [v9 setMessageFlags:1];
  [v9 setMutableHeaders:v8];
  v11 = [a3 copyAddressListForResentFrom];
  if (![v11 count])
  {

    v11 = [a3 copyAddressListForSender];
  }

  if ([v11 count])
  {
    v12 = [objc_msgSend(v11 objectAtIndex:{0), "mf_uncommentedAddress"}];
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = &stru_2869ED3E0;
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  if ([objc_msgSend(*(a1 + 32) objectForKey:{@"ShouldSign", "intValue"}])
  {
    MimePartData = _createMimePartData(a1, a2, a4);
    if (MimePartData && ([v10 shouldCancel] & 1) == 0)
    {
      v36 = v10;
      value = 0;
      v14 = [a2 newSignedPartWithData:MimePartData sender:v12 compositionSpecification:*(a1 + 32) signatureData:&value];
      v15 = [objc_msgSend(v14 "firstChildPart")];
      if (value && v15)
      {
        CFDictionarySetValue(a4, v15, value);
      }

      a2 = v14;
      if (!a2)
      {

        v9 = 0;
      }

      v10 = v36;
    }

    else
    {

      v9 = 0;
    }
  }

LABEL_20:
  if (!v9)
  {

    return v9;
  }

  if ([objc_msgSend(*(a1 + 32) objectForKey:{@"ShouldEncrypt", "intValue"}])
  {
    v16 = _createMimePartData(a1, a2, a4);
    if (v16 && ([v10 shouldCancel] & 1) == 0)
    {
      v37 = v10;
      v17 = [MEMORY[0x277CBEB18] array];
      value = 0;
      [v8 appendHeaderData:0 andRecipients:v17];
      v18 = [v17 arrayByApplyingSelector:sel_mf_uncommentedAddress];
      if (v11 && [v18 indexOfObject:v12] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v17 addObjectsFromArray:v11];
      }

      v19 = [a2 newEncryptedPartWithData:v16 compositionSpecification:*(a1 + 32) encryptedData:&value];
      a2 = v19;
      if (value && v19)
      {
        CFDictionarySetValue(a4, v19, value);
      }

      else
      {

        v9 = 0;
      }

      v10 = v37;
    }

    else
    {

      v9 = 0;
    }
  }

  if (!a3 || !v9)
  {
    if (!v9)
    {
      return v9;
    }

    goto LABEL_57;
  }

  v38 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v20 = [a3 copyAddressListForResentFrom];
  v21 = [v20 count];
  if (!v21)
  {

    v20 = [a3 copyAddressListForSender];
  }

  v22 = v10;
  if ([v20 count])
  {
    v23 = [objc_msgSend(v20 objectAtIndex:{0), "mf_uncommentedAddress"}];

    if (!v23)
    {
      goto LABEL_46;
    }
  }

  else
  {

    v23 = &stru_2869ED3E0;
  }

  v24 = [(__CFString *)v23 rangeOfString:@"@" options:4];
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_46:
    v26 = 0;
    goto LABEL_48;
  }

  v26 = [(__CFString *)v23 substringFromIndex:v24 + v25];
LABEL_48:
  v27 = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:v26];
  if (v27)
  {
    v28 = v27;
    if ([v27 length])
    {
      v29 = *MEMORY[0x277D06FE0];
      if (v21)
      {
        v30 = [objc_msgSend(v8 firstHeaderForKey:{*MEMORY[0x277D06FE0]), "length"}];
        v31 = *MEMORY[0x277D07020];
        if (v30)
        {
          v29 = *MEMORY[0x277D07020];
        }
      }

      [v8 setHeader:v28 forKey:v29];
    }
  }

  v32 = *MEMORY[0x277D06FD8];
  if (![a3 firstHeaderForKey:*MEMORY[0x277D06FD8]])
  {
    [a3 setHeader:objc_msgSend(MEMORY[0x277D24F58] forKey:{"versionString"), v32}];
  }

  [v38 drain];
  v10 = v22;
LABEL_57:
  v33 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (_makeMimeHeadersConsistent(a1, a2, a4) && ([v10 shouldCancel] & 1) == 0)
  {
    _appendHeadersToMessageHeaders(a1, a2, v8);
    _appendPartDataToConsumer(a1, a2, OutgoingMessageBody, a4, 0);
    if ((![(_MFOutgoingMessageBody *)OutgoingMessageBody count]|| ![(_MFOutgoingMessageBody *)OutgoingMessageBody isLastCharacterNewLine]) && (*(a1 + 16) & 2) == 0)
    {
      v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:"\n" length:1 freeWhenDone:0];
      MFDataConsumerConsumeCompleteData();
    }

    [(_MFOutgoingMessageBody *)OutgoingMessageBody done];
  }

  else
  {

    v9 = 0;
  }

  [v33 drain];
  return v9;
}

id _createPlainTextPart(void *a1, __CFDictionary *a2)
{
  PartAndDataForString = [objc_msgSend(a1 "string")];
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    v9 = 0;
    v8 = 0;
    [a1 getFormatFlowedString:&v9 insertedTrailingSpaces:&v8 encoding:{objc_msgSend(PartAndDataForString, "cfStringEncoding")}];
    if (v9)
    {
      PartAndDataForString = _createPartAndDataForString(v9, PartAndDataForString, @"plain", a2);
      [PartAndDataForString setBodyParameter:@"flowed" forKey:@"format"];
      if (v8 == 1)
      {
        [PartAndDataForString setBodyParameter:@"yes" forKey:@"delsp"];
      }
    }

    else if (PartAndDataForString)
    {
      v7 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1038, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"BAD_CHARSET_FORMAT", @"Some characters in your message could not be converted to the “%@” text encoding. Please choose a different entry from the “Text Encoding” menu.", @"Delayed", objc_msgSend(PartAndDataForString, "displayName")]);
      [(MFError *)v7 setShortDescription:MFLookupLocalizedString(@"BAD_CHARSET_TITLE", @"Invalid Text Encoding", @"Delayed")];
      [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
      return 0;
    }

    return PartAndDataForString;
  }

  else
  {
    v5 = [a1 quotedString:{objc_msgSend(PartAndDataForString, "cfStringEncoding")}];

    return _createPartAndDataForString(v5, PartAndDataForString, @"plain", a2);
  }
}

void *_createPartForMFAttachment(_BYTE *a1, void *a2, int a3, __CFDictionary *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = @"inline";
  if (([a2 isImageFile] & 1) == 0 && !objc_msgSend(objc_msgSend(a2, "metadataValueForKey:", @"MFAttachmentIsSinglePagePDFKey"), "BOOLValue"))
  {
    v8 = @"attachment";
  }

  v9 = [a2 fileName];
  if (v9)
  {
    if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
    {
      v10 = MFCreateDataWithString();
      if (v10)
      {
        v11 = v10;
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:1];
        v9 = [v12 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];
      }
    }
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
  [v13 setDispositionParameter:objc_msgSend(a2 forKey:{"fileName"), @"filename"}];
  [v13 setDisposition:v8];
  if ([a1 shouldWriteAttachmentPlaceholders] && objc_msgSend(a2, "isPlaceholder"))
  {
    v14 = [a2 fetchPlaceholderData];
  }

  else
  {
    v14 = [a2 fetchDataSynchronously:0 stripPrivateMetadata:1];
  }

  v15 = v14;
  if (![v14 length])
  {
    v28 = MFLogGeneral();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = [a2 fileName];
      _os_log_impl(&dword_258BDA000, v28, OS_LOG_TYPE_INFO, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
    }

    CFDictionarySetValue(a4, v13, [MEMORY[0x277CBEA90] data]);
    if (v13)
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

  if ((a1[16] & 4) != 0)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v15, "length")];
    [v13 setDispositionParameter:v16 forKey:@"size"];
  }

  v17 = [a2 fileAttributes];
  v18 = [v17 objectForKey:*MEMORY[0x277CCA180]];
  CFDictionarySetValue(a4, v13, v15);
  v19 = [a2 fileName];
  v20 = objc_alloc_init(MEMORY[0x277D24FB0]);
  [v20 setMimeType:{objc_msgSend(a2, "mimeType")}];
  [v20 setPathExtension:{objc_msgSend(v19, "pathExtension")}];
  [v20 setFilename:v19];
  if ([v20 osType] == 1061109567)
  {
    [v20 setOsType:0];
  }

  v21 = [v20 mimeType];
  if ([&stru_2869ED3E0 isEqualToString:{objc_msgSend(v20, "pathExtension")}])
  {
    [v20 setPathExtension:0];
  }

  v22 = [v20 pathExtension];
  if (v22)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = (v21 == 0) | 2;
  }

  if (v23)
  {
    v24 = v22;
    MFGetTypeInfo();
    if (!v24 || v21)
    {
      if ([v20 pathExtension])
      {
        [a2 setFileName:{objc_msgSend(v19, "stringByAppendingPathExtension:", objc_msgSend(v20, "pathExtension"))}];
      }
    }
  }

  v25 = [v20 mimeType];
  if (v25)
  {
    v25 = [objc_msgSend(v20 "mimeType")];
    if (v25)
    {
      v26 = v25;
      if ([(__CFString *)v25 count]== 2)
      {
        v27 = [(__CFString *)v26 objectAtIndex:0];
        v25 = [(__CFString *)v26 objectAtIndex:1];
        goto LABEL_37;
      }

      v25 = 0;
    }
  }

  v27 = 0;
LABEL_37:
  if (v27)
  {
    v29 = v25;
  }

  else
  {
    v29 = @"octet-stream";
  }

  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = @"application";
  }

  [v13 setType:v30];
  [v13 setSubtype:v29];

  if (v18)
  {
    [v13 setBodyParameter:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%#o", objc_msgSend(v18, "intValue")), @"x-unix-mode"}];
  }

  v31 = [a2 contentID];
  if (v31)
  {
    [v13 setBodyParameter:v31 forKey:*MEMORY[0x277D24E78]];
  }

  [v13 setBodyParameter:v9 forKey:@"name"];
  if (v13)
  {
LABEL_48:
    if (a3 && ([objc_msgSend(v13 "type")] & 1) == 0)
    {
      [v13 setContentID:{objc_msgSend(a2, "contentID")}];
    }
  }

LABEL_51:
  v32 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_258C1107C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v17 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_258BDA000, v18, OS_LOG_TYPE_INFO, "Exception raised during message encoding: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x258C1103CLL);
  }

  _Unwind_Resume(a1);
}

void *_createPartForFileWrapper(uint64_t a1, void *a2, __CFDictionary *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = [a2 preferredFilename];
  v26 = v6;
  if (v6)
  {
    v7 = v6;
    if ([a2 isImageFile])
    {
      v8 = @"inline";
    }

    else
    {
      v8 = @"attachment";
    }

    v9 = v7;
    if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
    {
      v10 = MFCreateDataWithString();
      v9 = v7;
      if (v10)
      {
        v11 = v10;
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:1];
        v9 = [v12 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];
      }
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v13 setDispositionParameter:v7 forKey:@"filename"];
    [v13 setDisposition:v8];
    if ([a2 isSymbolicLink])
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
      v15 = objc_opt_new();
      _setMimeTypeFromWrapper(v14, &v26, a2);
      _appendHeadersToMessageHeaders(a1, v14, v15);
      CFDictionarySetValue(a3, v13, [v15 encodedHeaders]);

      [v13 setType:@"message"];
      [v13 setSubtype:@"external-body"];
      [v13 setBodyParameter:@"local-file" forKey:@"access-type"];
      v16 = [a2 symbolicLinkDestination];
      v17 = v13;
LABEL_21:
      [v17 setBodyParameter:v16 forKey:@"name"];
      goto LABEL_25;
    }

    if ([a2 isRegularFile])
    {
      v18 = [a2 regularFileContents];
      if (!v18)
      {
        v18 = [MEMORY[0x277CBEA90] data];
      }

      if ((*(a1 + 16) & 4) != 0)
      {
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v18, "length"), v26];
        [v13 setDispositionParameter:v19 forKey:@"size"];
      }

      v20 = [a2 fileAttributes];
      v21 = [v20 objectForKey:*MEMORY[0x277CCA180]];
      CFDictionarySetValue(a3, v13, v18);
      _setMimeTypeFromWrapper(v13, &v26, a2);
      if (v21)
      {
        [v13 setBodyParameter:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%#o", objc_msgSend(v21, "intValue")), @"x-unix-mode"}];
      }

      v22 = [a2 URL];
      if (v22)
      {
        [v13 setBodyParameter:v22 forKey:*MEMORY[0x277D24E78]];
      }

      v17 = v13;
      v16 = v9;
      goto LABEL_21;
    }

    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_258BDA000, v23, OS_LOG_TYPE_INFO, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
    }

    CFDictionarySetValue(a3, v13, [MEMORY[0x277CBEA90] data]);
  }

  else
  {
    v13 = 0;
  }

LABEL_25:
  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

void _setMimeTypeFromWrapper(void *a1, id *a2, void *a3)
{
  v6 = *a2;
  v17 = objc_alloc_init(MEMORY[0x277D24FB0]);
  [v17 setMimeType:{objc_msgSend(a3, "mimeType")}];
  [v17 setPathExtension:{objc_msgSend(v6, "pathExtension")}];
  [v17 setFilename:v6];
  if ([v17 osType] == 1061109567)
  {
    [v17 setOsType:0];
  }

  v7 = [v17 mimeType];
  if ([&stru_2869ED3E0 isEqualToString:{objc_msgSend(v17, "pathExtension")}])
  {
    [v17 setPathExtension:0];
  }

  v8 = [v17 pathExtension];
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = (v7 == 0) | 2;
  }

  if (v9)
  {
    v10 = v8;
    MFGetTypeInfo();
    if (!v10 || v7)
    {
      if ([v17 pathExtension])
      {
        v11 = [*a2 stringByAppendingPathExtension:{objc_msgSend(v17, "pathExtension")}];
        *a2 = v11;
        [a3 setPreferredFilename:v11];
        [a3 setFilename:*a2];
      }
    }
  }

  v12 = [v17 mimeType];
  if (v12)
  {
    v12 = [objc_msgSend(v17 "mimeType")];
    if (v12)
    {
      v13 = v12;
      if ([(__CFString *)v12 count]== 2)
      {
        v14 = [(__CFString *)v13 objectAtIndex:0];
        v12 = [(__CFString *)v13 objectAtIndex:1];
        goto LABEL_19;
      }

      v12 = 0;
    }
  }

  v14 = 0;
LABEL_19:
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = @"octet-stream";
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"application";
  }

  [a1 setType:v16];
  [a1 setSubtype:v15];
}

uint64_t _appendHeadersToMessageHeaders(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 24) messageWriter:a1 willGenerateHeadersForMimePart:a2];
  }

  if ([objc_msgSend(a2 "type")] && !objc_msgSend(a2, "bodyParameterForKey:", @"boundary"))
  {
    v7 = [MEMORY[0x277D24F58] copyNewMimeBoundary];
    [a2 setBodyParameter:v7 forKey:@"boundary"];
  }

  v8 = [a2 type];
  v9 = [a2 subtype];
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = &stru_2869ED3E0;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &stru_2869ED3E0;
  }

  if (v9)
  {
    v11 = v9;
  }

  v13 = [v10 initWithFormat:@"%@/%@", v12, v11];
  v14 = [a2 dispositionParameterForKey:@"filename"];
  if (v14)
  {
    if ([a2 bodyParameterForKey:@"name"])
    {
LABEL_13:
      v14 = 0;
      goto LABEL_19;
    }

    v15 = [v14 mutableCopyWithZone:0];
    [v15 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v15, "length")}];
    [v15 replaceOccurrencesOfString:@"" withString:@"\\" options:0 range:{0, objc_msgSend(v15, "length"")}];
    [v15 insertString:@"" atIndex:0];
    [v15 appendString:@""];
    v16 = MFCreateDataWithString();
    if (v16 || (v16 = MFCreateDataWithString()) != 0 || (CFStringGetSystemEncoding(), (v16 = MFCreateDataWithString()) != 0))
    {
      v17 = v16;
    }

    else
    {
      CFStringGetSystemEncoding();
      v17 = MFCreateDataWithString();

      if (!v17)
      {
        goto LABEL_13;
      }
    }

    strcpy(v54, ";\n\tname=");
    v14 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v17, "length") + 8}];
    [v14 appendBytes:v54 length:8];
    [v14 appendData:v17];
  }

LABEL_19:
  v18 = [a2 bodyParameterKeys];
  v19 = [v18 count];
  if (v14 || v19)
  {
    v20 = [objc_msgSend(v13 dataUsingEncoding:1 allowLossyConversion:{1), "mutableCopyWithZone:", 0}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v18);
          }

          [v20 mf_appendRFC2231CompliantValue:objc_msgSend(a2 forKey:{"bodyParameterForKey:", *(*(&v48 + 1) + 8 * i)), *(*(&v48 + 1) + 8 * i)}];
        }

        v22 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v22);
    }

    if (v14)
    {
      [v20 appendData:v14];
    }

    [a3 setHeader:v20 forKey:*MEMORY[0x277D06F88]];
  }

  else
  {
    [a3 setHeader:v13 forKey:*MEMORY[0x277D06F88]];
  }

  v25 = [a2 disposition];
  v26 = [a2 dispositionParameterKeys];
  v27 = [v26 count];
  if (v25 || v27)
  {
    if (v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D24F70]) init];
      if ([v25 length])
      {
        [v28 appendData:{objc_msgSend(v25, "dataUsingEncoding:allowLossyConversion:", 1, 1)}];
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v45;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v26);
            }

            [v28 mf_appendRFC2231CompliantValue:objc_msgSend(a2 forKey:{"dispositionParameterForKey:", *(*(&v44 + 1) + 8 * j)), *(*(&v44 + 1) + 8 * j)}];
          }

          v30 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v30);
      }

      [a3 setHeader:v28 forKey:*MEMORY[0x277D06F60]];
    }

    else
    {
      [a3 setHeader:v25 forKey:*MEMORY[0x277D06F60]];
    }
  }

  v33 = [a2 contentTransferEncoding];
  if (v33)
  {
    [a3 setHeader:v33 forKey:*MEMORY[0x277D06F80]];
  }

  v34 = [a2 contentDescription];
  if (v34)
  {
    [a3 setHeader:v34 forKey:*MEMORY[0x277D06F58]];
  }

  v35 = [a2 contentID];
  if (v35)
  {
    v36 = [v35 mutableCopyWithZone:0];
    [a3 setHeader:v36 forKey:*MEMORY[0x277D06F68]];
  }

  v37 = [a2 languages];
  if (v37)
  {
    v38 = v37;
    if ([v37 count])
    {
      v39 = [v38 componentsJoinedByString:@" "];
      [a3 setHeader:v39 forKey:*MEMORY[0x277D06F70]];
    }
  }

  v40 = [a2 contentLocation];
  if (v40)
  {
    [a3 setHeader:v40 forKey:*MEMORY[0x277D06F78]];
  }

  v41 = *(a1 + 24);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 24) messageWriter:a1 willEncodeHeaders:a3 forMimePart:a2];
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

_MFOutgoingMessageBody *_makeOutgoingMessageBody(uint64_t a1)
{
  v2 = objc_alloc_init(_MFOutgoingMessageBody);
  v3 = objc_alloc_init(*(a1 + 8));
  [(MFMessageBody *)v2 setMessage:v3];
  [v3 setMessageBody:v2];
  return v2;
}

id _createMimePartData(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  OutgoingMessageBody = _makeOutgoingMessageBody(a1);
  v7 = [(MFMessageBody *)OutgoingMessageBody message];
  v8 = objc_alloc_init(MEMORY[0x277D24F80]);
  v9 = +[MFActivityMonitor currentMonitor];
  [v7 setMutableHeaders:v8];
  if (_makeMimeHeadersConsistent(a1, a2, a3) && ([v9 shouldCancel] & 1) == 0)
  {
    _appendHeadersToMessageHeaders(a1, a2, v8);
    _appendPartDataToConsumer(a1, a2, OutgoingMessageBody, a3, 0);
    [(_MFOutgoingMessageBody *)OutgoingMessageBody done];
    v10 = [v7 messageData];
  }

  else
  {
    v10 = 0;
  }

  [v7 setMessageBody:0];
  return v10;
}

uint64_t _makeMimeHeadersConsistent(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a3, a2);
  v6 = [a2 type];
  if ([@"multipart" isEqualToString:v6])
  {
    v62 = a2;
    v7 = [a2 subparts];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v66;
LABEL_4:
      v12 = 0;
      while (1)
      {
        v13 = v10;
        if (*v66 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v65 + 1) + 8 * v12);
        result = _makeMimeHeadersConsistent(a1, v14, a3);
        if (!result)
        {
          goto LABEL_32;
        }

        v16 = [v14 contentTransferEncoding];
        v10 = @"binary";
        if (([v16 isEqualToString:@"binary"] & 1) == 0)
        {
          if ([v16 isEqualToString:@"8bit"])
          {
            if ([(__CFString *)v13 isEqualToString:@"binary"])
            {
              v10 = v13;
            }

            else
            {
              v10 = @"8bit";
            }
          }

          else
          {
            v10 = v13;
          }
        }

        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }
    }

    v10 = 0;
LABEL_25:
    if (v10)
    {
      v22 = v10;
    }

    else
    {
      v22 = @"7bit";
    }

    v23 = v62;
LABEL_30:
    [v23 setContentTransferEncoding:v22];
    goto LABEL_31;
  }

  if (!Value)
  {
    v22 = @"7bit";
    v23 = a2;
    goto LABEL_30;
  }

  if ([a2 contentTransferEncoding])
  {
    goto LABEL_31;
  }

  v17 = [a2 isReadableText];
  v18 = [Value length];
  v61 = v17;
  if (v17)
  {
    v19 = 2;
  }

  else
  {
    v19 = 6;
  }

  v59 = v19;
  v20 = [Value bytes];
  if ([v6 isEqualToString:@"message"])
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    v21 = (*(a1 + 16) >> 1) & 1;
  }

  v25 = +[MFActivityMonitor currentMonitor];
  if ([v25 canBeCancelled])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v63 = v26;
  if (v18 < 1)
  {
    v44 = 0;
    goto LABEL_103;
  }

  v58 = v6;
  v55 = Value;
  v56 = v18;
  v57 = 0;
  v27 = 0;
  v60 = 0;
  v28 = &v20[v18];
  v29 = 1;
  v30 = v20;
  v31 = 1;
  do
  {
    v32 = *v20;
    if (v32 <= 0xD && ((1 << v32) & 0x2401) != 0)
    {
      v31 = 0;
    }

    if (v32 == 10)
    {
      v34 = 0;
      v35 = &v20[~v30];
      if (v27 > v35)
      {
        v35 = v27;
      }

      if (v20 > v30)
      {
        v27 = v35;
      }

      v30 = v20 + 1;
    }

    else
    {
      v36 = v61;
      if (v32 != 27)
      {
        v36 = 0;
      }

      if (v32 == 9 || v32 > 0x1F)
      {
        v38 = (v32 & 0x80u) == 0;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        v34 = 0;
        if (v20 == v30 && (v20 + 5) < v28)
        {
          if (!strncmp("From ", v20, 5uLL))
          {
            LOBYTE(v21) = 0;
            v34 = 0;
            v57 = 1;
            v30 = v20;
            v27 = 998;
          }

          else
          {
            v34 = 0;
            v30 = v20;
          }

          v26 = v63;
        }
      }

      else
      {
        v39 = v60 + v59;
        v40 = *(a1 + 16);
        v60 += v59;
        if ((v40 & 3) != 0)
        {
          v34 = 0;
        }

        else
        {
          if (v21)
          {
            v34 = 0;
            ++v20;
            LOBYTE(v21) = 1;
            goto LABEL_81;
          }

          LOBYTE(v21) = 0;
          if (((v56 > v39) & (v40 >> 3)) != 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = @"base64";
          }
        }
      }
    }

    v41 = ++v20 - v30 < 999 && v27 < 999;
    if (!v41 && (v21 & 1) == 0)
    {
      if (*(a1 + 16) & 8) != 0 && (v42 = [v58 isEqualToString:@"text"], v26 = v63, (v42))
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        LOBYTE(v21) = 0;
        v34 = @"base64";
      }
    }

LABEL_81:
    if (v26)
    {
      v43 = [v26 shouldCancel];
      v26 = v63;
      v29 &= v43 ^ 1;
    }
  }

  while (!v34 && v20 < v28 && (v29 & 1) != 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_123;
  }

  v44 = ~v30 + v28;
  if (v27 > v44)
  {
    v44 = v27;
  }

  if (v28 <= v30)
  {
    v44 = v27;
  }

  Value = v55;
  if (v34)
  {
    goto LABEL_108;
  }

  if (v57 & 1 | (v44 > 997))
  {
    goto LABEL_98;
  }

  if (!v60)
  {
LABEL_103:
    if (v44 >= 77 && [objc_msgSend(a2 "type")] && objc_msgSend(objc_msgSend(a2, "subtype"), "isEqualToString:", @"plain") && !objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), "BOOLForKey:", @"UseFormatFlowedForWrapping"))
    {
      goto LABEL_127;
    }

    v34 = @"7bit";
    goto LABEL_108;
  }

  if (v31)
  {
    v34 = @"8bit";
  }

  else
  {
    v34 = 0;
  }

  if ((v31 & 1 & ((*(a1 + 16) & 3) != 0)) == 0)
  {
LABEL_98:
    if (v57 & 1 | ((v21 & 1) == 0))
    {
      if ((*(a1 + 16) & 8) == 0 || [v55 length] <= v60)
      {
        v34 = @"base64";
        goto LABEL_108;
      }

LABEL_127:
      v34 = @"quoted-printable";
    }

    else
    {
      v34 = @"binary";
    }
  }

LABEL_108:
  [a2 setContentTransferEncoding:{v34, v55}];
  if ([@"base64" isEqualToString:v34])
  {
    if (v61 && ([objc_msgSend(a2 "disposition")] & 1) == 0 && objc_msgSend(Value, "length"))
    {
      v45 = [Value mf_dataByConvertingUnixNewlinesToNetwork];
      goto LABEL_121;
    }

LABEL_120:
    v45 = 0;
    goto LABEL_121;
  }

  if (![@"quoted-printable" isEqualToString:v34])
  {
    goto LABEL_120;
  }

  v46 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v47 = [objc_alloc(MEMORY[0x277D24F98]) initWithConsumer:v46];
  [v47 setForTextPart:v61];
  v48 = [Value length];
  v49 = [Value bytes];
  v50 = 0;
  v51 = 0;
  do
  {
    if (v63 && ([v63 shouldCancel] & 1) != 0)
    {
      break;
    }

    v52 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v49 + v50 length:v48 - v50 freeWhenDone:0];
    v53 = [v47 appendData:v52];

    if (v53 < 0)
    {
      break;
    }

    v54 = v51 && v53 == 0;
    v50 += v53;
    v51 = v53 == 0;
  }

  while (v54 != 1);
  [v47 done];
  [v46 done];
  v45 = [v46 data];

LABEL_121:
  if (v63 && ([v63 shouldCancel] & 1) != 0)
  {
LABEL_123:
    result = 0;
    goto LABEL_32;
  }

  if (v45)
  {
    CFDictionarySetValue(a3, a2, v45);
  }

LABEL_31:
  result = 1;
LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258C142A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_BKSApplicationStateGetDescription(int a1)
{
  v1 = @"Process Server";
  v2 = @"Foreground Running Obscured";
  if (a1 != 32)
  {
    v2 = 0;
  }

  if (a1 != 16)
  {
    v1 = v2;
  }

  v3 = @"Foreground Running";
  if (a1 != 8)
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    v3 = @"Background Running";
  }

  if (a1 <= 15)
  {
    v1 = v3;
  }

  v4 = @"Background Task Suspended";
  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v4 = @"Terminated";
  }

  if (!a1)
  {
    v4 = @"Unknown";
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

id EFPromiseAttachmentDataHandler(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __EFPromiseAttachmentDataHandler_block_invoke;
  v3[3] = &unk_2798B6EB0;
  v3[4] = a2;
  v3[5] = a1;
  return [v3 copy];
}

const __CFData *_stripPrivateFileMetadata(const __CFData *a1)
{
  v1 = a1;
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = CGImageSourceCreateWithData(a1, 0);
  if (v2)
  {
    v3 = v2;
    v4 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
    if (v4)
    {
      v5 = v4;
      MutableCopy = CGImageMetadataCreateMutableCopy(v4);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = ___stripPrivateFileMetadata_block_invoke;
        v15[3] = &unk_2798B6ED8;
        v15[5] = &v16;
        v15[6] = MutableCopy;
        v15[4] = &unk_286A053A0;
        CGImageMetadataEnumerateTagsUsingBlock(v5, 0, 0, v15);
        if (*(v17 + 24) == 1)
        {
          v8 = [MEMORY[0x277CBEB28] data];
          Type = CGImageSourceGetType(v3);
          Count = CGImageSourceGetCount(v3);
          v11 = CGImageDestinationCreateWithData(v8, Type, Count, 0);
          if (v11)
          {
            keys[0] = *MEMORY[0x277CD2D58];
            values = v7;
            v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
            if (v12)
            {
              if (CGImageDestinationCopyImageSource(v11, v3, v12, 0))
              {
                v1 = v8;
              }

              CFRelease(v12);
            }

            CFRelease(v11);
          }
        }

        CFRelease(v7);
        _Block_object_dispose(&v16, 8);
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_258C15224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __EFPromiseAttachmentDataHandler_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) data];
    v4 = *(a1 + 40);

    return [v4 finishWithResult:v3];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 finishWithError:?];
  }
}

uint64_t ___stripPrivateFileMetadata_block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v6 = CGImageMetadataTagCopyPrefix(tag);
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      v10 = CGImageMetadataTagCopyName(tag);
      if (v10)
      {
        v11 = v10;
        if ([v9 containsObject:v10])
        {
          CGImageMetadataRemoveTagWithPath(*(a1 + 48), 0, a2);
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        CFRelease(v11);
      }
    }

    CFRelease(v7);
  }

  return 1;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_258C1AD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_258C1CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void MFRegisterContentProtectionObserver(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    MFRegisterContentProtectionObserver_cold_3();
  }

  if (!a2)
  {
    MFRegisterContentProtectionObserver_cold_2();
  }

  if (_observationQueue == a2)
  {
    MFRegisterContentProtectionObserver_cold_1();
  }

  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __MFRegisterContentProtectionObserver_block_invoke;
  v2[3] = &unk_2798B61E8;
  v2[4] = a1;
  v2[5] = a2;
  _InitAndPerformSync(v2);
}

void _InitAndPerformSync(dispatch_block_t block)
{
  if (_InitObservation_sOnceToken != -1)
  {
    _InitAndPerformSync_cold_1();
  }

  v2 = _observationQueue;

  dispatch_sync(v2, block);
}

void __MFRegisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  v2 = [[_MFContentProtectionObserverWrapper alloc] initWithObserver:*(a1 + 32) queue:*(a1 + 40)];
  Mutable = _observers;
  value = v2;
  if (!_observers)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2 = value;
    _observers = Mutable;
  }

  CFDictionaryAddValue(Mutable, *(a1 + 32), v2);
}

void MFUnregisterContentProtectionObserver(uint64_t a1)
{
  if (!a1)
  {
    MFUnregisterContentProtectionObserver_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MFUnregisterContentProtectionObserver_block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = a1;
  _InitAndPerformSync(block);
}

void __MFUnregisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  if (_observers)
  {
    CFDictionaryRemoveValue(_observers, *(a1 + 32));
  }
}

uint64_t MFContentProtectionGetObservedState()
{
  if (_InitObservation_sOnceToken != -1)
  {
    _InitAndPerformSync_cold_1();
  }

  return _contentProtectionState;
}

BOOL MFProtectedDataAvailable()
{
  if (_InitObservation_sOnceToken != -1)
  {
    _InitAndPerformSync_cold_1();
  }

  return _contentProtectionState == 3 || _contentProtectionState == 0;
}

void MFContentProtectionSimulateState(int a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MFContentProtectionSimulateState_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  _InitAndPerformSync(block);
}

void _NotifyObserversWithContentProtectionState(signed int a1)
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(_observationQueue);
  if (a1 == -1)
  {
    _NotifyObserversWithContentProtectionState_cold_2();
  }

  v2 = _contentProtectionState;
  if (_contentProtectionState == -1)
  {
    _NotifyObserversWithContentProtectionState_cold_1();
  }

  v3 = MFLogGeneral();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (v4)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v5 = @"locking";
          goto LABEL_36;
        }

        if (a1 == 3)
        {
          v5 = @"disabled";
          goto LABEL_36;
        }
      }

      else
      {
        if (!a1)
        {
          v5 = @"unlocked";
          goto LABEL_36;
        }

        if (a1 == 1)
        {
          v5 = @"locked";
LABEL_36:
          *buf = 138412546;
          v27 = v5;
          v28 = 2112;
          v29 = v5;
          _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring lock state change from %@ to %@", buf, 0x16u);
          goto LABEL_37;
        }
      }

      v5 = @"unknown";
      goto LABEL_36;
    }
  }

  else
  {
    if (v4)
    {
      if (v2 > 3)
      {
        v6 = @"unknown";
      }

      else
      {
        v6 = off_2798B7240[v2];
      }

      if (a1 > 3)
      {
        v7 = @"unknown";
      }

      else
      {
        v7 = off_2798B7240[a1];
      }

      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "Keybag transitioning from %@ to %@", buf, 0x16u);
    }

    if (a1 == 1 && !v2)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_DEFAULT, "Brace for impact, keybag was locked without grace period!", buf, 2u);
      }
    }

    v9 = v2;
    atomic_compare_exchange_strong(&_contentProtectionState, &v9, a1);
    if (v9 == v2)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [_observers allValues];
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v15 queue];
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = ___NotifyObserversWithContentProtectionState_block_invoke;
            v18[3] = &unk_2798B6FC8;
            v18[4] = v15;
            v19 = a1;
            v20 = v2;
            dispatch_async(v16, v18);
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }
    }
  }

LABEL_37:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t MFContentProtectionDumpDiagnosticState()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"\n==== MFContentProtectionObserver ====\n"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MFContentProtectionDumpDiagnosticState_block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = v0;
  _InitAndPerformSync(block);
  return v0;
}

uint64_t __MFContentProtectionDumpDiagnosticState_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((_contentProtectionState + 1) > 4)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_2798B7260[_contentProtectionState + 1];
  }

  [v2 appendFormat:@"Recorded state: %@\n", v3];
  [*(a1 + 32) appendFormat:@"System state: %@\n", off_2798B7260[_KeyBagLockState() + 1]];
  v4 = *(a1 + 32);
  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = "YES";
  if (!v5)
  {
    v6 = "NO";
  }

  [v4 appendFormat:@"Unlocked since boot: %s\n", v6];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setTimeStyle:1];
  [v7 setDateStyle:2];
  if (*&_lastNotificationTime == 0.0)
  {
    v8 = @"never";
  }

  else
  {
    v8 = [v7 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", *&_lastNotificationTime)}];
  }

  if (*&_beganObservingTime == 0.0)
  {
    v9 = @"never";
  }

  else
  {
    v9 = [v7 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", *&_beganObservingTime)}];
  }

  [*(a1 + 32) appendFormat:@"Last lock_status notification: %@ (began observing %@)\n", v8, v9];
  result = [_observers count];
  if (result)
  {
    [*(a1 + 32) appendFormat:@"Observers:\n"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [_observers allValues];
    result = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (result)
    {
      v12 = result;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = [v15 observer];
          v17 = [v15 queue];
          v18 = *(a1 + 32);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          [v18 appendFormat:@"\t<%@:%p> (%s)\n", v20, v16, dispatch_queue_get_label(v17)];
          ++v14;
        }

        while (v12 != v14);
        result = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v12 = result;
      }

      while (result);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _KeyBagLockState()
{
  LODWORD(result) = MKBGetDeviceLockState();
  if (result >= 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

__CFString *MFMessageDeliveryStatusString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"MessageDeliveryFatalError";
  }

  else
  {
    return off_2798B72B8[a1];
  }
}

void *_setUserInfoObjectForKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (a2)
  {
    if (!result)
    {
      result = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
      *(a1 + 40) = result;
    }

    return [result setObject:a2 forKey:a3];
  }

  else if (result)
  {

    return [result removeObjectForKey:?];
  }

  return result;
}

uint64_t sanitizeStringForMarkup(void *a1)
{
  [a1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"  " withString:@"&nbsp; " options:2 range:{0, objc_msgSend(a1, "length")}];
  v2 = [a1 length];

  return [a1 replaceOccurrencesOfString:@"\n" withString:@"<BR>" options:2 range:{0, v2}];
}

void sub_258C20F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258C21D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MessageInfoComparator(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[8];
  v3 = a2[8];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return -1;
  }

  v5 = a1[7];
  v6 = a2[7];
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return -1;
  }

  v7 = a1[5];
  v8 = a2[5];
  v9 = v7 >= v8;
  if (v7 <= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

uint64_t MessageInfoSentDateComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  v4 = *(a1 + 20);
  v5 = *(a2 + 20);
  v6 = v4 >= v5;
  if (v4 <= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (!v6)
  {
    v7 = 1;
  }

  v8 = v2 >= v3;
  if (v2 <= v3)
  {
    v9 = v7;
  }

  else
  {
    v9 = -1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t MFMessageInfoSentDateComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 dateSentInterval];
  v6 = [a3 dateSentInterval];
  if (v5 < v6)
  {
    result = -1;
  }

  else
  {
    result = v5 > v6;
  }

  if (!result)
  {
    v8 = [a2 uid];
    v9 = [a3 uid];
    if (v8 < v9)
    {
      return -1;
    }

    else
    {
      return v8 > v9;
    }
  }

  return result;
}

uint64_t _IncrementThreadLocalCounterForKey(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v3 = [v2 objectForKey:a1];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _IncrementThreadLocalCounterForKey_cold_1();
    }

    v3 = [v4 unsignedIntegerValue];
    if (v3 == -1)
    {
      _IncrementThreadLocalCounterForKey_cold_2();
    }
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];

  return [v2 setObject:v5 forKey:a1];
}

uint64_t _DecrementThreadLocalCounterForKey(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v3 = [v2 objectForKey:a1];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _DecrementThreadLocalCounterForKey_cold_1();
  }

  v5 = [v4 unsignedIntegerValue];
  if (v5 == 1)
  {

    return [v2 removeObjectForKey:a1];
  }

  if (!v5)
  {
LABEL_12:
    _DecrementThreadLocalCounterForKey_cold_2();
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 - 1];

  return [v2 setObject:v7 forKey:a1];
}

uint64_t MFAssertNetworkActivityAllowed()
{
  if ([MEMORY[0x277CCACC8] isMainThread] && (_ThreadLocalAssertionForKey(@"_MFMainThreadNetworkingAllowedAssertionKey") & 1) == 0 && ((EFIsSeedBuild() & 1) != 0 || objc_msgSend(objc_msgSend(MEMORY[0x277D07148], "currentDevice"), "isInternal")))
  {
    MFAssertNetworkActivityAllowed_cold_1();
  }

  result = _ThreadLocalAssertionForKey(@"_MFDisallowNetworkActivityAssertionKey");
  if (result)
  {
    if ((EFIsSeedBuild() & 1) != 0 || (result = [objc_msgSend(MEMORY[0x277D07148] "currentDevice")], result))
    {
      MFAssertNetworkActivityAllowed_cold_2();
    }
  }

  return result;
}

uint64_t _ThreadLocalAssertionForKey(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _ThreadLocalAssertionForKey_cold_1();
    }

    return [v2 unsignedIntegerValue] != 0;
  }

  return result;
}

uint64_t MFErrorCodeWithDataStatus(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_258C4B510[a1 - 1];
  }
}

BOOL _IsWiFiEnabled(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"AllowEnable");
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(Value)))
  {
    v4 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v4 = *MEMORY[0x277CBED28] == Value;
  }

  SCPreferencesSynchronize(a1);
  return v4;
}

void sub_258C241C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_258C26214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _powerChanged(uint64_t a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    HIDWORD(v8) = a3 + 536870288;
    LODWORD(v8) = a3 + 536870288;
    v7 = v8 >> 4;
    if (v7 < 0xC && ((0xA07u >> v7) & 1) != 0)
    {
      v9 = off_2798B77F0[v7];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3];
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "power changed: %@", buf, 0xCu);
  }

  if (a3 == -536870144)
  {
    [_observers_0 makeObjectsPerformSelector:sel_systemDidWake];
  }

  else
  {
    if (a3 == -536870272)
    {
      [_observers_0 makeObjectsPerformSelector:sel_systemWillSleep];
    }

    else if (a3 != -536870288)
    {
      goto LABEL_14;
    }

    IOAllowPowerChange(__RootDomainConnect, a4);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_258C268CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MFRegisterPowerObserver(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __MFRegisterPowerObserver_block_invoke;
  v6[3] = &unk_2798B75C8;
  v7 = v1;
  v2 = v6;
  v3 = MEMORY[0x277D071B8];
  v4 = v1;
  v5 = [v3 mainThreadScheduler];
  [v5 performBlock:v2];
}

uint64_t __MFRegisterPowerObserver_block_invoke(uint64_t a1)
{
  v2 = _observers_0;
  if (!_observers_0)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = _observers_0;
    _observers_0 = v3;

    v2 = _observers_0;
  }

  v5 = *(a1 + 32);

  return [v2 addObject:v5];
}

void MFUnregisterPowerObserver(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __MFUnregisterPowerObserver_block_invoke;
  v6[3] = &unk_2798B75C8;
  v7 = v1;
  v2 = v6;
  v3 = MEMORY[0x277D071B8];
  v4 = v1;
  v5 = [v3 mainThreadScheduler];
  [v5 performBlock:v2];
}

void *__getPLShouldLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLShouldLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PowerLogLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PowerLogLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2798B77D8;
    v5 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    PowerLogLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

MFError *checkCertificateExpiration(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  SecCertificateNotValidBefore();
  v6 = v5;
  SecCertificateNotValidAfter();
  if (Current >= v6)
  {
    v9 = v7;
    if (Current <= v7)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_EXPIRED_FORMAT", @"The certificate for the address “%@” expired on %@.", @"Delayed");
    v6 = v9;
  }

  else
  {
    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_NOT_YET_VALID_FORMAT", @"The certificate for the address “%@” is not valid until %@.", @"Delayed");
  }

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  if (v8)
  {
    v11 = v10;
    if (!v10)
    {
      checkCertificateExpiration_cold_1();
    }

    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setDateStyle:3];
    [v12 setTimeStyle:3];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v8, a2, objc_msgSend(v12, "stringFromDate:", v11)];

    v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v13];
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = a1;
      v19 = 2112;
      v20 = a2;
      v21 = 2114;
      v22 = [(MFError *)v8 ef_publicDescription];
      _os_log_impl(&dword_258BDA000, v14, OS_LOG_TYPE_INFO, "#SMIMEErrors Certificate %@ for address %@ is not currently valid: %{public}@", buf, 0x20u);
    }
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_258C2B254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _releaseTopStackEntry(uint64_t a1)
{
  v2 = _peekCommandStackEntry(a1);
  v3 = v2;
  if (v2)
  {
    if ([**v2 isEqualToString:@"nofill"])
    {
      *(a1 + 208) = *(a1 + 208) & 0xC0000000 | (*(a1 + 208) - 1) & 0x3FFFFFFF;
    }

    v4 = *(a1 + 224);
    Count = CFArrayGetCount(v4);
    CFArrayRemoveValueAtIndex(v4, Count - 1);
    v6 = v3[1];
    if (v6)
    {
    }

    free(v3);
  }

  return v3 != 0;
}

CFIndex _currentAttributeOfType(uint64_t a1, int a2)
{
  result = CFArrayGetCount(*(a1 + 224));
  if (result)
  {
    v5 = result - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 224), v5);
      if (((*(*ValueAtIndex + 8) >> 3) & 3) == a2)
      {
        result = ValueAtIndex[1];
      }

      else
      {
        result = 0;
      }

      v7 = v5-- != 0;
    }

    while (v7 && !result);
  }

  return result;
}

CFStringRef _copyNextToken(uint64_t a1, CFCharacterSetRef theSet)
{
  v4 = *(a1 + 192);
  if (v4 < *(a1 + 200))
  {
    if (v4 < 0)
    {
      if (CFCharacterSetIsCharacterMember(theSet, 0))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v5 = a1 + 8;
      v6 = *(a1 + 168);
      if (v6 <= v4)
      {
        v8 = 0;
      }

      else
      {
        v7 = *(a1 + 144);
        if (v7)
        {
          v8 = *(v7 + 2 * *(a1 + 160) + 2 * v4);
        }

        else
        {
          v28 = *(a1 + 152);
          if (v28)
          {
            v8 = *(v28 + *(a1 + 160) + v4);
          }

          else
          {
            if (*(a1 + 184) <= v4 || (v30 = *(a1 + 176), v30 > v4))
            {
              v31 = v4 - 4;
              if (v4 < 4)
              {
                v31 = 0;
              }

              if (v31 + 64 < v6)
              {
                v6 = v31 + 64;
              }

              *(a1 + 176) = v31;
              *(a1 + 184) = v6;
              v36.length = v6 - v31;
              v36.location = *(a1 + 160) + v31;
              CFStringGetCharacters(*(a1 + 136), v36, (a1 + 8));
              v30 = *(a1 + 176);
            }

            v8 = *(v5 + 2 * (v4 - v30));
          }
        }
      }

      if (CFCharacterSetIsCharacterMember(theSet, v8))
      {
        v9 = *(a1 + 168);
        if (v9 > v4)
        {
          v10 = *(a1 + 144);
          if (v10)
          {
            v11 = *(v10 + 2 * *(a1 + 160) + 2 * v4);
          }

          else
          {
            v29 = *(a1 + 152);
            if (v29)
            {
              v11 = *(v29 + *(a1 + 160) + v4);
            }

            else
            {
              if (*(a1 + 184) <= v4 || (v32 = *(a1 + 176), v32 > v4))
              {
                v33 = v4 - 4;
                if (v4 < 4)
                {
                  v33 = 0;
                }

                if (v33 + 64 < v9)
                {
                  v9 = v33 + 64;
                }

                *(a1 + 176) = v33;
                *(a1 + 184) = v9;
                v37.length = v9 - v33;
                v37.location = *(a1 + 160) + v33;
                CFStringGetCharacters(*(a1 + 136), v37, (a1 + 8));
                v32 = *(a1 + 176);
              }

              v11 = *(v5 + 2 * (v4 - v32));
            }
          }

          goto LABEL_41;
        }

LABEL_40:
        v11 = 0;
LABEL_41:
        ++v4;
        chars = v11;
        result = CFStringCreateWithCharacters(0, &chars, 1);
        goto LABEL_44;
      }
    }
  }

  if (v4 >= *(a1 + 200))
  {
    result = 0;
    goto LABEL_44;
  }

  v12 = -v4;
  v13 = v4 + 64;
  v14 = v4;
  do
  {
    if (v14 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }

    if (v14 < 0 || (v16 = *(a1 + 168), v16 <= v14))
    {
      v19 = 0;
    }

    else
    {
      v17 = *(a1 + 144);
      if (v17)
      {
        v18 = v17 + 2 * *(a1 + 160);
      }

      else
      {
        v20 = *(a1 + 152);
        if (v20)
        {
          v19 = *(v20 + *(a1 + 160) + v14);
          goto LABEL_24;
        }

        if (*(a1 + 184) <= v14 || (v21 = *(a1 + 176), v21 > v14))
        {
          v22 = -v15;
          v23 = v15 + v12;
          v24 = v13 - v15;
          v25 = v14 + v22;
          v26 = v25 + 64;
          if (v25 + 64 >= v16)
          {
            v26 = *(a1 + 168);
          }

          *(a1 + 176) = v25;
          *(a1 + 184) = v26;
          if (v16 >= v24)
          {
            v16 = v24;
          }

          v35.location = v25 + *(a1 + 160);
          v35.length = v16 + v23;
          CFStringGetCharacters(*(a1 + 136), v35, (a1 + 8));
          v21 = *(a1 + 176);
        }

        v18 = a1 + 8 - 2 * v21;
      }

      v19 = *(v18 + 2 * v14);
    }

LABEL_24:
    if (CFCharacterSetIsCharacterMember(theSet, v19))
    {
      break;
    }

    ++v14;
    --v12;
    ++v13;
  }

  while (v14 < *(a1 + 200));
  if (v14 <= v4)
  {
    result = 0;
  }

  else
  {
    v38.location = v4;
    v38.length = v14 - v4;
    result = CFStringCreateWithSubstring(0, *(a1 + 136), v38);
  }

  v4 = v14;
LABEL_44:
  *(a1 + 192) = v4;
  return result;
}

const void *_peekCommandStackEntry(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 224));
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = *(a1 + 224);

  return CFArrayGetValueAtIndex(v4, v3);
}

void _MFFlushCurrentInvocation()
{
  v0 = *MEMORY[0x277CBF058];
  if (CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.0, 0) == kCFRunLoopRunTimedOut)
  {
    Current = CFRunLoopGetCurrent();
    if (CFRunLoopGetNextTimerFireDate(Current, v0) > 1.17549435e-38)
    {
      v2 = 0.001;
      do
      {
        if (CFRunLoopRunInMode(v0, v2, 0) != kCFRunLoopRunTimedOut)
        {
          break;
        }

        v2 = v2 + v2;
        v3 = CFRunLoopGetCurrent();
      }

      while (CFRunLoopGetNextTimerFireDate(v3, v0) > 1.17549435e-38 && v2 < 10.0);
    }
  }
}

void sub_258C2F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C2F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C30E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MFCreateStringByCondensingWhitespace(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = [(__CFString *)a1 length];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *buffer = 0u;
  v27 = 0u;
  v34 = a1;
  v37 = 0;
  v38 = v4;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v35 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v36 = CStringPtr;
  v39 = 0;
  v40 = 0;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 64; ; ++i)
    {
      if (v9 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v9;
      }

      if (v9 < 0 || (v12 = v38, v38 <= v9))
      {
        chars = 0;
        goto LABEL_15;
      }

      if (v35)
      {
        break;
      }

      if (!v36)
      {
        if (v40 <= v9 || (v18 = v39, v39 > v9))
        {
          v19 = -v11;
          v20 = v11 + v7;
          v21 = i - v11;
          v22 = v9 + v19;
          v23 = v22 + 64;
          if (v22 + 64 >= v38)
          {
            v23 = v38;
          }

          v39 = v22;
          v40 = v23;
          if (v38 >= v21)
          {
            v12 = v21;
          }

          v41.location = v22 + v37;
          v41.length = v12 + v20;
          CFStringGetCharacters(v34, v41, buffer);
          v18 = v39;
        }

        v13 = &buffer[-v18];
        goto LABEL_13;
      }

      v14 = v36[v37 + v9];
LABEL_18:
      chars = v14;
      v15 = v14;
      v16 = (1 << v14) & 0x100002600;
      if (v15 <= 0x20 && v16 != 0)
      {
        if (!((v9 == 0) | v8 & 1))
        {
          CFStringAppend(Mutable, @" ");
        }

        v8 = 1;
        goto LABEL_25;
      }

LABEL_15:
      CFStringAppendCharacters(Mutable, &chars, 1);
      v8 = 0;
LABEL_25:
      ++v9;
      --v7;
      if (v4 == v9)
      {
        return Mutable;
      }
    }

    v13 = &v35[v37];
LABEL_13:
    v14 = v13[v9];
    goto LABEL_18;
  }

  return Mutable;
}

id MFCopyResponseDataForURLRequest(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_alloc_init(MFMessageURLConnectionDelegate);
  v7 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  v8 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v7 delegate:v6 delegateQueue:0];
  v9 = [v8 dataTaskWithRequest:a1];
  if (!v9)
  {
    return 0;
  }

  [v9 resume];
  v10 = [(EFFuture *)[(MFMessageURLConnectionDelegate *)v6 future] resultWithTimeout:a3 error:60.0];
  if (a2)
  {
    *a2 = [(MFMessageURLConnectionDelegate *)v6 response];
  }

  [v8 invalidateAndCancel];
  return v10;
}

void sub_258C342D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Exception raised while processing requests: %@", &a9, 0xCu);
    }

    v11 = NSGetUncaughtExceptionHandler();
    (v11)(v9);
    objc_end_catch();
    JUMPOUT(0x258C342A4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ExtractContentWithTag(uint64_t a1, int a2)
{
  v3 = SecCmsMessageContentLevelCount();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    SecCmsMessageContentLevel();
    if (SecCmsContentInfoGetContentTypeTag() == a2)
    {
      result = SecCmsContentInfoGetContent();
      if (result)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return result;
}

int *OUTLINED_FUNCTION_2_1@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(void **a1)
{
  v2 = *a1;

  return [v2 ef_publicDescription];
}

void sub_258C38E38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *_createParameterStringFromBytes(const UInt8 **a1, unint64_t a2)
{
  v4 = *a1;
  v5 = MEMORY[0x277D85DE0];
  if (*a1 < a2)
  {
    while (1)
    {
      v6 = *v4;
      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
LABEL_8:
          v4 = *a1;
          break;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      *a1 = ++v4;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }
  }

  v7 = (v4 + 1);
  if (v4 + 1 >= a2)
  {
    v8 = 0;
    v7 = a2;
  }

  else
  {
    v8 = 0;
    v9 = ~v4 + a2;
    do
    {
      v10 = *v7;
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(*v7, 0x4000uLL))
        {
          goto LABEL_23;
        }
      }

      else if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
      {
        goto LABEL_23;
      }

      if (v8)
      {
        v8 = 1;
      }

      else
      {
        if ((v10 & 0x80000000) != 0)
        {
          v11 = __maskrune(v10, 0x1000uLL);
        }

        else
        {
          v11 = *(v5 + 4 * v10 + 60) & 0x1000;
        }

        v8 = v11 != 0;
      }

      ++v7;
      --v9;
    }

    while (v9);
    v7 = a2;
LABEL_23:
    v4 = *a1;
  }

  if (v4 >= v7)
  {
    v13 = 0;
  }

  else
  {
    v12 = CFStringCreateWithBytes(0, v4, &v7[-v4], 0x600u, 0);
    v13 = v12;
    if (v12 != 0 && v8)
    {
      Length = CFStringGetLength(v12);
      MutableCopy = CFStringCreateMutableCopy(0, Length, v13);
      CFStringUppercase(MutableCopy, 0);

      v13 = MutableCopy;
    }
  }

  if ((v7 + 1) < a2)
  {
    v16 = v7 + 1;
  }

  else
  {
    v16 = a2;
  }

  *a1 = v16;
  return v13;
}

__CFString *MFSMTPFailureReasonString(unsigned int a1)
{
  if (a1 > 7)
  {
    return @"SMTPFailureReasonUnknown";
  }

  else
  {
    return off_2798B7D28[a1];
  }
}

uint64_t MFCreateURLForContentID(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [(__CFString *)a1 rangeOfString:@"<"];
  v4 = v3;
  v5 = [(__CFString *)a1 rangeOfString:@">"];
  v6 = v2 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL;
  v7.location = v2 + v4;
  if (!v6 && v5 > v7.location)
  {
    v7.length = v5 - v7.location;
    v9 = CFStringCreateWithSubstring(0, a1, v7);
  }

  else
  {
    v9 = a1;
  }

  v11 = v9;
  v12 = -[__CFString stringByAddingPercentEncodingWithAllowedCharacters:](v9, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
  if (v12)
  {
    v13 = [@"cid" stringByAppendingFormat:@":%@", v12];
    v10 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:v13];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _SortWebAttachmentSources()
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v1 = isKindOfClass ^ objc_opt_isKindOfClass();
  v2 = -1;
  if ((isKindOfClass & 1) == 0)
  {
    v2 = 1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void _MFFlagsBySettingValueForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "Unexpected flag key %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void PowerLogLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PowerLogLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MFPowerController.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}