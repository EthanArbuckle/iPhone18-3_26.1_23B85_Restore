@interface COMeshNode
+ (void)_commandPayloadFromRapportRepresentation:(id)representation result:(id)result;
- (BOOL)_validateSource:(id)source;
- (BOOL)isEqual:(id)equal;
- (COClusterMemberRoleSnapshot)memberSnapshot;
- (COConstituent)remote;
- (COConstituent)source;
- (CODiscoveryRecord)discoveryRecord;
- (COMeshLocalNode)parent;
- (COMeshNode)initWithCompanionLinkClient:(id)client source:(id)source;
- (COMeshNode)initWithNode:(id)node;
- (COMeshNodeDelegate)delegate;
- (NSString)IDSIdentifier;
- (NSUUID)HomeKitIdentifier;
- (id)_commandPayloadFromRapportRepresentation:(id)representation;
- (id)_eventIDForClass:(Class)class;
- (id)_serializedDataForCommand:(id)command;
- (id)description;
- (unint64_t)hash;
- (void)HomeKitIdentifier;
- (void)_handleActivation:(id)activation;
- (void)_handleDisconnect;
- (void)_handleErrorFlagsUpdate;
- (void)_handleRPIsUsingOnDemandConnection;
- (void)_handleRPStateUpdate;
- (void)_handleResponseToRequest:(id)request rapportRepresentation:(id)representation options:(id)options error:(id)error responseCallback:(id)callback at:(unint64_t)at;
- (void)_setIDSIdentifier:(id)identifier;
- (void)_validateDiscoveryRecord;
- (void)_withLock:(id)lock;
- (void)activate;
- (void)invalidate;
- (void)sendMeshCommand:(id)command;
- (void)sendMeshRequest:(id)request;
- (void)sendMeshRequest:(id)request responseCallback:(id)callback;
- (void)setDiscoveryRecord:(id)record;
- (void)setMemberSnapshot:(id)snapshot;
@end

@implementation COMeshNode

- (COMeshNode)initWithNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = COMeshNode;
  v6 = [(COMeshNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingNode, node);
  }

  return v7;
}

- (COMeshNode)initWithCompanionLinkClient:(id)client source:(id)source
{
  clientCopy = client;
  sourceCopy = source;
  v29.receiver = self;
  v29.super_class = COMeshNode;
  v9 = [(COMeshNode *)&v29 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(&v10->_source, source);
    destinationDevice = [(COCompanionLinkClientProtocol *)v10->_client destinationDevice];
    idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
    IDSIdentifier = v10->_IDSIdentifier;
    v10->_IDSIdentifier = idsDeviceIdentifier;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v16 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v17 = bundleIdentifier;
      meshName = v10->_meshName;
      v10->_meshName = v17;
    }

    else
    {
      meshName = [MEMORY[0x277CCAC38] processInfo];
      processName = [meshName processName];
      v20 = v10->_meshName;
      v10->_meshName = processName;
    }

    v21 = [(NSString *)v10->_meshName copy];
    label = v10->_label;
    v10->_label = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counters = v10->_counters;
    v10->_counters = v23;

    v10->_discoveryType = 0;
    v10->_connectionType = 0;
    recorder = v10->_recorder;
    v10->_recorder = &__block_literal_global_5;

    v26 = [CONetworkActivityFactory activityWithLabel:1 parentActivity:0];
    activity = v10->_activity;
    v10->_activity = v26;
  }

  return v10;
}

- (void)_setIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    IDSIdentifier = self->_IDSIdentifier;
    p_IDSIdentifier = &self->_IDSIdentifier;
    if (!IDSIdentifier)
    {
      v8 = identifierCopy;
      objc_storeStrong(p_IDSIdentifier, identifier);
      identifierCopy = v8;
    }
  }
}

- (COConstituent)source
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    underlyingNode = [(COMeshNode *)self underlyingNode];
    meConstituent = [underlyingNode meConstituent];
  }

  else
  {
    meConstituent = self->_source;
  }

  return meConstituent;
}

