@interface CKIMSimulatedChat
+ (id)prepopulatedChat;
- (BOOL)_handleIncomingItem:(id)a3;
- (CKIMSimulatedChat)initWithIncomingIDs:(id)a3 outgoingID:(id)a4 messageIDOffset:(unint64_t)a5 service:(id)a6;
- (CKIMSimulatedChatDelegate)delegate;
- (id)_messageWithGUID:(id)a3;
- (id)chatIdentifier;
- (id)recipient;
- (unsigned)chatStyle;
- (void)_sendMessage:(id)a3 adjustingSender:(BOOL)a4 shouldQueue:(BOOL)a5;
- (void)chat:(id)a3 didSendMessage:(id)a4 finished:(BOOL)a5;
- (void)sendMessage:(id)a3;
- (void)simulatedDaemon:(id)a3 willSendBalloonPayload:(id)a4 attachments:(id)a5 messageGUID:(id)a6 bundleID:(id)a7;
@end

@implementation CKIMSimulatedChat

- (CKIMSimulatedChat)initWithIncomingIDs:(id)a3 outgoingID:(id)a4 messageIDOffset:(unint64_t)a5 service:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v39.receiver = self;
  v39.super_class = CKIMSimulatedChat;
  v13 = [(IMItemsController *)&v39 init];
  v14 = v13;
  if (initWithIncomingIDs_outgoingID_messageIDOffset_service__onceToken == -1)
  {
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [CKIMSimulatedChat initWithIncomingIDs:outgoingID:messageIDOffset:service:];
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = [MEMORY[0x1E696AEC0] stringGUID];
  simulatedGUID = v14->_simulatedGUID;
  v14->_simulatedGUID = v15;

  v33 = v12;
  v17 = [[CKIMSimulatedAccount alloc] initWithService:v12];
  simulatedAccount = v14->_simulatedAccount;
  v14->_simulatedAccount = v17;

  v19 = [(CKIMSimulatedAccount *)v14->_simulatedAccount imHandleWithID:v11 alreadyCanonical:0];
  outgoingHandle = v14->_outgoingHandle;
  v14->_outgoingHandle = v19;

  v21 = [MEMORY[0x1E695DEC8] array];
  incomingHandles = v14->_incomingHandles;
  v14->_incomingHandles = v21;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = v10;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = v14->_incomingHandles;
        v29 = [(CKIMSimulatedAccount *)v14->_simulatedAccount imHandleWithID:*(*(&v35 + 1) + 8 * i) alreadyCanonical:0];
        v30 = [(NSArray *)v28 arrayByAddingObject:v29];
        v31 = v14->_incomingHandles;
        v14->_incomingHandles = v30;
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v25);
  }

  [(CKIMSimulatedAccount *)v14->_simulatedAccount setLoginHandle:v14->_outgoingHandle];
  v10 = v34;
  v14->_currentMessageID = a5;
  v12 = v33;
LABEL_11:

  return v14;
}

void __76__CKIMSimulatedChat_initWithIncomingIDs_outgoingID_messageIDOffset_service___block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A5CA0] serviceWithInternalName:*MEMORY[0x1E69A7AF0]];
  v2 = *MEMORY[0x1E69A5E68];
  v3[0] = &unk_1F04E6D20;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 setServiceProperties:v1];
}

- (void)_sendMessage:(id)a3 adjustingSender:(BOOL)a4 shouldQueue:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CKIMSimulatedChat;
  v8 = a3;
  [(CKIMSimulatedChat *)&v12 _sendMessage:v8 adjustingSender:v6 shouldQueue:v5];
  v9 = [v8 _imMessageItem];

  if ([v9 isTypingMessage])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__CKIMSimulatedChat__sendMessage_adjustingSender_shouldQueue___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v11 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __62__CKIMSimulatedChat__sendMessage_adjustingSender_shouldQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chat:*(a1 + 32) didSendMessage:*(a1 + 40) finished:0];
}

- (void)sendMessage:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = CKIMSimulatedChat;
  [(CKIMSimulatedChat *)&v34 sendMessage:v4];
  if ([v4 hasDataDetectorResults])
  {
    [v4 messagesBySeparatingRichLinks];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v33 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [(CKIMSimulatedChat *)self outgoingHandle];
          [v10 _updateSender:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v36 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:{1, v4}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    v15 = MEMORY[0x1E69E96A0];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v26 + 1) + 8 * j) _imMessageItem];
        v18 = [(CKIMSimulatedChat *)self delegate];
        [v18 chat:self didSendMessage:v17 finished:{objc_msgSend(v17, "isTypingMessage") ^ 1}];

        ++self->_currentMessageID;
        v19 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __33__CKIMSimulatedChat_sendMessage___block_invoke;
        block[3] = &unk_1E72EB8D0;
        v24 = v17;
        v25 = self;
        v20 = v17;
        dispatch_after(v19, v15, block);
      }

      v13 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }
}

