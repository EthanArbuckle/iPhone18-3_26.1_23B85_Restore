@interface _NTKCollectionClientProxy
- (_NTKCollectionClientProxy)initWithWeakProxy:(id)a3;
- (void)addFaceInstanceDescriptor:(id)a3 forUUID:(id)a4 seqId:(id)a5;
- (void)flushCompleteForIdentifier:(id)a3;
- (void)loadFullCollectionWithOrderedUUIDs:(id)a3 selectedUUID:(id)a4 facesDescriptorsByUUID:(id)a5 seqId:(id)a6 completion:(id)a7;
- (void)removeFaceForUUID:(id)a3 seqId:(id)a4 completion:(id)a5;
- (void)resetClientCollectionWithCompletion:(id)a3;
- (void)updateFaceForUUID:(id)a3 withConfigurationJSONRepresentation:(id)a4 seqId:(id)a5;
- (void)updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 seqId:(id)a5 completion:(id)a6;
- (void)updateOrderedFaceUUIDs:(id)a3 seqId:(id)a4;
- (void)updateSelectedFaceUUID:(id)a3 seqId:(id)a4;
- (void)upgradeFaceInstanceDescriptor:(id)a3 forUUID:(id)a4 seqID:(id)a5;
@end

@implementation _NTKCollectionClientProxy

- (_NTKCollectionClientProxy)initWithWeakProxy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _NTKCollectionClientProxy;
  v5 = [(_NTKCollectionClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, v4);
  }

  return v6;
}

- (void)loadFullCollectionWithOrderedUUIDs:(id)a3 selectedUUID:(id)a4 facesDescriptorsByUUID:(id)a5 seqId:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__16;
  v26 = __Block_byref_object_dispose__16;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  if (v23[5])
  {
    v17 = objc_loadWeakRetained(&self->_proxy);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117___NTKCollectionClientProxy_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke;
    v19[3] = &unk_278780F80;
    v20 = v16;
    v21 = &v22;
    [v17 loadFullCollectionWithOrderedUUIDs:v12 selectedUUID:v13 facesDescriptorsByUUID:v14 seqId:v15 completion:v19];
  }

  else
  {
    v18 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy loadFullCollectionWithOrderedUUIDs:selectedUUID:facesDescriptorsByUUID:seqId:completion:];
    }

    if (v16)
    {
      v16[2](v16);
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)updateSelectedFaceUUID:(id)a3 seqId:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateSelectedFaceUUID:v7 seqId:v6];
}

- (void)updateOrderedFaceUUIDs:(id)a3 seqId:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateOrderedFaceUUIDs:v7 seqId:v6];
}

- (void)updateFaceForUUID:(id)a3 withConfigurationJSONRepresentation:(id)a4 seqId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateFaceForUUID:v10 withConfigurationJSONRepresentation:v9 seqId:v8];
}

- (void)updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 seqId:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  v14 = v20[5];
  if (v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86___NTKCollectionClientProxy_updateFaceForUUID_withResourceDirectory_seqId_completion___block_invoke;
    v16[3] = &unk_278780F80;
    v17 = v13;
    v18 = &v19;
    [v14 updateFaceForUUID:v10 withResourceDirectory:v11 seqId:v12 completion:v16];
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy updateFaceForUUID:withResourceDirectory:seqId:completion:];
    }

    if (v13)
    {
      v13[2](v13);
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)removeFaceForUUID:(id)a3 seqId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  if (v17[5])
  {
    v11 = objc_loadWeakRetained(&self->_proxy);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64___NTKCollectionClientProxy_removeFaceForUUID_seqId_completion___block_invoke;
    v13[3] = &unk_278780F80;
    v14 = v10;
    v15 = &v16;
    [v11 removeFaceForUUID:v8 seqId:v9 completion:v13];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy removeFaceForUUID:seqId:completion:];
    }

    if (v10)
    {
      v10[2](v10);
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)resetClientCollectionWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  if (v11[5])
  {
    v5 = objc_loadWeakRetained(&self->_proxy);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65___NTKCollectionClientProxy_resetClientCollectionWithCompletion___block_invoke;
    v7[3] = &unk_278780F80;
    v8 = v4;
    v9 = &v10;
    [v5 resetClientCollectionWithCompletion:v7];
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy resetClientCollectionWithCompletion:];
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  _Block_object_dispose(&v10, 8);
}

- (void)flushCompleteForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained flushCompleteForIdentifier:v4];
}

- (void)addFaceInstanceDescriptor:(id)a3 forUUID:(id)a4 seqId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained addFaceInstanceDescriptor:v10 forUUID:v9 seqId:v8];
}

- (void)upgradeFaceInstanceDescriptor:(id)a3 forUUID:(id)a4 seqID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained upgradeFaceInstanceDescriptor:v10 forUUID:v9 seqID:v8];
}

@end