- (COConstituent)remote
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    underlyingNode = [(COMeshNode *)self underlyingNode];
    remote = [underlyingNode remote];
  }

  else
  {
    remote = self->_remote;
  }

  return remote;
}

- (NSString)IDSIdentifier
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    underlyingNode = [(COMeshNode *)self underlyingNode];
    iDSIdentifier = [underlyingNode IDSIdentifier];
  }

  else
  {
    iDSIdentifier = self->_IDSIdentifier;
  }

  return iDSIdentifier;
}

- (NSUUID)HomeKitIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    underlyingNode = [(COMeshNode *)self underlyingNode];
    homeKitIdentifier = [underlyingNode HomeKitIdentifier];
  }

  else
  {
    client = [(COMeshNode *)self client];
    destinationDevice = [client destinationDevice];
    homeKitIdentifier = [destinationDevice homeKitIdentifier];

    if (!homeKitIdentifier)
    {
      iDSIdentifier = [(COMeshNode *)self IDSIdentifier];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      parent = [(COMeshNode *)self parent];
      client2 = [parent client];
      activeDevices = [client2 activeDevices];

      homeKitIdentifier = [activeDevices countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (homeKitIdentifier)
      {
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != homeKitIdentifier; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(activeDevices);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            idsDeviceIdentifier = [v13 idsDeviceIdentifier];
            if (idsDeviceIdentifier && ![iDSIdentifier compare:idsDeviceIdentifier options:1])
            {
              homeKitIdentifier = [v13 homeKitIdentifier];
              v15 = COCoreLogForCategory(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                [COMeshNode HomeKitIdentifier];
              }

              goto LABEL_17;
            }
          }

          homeKitIdentifier = [activeDevices countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (homeKitIdentifier)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return homeKitIdentifier;
}

- (void)setMemberSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMeshNode_setMemberSnapshot___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = snapshotCopy;
  v5 = snapshotCopy;
  [(COMeshNode *)self _withLock:v6];
}

void __32__COMeshNode_setMemberSnapshot___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 152) memberSnapshot];
    v5 = [v4 member];
    if (v5)
    {
      v6 = v5;
      v7 = [*(*(a1 + 32) + 152) memberSnapshot];
      v8 = [v7 member];
      v9 = [*(a1 + 40) member];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        goto LABEL_6;
      }

      v4 = [*(*(a1 + 32) + 152) memberSnapshot];
      v11 = [v4 member];
      [v11 setStale:1];
    }

LABEL_6:
    v12 = [*(*(a1 + 32) + 152) memberSnapshot];
    v13 = [v12 isEqual:*(a1 + 40)];

    if ((v13 & 1) == 0)
    {
      v14 = [*(*(a1 + 32) + 152) memberSnapshot];

      if (v14)
      {
        v15 = [*(*(a1 + 32) + 152) memberSnapshot];
        [v15 setStale:1];
      }

      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 152);

      [v17 setMemberSnapshot:v16];
    }

    return;
  }

  v18 = [*(v3 + 24) member];
  if (v18)
  {
    v19 = v18;
    v20 = [*(*(a1 + 32) + 24) member];
    v21 = [*(a1 + 40) member];
    v22 = [v20 isEqual:v21];

    if ((v22 & 1) == 0)
    {
      v23 = [*(*(a1 + 32) + 24) member];
      [v23 setStale:1];
    }
  }

  if (([*(*(a1 + 32) + 24) isEqual:*(a1 + 40)] & 1) == 0)
  {
    v24 = *(a1 + 32);
    v25 = *(v24 + 24);
    if (v25)
    {
      [v25 setStale:1];
      v24 = *(a1 + 32);
    }

    v26 = *(a1 + 40);

    objc_storeStrong((v24 + 24), v26);
  }
}

- (COClusterMemberRoleSnapshot)memberSnapshot
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__15;
  v9 = __Block_byref_object_dispose__15;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMeshNode_memberSnapshot__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshNode *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMeshNode_memberSnapshot__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 152) memberSnapshot];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 24);
    v6 = *(v7 + 40);
    *(v7 + 40) = v4;
  }

  return MEMORY[0x2821F96F8](v4, v6);
}

