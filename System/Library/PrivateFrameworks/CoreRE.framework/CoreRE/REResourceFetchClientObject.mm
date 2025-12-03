@interface REResourceFetchClientObject
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (REResourceFetchClientObject)initWithResourceFetchManager:(void *)manager connection:(const Connection *)connection voucher:(id)voucher;
- (void)associateConnectionWithPeerID:(unint64_t)d clientPorts:(id)ports;
- (void)dealloc;
- (void)decodeShaderGraph:(id)graph withFnConsts:(id)consts withReply:(id)reply;
- (void)pushLoadedResourceWithPayloadAndAssetId:(unint64_t)id assetType:(id)type payload:(id)payload isPriorityAsset:(BOOL)asset;
- (void)receiveDirectResourceCommit:(id)commit;
- (void)receiveTrackableResource:(id)resource withType:(int)type;
- (void)releaseResourcesWithAssetIds:(id)ids;
- (void)resourceAtAssetPath:(id)path payloadDidUpdate:(id)update error:(id)error;
@end

@implementation REResourceFetchClientObject

- (REResourceFetchClientObject)initWithResourceFetchManager:(void *)manager connection:(const Connection *)connection voucher:(id)voucher
{
  voucherCopy = voucher;
  v17.receiver = self;
  v17.super_class = REResourceFetchClientObject;
  v10 = [(REResourceFetchClientObject *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resourceFetchManager = manager;
    v10->_peerID = 0;
    objc_storeStrong(&v10->_voucher, voucher);
    if (*connection)
    {
      [*connection auditToken];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    v12 = *&v16.val[4];
    *v11->_auditToken.val = *v16.val;
    *&v11->_auditToken.val[4] = v12;
    v13 = *&v11->_auditToken.val[4];
    *v16.val = *v11->_auditToken.val;
    *&v16.val[4] = v13;
    v11->_pid = audit_token_to_pid(&v16);
    v14 = *&v11->_auditToken.val[4];
    *v16.val = *v11->_auditToken.val;
    *&v16.val[4] = v14;
    v11->_pidversion = audit_token_to_pidversion(&v16);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  pendingShaderGraphs = self->_pendingShaderGraphs;
  if (pendingShaderGraphs)
  {
    v4 = re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(self->_pendingShaderGraphs);
    MEMORY[0x1E6906520](pendingShaderGraphs, 0x1030C400262B8F8, v4);
  }

  v5.receiver = self;
  v5.super_class = REResourceFetchClientObject;
  [(REResourceFetchClientObject *)&v5 dealloc];
}

- (void)resourceAtAssetPath:(id)path payloadDidUpdate:(id)update error:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  updateCopy = update;
  errorCopy = error;
  v11 = errorCopy;
  if (pathCopy)
  {
    resourceFetchManager = self->_resourceFetchManager;
    if (resourceFetchManager)
    {
      if (errorCopy)
      {
        selfCopy2 = self;
        v28 = selfCopy2;
        uTF8String = [pathCopy UTF8String];
        v15 = v11;
        v25[0] = 0;
        v26 = v15;
        re::ResourceFetchManager::updateResourceWithPayloadAndAssetId(resourceFetchManager, &v28, v27, v25);

        if (*&v27[0])
        {
          if (BYTE8(v27[0]))
          {
            (*(**&v27[0] + 40))();
          }

          memset(v27, 0, sizeof(v27));
        }

LABEL_18:

        goto LABEL_19;
      }

      if (updateCopy)
      {
        selfCopy2 = self;
        v24 = selfCopy2;
        uTF8String2 = [pathCopy UTF8String];
        v20 = updateCopy;
        v21[0] = 1;
        v22 = v20;
        re::ResourceFetchManager::updateResourceWithPayloadAndAssetId(resourceFetchManager, &v24, v23, v21);

        if (*&v23[0])
        {
          if (BYTE8(v23[0]))
          {
            (*(**&v23[0] + 40))();
          }

          memset(v23, 0, sizeof(v23));
        }

        goto LABEL_18;
      }

      v16 = re::resourceSharingLogObjects(0)[1];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      selfCopy5 = self;
      v17 = "Resource connection %@ received an invalid message: both payload and error are nil";
      goto LABEL_10;
    }

    v18 = re::resourceSharingLogObjects(errorCopy)[1];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy5 = self;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored a message: service was deinited", buf, 0xCu);
    }
  }

  else
  {
    v16 = re::resourceSharingLogObjects(errorCopy)[1];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy5 = self;
      v17 = "Resource connection %@ received an invalid updated payload for a nil asset path";
LABEL_10:
      _os_log_fault_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_FAULT, v17, buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)pushLoadedResourceWithPayloadAndAssetId:(unint64_t)id assetType:(id)type payload:(id)payload isPriorityAsset:(BOOL)asset
{
  assetCopy = asset;
  *&v30[5] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadCopy = payload;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v13 = [currentConnection valueForEntitlement:@"com.apple.surfboard.allow-any-custom-shader"];
  bOOLValue = [v13 BOOLValue];

  if (typeCopy)
  {
    if (id)
    {
      [payloadCopy setClientObject:self];
      resourceFetchManager = self->_resourceFetchManager;
      selfCopy = self;
      v18 = [typeCopy cStringUsingEncoding:4];
      v19 = payloadCopy;
      v20 = resourceFetchManager[48];
      if (v20)
      {
        v21 = (v20 + 8);
      }

      peerID = [(REResourceFetchClientObject *)selfCopy peerID];
      if (peerID)
      {
        if (!v20)
        {
LABEL_17:

          goto LABEL_18;
        }

        v23 = peerID;
        LOBYTE(v29) = 1;
        *&v30[1] = v19;
        (*(*v20 + 32))(v20, id, v18, v23, v23, bOOLValue, &v29, assetCopy);
      }

      else
      {
        v26 = re::resourceSharingLogObjects(0)[1];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = selfCopy;
          v28 = v26;
          v29 = 67109376;
          v30[0] = [(REResourceFetchClientObject *)v27 pid];
          LOWORD(v30[1]) = 2048;
          *(&v30[1] + 2) = id;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Client (pid %d) attempted to push-load asset %llu without registering a peerID.  Push load will not be initiated.", &v29, 0x12u);
        }

        if (!v20)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_17;
    }

    v24 = re::resourceSharingLogObjects(v15)[1];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v29 = 138412290;
      *v30 = self;
      v25 = "Resource connection %@ received an invalid push load request: assetId is 0";
      goto LABEL_12;
    }
  }

  else
  {
    v24 = re::resourceSharingLogObjects(v15)[1];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v29 = 138412290;
      *v30 = self;
      v25 = "Resource connection %@ received an invalid push load request: assetType is nil";
LABEL_12:
      _os_log_fault_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_FAULT, v25, &v29, 0xCu);
    }
  }

