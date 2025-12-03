@interface ASProtocol
- (ASProtocol)init;
- (id)_initWithVersion:(id)version capabilitiesVersion:(id)capabilitiesVersion;
- (id)_requestLinePrefixWithTask:(id)task;
- (id)_usernameOnlyPortionOfUserString:(id)string;
- (id)requestURLStringWithTask:(id)task;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxEnhancedSearch;
- (int)supportsMailboxSearch;
- (void)_setCapabilitiesVersion:(id)version;
- (void)init;
@end

@implementation ASProtocol

- (ASProtocol)init
{
  v4 = objc_opt_class();
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [(ASProtocol *)self init];
  }

  v6.receiver = self;
  v6.super_class = ASProtocol;
  return [(ASProtocol *)&v6 init];
}

- (void)_setCapabilitiesVersion:(id)version
{
  versionCopy = version;
  if (![(ASProtocolCapabilities *)self->_capabilities supportsProtocolVersion:?])
  {
    v4 = [[ASProtocolCapabilities alloc] initWithProtocolVersionString:versionCopy];
    capabilities = self->_capabilities;
    self->_capabilities = v4;
  }
}

- (id)_initWithVersion:(id)version capabilitiesVersion:(id)capabilitiesVersion
{
  v19 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  capabilitiesVersionCopy = capabilitiesVersion;
  if ([versionCopy isEqualToString:@"2.5"])
  {
    v8 = off_278FC6F40;
  }

  else if ([versionCopy isEqualToString:@"12.1"])
  {
    v8 = off_278FC6F18;
  }

  else if ([versionCopy isEqualToString:@"14.0"])
  {
    v8 = off_278FC6F20;
  }

  else if ([versionCopy isEqualToString:@"14.1"])
  {
    v8 = off_278FC6F28;
  }

  else if ([versionCopy isEqualToString:@"16.0"])
  {
    v8 = off_278FC6F30;
  }

  else
  {
    v9 = [versionCopy isEqualToString:@"16.1"];
    v8 = off_278FC6F78;
    if (v9)
    {
      v8 = off_278FC6F38;
    }
  }

  v10 = *v8;
  v11 = objc_opt_class();
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v12, v13))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_24A0AC000, v12, v13, "EAS Protocol Manager set to %@", &v17, 0xCu);
  }

  v14 = objc_opt_new();
  [v14 _setCapabilitiesVersion:capabilitiesVersionCopy];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_usernameOnlyPortionOfUserString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy rangeOfString:@"\\""];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [stringCopy length] - 1))
  {
    v6 = stringCopy;
  }

  else
  {
    v6 = [stringCopy substringFromIndex:v5 + 1];
  }

  v7 = v6;

  return v7;
}

- (id)_requestLinePrefixWithTask:(id)task
{
  taskManager = [task taskManager];
  if ([taskManager port])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@":%ld", objc_msgSend(taskManager, "port")];
  }

  else
  {
    v4 = &stru_285D39BD0;
  }

  v5 = MEMORY[0x277CCACA8];
  if ([taskManager useSSL])
  {
    v6 = @"s";
  }

  else
  {
    v6 = &stru_285D39BD0;
  }

  server = [taskManager server];
  v8 = [v5 stringWithFormat:@"http%@://%@%@/Microsoft-Server-ActiveSync?", v6, server, v4];

  return v8;
}

- (id)requestURLStringWithTask:(id)task
{
  taskCopy = task;
  v5 = [(ASProtocol *)self _requestLinePrefixWithTask:taskCopy];
  taskManager = [taskCopy taskManager];
  user = [taskManager user];
  v8 = [(ASProtocol *)self _usernameOnlyPortionOfUserString:user];

  deviceID = [taskManager deviceID];
  deviceType = [taskManager deviceType];
  v11 = [v5 stringByAppendingFormat:@"User=%@&DeviceId=%@&DeviceType=%@", v8, deviceID, deviceType];

  v12 = [v11 stringByAddingPercentEscapesUsingEncoding:4];

  if ([taskCopy commandCode] != -1)
  {
    command = [taskCopy command];
    v14 = [v12 stringByAppendingFormat:@"&Cmd=%@", command];

    v12 = v14;
  }

  return v12;
}

- (int)supportsMailboxSearch
{
  if ([(ASProtocolCapabilities *)self->_capabilities supportsMailboxSearch])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)supportsMailboxEnhancedSearch
{
  if ([(ASProtocolCapabilities *)self->_capabilities supportsMailboxSearch])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)supportsEmailFlagging
{
  if ([(ASProtocolCapabilities *)self->_capabilities supportsEmailFlagging])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)supportsConversations
{
  if ([(ASProtocolCapabilities *)self->_capabilities supportsConversations])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)supportsDraftFolderSync
{
  if ([(ASProtocolCapabilities *)self->_capabilities supportsDraftFolderSync])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASProtocol.m" lineNumber:37 description:{@"%@ is an abstract superclass.", objc_opt_class()}];
}

@end