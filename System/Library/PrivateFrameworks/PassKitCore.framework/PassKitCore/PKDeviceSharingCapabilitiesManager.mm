@interface PKDeviceSharingCapabilitiesManager
- (PKDeviceSharingCapabilitiesManager)init;
- (id)currentFetchStatusForAppleID:(id)d;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_sendDeviceSharingCapabilitiesUpdated:(id)updated maximumPossibleDevices:(int64_t)devices forAppleID:(id)d;
- (void)_sendDeviceSharingCapabilitiesUpdated:(id)updated newSharingCapabilties:(id)capabilties forAppleID:(id)d;
- (void)dealloc;
- (void)didReceiveDeviceSharingCapabilities:(id)capabilities forHandle:(id)handle;
- (void)fetchDeviceCapabilitesForAppleIDs:(id)ds associatedFamilyMembers:(id)members;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation PKDeviceSharingCapabilitiesManager

- (PKDeviceSharingCapabilitiesManager)init
{
  v14.receiver = self;
  v14.super_class = PKDeviceSharingCapabilitiesManager;
  v2 = [(PKDeviceSharingCapabilitiesManager *)&v14 init];
  if (v2)
  {
    v3 = +[PKPaymentService paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = v3;

    [(PKPaymentService *)v2->_paymentService registerObserver:v2];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchStatusByAppleID = v2->_fetchStatusByAppleID;
    v2->_fetchStatusByAppleID = v5;

    *&v2->_lockObservers._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    familyMembers = v2->_familyMembers;
    v2->_familyMembers = v7;

    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v11 = dispatch_queue_create("com.apple.passkit.PKDeviceSharingCapabilitiesManager.reply", 0);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v11;
  }

  return v2;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKDeviceSharingCapabilitiesManager;
  [(PKDeviceSharingCapabilitiesManager *)&v3 dealloc];
}

- (void)fetchDeviceCapabilitesForAppleIDs:(id)ds associatedFamilyMembers:(id)members
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  membersCopy = members;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(dsCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        os_unfair_lock_lock(&self->_lock);
        [(NSMutableArray *)self->_familyMembers addObjectsFromArray:membersCopy];
        v13 = [(NSMutableDictionary *)self->_fetchStatusByAppleID objectForKey:v12];
        v14 = PKLogFacilityTypeGetObject(7uLL);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Not fetching family member device capabilities since one is already in progress %@", buf, 0xCu);
          }

          os_unfair_lock_unlock(&self->_lock);
        }

        else
        {
          if (v15)
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Fetching family member device capabilities %@", buf, 0xCu);
          }

          v16 = [PKDeviceSharingCapabilitiesFetchStatus alloc];
          date = [MEMORY[0x1E695DF00] date];
          v18 = [(PKDeviceSharingCapabilitiesFetchStatus *)v16 initWithAppleID:v12 fetchStartDate:date];

          [(PKDeviceSharingCapabilitiesFetchStatus *)v18 setDeviceCountFetchInProgress:1];
          [(NSMutableDictionary *)self->_fetchStatusByAppleID setObject:v18 forKey:v12];

          os_unfair_lock_unlock(&self->_lock);
          paymentService = self->_paymentService;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __96__PKDeviceSharingCapabilitiesManager_fetchDeviceCapabilitesForAppleIDs_associatedFamilyMembers___block_invoke;
          v20[3] = &unk_1E79D9520;
          v20[4] = self;
          v20[5] = v12;
          [(PKPaymentService *)paymentService sendDeviceSharingCapabilitiesRequestForHandle:v12 completion:v20];
        }
      }

      v9 = [dsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }
}

void __96__PKDeviceSharingCapabilitiesManager_fetchDeviceCapabilitesForAppleIDs_associatedFamilyMembers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  os_unfair_lock_lock(v5 + 5);
  v7 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  [v7 setMaximumPossibleDevices:a2];
  [v7 setFetchError:v6];

  [v7 setDeviceCountFetchInProgress:0];
  [*(*(a1 + 32) + 48) setObject:v7 forKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 20));
  [*(a1 + 32) _sendDeviceSharingCapabilitiesUpdated:v7 maximumPossibleDevices:a2 forAppleID:*(a1 + 40)];
}

