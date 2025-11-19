@interface HSAAuthenticationServer
+ (id)sharedInstance;
- (HSAAuthenticationServer)init;
- (void)_cleanup;
- (void)_cleanupClient:(id)a3;
- (void)_clientConnected;
- (void)_configureWithClient:(id)a3;
- (void)dealloc;
- (void)parseIncomingMessageFromNumber:(id)a3 forService:(id)a4 messageBody:(id)a5;
@end

@implementation HSAAuthenticationServer

+ (id)sharedInstance
{
  if (qword_2814227C8 != -1)
  {
    sub_250999DA0();
  }

  v3 = qword_2814227C0;

  return v3;
}

- (HSAAuthenticationServer)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HSAAuthenticationServer;
  v2 = [(HSAAuthenticationServer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_250998220;
    v13[3] = &unk_2796A48B0;
    v4 = v2;
    v14 = v4;
    v5 = MEMORY[0x253065C00](v13);
    v6 = IMXPCCreateServerConnection();
    connection = v4->_connection;
    p_connection = &v4->_connection;
    *p_connection = v6;

    if (*p_connection)
    {
      xpc_connection_resume(*p_connection);
    }

    else
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = @"com.apple.hsa-authentication-server";
        _os_log_impl(&dword_250996000, v9, OS_LOG_TYPE_DEFAULT, "Could not configure server: %@", buf, 0xCu);
      }
    }

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v10, OS_LOG_TYPE_DEFAULT, "Setup HSA Server", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)parseIncomingMessageFromNumber:(id)a3 forService:(id)a4 messageBody:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v43 = a4;
  v8 = a5;
  v42 = v8;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412803;
    v52 = v44;
    v53 = 2112;
    v54 = v43;
    v55 = 2117;
    v56 = v8;
    _os_log_impl(&dword_250996000, v9, OS_LOG_TYPE_DEFAULT, "HSA - Processing incoming message from number: %@   service: %@   body: %{sensitive}@", buf, 0x20u);
  }

  if ([(NSMutableArray *)self->_clients count])
  {
    v40 = sub_2509993A0(@"HSAOriginatingAddressList");
    v10 = sub_2509993A0(@"HSAVerificationCodePattern");
    v11 = @"([0-9]+)";
    if (v10)
    {
      v11 = v10;
    }

    v41 = v11;
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v40;
      _os_log_impl(&dword_250996000, v12, OS_LOG_TYPE_DEFAULT, "HSA - Allowed source number list: %@", buf, 0xCu);
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v41;
      _os_log_impl(&dword_250996000, v13, OS_LOG_TYPE_DEFAULT, "HSA - Pattern: %@", buf, 0xCu);
    }

    if ([(__CFString *)v41 length])
    {
      if (![(__CFString *)v40 count]|| ([(__CFString *)v44 lowercaseString], v14 = objc_claimAutoreleasedReturnValue(), v15 = [(__CFString *)v40 containsObject:v14], v14, (v15 & 1) != 0))
      {
        v49 = 0;
        v39 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v41 options:1 error:&v49];
        v16 = v49;
        v38 = v16;
        if (!v39 || v16)
        {
          v35 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v52 = v41;
            v53 = 2112;
            v54 = v38;
            _os_log_impl(&dword_250996000, v35, OS_LOG_TYPE_DEFAULT, "Ignoring incoming message, could not generate expression from: %@   (Error: %@)", buf, 0x16u);
          }
        }

        else
        {
          v17 = [v39 firstMatchInString:v42 options:1 range:{0, -[__CFString length](v42, "length")}];
          if (v17)
          {
            v37 = v17;
            v18 = [v17 rangeAtIndex:0];
            v20 = [(__CFString *)v42 substringWithRange:v18, v19];
            if (v20)
            {
              v21 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412803;
                v52 = v44;
                v53 = 2117;
                v54 = v42;
                v55 = 2117;
                v56 = v20;
                _os_log_impl(&dword_250996000, v21, OS_LOG_TYPE_DEFAULT, "Incoming message from: %@  body: %{sensitive}@  --  found token: %{sensitive}@", buf, 0x20u);
              }

              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v22 = self->_clients;
              v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v45 objects:v50 count:16];
              if (v23)
              {
                v24 = *v46;
                do
                {
                  v25 = 0;
                  do
                  {
                    if (*v46 != v24)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v26 = *(*(&v45 + 1) + 8 * v25);
                    v27 = xpc_dictionary_create(0, 0, 0);
                    if (v27)
                    {
                      IMInsertNSStringsToXPCDictionary();
                      IMInsertNSStringsToXPCDictionary();
                      v28 = [(__CFString *)v20 trimmedString:v43];
                      IMInsertNSStringsToXPCDictionary();

                      IMInsertNSStringsToXPCDictionary();
                      xpc_connection_send_message(v26, v27);
                      if (qword_27F3E0C28 != -1)
                      {
                        sub_250999DB4();
                      }

                      v29 = qword_27F3E0C30;
                      if (os_log_type_enabled(qword_27F3E0C30, OS_LOG_TYPE_DEFAULT))
                      {
                        v30 = v29;
                        v31 = [(_xpc_connection_s *)v26 debugDescription:v42];
                        *buf = 138412546;
                        v52 = v31;
                        v53 = 2112;
                        v54 = v27;
                        _os_log_impl(&dword_250996000, v30, OS_LOG_TYPE_DEFAULT, "  => Notifying client: %@  (message: %@)", buf, 0x16u);
                      }
                    }

                    ++v25;
                  }

                  while (v23 != v25);
                  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v45 objects:v50 count:16];
                }

                while (v23);
              }

              v32 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_250996000, v32, OS_LOG_TYPE_DEFAULT, "...Done", buf, 2u);
              }
            }

            goto LABEL_50;
          }

          v35 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412547;
            v52 = v44;
            v53 = 2117;
            v54 = v42;
            _os_log_impl(&dword_250996000, v35, OS_LOG_TYPE_DEFAULT, "Ignoring incoming message from: %@  body: %{sensitive}@  --  no results found", buf, 0x16u);
          }
        }