void __33__CKIMSimulatedChat_sendMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentMessageID];
  v4 = [*(a1 + 40) outgoingHandle];
  v5 = [*(a1 + 40) incomingHandles];
  v6 = [v5 firstObject];
  v7 = messageItemCopyForMessageItem(v2, 36869, v3, v4, v6, 0);

  [*(a1 + 40) _handleIncomingItem:v7];
}

- (BOOL)_handleIncomingItem:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 associatedMessageType] != 2)
  {
    goto LABEL_42;
  }

  v35 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v37 = v36 = self;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [(IMItemsController *)self _items];
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = v6;
  v8 = *v46;
  v38 = v5;
  v39 = *v46;
  do
  {
    v9 = 0;
    do
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v45 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v4;
        v12 = v10;
        if ([v12 messageID])
        {
          v13 = [v12 pluginSessionGUID];
          v14 = [v11 associatedMessageGUID];
          if (([v13 isEqualToString:v14] & 1) == 0)
          {

            goto LABEL_14;
          }

          v15 = v4;
          v16 = [v12 balloonBundleID];
          v17 = [v11 balloonBundleID];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            if ([v12 associatedMessageType] == 3)
            {
              v13 = [v12 payloadData];
              [v37 addObject:v13];
              v4 = v15;
              v5 = v38;
              v8 = v39;
              goto LABEL_14;
            }

            objc_opt_class();
            v4 = v15;
            v8 = v39;
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 associatedMessageType] != 2)
            {
              v5 = v38;
            }

            else
            {
              v13 = [objc_alloc(MEMORY[0x1E69A7EF0]) initWithMessageItem:v12];
              v19 = [v12 isFromMe];
              v20 = v19;
              v5 = v38;
              if (v19)
              {
                outgoingHandle = v36->_outgoingHandle;
              }

              else
              {
                outgoingHandle = [(NSArray *)v36->_incomingHandles firstObject];
                v34 = outgoingHandle;
              }

              if ([v12 isFromMe])
              {
                v22 = [(NSArray *)v36->_incomingHandles firstObject];
                [v13 _updateContextWithSenderHandle:outgoingHandle otherHandle:v22];
              }

              else
              {
                [v13 _updateContextWithSenderHandle:outgoingHandle otherHandle:v36->_outgoingHandle];
              }

              if ((v20 & 1) == 0)
              {
              }

              v23 = [v11 associatedMessageGUID];
              [v13 setAssociatedMessageGUID:v23];

              [v13 setAssociatedMessageType:3];
              v24 = [v11 breadcrumbText];
              [v13 setBody:v24];

              [v35 addObject:v13];
              v25 = [v12 payloadData];
              [v37 addObject:v25];

              v8 = v39;
LABEL_14:
            }
          }

          else
          {
            v4 = v15;
            v5 = v38;
            v8 = v39;
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v26 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
    v7 = v26;
  }

  while (v26);
LABEL_32:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v35;
  v28 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
  self = v36;
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(CKIMSimulatedChat *)v36 _handleIncomingItem:*(*(&v41 + 1) + 8 * i)];
      }

      v29 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v29);
  }

  if ([v37 count])
  {
    [v4 setConsumedSessionPayloads:v37];
  }

LABEL_42:
  v40.receiver = self;
  v40.super_class = CKIMSimulatedChat;
  v32 = [(CKIMSimulatedChat *)&v40 _handleIncomingItem:v4];

  return v32;
}

- (id)chatIdentifier
{
  v3 = [(CKIMSimulatedChat *)self simulatedChatIdentifier];

  if (!v3)
  {
    v4 = [(CKIMSimulatedChat *)self incomingHandles];
    if ([v4 count] == 1)
    {
      v5 = [(CKIMSimulatedChat *)self incomingHandles];
      v6 = [v5 firstObject];
      v7 = [v6 ID];
      [(CKIMSimulatedChat *)self setSimulatedChatIdentifier:v7];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringGUID];
      [(CKIMSimulatedChat *)self setSimulatedChatIdentifier:v5];
    }
  }

  return [(CKIMSimulatedChat *)self simulatedChatIdentifier];
}

