@interface _NTKCollectionClientProxy
- (_NTKCollectionClientProxy)initWithWeakProxy:(id)proxy;
- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqId:(id)id;
- (void)flushCompleteForIdentifier:(id)identifier;
- (void)loadFullCollectionWithOrderedUUIDs:(id)ds selectedUUID:(id)d facesDescriptorsByUUID:(id)iD seqId:(id)id completion:(id)completion;
- (void)removeFaceForUUID:(id)d seqId:(id)id completion:(id)completion;
- (void)resetClientCollectionWithCompletion:(id)completion;
- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation seqId:(id)id;
- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id completion:(id)completion;
- (void)updateOrderedFaceUUIDs:(id)ds seqId:(id)id;
- (void)updateSelectedFaceUUID:(id)d seqId:(id)id;
- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqID:(id)iD;
@end

@implementation _NTKCollectionClientProxy

- (_NTKCollectionClientProxy)initWithWeakProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = _NTKCollectionClientProxy;
  v5 = [(_NTKCollectionClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, proxyCopy);
  }

  return v6;
}

- (void)loadFullCollectionWithOrderedUUIDs:(id)ds selectedUUID:(id)d facesDescriptorsByUUID:(id)iD seqId:(id)id completion:(id)completion
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  idCopy = id;
  completionCopy = completion;
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
    v20 = completionCopy;
    v21 = &v22;
    [v17 loadFullCollectionWithOrderedUUIDs:dsCopy selectedUUID:dCopy facesDescriptorsByUUID:iDCopy seqId:idCopy completion:v19];
  }

  else
  {
    v18 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy loadFullCollectionWithOrderedUUIDs:selectedUUID:facesDescriptorsByUUID:seqId:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)updateSelectedFaceUUID:(id)d seqId:(id)id
{
  idCopy = id;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateSelectedFaceUUID:dCopy seqId:idCopy];
}

- (void)updateOrderedFaceUUIDs:(id)ds seqId:(id)id
{
  idCopy = id;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateOrderedFaceUUIDs:dsCopy seqId:idCopy];
}

- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation seqId:(id)id
{
  idCopy = id;
  representationCopy = representation;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateFaceForUUID:dCopy withConfigurationJSONRepresentation:representationCopy seqId:idCopy];
}

- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id completion:(id)completion
{
  dCopy = d;
  directoryCopy = directory;
  idCopy = id;
  completionCopy = completion;
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
    v17 = completionCopy;
    v18 = &v19;
    [v14 updateFaceForUUID:dCopy withResourceDirectory:directoryCopy seqId:idCopy completion:v16];
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy updateFaceForUUID:withResourceDirectory:seqId:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)removeFaceForUUID:(id)d seqId:(id)id completion:(id)completion
{
  dCopy = d;
  idCopy = id;
  completionCopy = completion;
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
    v14 = completionCopy;
    v15 = &v16;
    [v11 removeFaceForUUID:dCopy seqId:idCopy completion:v13];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_NTKCollectionClientProxy removeFaceForUUID:seqId:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)resetClientCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
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
    v8 = completionCopy;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  _Block_object_dispose(&v10, 8);
}

- (void)flushCompleteForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained flushCompleteForIdentifier:identifierCopy];
}

- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqId:(id)id
{
  idCopy = id;
  dCopy = d;
  descriptorCopy = descriptor;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained addFaceInstanceDescriptor:descriptorCopy forUUID:dCopy seqId:idCopy];
}

- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  descriptorCopy = descriptor;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained upgradeFaceInstanceDescriptor:descriptorCopy forUUID:dCopy seqID:iDCopy];
}

@end