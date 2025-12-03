@interface COMeshLocalNode
- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory;
- (COMeshLocalNode)initWithCompanionLinkClient:(id)client source:(id)source;
- (id)IDSIdentifier;
- (id)_createNodeForDevice:(id)device IDSIdentifier:(id)identifier configure:(id)configure;
- (id)_handleDiscoveryRecord:(id)record;
- (id)_nodeForIDSIdentifier:(id)identifier;
- (void)_handleActivation:(id)activation;
- (void)_handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options fromNode:(id)node;
- (void)_handleFoundDevice:(id)device;
- (void)_handleLostDevice:(id)device;
- (void)_handleLostNode:(id)node;
- (void)_handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler fromNode:(id)node at:(unint64_t)at;
- (void)_invalidateAndReintroduceNode:(id)node;
- (void)_updateListeningPort:(id)port;
- (void)activate;
- (void)setAcceptableCommands:(id)commands;
- (void)setCommands:(id)commands;
@end

@implementation COMeshLocalNode

- (COMeshLocalNode)initWithCompanionLinkClient:(id)client source:(id)source
{
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = COMeshLocalNode;
  v7 = [(COMeshNode *)&v18 initWithCompanionLinkClient:clientCopy source:source];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    commands = v7->_commands;
    v7->_commands = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    nodes = v7->_nodes;
    v7->_nodes = v10;

    localDevice = [clientCopy localDevice];
    [(COMeshLocalNode *)v7 _updateListeningPort:localDevice];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults stringArrayForKey:@"IgnoredIDSIdentifiers"];

    if ([v14 count])
    {
      v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
      ignoredIDSIdentifiers = v7->_ignoredIDSIdentifiers;
      v7->_ignoredIDSIdentifiers = v15;
    }
  }

  return v7;
}

- (void)_updateListeningPort:(id)port
{
  v14 = *MEMORY[0x277D85DE8];
  portCopy = port;
  v5 = portCopy;
  if (portCopy)
  {
    listeningPort = [portCopy listeningPort];
    if (listeningPort >= 1)
    {
      v7 = listeningPort;
      if (listeningPort != [(COMeshLocalNode *)self listeningPort])
      {
        self->_listeningPort = v7;
        v8 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412546;
          selfCopy = self;
          v12 = 1024;
          listeningPort2 = [(COMeshLocalNode *)self listeningPort];
          _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%@ listening port updated to %hu", &v10, 0x12u);
        }

        [(COMeshLocalNode *)self _handleActivation:0];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCommands:(id)commands
{
  commandsCopy = commands;
  commands = [(COMeshLocalNode *)self commands];
  if (([commands isEqualToDictionary:commandsCopy] & 1) == 0)
  {
    client = [(COMeshNode *)self client];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__COMeshLocalNode_setCommands___block_invoke;
    v16[3] = &unk_278E179F0;
    v7 = client;
    v17 = v7;
    [commands enumerateKeysAndObjectsUsingBlock:v16];
    v8 = [commandsCopy copy];
    commands = self->_commands;
    self->_commands = v8;

    objc_initWeak(&location, self);
    v10 = self->_commands;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__COMeshLocalNode_setCommands___block_invoke_2;
    v12[3] = &unk_278E17A40;
    v11 = v7;
    v13 = v11;
    objc_copyWeak(&v14, &location);
    [(NSDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 isSubclassOfClass:objc_opt_class()];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 deregisterRequestID:v7];
  }

  else
  {
    [v6 deregisterEventID:v7];
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 isSubclassOfClass:objc_opt_class()];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__COMeshLocalNode_setCommands___block_invoke_3;
    v13[3] = &unk_278E15C60;
    v9 = &v15;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = v5;
    [v7 registerRequestID:v14 options:0 handler:v13];
  }

  else
  {
    v8 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__COMeshLocalNode_setCommands___block_invoke_254;
    v10[3] = &unk_278E15CB0;
    v9 = &v12;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v5;
    [v7 registerEventID:v11 options:0 handler:v10];
  }

  objc_destroyWeak(v9);
}

void __31__COMeshLocalNode_setCommands___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __31__COMeshLocalNode_setCommands___block_invoke_4;
  v26 = &unk_278E17A18;
  objc_copyWeak(v31, (a1 + 40));
  v11 = v8;
  v27 = v11;
  v28 = *(a1 + 32);
  v12 = v7;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  v31[1] = v10;
  v14 = MEMORY[0x245D5FF10](&v23);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained && ([WeakRetained nodeActivated] & 1) == 0)
  {
    v17 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = v16;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%@ deferring request %@ with options %@, not fully activated", buf, 0x20u);
    }

    v18 = [v16 pendingActivation];
    v19 = [v18 mutableCopy];

    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v20 = MEMORY[0x245D5FF10](v14);
    [v19 addObject:v20];

    v21 = v16[24];
    v16[24] = v19;
  }

  else
  {
    v14[2](v14);
  }

  objc_destroyWeak(v31);
  v22 = *MEMORY[0x277D85DE8];
}

