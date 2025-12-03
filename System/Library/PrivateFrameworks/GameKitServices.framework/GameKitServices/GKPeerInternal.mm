@interface GKPeerInternal
+ (void)freeLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int)count;
- (BOOL)containsLookupService:(_DNSServiceRef_t *)service;
- (BOOL)tryDetruncateDisplayName:(id)name;
- (GKPeerInternal)initWithPID:(unsigned int)d displayName:(id)name serviceName:(id)serviceName;
- (int)usableAddrs;
- (void)addLookup:(_DNSServiceRef_t *)lookup;
- (void)cleanupForGKTable:(id)table;
- (void)clearResolving;
- (void)copyLookupList:(_DNSServiceRef_t *)list count:(int *)count;
- (void)dealloc;
- (void)removeAndReturnLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int *)count;
- (void)setAddr:(const sockaddr_in *)addr interface:(unsigned int)interface forLookupService:(_DNSServiceRef_t *)service;
- (void)setServiceCount:(int)count;
- (void)stopResolving;
- (void)stopTXTRecordMonitoring;
@end

@implementation GKPeerInternal

- (GKPeerInternal)initWithPID:(unsigned int)d displayName:(id)name serviceName:(id)serviceName
{
  v10.receiver = self;
  v10.super_class = GKPeerInternal;
  v8 = [(GKPeerInternal *)&v10 init];
  if (v8)
  {
    v8->_serviceName = serviceName;
    v8->_displayName = name;
    v8->_pid = d;
    v8->_isBusy = 0;
    v8->_resolveService = 0;
    v8->_serviceCount = 1;
  }

  return v8;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      *buf = 136316162;
      v9 = v3;
      v10 = 2080;
      v11 = "[GKPeerInternal dealloc]";
      v12 = 1024;
      v13 = 4530;
      v14 = 2048;
      selfCopy = self;
      v16 = 1024;
      v17 = pid;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d * GKPeer[%p] %d dealloc", buf, 0x2Cu);
    }
  }

  [(GKPeerInternal *)self stopResolving];

  [GKPeerInternal freeLookupList:self->_lookupServiceList andAddrList:self->_addrList andInterfaceList:self->_interfaceList count:self->_lookupServiceCount];
  v7.receiver = self;
  v7.super_class = GKPeerInternal;
  [(GKPeerInternal *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setServiceCount:(int)count
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      serviceCount = self->_serviceCount;
      v10 = 136316674;
      v11 = v5;
      v12 = 2080;
      v13 = "[GKPeerInternal setServiceCount:]";
      v14 = 1024;
      v15 = 4540;
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = pid;
      v20 = 1024;
      v21 = serviceCount;
      v22 = 1024;
      countCopy = count;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d service count old=%d new=%d", &v10, 0x38u);
    }
  }

  self->_serviceCount = count;
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryDetruncateDisplayName:(id)name
{
  v5 = [name length];
  if (v5 <= [(NSString *)self->_displayName length])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = -[NSString isEqualToString:](self->_displayName, "isEqualToString:", [name substringToIndex:{-[NSString length](self->_displayName, "length")}]);
    if (v6)
    {

      self->_displayName = name;
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (void)addLookup:(_DNSServiceRef_t *)lookup
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    lookupServiceCount = self->_lookupServiceCount;
    lookupServiceSize = self->_lookupServiceSize;
    p_lookupServiceCount = &self->_lookupServiceCount;
    if (lookupServiceCount != lookupServiceSize)
    {
LABEL_11:
      *p_lookupServiceCount = lookupServiceCount + 1;
      lookupServiceList[lookupServiceCount] = lookup;
      return;
    }

    v9 = malloc_type_realloc(lookupServiceList, 8 * lookupServiceSize + 128, 0x2004093837F09uLL);
    if (v9)
    {
      v10 = self->_lookupServiceSize + 16;
      self->_lookupServiceSize = v10;
      self->_lookupServiceList = v9;
      v11 = malloc_type_calloc(v10, 8uLL, 0x80040B8603338uLL);
      if (v11)
      {
        v12 = v11;
        addrList = self->_addrList;
        memcpy(v11, addrList, 8 * self->_lookupServiceSize - 128);
        self->_addrList = v12;
        free(addrList);
        v14 = malloc_type_calloc(self->_lookupServiceSize, 4uLL, 0x100004052888210uLL);
        if (v14)
        {
          v15 = v14;
          interfaceList = self->_interfaceList;
          memset(interfaceList, 255, 4 * self->_lookupServiceSize);
          memcpy(v15, interfaceList, 4 * self->_lookupServiceSize - 64);
          self->_interfaceList = v15;
          free(interfaceList);
          lookupServiceList = self->_lookupServiceList;
          lookupServiceCount = self->_lookupServiceCount;
          goto LABEL_11;
        }
      }
    }

    [GKPeerInternal freeLookupList:self->_lookupServiceList andAddrList:self->_addrList andInterfaceList:self->_interfaceList count:self->_lookupServiceCount];
    goto LABEL_14;
  }

  v17 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  self->_lookupServiceList = v17;
  if (!v17)
  {
    return;
  }

  v18 = malloc_type_calloc(0x10uLL, 8uLL, 0x80040B8603338uLL);
  self->_addrList = v18;
  if (!v18)
  {
    free(self->_lookupServiceList);
LABEL_14:
    self->_lookupServiceList = 0;
    return;
  }

  v19 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
  self->_interfaceList = v19;
  if (v19)
  {
    lookupServiceCount = 0;
    *&v20 = -1;
    *(&v20 + 1) = -1;
    *(v19 + 2) = v20;
    *(v19 + 3) = v20;
    *v19 = v20;
    *(v19 + 1) = v20;
    self->_lookupServiceSize = 16;
    lookupServiceList = self->_lookupServiceList;
    p_lookupServiceCount = &self->_lookupServiceCount;
    goto LABEL_11;
  }

  free(self->_lookupServiceList);
  self->_lookupServiceList = 0;
  free(self->_addrList);
  self->_addrList = 0;
}

