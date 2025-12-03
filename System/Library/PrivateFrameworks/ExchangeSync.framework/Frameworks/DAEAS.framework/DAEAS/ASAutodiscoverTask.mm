@interface ASAutodiscoverTask
- (ASAutodiscoverTask)initWithURL:(id)l emailAddress:(id)address authUsername:(id)username;
- (BOOL)_shouldSendAuthForRequest:(id)request;
- (id)_HTTPMethodForRequest:(id)request;
- (id)localizedErrorStringForCertificateErrorCode:(int)code host:(id)host;
- (id)requestBody;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_addAuthToRequest:(id)request;
- (void)_handleActionNode:(_xmlNode *)node;
- (void)_handleErrorNode:(_xmlNode *)node;
- (void)_handleServerNode:(_xmlNode *)node;
- (void)_handleUserNode:(_xmlNode *)node;
- (void)_setAccountInfoFromAutoDiscoveryXML:(id)l;
- (void)didProcessContext:(id)context;
- (void)finishWithError:(id)error;
@end

@implementation ASAutodiscoverTask

- (ASAutodiscoverTask)initWithURL:(id)l emailAddress:(id)address authUsername:(id)username
{
  lCopy = l;
  addressCopy = address;
  usernameCopy = username;
  v16.receiver = self;
  v16.super_class = ASAutodiscoverTask;
  v12 = [(ASTask *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_emailAddress, address);
    objc_storeStrong(&v13->_serverURL, l);
    objc_storeStrong(&v13->_authUsername, username);
    if ([lCopy hasPrefix:@"https"])
    {
      v14 = @"https";
    }

    else
    {
      v14 = @"http";
    }

    objc_storeStrong(&v13->_originalURLScheme, v14);
  }

  return v13;
}

- (id)_HTTPMethodForRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];
  v5 = [scheme hasPrefix:@"https"];

  if (v5)
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

- (BOOL)_shouldSendAuthForRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];
  v5 = [scheme hasPrefix:@"https"];

  return v5;
}

- (void)_addAuthToRequest:(id)request
{
  requestCopy = request;
  taskManager = [(ASTask *)self taskManager];
  oAuth2Token = [taskManager OAuth2Token];

  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  v9 = os_log_type_enabled(v7, v8);
  if (oAuth2Token)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v7, v8, "Using OAuth Wohooo...", buf, 2u);
    }

    v10 = MEMORY[0x277CCACA8];
    taskManager2 = [(ASTask *)self taskManager];
    oAuth2Token2 = [taskManager2 OAuth2Token];
    [v10 stringWithFormat:@"Bearer %@", oAuth2Token2];
    goto LABEL_14;
  }

  if (v9)
  {
    *v18 = 0;
    _os_log_impl(&dword_24A0AC000, v7, v8, "Using basic auth", v18, 2u);
  }

  taskManager3 = [(ASTask *)self taskManager];
  taskManager2 = [taskManager3 password];

  authUsername = self->_authUsername;
  if (authUsername)
  {
    v15 = taskManager2 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    oAuth2Token2 = Base64EncodedAuth(authUsername, taskManager2);
    [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", oAuth2Token2];
    v16 = LABEL_14:;
    [requestCopy setValue:v16 forHTTPHeaderField:@"Authorization"];

    goto LABEL_15;
  }

  oAuth2Token2 = DALoggingwithCategory();
  if (os_log_type_enabled(oAuth2Token2, v8))
  {
    *v17 = 0;
    _os_log_impl(&dword_24A0AC000, oAuth2Token2, v8, "user or pass is nil. Not applying auth", v17, 2u);
  }

LABEL_15:
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  currentRequest = [taskCopy currentRequest];
  v16 = [currentRequest URL];
  scheme = [v16 scheme];
  v18 = [scheme hasPrefix:@"https"];

  v19 = [requestCopy URL];
  scheme2 = [v19 scheme];
  v21 = [scheme2 hasPrefix:@"https"];

  if (((v18 ^ 1) & 1) == 0 && (v21 & 1) == 0)
  {
    ADClientAddValueForScalarKey();
    selfCopy2 = self;
LABEL_4:
    selfCopy2->_wasRedirectedThroughHTTP = 1;
    goto LABEL_10;
  }

  selfCopy2 = self;
  if (((v18 ^ 1 | v21 ^ 1) & 1) == 0 || ((v18 | v21 ^ 1) & 1) == 0)
  {
    ADClientAddValueForScalarKey();
    goto LABEL_10;
  }

  if (((v18 | v21) & 1) == 0)
  {
    ADClientAddValueForScalarKey();
    goto LABEL_4;
  }

LABEL_10:
  v25.receiver = selfCopy2;
  v25.super_class = ASAutodiscoverTask;
  [(ASTask *)&v25 URLSession:sessionCopy task:taskCopy willPerformHTTPRedirection:redirectionCopy newRequest:requestCopy completionHandler:handlerCopy, self];
}