- (void)setDiscoveryRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__COMeshNode_setDiscoveryRecord___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = recordCopy;
  v5 = recordCopy;
  [(COMeshNode *)self _withLock:v6];
}

- (CODiscoveryRecord)discoveryRecord
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__15;
  v9 = __Block_byref_object_dispose__15;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__COMeshNode_discoveryRecord__block_invoke;
  v4[3] = &unk_278E15950;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshNode *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __29__COMeshNode_discoveryRecord__block_invoke(uint64_t a1)
{
  if (([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 32);
    if (!v2)
    {
      v3 = [CODiscoveryRecord discoveryRecordWithNode:?];
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      *(v4 + 32) = v3;

      v2 = *(*(a1 + 32) + 32);
    }

    v6 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v6, v2);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  source = [(COMeshNode *)self source];
  remote = [(COMeshNode *)self remote];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@ -> %@>", v5, self, source, remote];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
      {
        remote = [(COMeshNode *)self remote];
        if (remote)
        {
        }

        else
        {
          remote2 = [(COMeshNode *)v5 remote];

          if (!remote2)
          {
            iDSIdentifier = [(COMeshNode *)self IDSIdentifier];
            iDSIdentifier2 = [(COMeshNode *)v5 IDSIdentifier];
            v17 = [iDSIdentifier isEqual:iDSIdentifier2];

            if (v17)
            {
              goto LABEL_11;
            }

            goto LABEL_13;
          }
        }
      }

      source = [(COMeshNode *)self source];
      source2 = [(COMeshNode *)v5 source];
      if ([source isEqual:source2])
      {
        remote3 = [(COMeshNode *)self remote];
        remote4 = [(COMeshNode *)v5 remote];
        v13 = [remote3 isEqual:remote4];

        if (v13)
        {
LABEL_11:
          v7 = 1;
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
      }

LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  iDSIdentifier = [(COMeshNode *)self IDSIdentifier];
  uppercaseString = [iDSIdentifier uppercaseString];
  v4 = [uppercaseString hash];

  return v4;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_eventIDForClass:(Class)class
{
  meshName = [(COMeshNode *)self meshName];
  v5 = NSStringFromClass(class);
  v6 = [meshName stringByAppendingFormat:@".%@", v5];

  return v6;
}

+ (void)_commandPayloadFromRapportRepresentation:(id)representation result:(id)result
{
  representationCopy = representation;
  resultCopy = result;
  v6 = [representationCopy objectForKey:@"source"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
    v8 = [representationCopy objectForKey:@"command"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v6 = v9;
    }

    else
    {
      v9 = 0;
      v6 = v8;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  resultCopy[2](resultCopy, v7, v9);
}

- (BOOL)_validateSource:(id)source
{
  sourceCopy = source;
  remote = [(COMeshNode *)self remote];
  v6 = remote;
  if (sourceCopy)
  {
    if (remote)
    {
      v7 = [remote isEqual:sourceCopy];
    }

    else
    {
      [(COMeshNode *)self setRemote:sourceCopy];
      [(COMeshNode *)self _validateDiscoveryRecord];
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_validateDiscoveryRecord
{
  v19 = *MEMORY[0x277D85DE8];
  remote = [(COMeshNode *)self remote];
  v4 = self->_discoveryRecord;
  constituent = [(CODiscoveryRecord *)v4 constituent];
  v6 = constituent;
  if (remote && constituent && ([remote isEqual:constituent] & 1) == 0)
  {
    v7 = [(CODiscoveryRecord *)v4 mutableCopy];
    [v7 rollConstituent:remote];
    v8 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v7];
    [(COMeshNode *)self setDiscoveryRecord:v8];
    v9 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138413058;
      selfCopy = self;
      v13 = 2112;
      v14 = remote;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%@ updated discovery constituent to %@ from %@ with record %@", &v11, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_commandPayloadFromRapportRepresentation:(id)representation
{
  representationCopy = representation;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15;
  v13 = __Block_byref_object_dispose__15;
  v14 = 0;
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__COMeshNode__commandPayloadFromRapportRepresentation___block_invoke;
  v8[3] = &unk_278E17950;
  v8[4] = self;
  v8[5] = &v9;
  [v5 _commandPayloadFromRapportRepresentation:representationCopy result:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __55__COMeshNode__commandPayloadFromRapportRepresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([*(a1 + 32) _validateSource:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)_serializedDataForCommand:(id)command
{
  commandCopy = command;
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:commandCopy requiringSecureCoding:1 error:0];
  if (!v6)
  {
    if (class_getMethodImplementation(v5, sel_supportsSecureCoding) && class_getMethodImplementation(v5, sel_encodeWithCoder_))
    {
      v7 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [COMeshNode _serializedDataForCommand:];
      }
    }

    else
    {
      v7 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(COMeshNode *)v5 _serializedDataForCommand:v7];
      }
    }

    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA2A0] reason:0 userInfo:0];
    [v8 raise];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__COMeshNode__serializedDataForCommand___block_invoke;
  v13[3] = &unk_278E17978;
  v13[4] = self;
  v15 = v5;
  v9 = v6;
  v14 = v9;
  [(COMeshNode *)self _withLock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __40__COMeshNode__serializedDataForCommand___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) counters];
  v3 = NSStringFromClass(*(a1 + 48));
  v4 = [v2 objectForKey:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(COMeshNodeMessageCounter);
    [v2 setObject:v4 forKey:v3];
  }

  v5 = [(COMeshNodeMessageCounter *)v4 count]+ 1;
  v6 = [*(a1 + 40) length];
  v7 = [(COMeshNodeMessageCounter *)v4 size];
  if (v5 > 0x3E7)
  {
    v16 = v7;
    v17 = [*(a1 + 32) label];
    v18 = [*(a1 + 32) recorder];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__COMeshNode__serializedDataForCommand___block_invoke_3;
    v21[3] = &unk_278E15F80;
    *&v23[1] = v16;
    v23[2] = v5;
    v13 = v23;
    v22 = v3;
    v23[0] = v17;
    v19 = v2;
    v20 = v18[2];
    v15 = v17;
    v20(v18, 0x2857B5DA8, v21);
    v2 = v19;
    v12 = &v22;

    [(COMeshNodeMessageCounter *)v4 setCount:0];
    [(COMeshNodeMessageCounter *)v4 setSize:0];
    goto LABEL_7;
  }

  v8 = v6 / v5 + v7 - v7 / v5;
  [(COMeshNodeMessageCounter *)v4 setCount:v5];
  [(COMeshNodeMessageCounter *)v4 setSize:v8];
  HIDWORD(v9) = -1030792151 * v5;
  LODWORD(v9) = HIDWORD(v9);
  if ((v9 >> 2) <= 0x28F5C28)
  {
    v10 = [*(a1 + 32) label];
    v11 = [*(a1 + 32) recorder];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__COMeshNode__serializedDataForCommand___block_invoke_2;
    v24[3] = &unk_278E15F80;
    v26[1] = v8;
    v26[2] = v5;
    v12 = &v25;
    v13 = v26;
    v25 = v3;
    v26[0] = v10;
    v14 = v11[2];
    v15 = v10;
    v14(v11, 0x2857B5DA8, v24);

LABEL_7:
  }
}

id __40__COMeshNode__serializedDataForCommand___block_invoke_2(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v10[0] = v2;
  v9[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  v4 = a1[4];
  v5 = a1[5];
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = 0x2857B6028;
  v9[3] = 0x2857B5DC8;
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __40__COMeshNode__serializedDataForCommand___block_invoke_3(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v10[0] = v2;
  v9[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = 0x2857B6028;
  v9[3] = 0x2857B5DC8;
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_handleResponseToRequest:(id)request rapportRepresentation:(id)representation options:(id)options error:(id)error responseCallback:(id)callback at:(unint64_t)at
{
  v90 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  representationCopy = representation;
  optionsCopy = options;
  errorCopy = error;
  callbackCopy = callback;
  v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (errorCopy)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v21 = v19;
  v22 = [representationCopy objectForKey:@"response"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
  {
    acceptableResponses = [objc_opt_class() acceptableResponses];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke;
    v78[3] = &unk_278E15EE0;
    v78[4] = self;
    v67 = v22;
    v79 = v67;
    v69 = acceptableResponses;
    v24 = [acceptableResponses objectsPassingTest:v78];
    anyObject = [v24 anyObject];

    if (!anyObject)
    {
      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v20 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v68 = [(COMeshNode *)self _commandPayloadFromRapportRepresentation:representationCopy];
    if (v68)
    {
      v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:anyObject fromData:v68 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v26)
        {
          v66 = [representationCopy objectForKey:@"overhead"];
          if (v66)
          {
            v64 = v26;
            v27 = [(COMeshNode *)self requestCount]+ 1;
            if (v27 > 0x3E7)
            {
              [(COMeshNode *)self averageRequestTime];
              v48 = v47;
              label = [(COMeshNode *)self label];
              recorder = [(COMeshNode *)self recorder];
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke_2;
              v70[3] = &unk_278E15F30;
              v72 = v48;
              v73 = v27;
              v71 = label;
              v51 = recorder[2];
              v63 = label;
              v51(recorder, 0x2857B5D88, v70);

              [(COMeshNode *)self setRequestCount:0];
              [(COMeshNode *)self setAverageRequestTime:0.0];
              v52 = COCoreLogForCategory(0);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v58 = objc_opt_class();
                *buf = 138412802;
                selfCopy4 = self;
                v82 = 2112;
                v83 = v67;
                v84 = 2112;
                v85 = v58;
                v59 = v58;
                _os_log_debug_impl(&dword_244378000, v52, OS_LOG_TYPE_DEBUG, "%@ received %@ (reset timings) for %@", buf, 0x20u);
              }

              v43 = v63;
              v26 = v64;
            }

            else
            {
              [v66 doubleValue];
              v29 = ((v21 - at) - v28) / 1000000.0;
              [(COMeshNode *)self averageRequestTime];
              v31 = v30 * 1000.0;
              if (v29 <= v31)
              {
                v32 = v27;
                v29 = v31 + (v29 - v31) / v27;
              }

              else
              {
                v32 = 1;
              }

              v26 = v64;
              [(COMeshNode *)self setRequestCount:v32];
              v53 = v29 / 1000.0;
              [(COMeshNode *)self setAverageRequestTime:v53];
              v54 = COCoreLogForCategory(0);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v60 = objc_opt_class();
                *buf = 138413314;
                selfCopy4 = self;
                v82 = 2112;
                v83 = v67;
                v84 = 2048;
                v85 = v32;
                v86 = 2048;
                v87 = v53;
                v88 = 2112;
                v89 = v60;
                v61 = v32;
                v62 = v60;
                _os_log_debug_impl(&dword_244378000, v54, OS_LOG_TYPE_DEBUG, "%@ received %@ (%llu at %g ms) for %@", buf, 0x34u);

                v32 = v61;
                v26 = v64;
              }

              HIDWORD(v55) = -1030792151 * v32;
              LODWORD(v55) = HIDWORD(v55);
              if ((v55 >> 2) > 0x28F5C28)
              {
                goto LABEL_46;
              }

              label2 = [(COMeshNode *)self label];
              recorder2 = [(COMeshNode *)self recorder];
              v74[0] = MEMORY[0x277D85DD0];
              v74[1] = 3221225472;
              v74[2] = __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke_59;
              v74[3] = &unk_278E15F30;
              v76 = v53;
              v77 = v32;
              v75 = label2;
              v65 = recorder2[2];
              v43 = label2;
              v65(recorder2, 0x2857B5D88, v74);
            }
          }

          else
          {
            v43 = COCoreLogForCategory(0);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              v44 = objc_opt_class();
              *buf = 138412802;
              selfCopy4 = self;
              v82 = 2112;
              v83 = v67;
              v84 = 2112;
              v85 = v44;
              v45 = v43;
              v46 = v44;
              _os_log_debug_impl(&dword_244378000, v45, OS_LOG_TYPE_DEBUG, "%@ received %@ for %@", buf, 0x20u);

              v43 = v45;
            }
          }

LABEL_46:
          [v26 _setRapportOptions:optionsCopy];
          callbackCopy[2](callbackCopy, v26, 0);

          v20 = 0;
          errorCopy = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {

        [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      }
    }

    v34 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [COMeshNode _handleResponseToRequest:rapportRepresentation:options:error:responseCallback:at:];
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v20 = 1;
    goto LABEL_21;
  }

  v33 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [COMeshNode _handleResponseToRequest:rapportRepresentation:options:error:responseCallback:at:];
  }

  errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
  v20 = 0;
LABEL_23:

  if (!errorCopy)
  {
    goto LABEL_34;
  }

LABEL_24:
  remote = [(COMeshNode *)self remote];
  if (remote || [errorCopy code] != -6714)
  {

    goto LABEL_29;
  }

  domain = [errorCopy domain];
  v37 = [domain isEqualToString:*MEMORY[0x277D44250]];

  if ((v37 & 1) == 0)
  {
LABEL_29:
    v38 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      *buf = 138412802;
      selfCopy4 = self;
      v82 = 2112;
      v83 = errorCopy;
      v84 = 2112;
      v85 = v41;
      v42 = v41;
      _os_log_error_impl(&dword_244378000, v38, OS_LOG_TYPE_ERROR, "%@ received %@ for %@", buf, 0x20u);
    }
  }

  (callbackCopy)[2](callbackCopy, 0, errorCopy);
  if (v20)
  {
    parent = [(COMeshNode *)self parent];
    [parent _invalidateAndReintroduceNode:self];
  }

LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _eventIDForClass:a2];
  v6 = [v5 isEqualToString:*(a1 + 40)];
  *a3 = v6;

  return v6;
}

id __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke_59(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __95__COMeshNode__handleResponseToRequest_rapportRepresentation_options_error_responseCallback_at___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)activate
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%@ activating", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__COMeshNode_activate__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
    v5 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 didInvalidateNode:v4];
    }
  }
}

void __22__COMeshNode_activate__block_invoke_62(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__COMeshNode_activate__block_invoke_62_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRPStateUpdate];
  }
}

void __22__COMeshNode_activate__block_invoke_63(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__COMeshNode_activate__block_invoke_63_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleErrorFlagsUpdate];
  }
}

