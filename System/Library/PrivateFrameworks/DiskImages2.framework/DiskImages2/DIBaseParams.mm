@interface DIBaseParams
- (BOOL)RAMdisk;
- (BOOL)hasUnlockedBackend;
- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode error:(id *)error;
- (BOOL)requiresRootDaemon;
- (BOOL)tryResolvePstackChain:(id *)chain;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)validateDeserializationWithError:(id *)error;
- (DIBaseParams)initWithCoder:(id)coder;
- (DIBaseParams)initWithURL:(id)l error:(id *)error;
- (NSUUID)encryptionUUID;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<Backend>)backend;
- (void)cryptoHeader;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSymmetricKey:(id)key;
@end

@implementation DIBaseParams

- (BOOL)RAMdisk
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (DIBaseParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = DIBaseParams;
  v5 = [(DIBaseParams *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"debugLogsEnabled"];
    v7 = [coderCopy decodeBoolForKey:@"forwardLogs"];
    DISetDebugLogsEnabled(v6);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v10 = [processName isEqualToString:@"diskimagesiod"];

    if ((v10 & 1) == 0)
    {
      DISetForwardLogs(v7);
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputURL"];
    inputURL = v5->_inputURL;
    v5->_inputURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
    shadowChain = v5->_shadowChain;
    v5->_shadowChain = v13;

    v5->_readPassphraseFlags = [coderCopy decodeIntegerForKey:@"readPassphraseFlags"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskImageParams"];
    diskImageParamsXPC = v5->_diskImageParamsXPC;
    v5->_diskImageParamsXPC = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deserializationError"];
    deserializationError = v5->_deserializationError;
    v5->_deserializationError = v17;

    v5->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:DIDebugLogsEnabled() forKey:@"debugLogsEnabled"];
  [coderCopy encodeBool:DIForwardLogs() forKey:@"forwardLogs"];
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  [coderCopy encodeObject:diskImageParamsXPC forKey:@"diskImageParams"];

  inputURL = [(DIBaseParams *)self inputURL];
  [coderCopy encodeObject:inputURL forKey:@"inputURL"];

  shadowChain = [(DIBaseParams *)self shadowChain];
  [coderCopy encodeObject:shadowChain forKey:@"shadowChain"];

  [coderCopy encodeInteger:-[DIBaseParams readPassphraseFlags](self forKey:{"readPassphraseFlags"), @"readPassphraseFlags"}];
  deserializationError = [(DIBaseParams *)self deserializationError];
  [coderCopy encodeObject:deserializationError forKey:@"deserializationError"];

  [coderCopy encodeInteger:-[DIBaseParams blockSize](self forKey:{"blockSize"), @"blockSize"}];
}

- (DIBaseParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = DIBaseParams;
  v7 = [(DIBaseParams *)&v17 init];
  if (v7)
  {
    v8 = [DIURL newDIURLWithNSURL:lCopy];
    inputURL = v7->_inputURL;
    v7->_inputURL = v8;

    v7->_readPassphraseFlags = 7;
    v10 = objc_alloc_init(DIShadowChain);
    shadowChain = v7->_shadowChain;
    v7->_shadowChain = v10;

    v7->_blockSize = 512;
    path = [(DIURL *)v7->_inputURL path];
    if (!path || ([MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1], v13 = objc_claimAutoreleasedReturnValue(), v13, path, !v13))
    {
      v14 = [DIError nilWithPOSIXCode:22 description:@"Malformed URL format" error:error];
      goto LABEL_9;
    }

    if (![(DIBaseParams *)v7 tryResolvePstackChain:error])
    {
      v15 = 0;
      goto LABEL_10;
    }

    if ([(DIBaseParams *)v7 isPstack]&& ![(DIBaseParams *)v7 supportsPstack])
    {
      v14 = [DIError nilWithPOSIXCode:22 verboseInfo:@"This operation doesn't support pstack files" error:error];
      goto LABEL_9;
    }
  }

  v14 = v7;
LABEL_9:
  v15 = v14;
LABEL_10:

  return v15;
}

- (BOOL)tryResolvePstackChain:(id *)chain
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [SerializedDiskImageGraph alloc];
  inputURL = [(DIBaseParams *)self inputURL];
  v29 = 0;
  v7 = [(SerializedDiskImageGraph *)v5 initWithPstackURL:inputURL error:&v29];
  v8 = v29;

  if (v7)
  {
    self->_isPstack = 1;
    v9 = v7;
    array = [MEMORY[0x277CBEB18] array];
    activeNode = [(DiskImageGraph *)v9 activeNode];
    if (activeNode)
    {
      do
      {
        toDIShadowNode = [activeNode toDIShadowNode];
        [array addObject:toDIShadowNode];

        parent = [activeNode parent];

        activeNode = parent;
      }

      while (parent);
    }

    lastObject = [array lastObject];
    [array removeLastObject];
    reverseObjectEnumerator = [array reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    shadowChain = [(DIBaseParams *)self shadowChain];
    v18 = [shadowChain addShadowNodes:allObjects error:chain];

    if (v18)
    {
      v19 = [lastObject URL];
      inputURL = self->_inputURL;
      self->_inputURL = v19;
    }

    goto LABEL_20;
  }

  domain = [v8 domain];
  if (![domain isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
  {

    goto LABEL_14;
  }

  v22 = [v8 code] == 167;

  if (!v22)
  {
LABEL_14:
    v18 = [DIError failWithInError:v8 outError:chain];
    goto LABEL_20;
  }

  if (DIDebugLogsEnabled())
  {
    v23 = *__error();
    if (DIForwardLogs())
    {
      v24 = getDIOSLog();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      *buf = 68157954;
      v31 = 38;
      v32 = 2080;
      v33 = "[DIBaseParams tryResolvePstackChain:]";
      v25 = _os_log_send_and_compose_impl();

      if (v25)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
        free(v25);
      }
    }

    else
    {
      v26 = getDIOSLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68157954;
        v31 = 38;
        v32 = 2080;
        v33 = "[DIBaseParams tryResolvePstackChain:]";
        _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_DEBUG, "%.*s: Not a pstack", buf, 0x12u);
      }
    }

    *__error() = v23;
  }

  v18 = 1;
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSUUID)encryptionUUID
{
  if (*[(DIBaseParams *)self cryptoHeader])
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{*-[DIBaseParams cryptoHeader](self, "cryptoHeader") + 36}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, diskImageParamsXPC];

  return v7;
}

- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader]|| (v9 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self], v10 = [(DIEncryptionFrontend *)v9 unlockWithXpcHandler:handlerCopy error:error], v9, v10))
  {
    shadowChain = [(DIBaseParams *)self shadowChain];
    isEmpty = [shadowChain isEmpty];

    if (isEmpty)
    {
      shadowChain2 = [(DIBaseParams *)self shadowChain];
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      [diskImageParamsXPC setShadowChain:shadowChain2];
    }

    else
    {
      if (mode != 2)
      {
        shadowChain3 = [(DIBaseParams *)self shadowChain];
        [shadowChain3 openWritable:1 createNonExisting:mode != 3];

        shadowChain4 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC2 setShadowChain:shadowChain4];
      }

      diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
      shadowChain5 = [diskImageParamsXPC3 shadowChain];
      v20 = shadowChain5 == 0;

      if (v20)
      {
        shadowChain6 = [(DIBaseParams *)self shadowChain];
        [shadowChain6 openWritable:0 createNonExisting:0];

        shadowChain7 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC4 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC4 setShadowChain:shadowChain7];
      }
    }

    LOBYTE(v10) = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasUnlockedBackend
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  isUnlocked = [backendXPC isUnlocked];

  return isUnlocked;
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  deserializationError = [(DIBaseParams *)self deserializationError];

  if (!deserializationError)
  {
    return 1;
  }

  deserializationError2 = [(DIBaseParams *)self deserializationError];
  v7 = [DIError failWithInError:deserializationError2 outError:error];

  return v7;
}

- (NSUUID)instanceID
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  instanceID = [diskImageParamsXPC instanceID];

  return instanceID;
}

- (BOOL)requiresRootDaemon
{
  [(DIBaseParams *)self backend];
  get_sink_backend(&v12, &lpsrc);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v2 = lpsrc;
  if (!lpsrc)
  {
    goto LABEL_14;
  }

  v3 = *lpsrc;
  v4 = **lpsrc;
  if (!v5)
  {
    v8 = *v3;
    if (v9)
    {
      v6 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      is_mounted_on_smb = FileDescriptor::is_mounted_on_smb((v9 + 24));
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v6 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  is_mounted_on_smb = FileDescriptor::is_mounted_on_smb(v5[5]);
LABEL_12:
  v10 = is_mounted_on_smb;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_15:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v10;
}

- (void)setSymmetricKey:(id)key
{
  keyCopy = key;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v5 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;
  }

  if (keyCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:keyCopy];
    v7 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = v6;
  }
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  if (diskImageParamsXPC)
  {
  }

  else if (![(DIBaseParams *)self openExistingImageWithError:error])
  {
    return 0;
  }

  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader])
  {
    return 1;
  }

  v8 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self];
  v9 = [(DIEncryptionFrontend *)v8 unlockWithPassphrase:passphrase error:error];

  return v9;
}

- (void)dealloc
{
  [(DIBaseParams *)self setSymmetricKey:0];
  v3.receiver = self;
  v3.super_class = DIBaseParams;
  [(DIBaseParams *)&v3 dealloc];
}

- (shared_ptr<Backend>)backend
{
  v3 = v2;
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  v5 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (void)cryptoHeader
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  cryptoHeader = [backendXPC cryptoHeader];

  return cryptoHeader;
}

@end