void __31__COMeshLocalNode_setCommands___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
    if ([v3 length])
    {
      v4 = [v5 _nodeForIDSIdentifier:v3];
    }

    else
    {
      v4 = 0;
    }

    [v5 _handleRequestIdentifier:*(a1 + 40) rapportRepresentation:*(a1 + 48) options:*(a1 + 32) responseHandler:*(a1 + 56) fromNode:v4 at:*(a1 + 72)];

    WeakRetained = v5;
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __31__COMeshLocalNode_setCommands___block_invoke_2_255;
  v21 = &unk_278E177E0;
  objc_copyWeak(&v25, (a1 + 40));
  v7 = v6;
  v22 = v7;
  v23 = *(a1 + 32);
  v8 = v5;
  v24 = v8;
  v9 = MEMORY[0x245D5FF10](&v18);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained nodeActivated] & 1) == 0)
  {
    v12 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v27 = v11;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ deferring command %@ with options %@, not fully activated", buf, 0x20u);
    }

    v13 = [v11 pendingActivation];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v15 = MEMORY[0x245D5FF10](v9);
    [v14 addObject:v15];

    v16 = v11[24];
    v11[24] = v14;
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v25);
  v17 = *MEMORY[0x277D85DE8];
}

void __31__COMeshLocalNode_setCommands___block_invoke_2_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
    if ([v3 length])
    {
      v4 = [v5 _nodeForIDSIdentifier:v3];
    }

    else
    {
      v4 = 0;
    }

    [v5 _handleEventIdentifier:*(a1 + 40) rapportRepresentation:*(a1 + 48) options:*(a1 + 32) fromNode:v4];

    WeakRetained = v5;
  }
}

- (id)IDSIdentifier
{
  client = [(COMeshNode *)self client];
  localDevice = [client localDevice];
  idsDeviceIdentifier = [localDevice idsDeviceIdentifier];

  return idsDeviceIdentifier;
}

- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory
{
  companionLinkClientFactory = self->_companionLinkClientFactory;
  if (!companionLinkClientFactory)
  {
    v4 = objc_alloc_init(COCompanionLinkClientFactory);
    v5 = self->_companionLinkClientFactory;
    self->_companionLinkClientFactory = v4;

    companionLinkClientFactory = self->_companionLinkClientFactory;
  }

  return companionLinkClientFactory;
}