void __22__COMeshNode_activate__block_invoke_64(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__COMeshNode_activate__block_invoke_64_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDisconnect];
  }
}

void __22__COMeshNode_activate__block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __22__COMeshNode_activate__block_invoke_65_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained activity];
    if (v7 && (nw_activity_is_activated() & 1) == 0)
    {
      nw_activity_activate();
    }

    [v6 setLinkActivated:1];
    [v6 _handleActivation:v3];
  }
}

- (void)_handleActivation:(id)activation
{
  activationCopy = activation;
  if ([(COMeshNode *)self linkActivated]&& ![(COMeshNode *)self nodeActivated])
  {
    [(COMeshNode *)self setNodeActivated:1];
    v5 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [COMeshNode _handleActivation:];
    }

    parent = [(COMeshNode *)self parent];
    if (parent)
    {
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    delegate = [(COMeshNode *)self delegate];
    if (activationCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate node:self didReceiveError:activationCopy forCommand:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate didActivateNode:self];
    }
  }

LABEL_14:
}

- (void)_handleRPStateUpdate
{
  client = [(COMeshNode *)self client];
  usingOnDemandConnection = [client usingOnDemandConnection];

  if (usingOnDemandConnection)
  {

    [(COMeshNode *)self _handleRPIsUsingOnDemandConnection];
  }
}

- (void)_handleRPIsUsingOnDemandConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%@ link (IP) connected", &v5, 0xCu);
  }

  [(COMeshNode *)self setConnectionType:2];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorFlagsUpdate
{
  client = [(COMeshNode *)self client];
  errorFlags = [client errorFlags];

  if ((errorFlags & 0x200) != 0)
  {

    [(COMeshNode *)self _handleDisconnect];
  }
}

- (void)_handleDisconnect
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  parent = [(COMeshNode *)self parent];
  v13 = parent;
  if (parent)
  {
    [parent _handleLostNode:self];
  }

  else
  {
    client = [(COMeshNode *)self client];
    [client setInvalidationHandler:0];

    client2 = [(COMeshNode *)self client];
    [client2 invalidate];

    activity = [(COMeshNode *)self activity];
    if (activity && nw_activity_is_activated())
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7)
      {
        v8 = mach_continuous_time();
        activation_time = nw_activity_get_activation_time();
        xpc_dictionary_set_uint64(v7, "lifetime", v8 - activation_time);
        [(COMeshNode *)self averageRequestTime];
        xpc_dictionary_set_double(v7, "rtt", v10);
        xpc_dictionary_set_uint64(v7, "requests", [(COMeshNode *)self requestCount]);
        remote = [(COMeshNode *)self remote];
        v12 = remote;
        if (remote)
        {
          xpc_dictionary_set_uint64(v7, "nodeType", [remote type]);
          xpc_dictionary_set_uint64(v7, "nodeFlags", [v12 flags]);
        }

        xpc_dictionary_set_uint64(v7, "transport_type", 0);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }
  }
}

