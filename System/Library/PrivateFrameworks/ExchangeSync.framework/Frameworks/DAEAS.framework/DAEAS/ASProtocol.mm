@interface ASProtocol
- (ASProtocol)init;
- (id)_initWithVersion:(id)a3 capabilitiesVersion:(id)a4;
- (id)_requestLinePrefixWithTask:(id)a3;
- (id)_usernameOnlyPortionOfUserString:(id)a3;
- (id)requestURLStringWithTask:(id)a3;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxEnhancedSearch;
- (int)supportsMailboxSearch;
- (void)_setCapabilitiesVersion:(id)a3;
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

- (void)_setCapabilitiesVersion:(id)a3
{
  v6 = a3;
  if (![(ASProtocolCapabilities *)self->_capabilities supportsProtocolVersion:?])
  {
    v4 = [[ASProtocolCapabilities alloc] initWithProtocolVersionString:v6];
    capabilities = self->_capabilities;
    self->_capabilities = v4;
  }
}

- (id)_initWithVersion:(id)a3 capabilitiesVersion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"2.5"])
  {
    v8 = off_278FC6F40;
  }

  else if ([v6 isEqualToString:@"12.1"])
  {
    v8 = off_278FC6F18;
  }

  else if ([v6 isEqualToString:@"14.0"])
  {
    v8 = off_278FC6F20;
  }

  else if ([v6 isEqualToString:@"14.1"])
  {
    v8 = off_278FC6F28;
  }

  else if ([v6 isEqualToString:@"16.0"])
  {
    v8 = off_278FC6F30;
  }

  else
  {
    v9 = [v6 isEqualToString:@"16.1"];
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
  [v14 _setCapabilitiesVersion:v7];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_usernameOnlyPortionOfUserString:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"\\""];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [v3 length] - 1))
  {
    v6 = v3;
  }

  else
  {
    v6 = [v3 substringFromIndex:v5 + 1];
  }

  v7 = v6;

  return v7;
}

- (id)_requestLinePrefixWithTask:(id)a3
{
  v3 = [a3 taskManager];
  if ([v3 port])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@":%ld", objc_msgSend(v3, "port")];
  }

  else
  {
    v4 = &stru_285D39BD0;
  }

  v5 = MEMORY[0x277CCACA8];
  if ([v3 useSSL])
  {
    v6 = @"s";
  }

  else
  {
    v6 = &stru_285D39BD0;
  }

  v7 = [v3 server];
  v8 = [v5 stringWithFormat:@"http%@://%@%@/Microsoft-Server-ActiveSync?", v6, v7, v4];

  return v8;
}

- (id)requestURLStringWithTask:(id)a3
{
  v4 = a3;
  v5 = [(ASProtocol *)self _requestLinePrefixWithTask:v4];
  v6 = [v4 taskManager];
  v7 = [v6 user];
  v8 = [(ASProtocol *)self _usernameOnlyPortionOfUserString:v7];

  v9 = [v6 deviceID];
  v10 = [v6 deviceType];
  v11 = [v5 stringByAppendingFormat:@"User=%@&DeviceId=%@&DeviceType=%@", v8, v9, v10];

  v12 = [v11 stringByAddingPercentEscapesUsingEncoding:4];

  if ([v4 commandCode] != -1)
  {
    v13 = [v4 command];
    v14 = [v12 stringByAppendingFormat:@"&Cmd=%@", v13];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASProtocol.m" lineNumber:37 description:{@"%@ is an abstract superclass.", objc_opt_class()}];
}

@end