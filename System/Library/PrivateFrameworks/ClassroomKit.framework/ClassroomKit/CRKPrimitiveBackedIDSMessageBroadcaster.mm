@interface CRKPrimitiveBackedIDSMessageBroadcaster
+ (id)broadcasterWithIDSPrimitives:(id)primitives;
- (CRKPrimitiveBackedIDSMessageBroadcaster)initWithIDSPrimitives:(id)primitives;
- (void)addBroadcastHandler:(id)handler;
- (void)beginListeningForMessagesWithCompletion:(id)completion;
- (void)broadcastMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
@end

@implementation CRKPrimitiveBackedIDSMessageBroadcaster

- (CRKPrimitiveBackedIDSMessageBroadcaster)initWithIDSPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v11.receiver = self;
  v11.super_class = CRKPrimitiveBackedIDSMessageBroadcaster;
  v6 = [(CRKPrimitiveBackedIDSMessageBroadcaster *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_IDSPrimitives, primitives);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    broadcastHandlers = v7->_broadcastHandlers;
    v7->_broadcastHandlers = weakObjectsHashTable;
  }

  return v7;
}

+ (id)broadcasterWithIDSPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v5 = [[self alloc] initWithIDSPrimitives:primitivesCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CRKPrimitiveBackedIDSMessageBroadcaster_broadcasterWithIDSPrimitives___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = self;
  [v5 beginListeningForMessagesWithCompletion:v7];

  return v5;
}

void __72__CRKPrimitiveBackedIDSMessageBroadcaster_broadcasterWithIDSPrimitives___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _CRKLogASM_15();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__CRKPrimitiveBackedIDSMessageBroadcaster_broadcasterWithIDSPrimitives___block_invoke_cold_1(a1, v3);
    }
  }
}

- (void)addBroadcastHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _CRKLogASM_15();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2114;
    v14 = handlerCopy;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Adding broadcast handler (%{public}@)", &v9, 0x20u);
  }

  broadcastHandlers = [(CRKPrimitiveBackedIDSMessageBroadcaster *)self broadcastHandlers];
  [broadcastHandlers addObject:handlerCopy];
}

- (void)beginListeningForMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  iDSPrimitives = [(CRKPrimitiveBackedIDSMessageBroadcaster *)self IDSPrimitives];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke;
  v10[3] = &unk_278DC2B40;
  objc_copyWeak(&v11, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke_2;
  v7[3] = &unk_278DC2B68;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [iDSPrimitives subscribeToMessagesWithHandler:v10 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcastMessage:v9 senderAppleID:v8 senderAddress:v7];
}

void __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = _CRKLogASM_15();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke_2_cold_1(WeakRetained, v6);
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = 138543618;
        v16 = v14;
        v17 = 2048;
        v18 = WeakRetained;
        _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Established IDS message listener", &v15, 0x16u);
      }

      [WeakRetained setMessageSubscription:v5];
      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = CRKErrorWithCodeAndUserInfo(2, &unk_2856724C8);
    (*(v11 + 16))(v11, v12);
  }
}

- (void)broadcastMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  addressCopy = address;
  v11 = _CRKLogASM_15();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544130;
    v25 = v13;
    v26 = 2048;
    selfCopy = self;
    v28 = 2114;
    v29 = messageCopy;
    v30 = 2114;
    v31 = dCopy;
    _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Broadcasting IDS message. message=%{public}@, sender=%{public}@", buf, 0x2Au);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  broadcastHandlers = [(CRKPrimitiveBackedIDSMessageBroadcaster *)self broadcastHandlers];
  v15 = [broadcastHandlers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(broadcastHandlers);
        }

        [*(*(&v19 + 1) + 8 * v18++) processMessage:messageCopy senderAppleID:dCopy senderAddress:addressCopy];
      }

      while (v16 != v18);
      v16 = [broadcastHandlers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

void __72__CRKPrimitiveBackedIDSMessageBroadcaster_broadcasterWithIDSPrimitives___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to create message broadcaster. Error: %{public}@", v8, v9, v10, v11, v12);
}

void __83__CRKPrimitiveBackedIDSMessageBroadcaster_beginListeningForMessagesWithCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to begin listening for IDS messages. Error = %{public}@", v8, v9, v10, v11, v12);
}

@end