- (void)sendMeshCommand:(id)command
{
  v25[2] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = [(COMeshNode *)self _eventIDForClass:objc_opt_class()];
  v6 = [(COMeshNode *)self _serializedDataForCommand:commandCopy];
  v24[0] = @"source";
  v7 = MEMORY[0x277CCAAB0];
  source = [(COMeshNode *)self source];
  v9 = [v7 archivedDataWithRootObject:source requiringSecureCoding:1 error:0];
  v24[1] = @"command";
  v25[0] = v9;
  v25[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%@ sending %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  client = [(COMeshNode *)self client];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __30__COMeshNode_sendMeshCommand___block_invoke;
  v16[3] = &unk_278E179A0;
  objc_copyWeak(&v19, buf);
  v13 = v5;
  v17 = v13;
  v14 = commandCopy;
  v18 = v14;
  [client sendEventID:v13 event:v10 options:0 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __30__COMeshNode_sendMeshCommand___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_20;
  }

  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = *(a1 + 32);
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%@ sent %@ (%@)", &v16, 0x20u);
  }

  v6 = *MEMORY[0x277D44250];
  v7 = [v3 domain];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v3 code];

    if (v8 == -71148)
    {
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __30__COMeshNode_sendMeshCommand___block_invoke_cold_1(WeakRetained, a1);
      }

      [WeakRetained invalidate];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v10 = [WeakRetained delegate];
  if (v10)
  {
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        [v10 node:WeakRetained didReceiveError:v3 forCommand:*(a1 + 40)];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v10 node:WeakRetained didSendCommand:*(a1 + 40)];
    }
  }

  else
  {
    v11 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v16 = 138412802;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%@ received an error %@ for command %@ but no delegate to deliver", &v16, 0x20u);
    }
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendMeshRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__COMeshNode_sendMeshRequest___block_invoke;
  v6[3] = &unk_278E179C8;
  objc_copyWeak(&v9, &location);
  v5 = requestCopy;
  v7 = v5;
  selfCopy = self;
  [(COMeshNode *)self sendMeshRequest:v5 responseCallback:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __30__COMeshNode_sendMeshRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained delegate];
    if (v9)
    {
      if (v6)
      {
        if (objc_opt_respondsToSelector())
        {
          [v9 node:*(a1 + 40) didReceiveError:v6 forCommand:*(a1 + 32)];
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 _setSender:*(a1 + 40)];
        [v9 node:*(a1 + 40) didReceiveResponse:v5 toRequest:*(a1 + 32)];
      }
    }

    else
    {
      v10 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v11 = v5;
        }

        else
        {
          v11 = v6;
        }

        v12 = *(a1 + 32);
        v14 = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%@ received %@ for request %@ but no delegate to deliver", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendMeshRequest:(id)request responseCallback:(id)callback
{
  v40[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  v27 = [(COMeshNode *)self _serializedDataForCommand:requestCopy];
  v39[0] = @"source";
  v8 = MEMORY[0x277CCAAB0];
  source = [(COMeshNode *)self source];
  v10 = [v8 archivedDataWithRootObject:source requiringSecureCoding:1 error:0];
  v39[1] = @"command";
  v40[0] = v10;
  v40[1] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v11 = [(COMeshNode *)self _eventIDForClass:objc_opt_class()];
  client = [(COMeshNode *)self client];
  [requestCopy responseTimeout];
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  if (v14 <= 0.0)
  {
    v18 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@", buf, 0x16u);
    }

    v17 = 0;
  }

  else
  {
    v15 = MEMORY[0x277CBEAC0];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v17 = [v15 dictionaryWithObject:v16 forKey:*MEMORY[0x277D442F0]];

    v18 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v35 = 2114;
      v36 = v11;
      v37 = 2048;
      v38 = v14;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@ with timeout of %g", buf, 0x20u);
    }
  }

  activity = [requestCopy activity];
  v20 = [CONetworkActivityFactory activityWithLabel:2 parentActivity:activity];
  if (v20)
  {
    nw_activity_activate();
  }

  v21 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  objc_initWeak(buf, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__COMeshNode_sendMeshRequest_responseCallback___block_invoke;
  v28[3] = &unk_278E15DC8;
  objc_copyWeak(v32, buf);
  v22 = v20;
  v29 = v22;
  v23 = requestCopy;
  v30 = v23;
  v24 = callbackCopy;
  v31 = v24;
  v32[1] = v21;
  [client sendRequestID:v11 request:v26 options:v17 responseHandler:v28];

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x277D85DE8];
}