+ (void)freeLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int)count
{
  if (list && addrList && count >= 1)
  {
    countCopy = count;
    addrListCopy = addrList;
    do
    {
      v11 = *addrListCopy++;

      --countCopy;
    }

    while (countCopy);
  }

  free(list);
  free(addrList);

  free(interfaceList);
}

- (void)removeAndReturnLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int *)count
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    *count = self->_lookupServiceCount;
    *list = lookupServiceList;
    *addrList = self->_addrList;
    *interfaceList = self->_interfaceList;
    self->_addrList = 0;
    self->_interfaceList = 0;
    self->_lookupServiceList = 0;
    *&self->_lookupServiceCount = 0;
  }

  else
  {
    *count = 0;
    *list = 0;
    *addrList = 0;
    *interfaceList = 0;
  }
}

- (BOOL)containsLookupService:(_DNSServiceRef_t *)service
{
  v29 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      v8 = "yes";
      lookupServiceCount = self->_lookupServiceCount;
      if (!self->_lookupServiceList)
      {
        v8 = "no";
      }

      v17 = 136316418;
      v18 = v5;
      v19 = 2080;
      v20 = "[GKPeerInternal containsLookupService:]";
      v21 = 1024;
      v22 = 4657;
      v23 = 1024;
      v24 = pid;
      v25 = 2080;
      v26 = v8;
      v27 = 1024;
      v28 = lookupServiceCount;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer %d checking lookup service (%s) containing %d", &v17, 0x32u);
    }
  }

  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList && (v11 = self->_lookupServiceCount, v11 >= 1))
  {
    v12 = v11 - 1;
    do
    {
      v13 = *lookupServiceList++;
      result = v13 == service;
    }

    while (v13 != service && v12-- != 0);
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAddr:(const sockaddr_in *)addr interface:(unsigned int)interface forLookupService:(_DNSServiceRef_t *)service
{
  v67 = *MEMORY[0x277D85DE8];
  if (!self->_lookupServiceList)
  {
    goto LABEL_36;
  }

  lookupServiceCount = self->_lookupServiceCount;
  if (lookupServiceCount < 1)
  {
    goto LABEL_36;
  }

  v7 = 0;
  while (self->_lookupServiceList[v7] != service)
  {
LABEL_26:
    if (++v7 >= lookupServiceCount)
    {
      goto LABEL_36;
    }
  }

  v66 = *addr;
  v66.sin_port = bswap32(LOWORD(self->_servicePort)) >> 16;
  if (lookupServiceCount < 1)
  {
LABEL_23:
    v20 = self->_addrList[v7];
    if (v20)
    {
    }

    self->_addrList[v7] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v66 length:16];
    self->_interfaceList[v7] = interface;
    lookupServiceCount = self->_lookupServiceCount;
    goto LABEL_26;
  }

  v8 = 0;
  while (1)
  {
    v9 = self->_addrList[v8];
    if (!v9)
    {
      v11 = 0;
      v14 = 0;
      v12 = bswap32(v66.sin_addr.s_addr);
LABEL_12:
      v13 = 1;
      goto LABEL_13;
    }

    bytes = [v9 bytes];
    v11 = bytes;
    v12 = bswap32(v66.sin_addr.s_addr);
    if (!bytes)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v13 = 0;
    v14 = bswap32(*(bytes + 4));
LABEL_13:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v13)
        {
          v17 = 0;
        }

        else
        {
          v17 = bswap32(*(v11 + 2)) >> 16;
        }

        pid = self->_pid;
        v19 = self->_lookupServiceList[v7];
        *buf = 136318978;
        v35 = v15;
        v36 = 2080;
        v37 = "[GKPeerInternal setAddr:interface:forLookupService:]";
        v38 = 1024;
        v39 = 4684;
        v40 = 1024;
        v41 = pid;
        v42 = 1024;
        v43 = HIBYTE(v12);
        v44 = 1024;
        v45 = BYTE2(v12);
        v46 = 1024;
        v47 = BYTE1(v12);
        v48 = 1024;
        v49 = v12;
        v50 = 1024;
        v51 = bswap32(v66.sin_port) >> 16;
        v52 = 1024;
        serviceCopy = service;
        v54 = 1024;
        v55 = HIBYTE(v14);
        v56 = 1024;
        v57 = BYTE2(v14);
        v58 = 1024;
        v59 = BYTE1(v14);
        v60 = 1024;
        v61 = v14;
        v62 = 1024;
        v63 = v17;
        v64 = 1024;
        v65 = v19;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer %d setAddr %u.%u.%u.%u:%u for service %08X compared to %u.%u.%u.%u:%u of service %08X", buf, 0x6Au);
      }
    }

    if ((v13 & 1) == 0 && *(v11 + 2) == v66.sin_port && *(v11 + 4) == v66.sin_addr.s_addr)
    {
      break;
    }

    if (++v8 >= self->_lookupServiceCount)
    {
      goto LABEL_23;
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v7 == v8)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v35 = v22;
        v36 = 2080;
        v37 = "[GKPeerInternal setAddr:interface:forLookupService:]";
        v38 = 1024;
        v39 = 4690;
        v24 = " [%s] %s:%d  - already set to same IP";
        v25 = v23;
        v26 = 28;
        goto LABEL_35;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_lookupServiceList[v8];
      *buf = 136315906;
      v35 = v27;
      v36 = 2080;
      v37 = "[GKPeerInternal setAddr:interface:forLookupService:]";
      v38 = 1024;
      v39 = 4692;
      v40 = 1024;
      v41 = v29;
      v24 = " [%s] %s:%d  - was set in a previous GetAddrInfo service: %08X (double resolve?)";
      v25 = v28;
      v26 = 34;