LABEL_50:
        goto LABEL_51;
      }

      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v52 = v44;
        v53 = 2112;
        v54 = v40;
        _os_log_impl(&dword_250996000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring incoming message from: %@  it is not in the originator list: %@", buf, 0x16u);
      }
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250996000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring incoming message, we have no pattern to look for", buf, 2u);
      }
    }

LABEL_51:
    goto LABEL_52;
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_250996000, v33, OS_LOG_TYPE_DEFAULT, "HSA - No clients, let's just ignore this", buf, 2u);
  }

LABEL_52:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_clientConnected
{
  if (!self->_hasRegistered)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_250996000, v3, OS_LOG_TYPE_DEFAULT, "Client connected, noting registered", v4, 2u);
    }

    self->_hasRegistered = 1;
  }
}

- (void)_cleanup
{
  if (self->_hasRegistered)
  {
    self->_hasRegistered = 0;
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_250996000, v2, OS_LOG_TYPE_DEFAULT, "HSA - Client Disconnected, unregistering", v3, 2u);
    }
  }
}

- (void)_cleanupClient:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      pid = xpc_connection_get_pid(v4);
      _os_log_impl(&dword_250996000, v5, OS_LOG_TYPE_DEFAULT, "HSA - Removing client %d", &v10, 8u);
    }

    [(NSMutableArray *)self->_clients removeObject:v4];
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_clients count];
      v10 = 67109120;
      pid = v7;
      _os_log_impl(&dword_250996000, v6, OS_LOG_TYPE_DEFAULT, "HSA - We have %d clients left", &v10, 8u);
    }

    if (![(NSMutableArray *)self->_clients count])
    {
      [(HSAAuthenticationServer *)self _cleanup];
      clients = self->_clients;
      self->_clients = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithClient:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_250996000, v5, OS_LOG_TYPE_DEFAULT, "HSA - Configuring with client: %@", &v11, 0xCu);
  }

  if (v4 && ([(NSMutableArray *)self->_clients containsObject:v4]& 1) == 0)
  {
    if (!self->_clients)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      clients = self->_clients;
      self->_clients = v6;
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      pid = xpc_connection_get_pid(v4);
      v11 = 67109120;
      LODWORD(v12) = pid;
      _os_log_impl(&dword_250996000, v8, OS_LOG_TYPE_DEFAULT, "HSA - Adding client %d", &v11, 8u);
    }

    [(NSMutableArray *)self->_clients addObject:v4];
    [(HSAAuthenticationServer *)self _clientConnected];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_250996000, v3, OS_LOG_TYPE_DEFAULT, "HSA - Deallocing server", buf, 2u);
  }

  [(HSAAuthenticationServer *)self _cleanup];
  v4.receiver = self;
  v4.super_class = HSAAuthenticationServer;
  [(HSAAuthenticationServer *)&v4 dealloc];
}

@end