void __47__COMeshNode_sendMeshRequest_responseCallback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  if (*(a1 + 32))
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = v11;
    if (v11)
    {
      xpc_dictionary_set_uint64(v11, "transport_type", 0);
      v13 = *(a1 + 32);
      nw_activity_submit_metrics();
    }
  }

  v14 = *MEMORY[0x277D44250];
  v15 = [v9 domain];
  if ([v14 isEqualToString:v15])
  {
    v16 = [v9 code];

    if (v16 == -71148)
    {
      v17 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __47__COMeshNode_sendMeshRequest_responseCallback___block_invoke_cold_1(WeakRetained, a1);
      }

      [WeakRetained invalidate];
      if (*(a1 + 32))
      {
        nw_activity_complete_with_reason();
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  if (*(a1 + 32))
  {
    nw_activity_complete_with_reason();
  }

  [WeakRetained _handleResponseToRequest:*(a1 + 40) rapportRepresentation:v7 options:v8 error:v9 responseCallback:*(a1 + 48) at:*(a1 + 64)];
LABEL_16:
}

- (COMeshNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (COMeshLocalNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)HomeKitIdentifier
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_serializedDataForCommand:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, v0, OS_LOG_TYPE_FAULT, "Failed to properly archive for sending: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_serializedDataForCommand:(objc_class *)a1 .cold.2(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "%@ does not appear to properly support secure coding which is required for all commands!", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseToRequest:rapportRepresentation:options:error:responseCallback:at:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseToRequest:rapportRepresentation:options:error:responseCallback:at:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_2(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1(&dword_244378000, v3, v4, "%@ invalidated", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke_62_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_2(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1(&dword_244378000, v3, v4, "%@ link state updated", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke_63_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_2(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1(&dword_244378000, v3, v4, "%@ link error flags updated", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke_64_cold_1(uint64_t a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_10_2(a1);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%@ link (IP) disconnected", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __22__COMeshNode_activate__block_invoke_65_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_2(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1(&dword_244378000, v3, v4, "%@ link activated", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivation:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%@ finishing activation", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __30__COMeshNode_sendMeshCommand___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__COMeshNode_sendMeshRequest_responseCallback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end