@interface PKSharingChannelHandle
+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5;
+ (void)bootstrapSetupAssistantProximityChannelWithTemplateSession:(id)a3 completion:(id)a4;
+ (void)descriptorsForAccountDevices:(id)a3;
+ (void)terminateProximityChannelForGroup:(id)a3;
+ (void)terminateSetupAssistantProximityChannel;
- (BOOL)_lock_isStatusValidForAction:(BOOL)a3;
- (BOOL)hasOutstandingMessage;
- (BOOL)isInvalid;
- (id)_initWithQueue:(id)a3;
- (id)createActionAssertionAllowWhileTransferring:(BOOL)a3;
- (void)_didReceiveMessage;
- (void)attachAndFetchMessage:(id)a3;
- (void)dealloc;
- (void)detachHandleForTransfer:(id)a3;
- (void)didInvalidate;
- (void)didReceiveMessages:(id)a3;
- (void)handleOutstandingMessage:(id)a3;
- (void)invalidateWithRemoteWithCompletion:(id)a3;
- (void)invalidateWithSource:(unint64_t)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)sendMessageAndWaitForReply:(id)a3 timeout:(double)a4 messageHandler:(id)a5 invalidationHandler:(id)a6;
- (void)setInvalidationHandler:(id)a3;
- (void)setMessageReceivedHandler:(id)a3;
- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4;
- (void)waitForMessageWithTimeout:(double)a3 messageHandler:(id)a4 invalidationHandler:(id)a5;
@end

@implementation PKSharingChannelHandle

- (id)_initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKSharingChannelHandle;
  v6 = [(PKSharingChannelHandle *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outstandingMessages = v7->_outstandingMessages;
    v7->_outstandingMessages = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    receivedMessageIdentifiers = v7->_receivedMessageIdentifiers;
    v7->_receivedMessageIdentifiers = v10;

    v7->_status = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(PKSharingChannelHandle *)self invalidateWithSource:3 completion:0];
  v3.receiver = self;
  v3.super_class = PKSharingChannelHandle;
  [(PKSharingChannelHandle *)&v3 dealloc];
}

- (BOOL)hasOutstandingMessage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0;
  if ([(PKSharingChannelHandle *)self _lock_isStatusValidForAction:0])
  {
    v3 = [(NSMutableArray *)self->_outstandingMessages count]!= 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)handleOutstandingMessage:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (!v5)
  {
    v4[2](v4, 0, &__block_literal_global_197);
LABEL_8:

    return;
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_messageBeingHandled)
  {
    v6 = [(NSMutableArray *)self->_outstandingMessages firstObject];
    if (v6)
    {
      objc_storeStrong(&self->_messageBeingHandled, v6);
      os_unfair_lock_unlock(&self->_lock);
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __51__PKSharingChannelHandle_handleOutstandingMessage___block_invoke_3;
      aBlock[3] = &unk_1E79DFFD8;
      objc_copyWeak(&v22, &location);
      v7 = v6;
      v20 = v7;
      v21 = v5;
      v8 = _Block_copy(aBlock);
      v9 = [PKDeallocationGuard alloc];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__PKSharingChannelHandle_handleOutstandingMessage___block_invoke_4;
      v17[3] = &unk_1E79C4428;
      v10 = v8;
      v18 = v10;
      v11 = [(PKDeallocationGuard *)v9 initWithBlock:v17];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__PKSharingChannelHandle_handleOutstandingMessage___block_invoke_5;
      v14[3] = &unk_1E79C4770;
      v12 = v11;
      v15 = v12;
      v13 = v10;
      v16 = v13;
      (v4)[2](v4, v7, v14);

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      v4[2](v4, 0, &__block_literal_global_52_3);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void __51__PKSharingChannelHandle_handleOutstandingMessage___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    if (a2)
    {
      [*&v7[20]._os_unfair_lock_opaque removeObjectAtIndex:0];
      v5 = *&v7[16]._os_unfair_lock_opaque;
      *&v7[16]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(v7 + 2);
      [(os_unfair_lock_s *)v7 markMessageAsHandled:*(a1 + 32)];
    }

    else
    {
      v6 = *&v7[16]._os_unfair_lock_opaque;
      *&v7[16]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(v7 + 2);
    }

    WeakRetained = v7;
  }
}

uint64_t __51__PKSharingChannelHandle_handleOutstandingMessage___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)waitForMessageWithTimeout:(double)a3 messageHandler:(id)a4 invalidationHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[PKSharingChannelHandleMessageWaiter alloc] initWithTimeout:v9 messageHandler:v8 invalidationHandler:self->_replyQueue replyQueue:a3];

  [(PKSharingChannelHandleMessageWaiter *)v10 startForHandle:self];
}

- (void)sendMessageAndWaitForReply:(id)a3 timeout:(double)a4 messageHandler:(id)a5 invalidationHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKSharingChannelHandle_sendMessageAndWaitForReply_timeout_messageHandler_invalidationHandler___block_invoke;
  v14[3] = &unk_1E79E0000;
  v14[4] = self;
  v15 = v11;
  v17 = a4;
  v16 = v10;
  v12 = v10;
  v13 = v11;
  [(PKSharingChannelHandle *)self sendMessage:a3 completion:v14];
}