- (void)setAcceptableCommands:(id)commands
{
  commandsCopy = commands;
  acceptableCommands = [(COMeshLocalNode *)self acceptableCommands];
  v6 = [acceptableCommands isEqualToSet:commandsCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(commandsCopy, "count")}];
    v8 = [commandsCopy copy];
    acceptableCommands = self->_acceptableCommands;
    self->_acceptableCommands = v8;

    v10 = self->_acceptableCommands;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __41__COMeshLocalNode_setAcceptableCommands___block_invoke;
    v15 = &unk_278E17A68;
    v16 = v7;
    selfCopy = self;
    v11 = v7;
    [(NSSet *)v10 enumerateObjectsUsingBlock:&v12];
    [(COMeshLocalNode *)self setCommands:v11, v12, v13, v14, v15];
  }
}

void __41__COMeshLocalNode_setAcceptableCommands___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _eventIDForClass:a2];
  [v3 setObject:a2 forKey:v4];
}

- (void)activate
{
  client = [(COMeshNode *)self client];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__COMeshLocalNode_activate__block_invoke;
  v9[3] = &unk_278E158D8;
  objc_copyWeak(&v10, &location);
  [client setDeviceFoundHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__COMeshLocalNode_activate__block_invoke_2;
  v7[3] = &unk_278E158D8;
  objc_copyWeak(&v8, &location);
  [client setDeviceLostHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__COMeshLocalNode_activate__block_invoke_3;
  v5[3] = &unk_278E158D8;
  objc_copyWeak(&v6, &location);
  [client setLocalDeviceUpdatedHandler:v5];
  v4.receiver = self;
  v4.super_class = COMeshLocalNode;
  [(COMeshNode *)&v4 activate];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __27__COMeshLocalNode_activate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleFoundDevice:v5];
  }
}

void __27__COMeshLocalNode_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLostDevice:v5];
  }
}

void __27__COMeshLocalNode_activate__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateListeningPort:v5];
  }
}