LABEL_35:
      _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

LABEL_36:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyLookupList:(_DNSServiceRef_t *)list count:(int *)count
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    v8 = malloc_type_malloc(8 * self->_lookupServiceCount, 0x2004093837F09uLL);
    *list = v8;
    memcpy(v8, self->_lookupServiceList, 8 * self->_lookupServiceCount);
    LODWORD(lookupServiceList) = self->_lookupServiceCount;
  }

  else
  {
    *list = 0;
  }

  *count = lookupServiceList;
}

- (int)usableAddrs
{
  if (!self->_lookupServiceList)
  {
    return 0;
  }

  lookupServiceCount = self->_lookupServiceCount;
  if (lookupServiceCount < 1)
  {
    return 0;
  }

  result = 0;
  addrList = self->_addrList;
  do
  {
    if (*addrList++)
    {
      ++result;
    }

    --lookupServiceCount;
  }

  while (lookupServiceCount);
  return result;
}

- (void)stopResolving
{
  v35 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    lookupServiceList = self->_lookupServiceList;
    if (lookupServiceList)
    {
      if (self->_lookupServiceCount < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v8 = 0;
        v9 = MEMORY[0x277CE5818];
        *&v3 = 136316418;
        v31 = v3;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              pid = self->_pid;
              v13 = self->_lookupServiceList[v8];
              *buf = v31;
              *&buf[4] = v10;
              *&buf[12] = 2080;
              *&buf[14] = "[GKPeerInternal stopResolving]";
              *&buf[22] = 1024;
              LODWORD(v33) = 4744;
              WORD2(v33) = 2048;
              *(&v33 + 6) = self;
              HIWORD(v33) = 1024;
              LODWORD(v34) = pid;
              WORD2(v34) = 1024;
              *(&v34 + 6) = v13;
              _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d dealloc lookupService: %08X", buf, 0x32u);
            }
          }

          v14 = self->_lookupServiceList[v8];
          if (v14)
          {
            DNSServiceRefDeallocate(v14);
          }

          ++v8;
        }

        while (v8 < self->_lookupServiceCount);
        lookupServiceList = self->_lookupServiceList;
      }

      free(lookupServiceList);
      p_resolveService = &self->_resolveService;
      resolveService = self->_resolveService;
      self->_lookupServiceList = 0;
      self->_lookupServiceCount = 0;
      if (resolveService)
      {
        goto LABEL_20;
      }

      if (v8)
      {
LABEL_24:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_32;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        v23 = self->_pid;
        *buf = 136316418;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "[GKPeerInternal stopResolving]";
        *&buf[22] = 1024;
        LODWORD(v33) = 4761;
        WORD2(v33) = 2048;
        *(&v33 + 6) = self;
        HIWORD(v33) = 1024;
        LODWORD(v34) = v23;
        WORD2(v34) = 1024;
        *(&v34 + 6) = v8;
        v24 = " [%s] %s:%d * GKPeer[%p] %d Stopped resolving: %d";
        v25 = v22;
        v26 = 50;
        goto LABEL_31;
      }
    }

    else
    {
      p_resolveService = &self->_resolveService;
      if (self->_resolveService)
      {
        LODWORD(v8) = 0;
LABEL_20:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_pid;
            v20 = self->_resolveService;
            *buf = 136316418;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = "[GKPeerInternal stopResolving]";
            *&buf[22] = 1024;
            LODWORD(v33) = 4755;
            WORD2(v33) = 2048;
            *(&v33 + 6) = self;
            HIWORD(v33) = 1024;
            LODWORD(v34) = v19;
            WORD2(v34) = 1024;
            *(&v34 + 6) = v20;
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d dealloc resolveService: %08X", buf, 0x32u);
          }
        }

        DNSServiceRefDeallocate(*p_resolveService);
        *p_resolveService = 0;
        LODWORD(v8) = v8 + 1;
        goto LABEL_24;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_32;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v29 = self->_pid;
    *buf = 136316162;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = "[GKPeerInternal stopResolving]";
    *&buf[22] = 1024;
    LODWORD(v33) = 4763;
    WORD2(v33) = 2048;
    *(&v33 + 6) = self;
    HIWORD(v33) = 1024;
    LODWORD(v34) = v29;
    v24 = " [%s] %s:%d * GKPeer[%p] %d Nothing to stop resolving";
    v25 = v28;
    v26 = 44;
