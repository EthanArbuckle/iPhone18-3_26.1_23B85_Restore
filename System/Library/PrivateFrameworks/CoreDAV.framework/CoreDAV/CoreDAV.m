uint64_t sub_24530195C()
  v1 = {;

  return v1;
}

void sub_2453055E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24530CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24530D34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24530DCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24531377C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245314D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CDVPLogV(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  v9 = +[CoreDAVLogging sharedLogging];
  [v9 logDiagnosticForProvider:v8 withLevel:a2 format:v7 args:a4];
}

CFTypeRef _CoreDAVSecCopyIdentityFromPersist(CFTypeRef a1)
{
  keys[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277CDC5F0];
    keys[0] = *MEMORY[0x277CDC568];
    keys[1] = v1;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = a1;
    v2 = CFDictionaryCreate(0, keys, values, 2, 0, 0);
    result = 0;
    v3 = SecItemCopyMatching(v2, &result);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      v4 = +[CoreDAVLogging sharedLogging];
      v5 = [v4 logHandleForAccountInfoProvider:0];
      v6 = v5;
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v10 = v3;
        _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "Could not find identity for persistent ref. %d", buf, 8u);
      }
    }

    a1 = result;
  }

  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t _CoreDAVSecDeleteIdentityByPersistentRef()
{
  v0 = +[CoreDAVLogging sharedLogging];
  v1 = [v0 logHandleForAccountInfoProvider:0];
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_2452FB000, v2, OS_LOG_TYPE_ERROR, "Intentionally not deleting identity by persistent ref", v4, 2u);
  }

  return 0;
}

__CFArray *_CoreDAVSecIdentityCopySSLClientAuthenticationChain(void *a1)
{
  SSL = SecPolicyCreateSSL(0, 0);
  if (!SSL)
  {
    return 0;
  }

  v3 = SSL;
  certificateRef = 0;
  Mutable = 0;
  if (!SecIdentityCopyCertificate(a1, &certificateRef))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithObject:certificateRef];
    CFRelease(certificateRef);
    trust = 0;
    Mutable = 0;
    if (!SecTrustCreateWithCertificates(v5, v3, &trust))
    {
      v12 = 0;
      if (MEMORY[0x245D68700](trust, &v12))
      {
        Mutable = 0;
      }

      else
      {
        CertificateCount = SecTrustGetCertificateCount(trust);
        Mutable = CFArrayCreateMutable(0, CertificateCount, MEMORY[0x277CBF128]);
        CFArrayAppendValue(Mutable, a1);
        if (CertificateCount >= 2)
        {
          v7 = -CertificateCount;
          v8 = 1;
          do
          {
            if (v7 + v8 != -1 || v12 != 4)
            {
              CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v8);
              CFArrayAppendValue(Mutable, CertificateAtIndex);
            }

            ++v8;
          }

          while (v7 + v8);
        }
      }

      CFRelease(trust);
    }
  }

  CFRelease(v3);
  return Mutable;
}

uint64_t CalDAVServerSimulatorLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CalDAVServerSimulatorLibraryCore_frameworkLibrary;
  v6 = CalDAVServerSimulatorLibraryCore_frameworkLibrary;
  if (!CalDAVServerSimulatorLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278E31150;
    v8 = *off_278E31160;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CalDAVServerSimulatorLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_245318848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDAVServerSimulatorLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CalDAVServerSimulatorLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CalDAVServerSimulatorLibrary()
{
  v1 = 0;
  result = CalDAVServerSimulatorLibraryCore();
  if (!result)
  {
    CalDAVServerSimulatorLibrary_cold_1(&v1);
  }

  return result;
}

Class __getCalDAVServerSimulatorClass_block_invoke(uint64_t a1)
{
  CalDAVServerSimulatorLibrary();
  result = objc_getClass("CalDAVServerSimulator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDAVServerSimulatorClass_block_invoke_cold_1();
  }

  getCalDAVServerSimulatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CDVHTTPStatusCodeFromStatusLine(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:@" "];
    if ([v2 count] < 3)
    {
      v4 = 0;
    }

    else
    {
      v3 = [v2 objectAtIndex:0];
      v4 = 0;
      if ([v3 hasPrefix:@"HTTP/"])
      {
        v5 = [v2 objectAtIndex:1];
        if ([v5 length] == 3)
        {
          v6 = [v5 integerValue];
          if ((v6 - 600) >= 0xFFFFFFFFFFFFFE0CLL)
          {
            v4 = v6;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *CDVHTTPStatusCodeAsStatusString(uint64_t a1)
{
  if (a1 <= 399)
  {
    if (a1 <= 205)
    {
      if (a1 > 201)
      {
        if (a1 > 203)
        {
          if (a1 == 204)
          {
            return @"No Content";
          }

          else
          {
            return @"Reset Content";
          }
        }

        else if (a1 == 202)
        {
          return @"Accepted";
        }

        else
        {
          return @"Non Authoritative Information";
        }
      }

      if (a1 > 199)
      {
        if (a1 == 200)
        {
          return @"OK";
        }

        else
        {
          return @"Created";
        }
      }

      if (a1 == 100)
      {
        return @"Continue";
      }

      if (a1 == 101)
      {
        return @"Switching Protocols";
      }
    }

    else if (a1 <= 301)
    {
      if (a1 > 299)
      {
        if (a1 == 300)
        {
          return @"Multiple Choices";
        }

        else
        {
          return @"Moved Permanently";
        }
      }

      if (a1 == 206)
      {
        return @"Partial Content";
      }

      if (a1 == 207)
      {
        return @"Multi-Status";
      }
    }

    else
    {
      if (a1 <= 303)
      {
        if (a1 == 302)
        {
          return @"Found";
        }

        else
        {
          return @"See Other";
        }
      }

      switch(a1)
      {
        case 304:
          return @"Not Modified";
        case 305:
          return @"Use Proxy";
        case 307:
          return @"Temporary Redirect";
      }
    }

    return 0;
  }

  if (a1 > 499)
  {
    if (a1 <= 502)
    {
      if (a1 == 500)
      {
        return @"Internal Server Error";
      }

      if (a1 == 501)
      {
        return @"Not Implemented";
      }

      return @"Bad Gateway";
    }

    if (a1 <= 504)
    {
      if (a1 == 503)
      {
        return @"Service Unavailable";
      }

      else
      {
        return @"Gateway Timeout";
      }
    }

    if (a1 == 505)
    {
      return @"HTTP Version Not Supported";
    }

    if (a1 == 507)
    {
      return @"Insufficient Storage";
    }

    return 0;
  }

  switch(a1)
  {
    case 400:
      result = @"Bad Request";
      break;
    case 401:
      result = @"Unauthorized";
      break;
    case 402:
      result = @"Payment Required";
      break;
    case 403:
      result = @"Forbidden";
      break;
    case 404:
      result = @"Not Found";
      break;
    case 405:
      result = @"Method Not Allowed";
      break;
    case 406:
      result = @"Not Acceptable";
      break;
    case 407:
      result = @"Proxy Authentication Required";
      break;
    case 408:
      result = @"Request Timeout";
      break;
    case 409:
      result = @"Conflict";
      break;
    case 410:
      result = @"Gone";
      break;
    case 411:
      result = @"Length Required";
      break;
    case 412:
      result = @"Precondition Failed";
      break;
    case 413:
      result = @"Request Entity Too Large";
      break;
    case 414:
      result = @"Request URI Too Long";
      break;
    case 415:
      result = @"Unsupported Media Type";
      break;
    case 416:
      result = @"Requested Range Not Satisfiable";
      break;
    case 417:
      result = @"Expectation Failed";
      break;
    case 418:
      result = @"I'm a teapot";
      break;
    case 422:
      result = @"Unprocessable Entity";
      break;
    case 423:
      result = @"Locked";
      break;
    case 424:
      result = @"Failed Dependency";
      break;
    default:
      return 0;
  }

  return result;
}

void CDVInheritedInitializerUsageDisallowed()
{
  v0 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v0);
}

void CDVAbstractMethod()
{
  v0 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"This is an abstract method that should be implemented by subclasses." userInfo:0];
  objc_exception_throw(v0);
}

void CDVUnimplemented()
{
  v0 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"This section is unimplemented." userInfo:0];
  objc_exception_throw(v0);
}

id CDVExtractValuesFromRedirectString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v1 rangeOfString:@" "];
  if (v4)
  {
    v5 = v3;
    v6 = [v1 substringToIndex:v3];
    v7 = [v1 length];
    if (v5 + 1 < v7)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v1 substringFromIndex:v8];
    [v2 setObject:v9 forKey:@"kCDVRedirectReasonKey"];
  }

  else
  {
    v6 = [v1 substringToIndex:{objc_msgSend(v1, "length")}];
  }

  v10 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [v2 setObject:v10 forKey:@"kCDVRedirectURLKey"];

  return v2;
}