- (void)_handleActivation:(id)activation
{
  v38 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = COMeshLocalNode;
  [(COMeshNode *)&v31 _handleActivation:activation];
  client = [(COMeshNode *)self client];
  activeDevices = [client activeDevices];

  v6 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [activeDevices count];
    *buf = 138412546;
    selfCopy2 = self;
    v36 = 2048;
    v37 = v7;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%@ triggering found events for %lu devices post-activation", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = activeDevices;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(COMeshLocalNode *)self _handleFoundDevice:*(*(&v27 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v10);
  }

  pendingActivation = [(COMeshLocalNode *)self pendingActivation];
  pendingActivation = self->_pendingActivation;
  self->_pendingActivation = 0;

  v15 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [pendingActivation count];
    *buf = 138412546;
    selfCopy2 = self;
    v36 = 2048;
    v37 = v16;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%@ triggering %lu pending actions post-activation", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = pendingActivation;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        (*(*(*(&v23 + 1) + 8 * v21) + 16))(*(*(&v23 + 1) + 8 * v21));
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_nodeForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = 0;
  v6 = 1;
  while (1)
  {
    nodes = [(COMeshLocalNode *)self nodes];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke;
    v18[3] = &unk_278E17A90;
    v8 = identifierCopy;
    v19 = v8;
    v20 = &v21;
    [nodes enumerateObjectsUsingBlock:v18];
    if (v22[5])
    {
      break;
    }

    client = [(COMeshNode *)self client];
    activeDevices = [client activeDevices];

    if (![activeDevices count])
    {

      break;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke_2;
    v15[3] = &unk_278E17AB8;
    v16 = v8;
    selfCopy = self;
    v11 = [activeDevices indexOfObjectPassingTest:v15] == 0x7FFFFFFFFFFFFFFFLL;

    v12 = v11 & v6;
    v5 = nodes;
    v6 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v7 = [v10 IDSIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:*(a1 + 32) options:1];
    *a4 = v9 == 0;
    if (!v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

BOOL __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [v6 idsDeviceIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:*(a1 + 32) options:1];
    *a4 = v9 == 0;
    if (!v9)
    {
      [*(a1 + 40) _handleFoundDevice:v6];
    }
  }

  v10 = *a4;

  return v10;
}

- (void)_handleFoundDevice:(id)device
{
  v32 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  nodeActivated = [(COMeshNode *)self nodeActivated];
  v7 = [idsDeviceIdentifier length];
  if (nodeActivated)
  {
    if (v7)
    {
      ignoredIDSIdentifiers = [(COMeshLocalNode *)self ignoredIDSIdentifiers];
      v9 = [ignoredIDSIdentifiers containsObject:idsDeviceIdentifier];

      if (v9)
      {
        nodes = COCoreLogForCategory(0);
        if (os_log_type_enabled(nodes, OS_LOG_TYPE_ERROR))
        {
          [COMeshLocalNode _handleFoundDevice:];
        }
      }

      else
      {
        nodes = [(COMeshLocalNode *)self nodes];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v29 = __Block_byref_object_copy__15;
        v30 = __Block_byref_object_dispose__15;
        v31 = 0;
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __38__COMeshLocalNode__handleFoundDevice___block_invoke;
        v21 = &unk_278E17A90;
        v11 = idsDeviceIdentifier;
        v22 = v11;
        v23 = buf;
        [nodes enumerateObjectsUsingBlock:&v18];
        v12 = *(*&buf[8] + 40);
        if (v12)
        {
          discoveryType = [v12 discoveryType];
          [*(*&buf[8] + 40) setDiscoveryType:discoveryType | 1];
          if (![*(*&buf[8] + 40) connectionType])
          {
            v14 = COCoreLogForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *v24 = 138412546;
              selfCopy2 = self;
              v26 = 2112;
              v27 = v11;
              _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%@ updating unknown connection type for %@", v24, 0x16u);
            }

            [*(*&buf[8] + 40) setConnectionType:1];
          }
        }

        else
        {
          v15 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 138412546;
            selfCopy2 = self;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%@ found %@", v24, 0x16u);
          }

          v16 = [(COMeshLocalNode *)self _createNodeForDevice:deviceCopy IDSIdentifier:v11 configure:&__block_literal_global_267, v18, v19, v20, v21];
        }

        _Block_object_dispose(buf, 8);
      }

LABEL_18:
    }
  }

  else if (v7)
  {
    nodes = COCoreLogForCategory(0);
    if (os_log_type_enabled(nodes, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = idsDeviceIdentifier;
      _os_log_impl(&dword_244378000, nodes, OS_LOG_TYPE_DEFAULT, "%@ ignore found %@, not fully activated", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __38__COMeshLocalNode__handleFoundDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  v7 = [v9 IDSIdentifier];
  v8 = [v7 compare:*(a1 + 32) options:1];
  *a4 = v8 == 0;

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __38__COMeshLocalNode__handleFoundDevice___block_invoke_264(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDiscoveryType:1];
  [v2 setConnectionType:1];
}

- (void)_handleLostDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  idsDeviceIdentifier = [device idsDeviceIdentifier];
  nodeActivated = [(COMeshNode *)self nodeActivated];
  v6 = [idsDeviceIdentifier length];
  if (nodeActivated)
  {
    if (v6)
    {
      v7 = [(COMeshLocalNode *)self _nodeForIDSIdentifier:idsDeviceIdentifier];
      v8 = v7;
      if (v7)
      {
        connectionType = [v7 connectionType];
        discoveryType = [v8 discoveryType];
        if (connectionType == 1)
        {
          [(COMeshLocalNode *)self _handleLostNode:v8];
        }

        else
        {
          v11 = discoveryType;
          v12 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 138412546;
            selfCopy2 = self;
            v16 = 2112;
            v17 = idsDeviceIdentifier;
            _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ ignoring loss %@", &v14, 0x16u);
          }

          [v8 setDiscoveryType:v11 & 0xFFFFFFFFFFFFFFFELL];
        }
      }

LABEL_12:
    }
  }

  else if (v6)
  {
    v8 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = idsDeviceIdentifier;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%@ ignore lost %@, not fully activated", &v14, 0x16u);
    }

    goto LABEL_12;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleLostNode:(id)node
{
  v15 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  iDSIdentifier = [nodeCopy IDSIdentifier];
  nodes = [(COMeshLocalNode *)self nodes];
  v7 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = iDSIdentifier;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%@ lost %@", &v11, 0x16u);
  }

  [nodeCopy setParent:0];
  v8 = [nodes mutableCopy];
  [v8 removeObject:nodeCopy];
  [(COMeshLocalNode *)self setNodes:v8];
  delegate = [(COMeshNode *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didRemoveNode:nodeCopy];
  }

  else
  {
    [nodeCopy invalidate];
    if (objc_opt_respondsToSelector())
    {
      [delegate didInvalidateNode:nodeCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_handleDiscoveryRecord:(id)record
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  iDSIdentifier = [recordCopy IDSIdentifier];
  if ([iDSIdentifier length])
  {
    nodes = [(COMeshLocalNode *)self nodes];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__15;
    v24 = __Block_byref_object_dispose__15;
    v25 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke;
    v17[3] = &unk_278E17A90;
    v7 = iDSIdentifier;
    v18 = v7;
    v19 = &v20;
    [nodes enumerateObjectsUsingBlock:v17];
    v8 = v21[5];
    if (v8)
    {
      discoveryType = [v8 discoveryType];
      [v21[5] setDiscoveryType:discoveryType | 2];
      v10 = v21[5];
    }

    else
    {
      companionLinkDevice = [recordCopy companionLinkDevice];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke_2;
      v15[3] = &unk_278E17B00;
      v16 = recordCopy;
      v10 = [(COMeshLocalNode *)self _createNodeForDevice:companionLinkDevice IDSIdentifier:v7 configure:v15];
      v12 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ discovered (IP) %@, created %@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  v7 = [v9 IDSIdentifier];
  v8 = [v7 compare:*(a1 + 32) options:1];
  *a4 = v8 == 0;

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDiscoveryRecord:v2];
  [v3 setDiscoveryType:2];
  [v3 setConnectionType:0];
}

- (id)_createNodeForDevice:(id)device IDSIdentifier:(id)identifier configure:(id)configure
{
  configureCopy = configure;
  identifierCopy = identifier;
  deviceCopy = device;
  client = [(COMeshNode *)self client];
  companionLinkClientFactory = [(COMeshLocalNode *)self companionLinkClientFactory];
  v13 = [companionLinkClientFactory companionLinkClientForDevice:deviceCopy withIDSIdentifier:identifierCopy];

  dispatchQueue = [client dispatchQueue];
  [v13 setDispatchQueue:dispatchQueue];

  v15 = [COMeshNode alloc];
  source = [(COMeshNode *)self source];
  v17 = [(COMeshNode *)v15 initWithCompanionLinkClient:v13 source:source];

  [(COMeshNode *)v17 setParent:self];
  meshName = [(COMeshNode *)self meshName];
  [(COMeshNode *)v17 setMeshName:meshName];

  label = [(COMeshNode *)self label];
  [(COMeshNode *)v17 setLabel:label];

  recorder = [(COMeshNode *)self recorder];
  [(COMeshNode *)v17 setRecorder:recorder];

  [(COMeshNode *)v17 _setIDSIdentifier:identifierCopy];
  configureCopy[2](configureCopy, v17);

  nodes = [(COMeshLocalNode *)self nodes];
  v22 = [nodes arrayByAddingObject:v17];
  [(COMeshLocalNode *)self setNodes:v22];

  delegate = [(COMeshNode *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didAddNode:v17];
  }

  else
  {
    [(COMeshNode *)v17 activate];
  }

  return v17;
}

- (void)_handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options fromNode:(id)node
{
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  v79 = 0;
  v80[0] = &v79;
  v80[1] = 0x3032000000;
  v80[2] = __Block_byref_object_copy__15;
  v80[3] = __Block_byref_object_dispose__15;
  nodeCopy = node;
  v81 = nodeCopy;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__15;
  v77 = __Block_byref_object_dispose__15;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__15;
  v71 = __Block_byref_object_dispose__15;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__15;
  v61 = __Block_byref_object_dispose__15;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__15;
  v55 = __Block_byref_object_dispose__15;
  v56 = 0;
  v14 = objc_opt_class();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke;
  v50[3] = &unk_278E15DF0;
  v50[4] = &v57;
  v50[5] = &v51;
  [v14 _commandPayloadFromRapportRepresentation:representationCopy result:v50];
  if (v52[5])
  {
    commands = [(COMeshLocalNode *)self commands];
    v16 = [commands objectForKey:identifierCopy];

    if (v16)
    {
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v16 fromData:v52[5] error:0];
      v18 = v68;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v18 = v74;
    }

    v22 = v18[5];
    v18[5] = v17;
  }

  else
  {
    v19 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [COMeshLocalNode _handleEventIdentifier:v80 rapportRepresentation:? options:? fromNode:?];
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v21 = v74[5];
    v74[5] = v20;

    *(v64 + 24) = 1;
  }

  v23 = v68;
  v24 = v68[5];
  if (v24)
  {
    if (v58[5])
    {
      [v24 _setSendingConstituent:?];
      v23 = v68;
    }

    if (*(v80[0] + 40))
    {
      [v23[5] _setSender:?];
      v23 = v68;
    }

    [v23[5] _setRapportOptions:optionsCopy];
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__15;
  v48 = __Block_byref_object_dispose__15;
  v25 = *(v80[0] + 40);
  if (v25)
  {
    [v25 delegate];
  }

  else
  {
    [(COMeshNode *)self delegate];
  }
  v49 = ;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273;
  v35[3] = &unk_278E17B28;
  v37 = &v79;
  v35[4] = self;
  v26 = identifierCopy;
  v36 = v26;
  v38 = &v44;
  v39 = &v57;
  v40 = &v73;
  v41 = &v63;
  v42 = &v67;
  v43 = &v51;
  v27 = MEMORY[0x245D5FF10](v35);
  if (!*(v80[0] + 40) && v58[5] && v68[5] && (v28 = v45[5], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v29 = v45[5];
    v30 = v68[5];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_278;
    v31[3] = &unk_278E17B50;
    v34 = &v79;
    v31[4] = self;
    v32 = v26;
    v33 = v27;
    [v29 unknownNodeForCommand:v30 result:v31];
  }

  else
  {
    v27[2](v27);
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = COCoreLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_1(a1, v2);
    }

    v6 = [*(*(*(a1 + 48) + 8) + 40) delegate];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (([*(*(*(a1 + 48) + 8) + 40) _validateSource:*(*(*(a1 + 64) + 8) + 40)] & 1) == 0)
    {
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_2(a1, v2);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *(*(*(a1 + 80) + 8) + 24) = 1;
      v13 = *(*(a1 + 88) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      v15 = *(*(a1 + 96) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
    }

    v17 = *(*(*(a1 + 88) + 8) + 40);
    if (v17)
    {
      [v17 _setSender:*(*(*(a1 + 48) + 8) + 40)];
      v18 = *(*(*(a1 + 56) + 8) + 40);
      if (objc_opt_respondsToSelector())
      {
        [*(*(*(a1 + 56) + 8) + 40) node:*(*(*(a1 + 48) + 8) + 40) didReceiveCommand:*(*(*(a1 + 88) + 8) + 40)];
      }
    }

    else
    {
      v19 = *(*(*(a1 + 56) + 8) + 40);
      if (objc_opt_respondsToSelector())
      {
        v20 = *(*(*(a1 + 72) + 8) + 40);
        if (!v20)
        {
          v21 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_3(a1);
          }

          v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
          v23 = *(*(a1 + 72) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          v20 = *(*(*(a1 + 72) + 8) + 40);
        }

        [*(*(*(a1 + 56) + 8) + 40) node:*(*(*(a1 + 48) + 8) + 40) didReceiveError:v20 forCommand:0];
      }
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      [*(a1 + 32) _invalidateAndReintroduceNode:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4(a1);
    }
  }
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_278(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%@ received node %@ from delegate for command %@", &v10, 0x20u);
  }

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler fromNode:(id)node at:(unint64_t)at
{
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  handlerCopy = handler;
  v89 = 0;
  v90[0] = &v89;
  v90[1] = 0x3032000000;
  v90[2] = __Block_byref_object_copy__15;
  v90[3] = __Block_byref_object_dispose__15;
  nodeCopy = node;
  v91 = nodeCopy;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__15;
  v87 = __Block_byref_object_dispose__15;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__15;
  v81 = __Block_byref_object_dispose__15;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__15;
  v71 = __Block_byref_object_dispose__15;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__15;
  v65 = __Block_byref_object_dispose__15;
  v66 = 0;
  v19 = objc_opt_class();
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke;
  v60[3] = &unk_278E15DF0;
  v60[4] = &v67;
  v60[5] = &v61;
  [v19 _commandPayloadFromRapportRepresentation:representationCopy result:v60];
  if (v62[5])
  {
    commands = [(COMeshLocalNode *)self commands];
    v21 = [commands objectForKey:identifierCopy];

    if (!v21)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      goto LABEL_10;
    }

    v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v21 fromData:v62[5] error:0];
    v23 = v78[5];
    v78[5] = v22;

    if (v78[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = v78[5];
        v78[5] = 0;

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
LABEL_10:
        v29 = v84[5];
        v84[5] = v25;
      }
    }
  }

  else
  {
    v26 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [COMeshLocalNode _handleRequestIdentifier:v90 rapportRepresentation:? options:? responseHandler:? fromNode:? at:?];
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v28 = v84[5];
    v84[5] = v27;

    *(v74 + 24) = 1;
  }

  v30 = v78;
  v31 = v78[5];
  if (v31)
  {
    if (v68[5])
    {
      [v31 _setSendingConstituent:?];
      v30 = v78;
    }

    if (*(v90[0] + 40))
    {
      [v30[5] _setSender:?];
      v30 = v78;
    }

    [v30[5] _setRapportOptions:optionsCopy];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__15;
  v58 = __Block_byref_object_dispose__15;
  v32 = *(v90[0] + 40);
  if (v32)
  {
    [v32 delegate];
  }

  else
  {
    [(COMeshNode *)self delegate];
  }
  v59 = ;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279;
  v43[3] = &unk_278E17BA0;
  v46 = &v89;
  v43[4] = self;
  v33 = identifierCopy;
  v44 = v33;
  v47 = &v83;
  v34 = handlerCopy;
  v45 = v34;
  v48 = &v54;
  v49 = &v67;
  v50 = &v73;
  v51 = &v77;
  v52 = &v61;
  atCopy = at;
  v35 = MEMORY[0x245D5FF10](v43);
  if (!*(v90[0] + 40) && v68[5] && v78[5] && (v36 = v55[5], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v37 = v55[5];
    v38 = v78[5];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_285;
    v39[3] = &unk_278E17B50;
    v42 = &v89;
    v39[4] = self;
    v40 = v33;
    v41 = v35;
    [v37 unknownNodeForRequest:v38 result:v39];
  }

  else
  {
    v35[2](v35);
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = COCoreLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_1(a1, v2);
    }

    v6 = [*(*(*(a1 + 56) + 8) + 40) delegate];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (([*(*(*(a1 + 56) + 8) + 40) _validateSource:*(*(*(a1 + 80) + 8) + 40)] & 1) == 0)
    {
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_2(a1, v2);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v13 = *(*(a1 + 96) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      v15 = *(*(a1 + 104) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
    }

    v17 = *(*(*(a1 + 96) + 8) + 40);
    if (v17)
    {
      [v17 _setSender:*(*(*(a1 + 56) + 8) + 40)];
      v18 = *(*(*(a1 + 72) + 8) + 40);
      if (objc_opt_respondsToSelector())
      {
        v19 = *(*(*(a1 + 72) + 8) + 40);
        v20 = *(a1 + 56);
        v21 = *(*(v20 + 8) + 40);
        v22 = *(*(*(a1 + 96) + 8) + 40);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282;
        v35[3] = &unk_278E17B78;
        v35[4] = *(a1 + 32);
        v23 = *(a1 + 112);
        v37 = v20;
        v38 = v23;
        v36 = *(a1 + 48);
        [v19 node:v21 didReceiveRequest:v22 responseCallBack:v35];
      }
    }

    else
    {
      v28 = *(*(*(a1 + 72) + 8) + 40);
      if (objc_opt_respondsToSelector())
      {
        v29 = *(*(*(a1 + 64) + 8) + 40);
        if (!v29)
        {
          v30 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_3(a1, v2);
          }

          v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
          v32 = *(*(a1 + 64) + 8);
          v33 = *(v32 + 40);
          *(v32 + 40) = v31;

          v29 = *(*(*(a1 + 64) + 8) + 40);
        }

        [*(*(*(a1 + 72) + 8) + 40) node:*(*(*(a1 + 56) + 8) + 40) didReceiveError:v29 forCommand:0];
      }

      v34 = *(*(*(a1 + 64) + 8) + 40);
      (*(*(a1 + 48) + 16))();
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        [*(a1 + 32) _invalidateAndReintroduceNode:*(*(*(a1 + 56) + 8) + 40)];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4(a1);
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v25 = *(*(a1 + 64) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282_cold_1(a1);
    }

    v8 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _serializedDataForCommand:v5];
    v9 = [*(a1 + 32) _eventIDForClass:objc_opt_class()];
    v10 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v17;
      _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%@ responding with %@ to %@", buf, 0x20u);
    }

    v11 = MEMORY[0x277CCAAB0];
    v12 = [*(*(*(a1 + 48) + 8) + 40) source];
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    v19[0] = v13;
    v19[1] = v7;
    v18[1] = @"command";
    v18[2] = @"response";
    v19[2] = v9;
    v18[3] = @"overhead";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:(clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 56))];
    v19[3] = v14;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  }

  (*(*(a1 + 40) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_285(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%@ received node %@ from delegate for request %@", &v10, 0x20u);
  }

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndReintroduceNode:(id)node
{
  v19 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  iDSIdentifier = [nodeCopy IDSIdentifier];
  discoveryRecord = [nodeCopy discoveryRecord];
  [nodeCopy invalidate];
  if ([iDSIdentifier length])
  {
    v7 = [(COMeshLocalNode *)self _nodeForIDSIdentifier:iDSIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        selfCopy2 = self;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = nodeCopy;
        v10 = "%@ reintroduced node %@ for %@";
LABEL_9:
        _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x20u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  if (discoveryRecord)
  {
    v11 = [(COMeshLocalNode *)self _handleDiscoveryRecord:discoveryRecord];
    if (v11)
    {
      v8 = v11;
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        selfCopy2 = self;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = nodeCopy;
        v10 = "%@ reintroduced (IP) node %@ for %@";
        goto LABEL_9;
      }

LABEL_10:

      goto LABEL_13;
    }
  }

  v8 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [COMeshLocalNode _invalidateAndReintroduceNode:];
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleFoundDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleEventIdentifier:(uint64_t)a1 rapportRepresentation:(uint64_t)a2 options:fromNode:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestIdentifier:(uint64_t)a1 rapportRepresentation:(uint64_t)a2 options:responseHandler:fromNode:at:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndReintroduceNode:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end