void __96__PKSharingChannelHandle_sendMessageAndWaitForReply_timeout_messageHandler_invalidationHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __96__PKSharingChannelHandle_sendMessageAndWaitForReply_timeout_messageHandler_invalidationHandler___block_invoke_2;
    v7[3] = &unk_1E79C5268;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 waitForMessageWithTimeout:v4 messageHandler:v7 invalidationHandler:v3];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)didReceiveMessages:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v10 identifier];
          if (([(NSMutableSet *)self->_receivedMessageIdentifiers containsObject:v11]& 1) == 0)
          {
            [(NSMutableSet *)self->_receivedMessageIdentifiers addObject:v11];
            [(NSMutableArray *)self->_outstandingMessages addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
    [(PKSharingChannelHandle *)self _didReceiveMessage];
  }
}

- (void)_didReceiveMessage
{
  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PKSharingChannelHandle__didReceiveMessage__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(replyQueue, block);
}

uint64_t __44__PKSharingChannelHandle__didReceiveMessage__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  os_unfair_lock_unlock((v2 + 8));
  result = *(*(a1 + 32) + 96);
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setMessageReceivedHandler:(id)a3
{
  aBlock = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_outstandingMessages count])
  {
    v4 = self->_messageBeingHandled == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = _Block_copy(aBlock);
  messageReceivedHandler = self->_messageReceivedHandler;
  self->_messageReceivedHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
  if (aBlock && v4)
  {
    aBlock[2]();
  }
}

- (void)setInvalidationHandler:(id)a3
{
  aBlock = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status > 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    if (aBlock)
    {
      aBlock[2]();
    }
  }

  else
  {
    v4 = _Block_copy(aBlock);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v4;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)attachAndFetchMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PKSharingChannelHandle_attachAndFetchMessage___block_invoke;
  v6[3] = &unk_1E79C4A68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKSharingChannelHandle *)self attachWithCompletion:v6];
}

void __48__PKSharingChannelHandle_attachAndFetchMessage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PKSharingChannelHandle_attachAndFetchMessage___block_invoke_2;
    v7[3] = &unk_1E79E0028;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 handleOutstandingMessage:v7];
  }
}

void __48__PKSharingChannelHandle_attachAndFetchMessage___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a2;
  v5(a3, 0);
  (*(*(a1 + 32) + 16))();
}

- (BOOL)_lock_isStatusValidForAction:(BOOL)a3
{
  status = self->_status;
  v4 = status - 2;
  v5 = status == 1 && a3;
  if (status)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v4 >= 2 && v6;
}

- (void)invalidateWithSource:(unint64_t)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status <= 1)
  {
    actionAssertionCount = self->_actionAssertionCount;
    v8 = PKLogFacilityTypeGetObject(0x23uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PKSharingChannelHandle *)self transportIdentifier];
      v10 = PKSharingLoggableMailboxAddress(v9);
      v11 = v10;
      if (a3 > 4)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_1E79E00E8[a3];
      }

      *buf = 138412546;
      v38 = v10;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Handle<%@> invalidating from source: '%@'", buf, 0x16u);
    }

    self->_status = 2;
    v15 = [self->_invalidationHandler copy];
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    invalidationCompletions = self->_invalidationCompletions;
    if (invalidationCompletions)
    {
      v18 = invalidationCompletions;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v19 = self->_invalidationCompletions;
    self->_invalidationCompletions = v18;

    v20 = self->_invalidationCompletions;
    v21 = _Block_copy(v15);
    [(NSMutableArray *)v20 safelyAddObject:v21];

    v22 = self->_invalidationCompletions;
    v23 = _Block_copy(v6);
    [(NSMutableArray *)v22 safelyAddObject:v23];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke;
    aBlock[3] = &unk_1E79C4E28;
    aBlock[4] = self;
    v24 = _Block_copy(aBlock);
    v25 = v24;
    if (a3 - 1 >= 3)
    {
      if (a3 == 4)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_5;
        v30[3] = &unk_1E79C4A40;
        v30[4] = self;
        v31 = v24;
        v26 = _Block_copy(v30);
        v27 = v31;
      }

      else
      {
        if (a3)
        {
          v26 = 0;
          if (!actionAssertionCount)
          {
LABEL_21:

            os_unfair_lock_unlock(&self->_lock);
            if (v26)
            {
              v26[2](v26);
            }

            goto LABEL_23;
          }

LABEL_20:
          v28 = _Block_copy(v26);
          didInvalidateReply = self->_didInvalidateReply;
          self->_didInvalidateReply = v28;

          v26 = 0;
          goto LABEL_21;
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_2;
        v34[3] = &unk_1E79C4A40;
        v34[4] = self;
        v35 = v24;
        v26 = _Block_copy(v34);
        v27 = v35;
      }
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_4;
      v32[3] = &unk_1E79C44A0;
      v32[4] = self;
      v33 = v24;
      v26 = _Block_copy(v32);
      v27 = v33;
    }

    if (!actionAssertionCount)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([(NSMutableArray *)self->_invalidationCompletions count]|| self->_didInvalidateReply)
  {
    v13 = self->_invalidationCompletions;
    v14 = _Block_copy(v6);
    [(NSMutableArray *)v13 safelyAddObject:v14];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v6[2](v6);
    }
  }