- (id)currentFetchStatusForAppleID:(id)d
{
  if (d)
  {
    dCopy = d;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_fetchStatusByAppleID objectForKey:dCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didReceiveDeviceSharingCapabilities:(id)capabilities forHandle:(id)handle
{
  v41 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  handleCopy = handle;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_fetchStatusByAppleID objectForKey:handleCopy];
  if (v8)
  {
LABEL_33:
    [v8 addDeviceSharingCapabilities:capabilitiesCopy];
    v24 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = handleCopy;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Updating device capabilities for appleID %@, %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_familyMembers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v10)
  {

    goto LABEL_36;
  }

  v11 = v10;
  v25 = capabilitiesCopy;
  obj = v9;
  v8 = 0;
  v12 = *v32;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      appleID = [v14 appleID];
      v16 = handleCopy;
      v17 = v16;
      if (appleID == v16)
      {

LABEL_14:
        [(NSMutableDictionary *)self->_fetchStatusByAppleID objectForKey:v17];
        v8 = appleID = v8;
        goto LABEL_16;
      }

      if (handleCopy && appleID)
      {
        v18 = [appleID isEqualToString:v16];

        if (!v18)
        {
          if (v8)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_16:
      if (v8)
      {
LABEL_32:

        capabilitiesCopy = v25;
        goto LABEL_33;
      }

LABEL_17:
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      appleIDAliases = [v14 appleIDAliases];
      v20 = [appleIDAliases countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v8 = 0;
        v22 = *v28;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(appleIDAliases);
            }

            if (!v8)
            {
              v8 = [(NSMutableDictionary *)self->_fetchStatusByAppleID objectForKey:*(*(&v27 + 1) + 8 * j)];
            }
          }

          v21 = [appleIDAliases countByEnumeratingWithState:&v27 objects:v39 count:16];
        }

        while (v21);
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  capabilitiesCopy = v25;
  if (v8)
  {
    goto LABEL_33;
  }

LABEL_36:
  v24 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = handleCopy;
    _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Not responding to device capabilities for appleID %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_39:

  os_unfair_lock_unlock(&self->_lock);
  [(PKDeviceSharingCapabilitiesManager *)self _sendDeviceSharingCapabilitiesUpdated:v8 newSharingCapabilties:capabilitiesCopy forAppleID:handleCopy];
}

- (void)_sendDeviceSharingCapabilitiesUpdated:(id)updated newSharingCapabilties:(id)capabilties forAppleID:(id)d
{
  updatedCopy = updated;
  capabiltiesCopy = capabilties;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__PKDeviceSharingCapabilitiesManager__sendDeviceSharingCapabilitiesUpdated_newSharingCapabilties_forAppleID___block_invoke;
  v14[3] = &unk_1E79D9548;
  v15 = updatedCopy;
  v16 = capabiltiesCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = capabiltiesCopy;
  v13 = updatedCopy;
  [(PKDeviceSharingCapabilitiesManager *)self _accessObserversWithHandler:v14];
}

void __109__PKDeviceSharingCapabilitiesManager__sendDeviceSharingCapabilitiesUpdated_newSharingCapabilties_forAppleID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceSharingCapabilitiesUpdated:a1[4] newSharingCapabilties:a1[5] forAppleID:a1[6]];
  }
}

- (void)_sendDeviceSharingCapabilitiesUpdated:(id)updated maximumPossibleDevices:(int64_t)devices forAppleID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__PKDeviceSharingCapabilitiesManager__sendDeviceSharingCapabilitiesUpdated_maximumPossibleDevices_forAppleID___block_invoke;
  v12[3] = &unk_1E79D9570;
  v14 = dCopy;
  devicesCopy = devices;
  v13 = updatedCopy;
  v10 = dCopy;
  v11 = updatedCopy;
  [(PKDeviceSharingCapabilitiesManager *)self _accessObserversWithHandler:v12];
}

void __110__PKDeviceSharingCapabilitiesManager__sendDeviceSharingCapabilitiesUpdated_maximumPossibleDevices_forAppleID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceSharingCapabilitiesUpdated:a1[4] maximumPossibleDevices:a1[6] forAppleID:a1[5]];
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__PKDeviceSharingCapabilitiesManager__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __66__PKDeviceSharingCapabilitiesManager__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end