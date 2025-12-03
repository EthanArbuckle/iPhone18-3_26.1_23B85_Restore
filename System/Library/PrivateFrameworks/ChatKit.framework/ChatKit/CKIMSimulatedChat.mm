@interface CKIMSimulatedChat
+ (id)prepopulatedChat;
- (BOOL)_handleIncomingItem:(id)item;
- (CKIMSimulatedChat)initWithIncomingIDs:(id)ds outgoingID:(id)d messageIDOffset:(unint64_t)offset service:(id)service;
- (CKIMSimulatedChatDelegate)delegate;
- (id)_messageWithGUID:(id)d;
- (id)chatIdentifier;
- (id)recipient;
- (unsigned)chatStyle;
- (void)_sendMessage:(id)message adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue;
- (void)chat:(id)chat didSendMessage:(id)message finished:(BOOL)finished;
- (void)sendMessage:(id)message;
- (void)simulatedDaemon:(id)daemon willSendBalloonPayload:(id)payload attachments:(id)attachments messageGUID:(id)d bundleID:(id)iD;
@end

@implementation CKIMSimulatedChat

- (CKIMSimulatedChat)initWithIncomingIDs:(id)ds outgoingID:(id)d messageIDOffset:(unint64_t)offset service:(id)service
{
  v41 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  serviceCopy = service;
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

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  simulatedGUID = v14->_simulatedGUID;
  v14->_simulatedGUID = stringGUID;

  v33 = serviceCopy;
  v17 = [[CKIMSimulatedAccount alloc] initWithService:serviceCopy];
  simulatedAccount = v14->_simulatedAccount;
  v14->_simulatedAccount = v17;

  v19 = [(CKIMSimulatedAccount *)v14->_simulatedAccount imHandleWithID:dCopy alreadyCanonical:0];
  outgoingHandle = v14->_outgoingHandle;
  v14->_outgoingHandle = v19;

  array = [MEMORY[0x1E695DEC8] array];
  incomingHandles = v14->_incomingHandles;
  v14->_incomingHandles = array;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = dsCopy;
  v23 = dsCopy;
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
  dsCopy = v34;
  v14->_currentMessageID = offset;
  serviceCopy = v33;
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

- (void)_sendMessage:(id)message adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  senderCopy = sender;
  v12.receiver = self;
  v12.super_class = CKIMSimulatedChat;
  messageCopy = message;
  [(CKIMSimulatedChat *)&v12 _sendMessage:messageCopy adjustingSender:senderCopy shouldQueue:queueCopy];
  _imMessageItem = [messageCopy _imMessageItem];

  if ([_imMessageItem isTypingMessage])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__CKIMSimulatedChat__sendMessage_adjustingSender_shouldQueue___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v11 = _imMessageItem;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __62__CKIMSimulatedChat__sendMessage_adjustingSender_shouldQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chat:*(a1 + 32) didSendMessage:*(a1 + 40) finished:0];
}

- (void)sendMessage:(id)message
{
  v38 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v34.receiver = self;
  v34.super_class = CKIMSimulatedChat;
  [(CKIMSimulatedChat *)&v34 sendMessage:messageCopy];
  if ([messageCopy hasDataDetectorResults])
  {
    [messageCopy messagesBySeparatingRichLinks];
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
          outgoingHandle = [(CKIMSimulatedChat *)self outgoingHandle];
          [v10 _updateSender:outgoingHandle];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v36 = messageCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:{1, messageCopy}];
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

        _imMessageItem = [*(*(&v26 + 1) + 8 * j) _imMessageItem];
        delegate = [(CKIMSimulatedChat *)self delegate];
        [delegate chat:self didSendMessage:_imMessageItem finished:{objc_msgSend(_imMessageItem, "isTypingMessage") ^ 1}];

        ++self->_currentMessageID;
        v19 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __33__CKIMSimulatedChat_sendMessage___block_invoke;
        block[3] = &unk_1E72EB8D0;
        v24 = _imMessageItem;
        selfCopy = self;
        v20 = _imMessageItem;
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

- (BOOL)_handleIncomingItem:(id)item
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy associatedMessageType] != 2)
  {
    goto LABEL_42;
  }

  array = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v37 = v36 = self;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  _items = [(IMItemsController *)self _items];
  v6 = [_items countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = v6;
  v8 = *v46;
  v38 = _items;
  v39 = *v46;
  do
  {
    v9 = 0;
    do
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(_items);
      }

      v10 = *(*(&v45 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = itemCopy;
        v12 = v10;
        if ([v12 messageID])
        {
          pluginSessionGUID = [v12 pluginSessionGUID];
          associatedMessageGUID = [v11 associatedMessageGUID];
          if (([pluginSessionGUID isEqualToString:associatedMessageGUID] & 1) == 0)
          {

            goto LABEL_14;
          }

          v15 = itemCopy;
          balloonBundleID = [v12 balloonBundleID];
          balloonBundleID2 = [v11 balloonBundleID];
          v18 = [balloonBundleID isEqualToString:balloonBundleID2];

          if (v18)
          {
            if ([v12 associatedMessageType] == 3)
            {
              pluginSessionGUID = [v12 payloadData];
              [v37 addObject:pluginSessionGUID];
              itemCopy = v15;
              _items = v38;
              v8 = v39;
              goto LABEL_14;
            }

            objc_opt_class();
            itemCopy = v15;
            v8 = v39;
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 associatedMessageType] != 2)
            {
              _items = v38;
            }

            else
            {
              pluginSessionGUID = [objc_alloc(MEMORY[0x1E69A7EF0]) initWithMessageItem:v12];
              isFromMe = [v12 isFromMe];
              v20 = isFromMe;
              _items = v38;
              if (isFromMe)
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
                firstObject = [(NSArray *)v36->_incomingHandles firstObject];
                [pluginSessionGUID _updateContextWithSenderHandle:outgoingHandle otherHandle:firstObject];
              }

              else
              {
                [pluginSessionGUID _updateContextWithSenderHandle:outgoingHandle otherHandle:v36->_outgoingHandle];
              }

              if ((v20 & 1) == 0)
              {
              }

              associatedMessageGUID2 = [v11 associatedMessageGUID];
              [pluginSessionGUID setAssociatedMessageGUID:associatedMessageGUID2];

              [pluginSessionGUID setAssociatedMessageType:3];
              breadcrumbText = [v11 breadcrumbText];
              [pluginSessionGUID setBody:breadcrumbText];

              [array addObject:pluginSessionGUID];
              payloadData = [v12 payloadData];
              [v37 addObject:payloadData];

              v8 = v39;
LABEL_14:
            }
          }

          else
          {
            itemCopy = v15;
            _items = v38;
            v8 = v39;
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v26 = [_items countByEnumeratingWithState:&v45 objects:v50 count:16];
    v7 = v26;
  }

  while (v26);
LABEL_32:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = array;
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
    [itemCopy setConsumedSessionPayloads:v37];
  }