LABEL_18:
}

- (void)releaseResourcesWithAssetIds:(id)ids
{
  v36 = *MEMORY[0x1E69E9840];
  resourceFetchManager = self->_resourceFetchManager;
  idsCopy = ids;
  selfCopy = self;
  v7 = idsCopy;
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = resourceFetchManager[48];
    if (v10)
    {
      v11 = (v10 + 8);
    }

    peerID = [(REResourceFetchClientObject *)selfCopy peerID];
    if (peerID)
    {
      if (v10)
      {
        v14 = peerID;
        v15 = 0;
        *&v13 = 67109120;
        v31 = v13;
        while (1)
        {
          v16 = [v7 objectAtIndexedSubscript:{v15, v31}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [v7 objectAtIndexedSubscript:v15];
            (*(*v10 + 48))(v10, [v19 unsignedLongLongValue], v14);
          }

          else
          {
            v20 = re::resourceSharingLogObjects(v18)[1];
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_11;
            }

            v21 = selfCopy;
            v19 = v20;
            v22 = [(REResourceFetchClientObject *)v21 pid];
            *buf = v31;
            v33 = v22;
            _os_log_fault_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_FAULT, "releaseResourcesWithAssetIds received array from Client (pid %d) with an element that is not NSNumber", buf, 8u);
          }

LABEL_11:
          if (v9 == ++v15)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      v26 = re::resourceSharingLogObjects(0)[1];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = selfCopy;
        v28 = v26;
        v29 = [(REResourceFetchClientObject *)v27 pid];
        v30 = [v7 objectAtIndexedSubscript:0];
        *buf = 67109378;
        v33 = v29;
        v34 = 2112;
        v35 = v30;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Client (pid %d) attempted to release assets (first asset is %@) without registering a peerID.  Release will not be initiated.", buf, 0x12u);
      }

LABEL_18:
      if (v10)
      {
      }
    }
  }

  else
  {
    v23 = re::resourceSharingLogObjects(0)[1];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = selfCopy;
      v25 = v23;
      *buf = 67109120;
      v33 = [(REResourceFetchClientObject *)v24 pid];
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Client (pid %d) attempted to release assets with empty asset id array", buf, 8u);
    }
  }
}

