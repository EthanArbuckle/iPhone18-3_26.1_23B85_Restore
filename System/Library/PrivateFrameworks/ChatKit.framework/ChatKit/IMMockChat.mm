@interface IMMockChat
- (IMMockChat)init;
- (NSArray)mockChatItems;
- (id)_chatItemFromMockItemInfo:(id)a3 atIndex:(unint64_t)a4;
- (id)_messageFromMockItemInfo:(id)a3;
- (id)participants;
- (unint64_t)messageCount;
- (void)appendMockItemWithInfo:(id)a3;
- (void)deleteChatItems:(id)a3;
- (void)setupWithMockItemInfoArray:(id)a3;
@end

@implementation IMMockChat

- (IMMockChat)init
{
  v9.receiver = self;
  v9.super_class = IMMockChat;
  v2 = [(IMItemsController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A5A78]);
    v4 = [MEMORY[0x1E69A5CA0] iMessageService];
    v5 = [v3 initWithService:v4];

    v6 = [v5 imHandleWithID:@"5034222074" alreadyCanonical:0];
    [(IMMockChat *)v2 setIncomingHandle:v6];

    v7 = [v5 imHandleWithID:@"8082698799" alreadyCanonical:0];
    [(IMMockChat *)v2 setOutgoingHandle:v7];
  }

  return v2;
}

- (NSArray)mockChatItems
{
  mockChatItems = self->_mockChatItems;
  if (!mockChatItems)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 environment];
    v6 = [v5 valueForKey:@"CHAT_ITEM_INFO"];

    v7 = [IMMockItemInfo decodedMockItemInfoArray:v6];
    if (!v7)
    {
      v7 = +[IMMockItemInfo defaultMockInfoArray];
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__17;
    v14 = __Block_byref_object_dispose__17;
    v15 = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__IMMockChat_mockChatItems__block_invoke;
    v9[3] = &unk_1E72EFC60;
    v9[4] = self;
    v9[5] = &v10;
    [v7 enumerateObjectsWithOptions:2 usingBlock:v9];
    objc_storeStrong(&self->_mockChatItems, v11[5]);
    _Block_object_dispose(&v10, 8);

    mockChatItems = self->_mockChatItems;
  }

  return mockChatItems;
}

void __27__IMMockChat_mockChatItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _chatItemFromMockItemInfo:v5 atIndex:a3];
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    v7 = *(a1 + 32);
    v8 = *(v7 + 720);
    if (v8)
    {
      v9 = v8;
      v10 = *(v7 + 720);
      *(v7 + 720) = v9;
    }

    else
    {
      v11 = [*(a1 + 32) _messageFromMockItemInfo:v5];
      v12 = *(a1 + 32);
      v10 = *(v12 + 720);
      *(v12 + 720) = v11;
    }

    if (!*(*(a1 + 32) + 720))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = IMFileLocationTrimFileName();
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
      v16 = [v13 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"_lastMockIMMessage", "-[IMMockChat mockChatItems]_block_invoke", v14, 145, v15];

      v17 = IMGetAssertionFailureHandler();
      if (v17)
      {
        v17(v16);
      }

      else
      {
        v18 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __27__IMMockChat_mockChatItems__block_invoke_cold_1(v16, v18);
        }
      }
    }
  }
}

- (id)participants
{
  v3 = [(IMMockChat *)self incomingHandle];

  if (v3)
  {
    v4 = [(IMMockChat *)self incomingHandle];
    v5 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [(IMMockChat *)self extraParticipants];

  if (v6)
  {
    v7 = [(IMMockChat *)self extraParticipants];
    v8 = [v5 arrayByAddingObjectsFromArray:v7];

    v5 = v8;
  }

  return v5;
}

- (unint64_t)messageCount
{
  v2 = [(IMMockChat *)self chatItems];
  v3 = [v2 count];

  return v3;
}

- (void)deleteChatItems:(id)a3
{
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  mockChatItems = self->_mockChatItems;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __30__IMMockChat_deleteChatItems___block_invoke;
  v20[3] = &unk_1E72EFC88;
  v21 = v4;
  v19 = v4;
  v6 = [(NSArray *)mockChatItems indexesOfObjectsPassingTest:v20];
  v7 = self->_mockChatItems;
  v8 = [(NSArray *)v7 mutableCopy];
  [(NSArray *)v8 removeObjectsAtIndexes:v6];
  v9 = self->_mockChatItems;
  self->_mockChatItems = v8;
  v10 = v8;

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = *MEMORY[0x1E69A5748];
  v22[0] = *MEMORY[0x1E69A5750];
  v13 = [MEMORY[0x1E696AC90] indexSet];
  v14 = *MEMORY[0x1E69A5778];
  v23[0] = v13;
  v23[1] = v6;
  v15 = *MEMORY[0x1E69A5770];
  v22[1] = v14;
  v22[2] = v15;
  v16 = [MEMORY[0x1E696AC90] indexSet];
  v23[2] = v16;
  v22[3] = *MEMORY[0x1E69A5768];
  v17 = [MEMORY[0x1E696AC90] indexSet];
  v22[4] = *MEMORY[0x1E69A5760];
  v23[3] = v17;
  v23[4] = v7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];

  [v11 postNotificationName:v12 object:self userInfo:v18];
}