id _systemVersionDict()
{
  if (_systemVersionDict_once != -1)
  {
    _systemVersionDict_cold_1();
  }

  v1 = _systemVersionDict_versionDictionary;

  return v1;
}

void ___systemVersionDict_block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  v1 = _systemVersionDict_versionDictionary;
  _systemVersionDict_versionDictionary = v0;

  if (!_systemVersionDict_versionDictionary)
  {
    v2 = _CFCopySystemVersionDictionary();
    v3 = _systemVersionDict_versionDictionary;
    _systemVersionDict_versionDictionary = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

id CDVDefaultUserAgent()
{
  v0 = CDVDefaultUserAgent__sUserAgentString;
  if (!CDVDefaultUserAgent__sUserAgentString)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v1 infoDictionary];
    v3 = [v2 objectForKey:@"CFBundleVersion"];

    if (![(__CFString *)v3 length])
    {

      v3 = @"1.0";
    }

    v4 = _systemVersionDict();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CoreDAV/%@ (%@)", v3, v5];
    v7 = CDVDefaultUserAgent__sUserAgentString;
    CDVDefaultUserAgent__sUserAgentString = v6;

    v0 = CDVDefaultUserAgent__sUserAgentString;
  }

  return v0;
}

id CDVAppleClientInfoString()
{
  if (CDVAppleClientInfoString_gotVersionString != -1)
  {
    CDVAppleClientInfoString_cold_1();
  }

  v1 = CDVAppleClientInfoString__sVersionString;

  return v1;
}

void __CDVAppleClientInfoString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"UNKNOWN";
  }

  v23 = v0;
  [v0 appendFormat:@"<%@>", v2];
  CFRelease(v2);
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v25 = v3;
  v26 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"UNKNOWN";
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = @"UNKNOWN";
  }

  [v0 appendFormat:@" <%@;%@;%@>", v6, v7, v8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v24 infoDictionary];
  v10 = *MEMORY[0x277CBED38];
  v11 = [v9 objectForKey:*MEMORY[0x277CBED38]];
  v12 = *MEMORY[0x277CBEC50];
  v13 = [v9 objectForKey:*MEMORY[0x277CBEC50]];
  v22 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v22 infoDictionary];
  v15 = [v14 objectForKey:v10];
  v16 = [v14 objectForKey:v12];
  v17 = @"UNKNOWN";
  if ([(__CFString *)v11 length])
  {
    v18 = v11;
  }

  else
  {
    v18 = @"UNKNOWN";
  }

  if ([(__CFString *)v13 length])
  {
    v19 = v13;
  }

  else
  {
    v19 = @"1.0";
  }

  if ([(__CFString *)v15 length])
  {
    v17 = v15;
  }

  if ([(__CFString *)v16 length])
  {
    v20 = v16;
  }

  else
  {
    v20 = @"1.0";
  }

  [v23 appendFormat:@" <%@/%@ (%@/%@)>", v18, v19, v17, v20];
  v21 = CDVAppleClientInfoString__sVersionString;
  CDVAppleClientInfoString__sVersionString = v23;
}