- (id)requestBody
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<?xml version=1.0 encoding=utf-8?>\n<Autodiscover xmlns=%@>\n    <Request>\n        <EMailAddress>%@</EMailAddress>\n        <AcceptableResponseSchema>%@</AcceptableResponseSchema>\n   </Request>\n</Autodiscover>\n", @"http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006", self->_emailAddress, @"http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (id)localizedErrorStringForCertificateErrorCode:(int)code host:(id)host
{
  if ((code & 0xFFFFFFFC) == 0xFFFFFB4C)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = MEMORY[0x277CCA8D8];
    hostCopy = host;
    v7 = [v5 bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SERVER_CERTIFICATE_UNVERIFIED_AUTODISCOVERY" value:&stru_285D39BD0 table:@"DataAccess"];
    hostCopy = [v4 stringWithFormat:v8, hostCopy];
  }

  else
  {
    hostCopy = 0;
  }

  return hostCopy;
}

- (void)_handleServerNode:(_xmlNode *)node
{
  nodeCopy = node;
  v33 = *MEMORY[0x277D85DE8];
  if (node)
  {
    v5 = _getNodeContentAsNSStringForFirstMatchingElement("Type", node->children);
    v6 = _getNodeContentAsNSStringForFirstMatchingElement("Url", nodeCopy[3]);
    v7 = _getNodeContentAsNSStringForFirstMatchingElement("Name", nodeCopy[3]);
    nodeCopy = _getNodeContentAsNSStringForFirstMatchingElement("ServerData", nodeCopy[3]);
    v8 = DALoggingwithCategory();
    v9 = MEMORY[0x277D03988];
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v8, v10))
    {
      v25 = 138413058;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = nodeCopy;
      _os_log_impl(&dword_24A0AC000, v8, v10, "Found %@ server setting with attributes:\n\tServer URL: %@\n\tServer Name: %@\n\tServer Data: %@", &v25, 0x2Au);
    }

    if ([v5 isEqualToString:@"MobileSync"])
    {
      if (v6)
      {
        v11 = objc_opt_new();
        accountInfo = self->_accountInfo;
        self->_accountInfo = v11;

        v13 = [MEMORY[0x277CBEBC0] URLWithString:v6];
        v14 = v13;
        if (v13)
        {
          scheme = [v13 scheme];

          if (scheme)
          {
            v16 = MEMORY[0x277CCABB0];
            scheme2 = [v14 scheme];
            v18 = [v16 numberWithBool:{objc_msgSend(scheme2, "hasPrefix:", @"https"}];
            [(NSMutableDictionary *)self->_accountInfo setObject:v18 forKeyedSubscript:kAutodiscoverShouldUseSSL];
          }

          host = [v14 host];

          if (host)
          {
            host2 = [v14 host];
            [(NSMutableDictionary *)self->_accountInfo setObject:host2 forKeyedSubscript:kAutodiscoverHost];
          }

          port = [v14 port];

          if (port)
          {
            port2 = [v14 port];
            [(NSMutableDictionary *)self->_accountInfo setObject:port2 forKeyedSubscript:kAutodiscoverPort];
          }

          [(NSMutableDictionary *)self->_accountInfo setObject:self->_authUsername forKeyedSubscript:kAutodiscoverUsername];
        }

LABEL_18:
      }
    }

    else if (([v5 isEqualToString:@"CertEnroll"] & 1) == 0)
    {
      v14 = DALoggingwithCategory();
      v23 = *(v9 + 4);
      if (os_log_type_enabled(v14, v23))
      {
        v25 = 138412290;
        v26 = v5;
        _os_log_impl(&dword_24A0AC000, v14, v23, "Unknown autodiscovery server type: %@", &v25, 0xCu);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorNode:(_xmlNode *)node
{
  v28 = *MEMORY[0x277D85DE8];
  FirstElementMatching = _getFirstElementMatching("Error", node->children);
  if (FirstElementMatching)
  {
    v5 = FirstElementMatching;
    v6 = _getNodeContentAsNSStringForFirstMatchingElement("Status", *(FirstElementMatching + 24));
    v7 = _getNodeContentAsNSStringForFirstMatchingElement("Message", *(v5 + 24));
    v8 = _getNodeContentAsNSStringForFirstMatchingElement("DebugData", *(v5 + 24));
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_24A0AC000, v9, v10, "Autodiscovery encountered an error. Status code %@. Message: %@\nDebug Data: %@", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277D038E0];
    integerValue = [v6 integerValue];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"DebugData";
    v14 = &stru_285D39BD0;
    if (v8)
    {
      v14 = v8;
    }

    v21[0] = v7;
    v21[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v19 count:2];
    v16 = [v11 initWithDomain:v12 code:integerValue userInfo:{v15, v19, v20}];
    discoveryError = self->_discoveryError;
    self->_discoveryError = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionNode:(_xmlNode *)node
{
  v17 = *MEMORY[0x277D85DE8];
  if (node)
  {
    [(ASAutodiscoverTask *)self _handleErrorNode:?];
    FirstElementMatching = _getFirstElementMatching("Redirect", node->children);
    if (FirstElementMatching)
    {
      v6 = _getNodeContentAsNSString(FirstElementMatching);
      redirectEmail = self->_redirectEmail;
      self->_redirectEmail = v6;

      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = self->_redirectEmail;
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_24A0AC000, v8, v9, "Redirect receieved: %@", &v15, 0xCu);
      }
    }

    else
    {
      v12 = _getFirstElementMatching("Settings", node->children);
      if (v12)
      {
        for (i = *(v12 + 24); i; i = *(i + 48))
        {
          v14 = *(i + 16);
          if (v14 && !xmlStrcmp(v14, "Server"))
          {
            [(ASAutodiscoverTask *)self _handleServerNode:i];
          }
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserNode:(_xmlNode *)node
{
  v13 = *MEMORY[0x277D85DE8];
  if (node)
  {
    v4 = _getNodeContentAsNSStringForFirstMatchingElement("DisplayName", node->children);
    v5 = _getNodeContentAsNSStringForFirstMatchingElement("EMailAddress", node->children);
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_24A0AC000, v6, v7, "Found user node with display name %@ and email %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountInfoFromAutoDiscoveryXML:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v7))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(lCopy, "bytes")}];
    v34 = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = lCopy;
    _os_log_impl(&dword_24A0AC000, v5, v7, "Autodiscovery XML: %@ %@", &v34, 0x16u);
  }

  Memory = xmlReadMemory([lCopy bytes], objc_msgSend(lCopy, "length"), 0, 0, 0);
  if (Memory)
  {
    v10 = Memory;
    RootElement = xmlDocGetRootElement(Memory);
    if (!RootElement || (v12 = RootElement, RootElement->type != XML_ELEMENT_NODE) || xmlStrcmp(RootElement->name, "Autodiscover"))
    {
      v13 = DALoggingwithCategory();
      v14 = *(v6 + 3);
      if (!os_log_type_enabled(v13, v14))
      {
LABEL_10:

        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v17 = [v16 initWithDomain:*MEMORY[0x277D038E0] code:1 userInfo:0];
        discoveryError = self->_discoveryError;
        self->_discoveryError = v17;
        goto LABEL_11;
      }

      LOWORD(v34) = 0;
      v15 = "Root node is expected to be an Autodiscover element";
LABEL_9:
      _os_log_impl(&dword_24A0AC000, v13, v14, v15, &v34, 2u);
      goto LABEL_10;
    }

    nsDef = v12->nsDef;
    if (!nsDef || (href = nsDef->href) == 0)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v6 + 3);
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_10;
      }

      LOWORD(v34) = 0;
      v15 = "Response schema is not specified. Ignoring response.";
      goto LABEL_9;
    }

    discoveryError = xmlCharToNSString(href);
    if (([discoveryError isEqualToString:@"http://schemas.microsoft.com/exchange/autodiscover/responseschema/2006"] & 1) == 0)
    {
      v29 = DALoggingwithCategory();
      v30 = *(v6 + 3);
      if (os_log_type_enabled(v29, v30))
      {
        v34 = 138412290;
        v35 = discoveryError;
        _os_log_impl(&dword_24A0AC000, v29, v30, "Response schema is not the appropriate schema: %@", &v34, 0xCu);
      }

      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v32 = [v31 initWithDomain:*MEMORY[0x277D038E0] code:1 userInfo:0];
      v33 = self->_discoveryError;
      self->_discoveryError = v32;

      goto LABEL_11;
    }

    children = v12->children;
    if (!children)
    {
LABEL_11:

      xmlFreeDoc(v10);
      goto LABEL_15;
    }

    while (1)
    {
      name = children->name;
      if (!name || xmlStrcmp(name, "Response"))
      {
        goto LABEL_24;
      }

      if (children->type == XML_ELEMENT_NODE)
      {
        break;
      }

LABEL_25:
      if (!children)
      {
        goto LABEL_11;
      }
    }

    [(ASAutodiscoverTask *)self _handleActionNode:_getFirstElementMatching("Action", children->children)];
    [(ASAutodiscoverTask *)self _handleUserNode:_getFirstElementMatching("User", children->children)];
    [(ASAutodiscoverTask *)self _handleErrorNode:children];
LABEL_24:
    children = children->next;
    goto LABEL_25;
  }

  v19 = DALoggingwithCategory();
  v20 = *(v6 + 3);
  if (os_log_type_enabled(v19, v20))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_24A0AC000, v19, v20, "Could not parse response XML", &v34, 2u);
  }

  v21 = objc_alloc(MEMORY[0x277CCA9B8]);
  v22 = [v21 initWithDomain:*MEMORY[0x277D038E0] code:1 userInfo:0];
  v23 = self->_discoveryError;
  self->_discoveryError = v22;

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)didProcessContext:(id)context
{
  contextCopy = context;
  bufferWithAllData = [contextCopy bufferWithAllData];
  [(ASAutodiscoverTask *)self _setAccountInfoFromAutoDiscoveryXML:bufferWithAllData];

  v6.receiver = self;
  v6.super_class = ASAutodiscoverTask;
  [(ASTask *)&v6 didProcessContext:contextCopy];
}

- (void)finishWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = [(ASTask *)self taskStatusForError:errorCopy];
  }

  else if (self->_accountInfo)
  {
    v5 = 2;
  }

  else
  {
    v5 = 10;
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412546;
    selfCopy2 = errorCopy;
    v21 = 2048;
    v22 = v5;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Autodiscovery task finishing with error: %@ and DAStatusCode %ld", buf, 0x16u);
  }

  discoveryError = self->_discoveryError;
  v9 = errorCopy;
  if (discoveryError)
  {
    v9 = discoveryError;

    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v7))
    {
      v11 = self->_discoveryError;
      *buf = 138412546;
      selfCopy2 = v11;
      v21 = 2048;
      v22 = 59;
      _os_log_impl(&dword_24A0AC000, v10, v7, "Autodiscovery task has a discovery error: %@. Remapping responseStatus to DAAutodiscoveryTryAgain (%ld)", buf, 0x16u);
    }

    v5 = 59;
  }

  if (self->_redirectEmail)
  {
    v5 = 59;
  }

  v12 = [(ASTask *)self attemptRetryWithStatus:v5 error:v9];
  v13 = DALoggingwithCategory();
  v14 = os_log_type_enabled(v13, v7);
  if (v12)
  {
    if (v14)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_24A0AC000, v13, v7, "Autodiscovery Task (ASAutoDiscoverTask: %p) Attempting to Retry.", buf, 0xCu);
    }

    [(ASTask *)self setCurrentlyParsingItem:0];
  }

  else
  {
    if (v14)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_24A0AC000, v13, v7, "Autodiscovery Task (ASAutoDiscoverTask: %p) Finishing after delegate Callout.", buf, 0xCu);
    }

    [(NSString *)self->_originalURLScheme isEqualToString:@"https"];
    if (v5 != 2 || (ADClientAddValueForScalarKey(), self->_wasRedirectedThroughHTTP))
    {
      ADClientAddValueForScalarKey();
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__ASAutodiscoverTask_finishWithError___block_invoke;
    v16[3] = &unk_278FC7B68;
    v16[4] = self;
    v18 = v5;
    v17 = v9;
    [(ASTask *)self finishWithError:v17 afterDelegateCallout:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __38__ASAutodiscoverTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained autodiscoverTask:a1[4] completedWithStatus:a1[6] accountInfo:*(a1[4] + 256) shouldRetryWithEmail:*(a1[4] + 240) error:a1[5]];
}

@end