- (void)receiveDirectResourceCommit:(id)commit
{
  resourceFetchManager = self->_resourceFetchManager;
  commitCopy = commit;
  selfCopy = self;
  v14 = selfCopy;
  object = [commitCopy object];

  v7 = object;
  dispatch_assert_queue_V2(*(resourceFetchManager + 4));
  os_unfair_lock_lock(resourceFetchManager + 32);
  v8 = *(resourceFetchManager + 49);
  if (v8)
  {
    v9 = *(resourceFetchManager + 19);
    if (v9)
    {
      v10 = v9 << 6;
      v11 = (*(resourceFetchManager + 21) + 8);
      while (*v11 != selfCopy)
      {
        v11 += 8;
        v10 -= 64;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      v12 = re::directMeshConnectionId(&v14);
      (*(*v8 + 48))(v8, v7, v12);
    }
  }

LABEL_8:
  os_unfair_lock_unlock(resourceFetchManager + 32);
}

- (void)receiveTrackableResource:(id)resource withType:(int)type
{
  resourceFetchManager = self->_resourceFetchManager;
  resourceCopy = resource;
  selfCopy = self;
  object = [resourceCopy object];

  v10 = object;
  dispatch_assert_queue_V2(*(resourceFetchManager + 4));
  os_unfair_lock_lock(resourceFetchManager + 32);
  v11 = *(resourceFetchManager + 50);
  if (*(v11 + 56))
  {
    v12 = *(resourceFetchManager + 19);
    if (v12)
    {
      v13 = v12 << 6;
      v14 = (*(resourceFetchManager + 21) + 8);
      while (*v14 != selfCopy)
      {
        v14 += 8;
        v13 -= 64;
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      v16 = v10;
      typeCopy = type;
      (*(**(v11 + 56) + 16))(*(v11 + 56), &v16, &typeCopy);
    }
  }

LABEL_8:
  os_unfair_lock_unlock(resourceFetchManager + 32);
}

- (void)associateConnectionWithPeerID:(unint64_t)d clientPorts:(id)ports
{
  v28 = *MEMORY[0x1E69E9840];
  portsCopy = ports;
  if (self->_peerID)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Tried to set peer ID on a connection twice", "_peerID == 0", "[REResourceFetchClientObject associateConnectionWithPeerID:clientPorts:]", 1315);
    _os_crash();
    __break(1u);
  }

  v9 = portsCopy;
  dispatch_assert_queue_V2(*(self->_resourceFetchManager + 4));
  *buf = d;
  *&buf[8] = self->_pid;
  *&buf[12] = *self->_auditToken.val;
  *&buf[28] = *&self->_auditToken.val[4];
  v27 = 0;
  v11 = re::PeerIDValidator::instance(v10);
  v12 = re::PeerIDValidator::validateOrAdd_impl(v11, buf);
  if (v12)
  {
    peerID = self->_peerID;
    v14 = re::resourceSharingLogObjects(v12)[1];
    if (peerID)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218242;
        *&buf[4] = d;
        *&buf[12] = 2112;
        *&buf[14] = self;
        _os_log_fault_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_FAULT, "Attempted to associate peer ID %llu with resource connection %@ which already has a peer ID", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = d;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Resource connection %@ is now associated with peer ID %llu", buf, 0x16u);
      }

      self->_peerID = d;
      objc_storeStrong(&self->_clientPorts, ports);
    }

    v15 = *(self->_resourceFetchManager + 50);
    if (v15)
    {
      v16 = v15 + 1;
    }

    v17 = v15[10];
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = 48 * v17;
    v19 = (v15[12] + 40);
    do
    {
      pid = self->_pid;
      v21 = *&self->_auditToken.val[4];
      *buf = *self->_auditToken.val;
      *&buf[16] = v21;
      v22 = self->_peerID;
      v25 = pid;
      v24 = v22;
      v23 = *v19;
      v19 += 6;
      (*(*v23 + 16))(v23, &v25, buf, &v24);
      v18 -= 48;
    }

    while (v18);
    if (v15)
    {
LABEL_15:
    }
  }
}

- (void)decodeShaderGraph:(id)graph withFnConsts:(id)consts withReply:(id)reply
{
  graphCopy = graph;
  constsCopy = consts;
  replyCopy = reply;
  dispatch_assert_queue_V2(*(self->_resourceFetchManager + 4));
  v11 = _Block_copy(*(self->_resourceFetchManager + 53));
  if (v11)
  {
    v13 = v11;
    v14 = MEMORY[0x1E696B0B8];
    v15 = *(self->_resourceFetchManager + 5);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__REResourceFetchClientObject_decodeShaderGraph_withFnConsts_withReply___block_invoke;
    v20[3] = &unk_1E871AAE0;
    v21 = graphCopy;
    v22 = constsCopy;
    selfCopy = self;
    v24 = v11;
    v25 = replyCopy;
    v16 = replyCopy;
    v17 = constsCopy;
    v18 = graphCopy;
    v19 = v13;
    [v14 _handoffCurrentReplyToQueue:v15 block:v20];
  }

  else
  {
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "shaderGraphLoader", "[REResourceFetchClientObject decodeShaderGraph:withFnConsts:withReply:]", 1352);
    _os_crash();
    __break(1u);
  }
}

void __72__REResourceFetchClientObject_decodeShaderGraph_withFnConsts_withReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__REResourceFetchClientObject_decodeShaderGraph_withFnConsts_withReply___block_invoke_2;
  v4[3] = &unk_1E871AAB8;
  v4[4] = *(a1 + 48);
  v5 = v3;
  (*(v2 + 16))(v7, v2, &v6, &v5, v4);

  (*(*(a1 + 64) + 16))();
}

void __72__REResourceFetchClientObject_decodeShaderGraph_withFnConsts_withReply___block_invoke_2(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v6 = [*(a1 + 32) pendingShaderGraphs];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v12, v6, a2, v7 ^ (v7 >> 31));
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v6, v13, v12);
    v9 = *a3;
    *(v8 + 8) = a2;
    *(v8 + 16) = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(v6 + 40);
  }

  objc_sync_exit(obj);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[2];
  *retstr->var0 = *&self[1].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end