id CDVRunLoopModesToPerformDelayedSelectorsIn()
{
  v0 = [MEMORY[0x277CBEB88] currentRunLoop];
  v1 = CDVRunLoopModesToPerformDelayedSelectorsInFromRunLoop(v0);

  return v1;
}

id CDVRunLoopModesToPerformDelayedSelectorsInFromRunLoop(void *a1)
{
  v1 = [a1 currentMode];
  v2 = v1;
  v3 = *MEMORY[0x277CBE640];
  if (v1 && ![v1 isEqualToString:*MEMORY[0x277CBE640]])
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v2, 0}];
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
  }

  v5 = v4;

  return v5;
}

void initializeLibXMLParser()
{
  if (initializeLibXMLParser_didInitializeXMLParser != -1)
  {
    initializeLibXMLParser_cold_1();
  }
}

id CDVCleanedStringsFromResponseHeaders(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v17 = a2;
  v4 = [v3 CDVObjectForKeyCaseInsensitive:?];
  v5 = [v4 lowercaseString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 componentsSeparatedByString:{@", "}];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v14 = [v12 stringByTrimmingCharactersInSet:v13];

        if ([v14 length])
        {
          if (v9)
          {
            [v9 addObject:v14];
          }

          else
          {
            v9 = [MEMORY[0x277CBEB58] setWithObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

id CDVRelativeOrderHeaderString()
{
  if (CDVRelativeOrderHeaderString_onceToken != -1)
  {
    CDVRelativeOrderHeaderString_cold_1();
  }

  v1 = CDVRelativeOrderHeaderString__sRelativeOrderString;

  return v1;
}

void __CDVRelativeOrderHeaderString_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
  if (v0)
  {
    v4 = v0;
    v1 = [v0 objectForKey:@"Use1DOrdering"];
    v2 = [v1 BOOLValue];

    v0 = v4;
    if (v2)
    {
      v3 = CDVRelativeOrderHeaderString__sRelativeOrderString;
      CDVRelativeOrderHeaderString__sRelativeOrderString = @"After: ";

      v0 = v4;
    }
  }
}

void ___logFormater_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  _logFormater___logFormatter = CFDateFormatterCreate(v0, v1, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);

  v2 = _logFormater___logFormatter;
  if (_logFormater___logFormatter)
  {

    CFDateFormatterSetFormat(v2, @"yyyy-MM-dd HH:mm:ss.SSS");
  }

  else
  {
    v3 = +[CoreDAVLogging sharedLogging];
    v4 = [v3 logHandleForAccountInfoProvider:0];
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_2452FB000, v5, OS_LOG_TYPE_ERROR, "Could not create a date formatter", v6, 2u);
    }
  }
}

void sub_24532A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return objc_opt_class();
}

uint64_t sub_24532C41C()
  v1 = {;

  return v1;
}

uint64_t sub_24532D0CC()
  v1 = {;

  return v1;
}

uint64_t sub_2453310A0()
  v1 = {;

  return v1;
}

uint64_t sub_2453328CC()
  v1 = {;

  return v1;
}

uint64_t sub_2453474C4()
  v1 = {;

  return v1;
}

void sub_2453496F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245349B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245349EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24534A568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24534A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_24534B58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24534BE5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_24534C2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24534C558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CalDAVServerSimulatorLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CalDAVServerSimulatorLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CoreDAVTask.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __getCalDAVServerSimulatorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCalDAVServerSimulatorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CoreDAVTask.m" lineNumber:33 description:{@"Unable to find class %s", "CalDAVServerSimulator"}];

  __break(1u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}