- (id)recipient
{
  v2 = [(CKIMSimulatedChat *)self incomingHandles];
  v3 = [v2 firstObject];

  return v3;
}

- (unsigned)chatStyle
{
  v2 = [(CKIMSimulatedChat *)self incomingHandles];
  v3 = [v2 count];

  if (v3 <= 1)
  {
    return 45;
  }

  else
  {
    return 43;
  }
}

- (void)chat:(id)a3 didSendMessage:(id)a4 finished:(BOOL)a5
{
  v5 = a5;
  ++self->_currentMessageID;
  v7 = a4;
  if ([v7 isTypingMessage])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CKIMSimulatedChat *)self currentMessageID];
  }

  v9 = [(CKIMSimulatedChat *)self incomingHandles];
  v10 = [v9 firstObject];
  v11 = [(CKIMSimulatedChat *)self outgoingHandle];
  v12 = messageItemCopyForMessageItem(v7, v5, v8, v10, v11, 1);

  [(CKIMSimulatedChat *)self _handleIncomingItem:v12];
}

- (void)simulatedDaemon:(id)a3 willSendBalloonPayload:(id)a4 attachments:(id)a5 messageGUID:(id)a6 bundleID:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(CKIMSimulatedChat *)self _messageWithGUID:a6];
  v13 = v12;
  if (v12)
  {
    v28 = v12;
    v29 = self;
    v31 = v10;
    v14 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v11;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * v18);
          v20 = MEMORY[0x1E696AEC0];
          v21 = NSTemporaryDirectory();
          v22 = [MEMORY[0x1E696AEC0] stringGUID];
          v23 = [v20 stringWithFormat:@"%@/%@", v21, v22];

          [v19 writeToFile:v23 atomically:1];
          v24 = [MEMORY[0x1E69A5B80] sharedInstance];
          v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
          v26 = [v24 createNewOutgoingTransferWithLocalFileURL:v25];
          [v14 addObject:v26];

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v13 = v28;
    v10 = v31;
    [v28 setPayloadData:v31];
    [v28 setFileTransferGUIDs:v14];
    [(CKIMSimulatedChat *)v29 _handleIncomingItem:v28];
    v27 = [(CKIMSimulatedChat *)v29 delegate];
    [v27 chat:v29 didSendMessage:v28 finished:1];

    v11 = v30;
  }
}

- (id)_messageWithGUID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(IMItemsController *)self _items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 guid];
        if ([v10 isEqualToString:v4])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (CKIMSimulatedChatDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)prepopulatedChat
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5CA0] serviceWithInternalName:*MEMORY[0x1E69A7AF0]];
  v3 = [CKIMSimulatedChat alloc];
  v23[0] = @"+15555228243";
  v23[1] = @"+1555648584";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = v2;
  v5 = [(CKIMSimulatedChat *)v3 initWithIncomingIDs:v4 outgoingID:@"+15555648583" messageIDOffset:800000 service:v2];

  v6 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  [v6 setStatus:0];
  [v6 setDirection:0];
  [v6 setOtherHandle:@"+15555228243"];
  v19 = v6;
  [(CKIMSimulatedChat *)v5 _handleIncomingItem:v6];
  v7 = 0;
  do
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Message %d", v7];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
    v10 = objc_alloc(MEMORY[0x1E69A5BD8]);
    v11 = [(CKIMSimulatedChat *)v5 outgoingHandle];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [MEMORY[0x1E696AEC0] stringGUID];
    v14 = [v10 initWithSender:v11 time:v12 text:v9 fileTransferGUIDs:0 flags:0 error:0 guid:v13 subject:0 threadIdentifier:0];

    [(CKIMSimulatedChat *)v5 sendMessage:v14];
    v7 = (v7 + 1);
  }

  while (v7 != 30);
  v15 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Photos2"];
  v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v15];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__CKIMSimulatedChat_Prepopulated__prepopulatedChat__block_invoke;
  v21[3] = &unk_1E72ED6D8;
  v17 = v5;
  v22 = v17;
  [CKComposition requestCompositionFromItemProvider:v16 completion:v21];

  return v17;
}

void __51__CKIMSimulatedChat_Prepopulated__prepopulatedChat__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringGUID];
  v5 = [v3 messagesFromCompositionFirstGUIDForMessage:v4 sendingService:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) sendMessage:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end