- (void)setupWithMockItemInfoArray:(id)a3
{
  v12 = a3;
  v4 = [v12 count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [v12 objectAtIndexedSubscript:i];
      v8 = [(IMMockChat *)self _chatItemFromMockItemInfo:v7 atIndex:i];
      [v5 addObject:v8];
    }
  }

  v9 = [v12 lastObject];
  v10 = [(IMMockChat *)self _messageFromMockItemInfo:v9];
  lastMockIMMessage = self->_lastMockIMMessage;
  self->_lastMockIMMessage = v10;

  [(IMMockChat *)self setMockChatItems:v5];
}

- (void)appendMockItemWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(IMMockChat *)self mockChatItems];
  v10 = -[IMMockChat _chatItemFromMockItemInfo:atIndex:](self, "_chatItemFromMockItemInfo:atIndex:", v4, [v5 count]);

  v6 = [(IMMockChat *)self _messageFromMockItemInfo:v4];

  lastMockIMMessage = self->_lastMockIMMessage;
  self->_lastMockIMMessage = v6;

  v8 = [(NSArray *)self->_mockChatItems arrayByAddingObject:v10];
  mockChatItems = self->_mockChatItems;
  self->_mockChatItems = v8;
}

- (id)_messageFromMockItemInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 outgoing];
  if ([v4 type])
  {
    if ([v4 type] != 1)
    {
      v13 = 0;
      goto LABEL_19;
    }

    if (v5)
    {
      v6 = 1048581;
    }

    else
    {
      v6 = 1048577;
    }

    if (v5)
    {
      [(IMMockChat *)self outgoingHandle];
    }

    else
    {
      [(IMMockChat *)self incomingHandle];
    }
    v12 = ;
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:&unk_1F04E91E0];
    v20 = objc_alloc(MEMORY[0x1E69A5BD8]);
    v17 = [MEMORY[0x1E695DF00] date];
    v18 = [MEMORY[0x1E696AEC0] stringGUID];
    v19 = [v20 initWithSender:v12 time:v17 text:0 messageSubject:0 fileTransferGUIDs:0 flags:v6 error:0 guid:v18 subject:0 balloonBundleID:@"com.apple.messages.CKTicTacToeBalloonProvider" payloadData:v15 expressiveSendStyleID:0 threadIdentifier:0];
  }

  else
  {
    if (v5)
    {
      v7 = 5;
    }

    else
    {
      v7 = 1;
    }

    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = v9;
    if (v5)
    {
      v11 = [v9 localizedStringForKey:@"Outgoing" value:&stru_1F04268F8 table:0];
      v12 = [v8 initWithString:v11];

      [(IMMockChat *)self outgoingHandle];
    }

    else
    {
      v14 = [v9 localizedStringForKey:@"Incoming" value:&stru_1F04268F8 table:0];
      v12 = [v8 initWithString:v14];

      [(IMMockChat *)self incomingHandle];
    }
    v15 = ;
    v16 = objc_alloc(MEMORY[0x1E69A5BD8]);
    v17 = [MEMORY[0x1E695DF00] date];
    v18 = [MEMORY[0x1E696AEC0] stringGUID];
    v19 = [v16 initWithSender:v15 time:v17 text:v12 fileTransferGUIDs:0 flags:v7 error:0 guid:v18 subject:0 threadIdentifier:0];
  }

  v13 = v19;

LABEL_19:

  return v13;
}

- (id)_chatItemFromMockItemInfo:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IMMockChat *)self _messageFromMockItemInfo:v6];
  v8 = [v7 _imMessageItem];
  if (!v8)
  {
    goto LABEL_5;
  }

  if (![v6 type])
  {
    v14 = objc_alloc(MEMORY[0x1E69A5CE0]);
    v9 = [v8 body];
    v12 = [v14 _initWithItem:v8 text:v9 index:a4 messagePartRange:0 subject:{0x7FFFFFFFFFFFFFFFLL, 0}];
    goto LABEL_7;
  }

  if ([v6 type] != 1)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_8;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69A5C48]);
  v10 = [v8 guid];
  [v9 setMessageGUID:v10];

  v11 = [v8 payloadData];
  [v9 setData:v11];

  [v9 setPluginBundleID:@"com.apple.messages.CKTicTacToeBalloonProvider"];
  v12 = [objc_alloc(MEMORY[0x1E69A5D00]) _initWithItem:v8 initialPayload:v9 messagePartRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
LABEL_7:
  v13 = v12;

LABEL_8:

  return v13;
}

void __27__IMMockChat_mockChatItems__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v2, 0xCu);
}

@end