LABEL_31:
    _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_pid;
      *buf = 136316162;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "[GKPeerInternal stopResolving]";
      *&buf[22] = 1024;
      LODWORD(v33) = 4734;
      WORD2(v33) = 2048;
      *(&v33 + 6) = self;
      HIWORD(v33) = 1024;
      LODWORD(v34) = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d avoiding overrelease", buf, 0x2Cu);
    }
  }

  [(GKPeerInternal *)self clearResolving];
LABEL_32:
  [(GKSessionInternal *)self->_session unlock:v31];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)clearResolving
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    free(lookupServiceList);
    self->_lookupServiceList = 0;
    self->_lookupServiceCount = 0;
  }

  if (self->_resolveService)
  {
    self->_resolveService = 0;
  }
}

- (void)stopTXTRecordMonitoring
{
  v20 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        pid = self->_pid;
        txtRecordService = self->_txtRecordService;
        v8 = 136316418;
        v9 = v3;
        v10 = 2080;
        v11 = "[GKPeerInternal stopTXTRecordMonitoring]";
        v12 = 1024;
        v13 = 4783;
        v14 = 2048;
        selfCopy = self;
        v16 = 1024;
        v17 = pid;
        v18 = 1024;
        v19 = txtRecordService;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d => calling DNSServiceRefDeallocate(_txtRecordService) (%08X)", &v8, 0x32u);
      }
    }

    DNSServiceRefDeallocate(self->_txtRecordService);
    self->_txtRecordService = 0;
  }

  [(GKSessionInternal *)self->_session unlock];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupForGKTable:(id)table
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      v12 = 136316418;
      v13 = v5;
      v14 = 2080;
      v15 = "[GKPeerInternal cleanupForGKTable:]";
      v16 = 1024;
      v17 = 4791;
      v18 = 2048;
      selfCopy = self;
      v20 = 1024;
      v21 = pid;
      v22 = 2048;
      tableCopy = table;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d cleanup for table[%p]", &v12, 0x36u);
    }
  }

  [(GKPeerInternal *)self stopResolving];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        txtRecordService = self->_txtRecordService;
        v12 = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "[GKPeerInternal cleanupForGKTable:]";
        v16 = 1024;
        v17 = 4795;
        v18 = 1024;
        LODWORD(selfCopy) = txtRecordService;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_txtRecordService) (%08X)", &v12, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_txtRecordService);
    self->_txtRecordService = 0;
  }

  [(GKSessionInternal *)self->_session unlock];
  v11 = *MEMORY[0x277D85DE8];
}

@end