LABEL_42:
  v40.receiver = self;
  v40.super_class = CKIMSimulatedChat;
  v32 = [(CKIMSimulatedChat *)&v40 _handleIncomingItem:itemCopy];

  return v32;
}

- (id)chatIdentifier
{
  simulatedChatIdentifier = [(CKIMSimulatedChat *)self simulatedChatIdentifier];

  if (!simulatedChatIdentifier)
  {
    incomingHandles = [(CKIMSimulatedChat *)self incomingHandles];
    if ([incomingHandles count] == 1)
    {
      incomingHandles2 = [(CKIMSimulatedChat *)self incomingHandles];
      firstObject = [incomingHandles2 firstObject];
      v7 = [firstObject ID];
      [(CKIMSimulatedChat *)self setSimulatedChatIdentifier:v7];
    }

    else
    {
      incomingHandles2 = [MEMORY[0x1E696AEC0] stringGUID];
      [(CKIMSimulatedChat *)self setSimulatedChatIdentifier:incomingHandles2];
    }
  }

  return [(CKIMSimulatedChat *)self simulatedChatIdentifier];
}

- (id)recipient
{
  incomingHandles = [(CKIMSimulatedChat *)self incomingHandles];
  firstObject = [incomingHandles firstObject];

  return firstObject;
}

- (unsigned)chatStyle
{
  incomingHandles = [(CKIMSimulatedChat *)self incomingHandles];
  v3 = [incomingHandles count];

  if (v3 <= 1)
  {
    return 45;
  }

  else
  {
    return 43;
  }
}

- (void)chat:(id)chat didSendMessage:(id)message finished:(BOOL)finished
{
  finishedCopy = finished;
  ++self->_currentMessageID;
  messageCopy = message;
  if ([messageCopy isTypingMessage])
  {
    currentMessageID = 0;
  }

  else
  {
    currentMessageID = [(CKIMSimulatedChat *)self currentMessageID];
  }

  incomingHandles = [(CKIMSimulatedChat *)self incomingHandles];
  firstObject = [incomingHandles firstObject];
  outgoingHandle = [(CKIMSimulatedChat *)self outgoingHandle];
  v12 = messageItemCopyForMessageItem(messageCopy, finishedCopy, currentMessageID, firstObject, outgoingHandle, 1);

  [(CKIMSimulatedChat *)self _handleIncomingItem:v12];
}

- (void)simulatedDaemon:(id)daemon willSendBalloonPayload:(id)payload attachments:(id)attachments messageGUID:(id)d bundleID:(id)iD
{
  v38 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  v12 = [(CKIMSimulatedChat *)self _messageWithGUID:d];
  v13 = v12;
  if (v12)
  {
    v28 = v12;
    selfCopy = self;
    v31 = payloadCopy;
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = attachmentsCopy;
    obj = attachmentsCopy;
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
          stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
          v23 = [v20 stringWithFormat:@"%@/%@", v21, stringGUID];

          [v19 writeToFile:v23 atomically:1];
          mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
          v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
          v26 = [mEMORY[0x1E69A5B80] createNewOutgoingTransferWithLocalFileURL:v25];
          [array addObject:v26];

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v13 = v28;
    payloadCopy = v31;
    [v28 setPayloadData:v31];
    [v28 setFileTransferGUIDs:array];
    [(CKIMSimulatedChat *)selfCopy _handleIncomingItem:v28];
    delegate = [(CKIMSimulatedChat *)selfCopy delegate];
    [delegate chat:selfCopy didSendMessage:v28 finished:1];

    attachmentsCopy = v30;
  }
}

- (id)_messageWithGUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _items = [(IMItemsController *)self _items];
  v6 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        guid = [v9 guid];
        if ([guid isEqualToString:dCopy])
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

      v6 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    outgoingHandle = [(CKIMSimulatedChat *)v5 outgoingHandle];
    date = [MEMORY[0x1E695DF00] date];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v14 = [v10 initWithSender:outgoingHandle time:date text:v9 fileTransferGUIDs:0 flags:0 error:0 guid:stringGUID subject:0 threadIdentifier:0];

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