LABEL_23:
}

void __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 48) copy];
  [*(*(a1 + 32) + 48) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_3;
  v4[3] = &unk_1E79C44A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 invalidateWithRemoteWithCompletion:v4];
}

uint64_t __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didInvalidate];
}

uint64_t __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didInvalidate];
}

void __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__PKSharingChannelHandle_invalidateWithSource_completion___block_invoke_6;
  v2[3] = &unk_1E79C4428;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 invalidateWithRemoteWithCompletion:v2];
}

- (void)didInvalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_status = 3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isInvalid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_status != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)createActionAssertionAllowWhileTransferring:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(PKSharingChannelHandle *)self _lock_isStatusValidForAction:v3])
  {
    ++self->_actionAssertionCount;
    os_unfair_lock_unlock(&self->_lock);
    v5 = [PKDeallocationGuard alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PKSharingChannelHandle_createActionAssertionAllowWhileTransferring___block_invoke;
    v8[3] = &unk_1E79C4E28;
    v8[4] = self;
    v6 = [(PKDeallocationGuard *)v5 initWithBlock:v8];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = 0;
  }

  return v6;
}

void __70__PKSharingChannelHandle_createActionAssertionAllowWhileTransferring___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  --*(*(a1 + 32) + 24);
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    if (*(v2 + 24) || (v7 = *(v2 + 32)) == 0)
    {
      os_unfair_lock_unlock((v2 + 8));
      v4 = 0;
      goto LABEL_12;
    }

    v14 = [v7 copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    v5 = v14;
    v2 = *(a1 + 32);
    v3 = *(v2 + 56);
  }

  else
  {
    v5 = 0;
  }

  v13 = v5;
  if (v3 == 1 && !*(v2 + 24) && (v10 = *(v2 + 40)) != 0)
  {
    v6 = [v10 copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((v2 + 8));
  v4 = v13;
  if (v13)
  {
    v13[2](v13);
    v4 = v13;
  }

  if (v6)
  {
    v6[2](v6);

    v4 = v13;
  }

LABEL_12:
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __break(1u);
}

- (void)invalidateWithRemoteWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)detachHandleForTransfer:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__PKSharingChannelHandle_detachHandleForTransfer___block_invoke;
  v13 = &unk_1E79C4A40;
  v14 = self;
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(&v10);
  os_unfair_lock_lock(&self->_lock);
  if ([(PKSharingChannelHandle *)self _lock_isStatusValidForAction:0, v10, v11, v12, v13, v14])
  {
    actionAssertionCount = self->_actionAssertionCount;
    self->_status = 1;
    if (!actionAssertionCount)
    {
      os_unfair_lock_unlock(&self->_lock);
      v6[2](v6);
      goto LABEL_5;
    }

    v8 = _Block_copy(v6);
    pendingOwnershipTransfer = self->_pendingOwnershipTransfer;
    self->_pendingOwnershipTransfer = v8;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_5:
}

- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __break(1u);
}

+ (void)descriptorsForAccountDevices:(id)a3
{
  v3 = a3;
  if (PKRunningInPassd())
  {
    __break(1u);
  }

  else
  {
    [PKSharingChannelHandle_Client descriptorsForAccountDevices:v3];
  }
}

+ (void)bootstrapSetupAssistantProximityChannelWithTemplateSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PKSharingProximityChannelDescriptorGroupToString(0);
  [a1 bootstrapProximityChannelWithTemplateSession:v7 group:v8 completion:v6];
}

+ (void)terminateSetupAssistantProximityChannel
{
  v3 = PKSharingProximityChannelDescriptorGroupToString(0);
  [a1 terminateProximityChannelForGroup:v3];
}

+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (PKRunningInPassd())
  {
    __break(1u);
  }

  else
  {
    [PKSharingChannelHandle_Client bootstrapProximityChannelWithTemplateSession:v9 group:v7 completion:v8];
  }
}

+ (void)terminateProximityChannelForGroup:(id)a3
{
  v3 = a3;
  if (PKRunningInPassd())
  {
    __break(1u);
  }

  else
  {
    [PKSharingChannelHandle_Client terminateProximityChannelForGroup:v3];
  }
}

void __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

void __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

void __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t __68__PKSharingChannelHandle_Client_invalidateWithRemoteWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__PKSharingChannelHandle_Client_invalidateWithRemoteWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke(id *a1)
{
  v2 = [a1[4] replyQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke_2;
  v3[3] = &unk_1E79C44A0;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

void __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke_4;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

@end