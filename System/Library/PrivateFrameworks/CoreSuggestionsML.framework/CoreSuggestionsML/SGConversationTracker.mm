@interface SGConversationTracker
+ (id)getMergedPromptForMessage:(id)message conversationTurns:(id)turns maxPromptLength:(unint64_t)length maxPromptWindowSeconds:(double)seconds promptJoiningString:(id)string;
+ (id)instance;
+ (id)sgConversationTurnsForStrings:(id)strings;
- (SGConversationTracker)init;
- (id)addMessage:(id)message;
- (id)conversationForSenderID:(id)d;
@end

@implementation SGConversationTracker

- (id)addMessage:(id)message
{
  v24[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  senderID = [messageCopy senderID];

  if (senderID)
  {
    conversations = self->_conversations;
    senderID2 = [messageCopy senderID];
    v8 = [(_PASLRUCache *)conversations objectForKey:senderID2];

    if (v8)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__1085;
      v22 = __Block_byref_object_dispose__1086;
      v23 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __36__SGConversationTracker_addMessage___block_invoke;
      v15[3] = &unk_278EB83A0;
      v16 = messageCopy;
      v17 = &v18;
      [v8 runWithLockAcquired:v15];
      v9 = v19[5];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{messageCopy, 0}];
      v8 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v10];
      v11 = self->_conversations;
      senderID3 = [messageCopy senderID];
      [(_PASLRUCache *)v11 setObject:v8 forKey:senderID3];

      v9 = [v10 copy];
    }
  }

  else
  {
    v24[0] = messageCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

void __36__SGConversationTracker_addMessage___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__SGConversationTracker_addMessage___block_invoke_2;
  v14[3] = &unk_278EB8378;
  v15 = *(a1 + 32);
  v4 = [v3 indexOfObjectWithOptions:2 passingTest:v14];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 addObject:*(a1 + 32)];
    if ([v3 count] >= 6)
    {
      [v3 removeObjectAtIndex:0];
    }

    v5 = [v3 count];
  }

  else
  {
    v6 = v4;
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) senderID];
      *buf = 138412290;
      v17 = v13;
      _os_log_debug_impl(&dword_24799E000, v7, OS_LOG_TYPE_DEBUG, "Added message id already in conversation. conversation id = %@", buf, 0xCu);
    }

    v5 = v6 + 1;
  }

  v8 = [v3 subarrayWithRange:{0, v5}];
  v9 = [v8 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)conversationForSenderID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(_PASLRUCache *)self->_conversations objectForKey:dCopy];
    v6 = v5;
    if (v5)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__1085;
      v14 = __Block_byref_object_dispose__1086;
      v15 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __49__SGConversationTracker_conversationForSenderID___block_invoke;
      v9[3] = &unk_278EB8350;
      v9[4] = &v10;
      [v5 runWithLockAcquired:v9];
      v7 = v11[5];
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __49__SGConversationTracker_conversationForSenderID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (SGConversationTracker)init
{
  v6.receiver = self;
  v6.super_class = SGConversationTracker;
  v2 = [(SGConversationTracker *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:5];
    conversations = v2->_conversations;
    v2->_conversations = v3;
  }

  return v2;
}

+ (id)getMergedPromptForMessage:(id)message conversationTurns:(id)turns maxPromptLength:(unint64_t)length maxPromptWindowSeconds:(double)seconds promptJoiningString:(id)string
{
  messageCopy = message;
  turnsCopy = turns;
  stringCopy = string;
  if ([turnsCopy count] <= 1)
  {
    v14 = messageCopy;
    goto LABEL_25;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [turnsCopy sortedArrayWithOptions:16 usingComparator:&__block_literal_global_18];
  objc_autoreleasePoolPop(v15);
  lastObject = [v16 lastObject];
  text = [lastObject text];
  v19 = _PASRepairString();
  v20 = [messageCopy isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Most recent message in conversation turns does not match specified current message.", buf, 2u);
    }

    v14 = messageCopy;
    goto LABEL_24;
  }

  timestamp = [lastObject timestamp];
  v38 = lastObject;
  senderID = [lastObject senderID];
  v22 = [stringCopy length];
  v23 = [v16 count];
  v37 = messageCopy;
  if ((v23 - 1) < 0)
  {
    v27 = senderID;
  }

  else
  {
    v24 = [v16 objectAtIndexedSubscript:v23 - 1];
    if (senderID)
    {
      lengthCopy = length;
      v25 = -v22;
      while (1)
      {
        senderID2 = [v24 senderID];
        v27 = senderID;
        v28 = [senderID2 isEqualToString:senderID];

        if (!v28)
        {
          goto LABEL_16;
        }

        timestamp2 = [v24 timestamp];
        [timestamp timeIntervalSinceDate:timestamp2];
        v31 = v30;

        if (v31 > seconds || ([v24 text], v32 = objc_claimAutoreleasedReturnValue(), v25 += v22 + objc_msgSend(v32, "length"), v32, v25 > lengthCopy))
        {
LABEL_16:
          length = lengthCopy;
          goto LABEL_18;
        }

        if ((v23 - 1) <= 0)
        {
          break;
        }

        v24 = [v16 objectAtIndexedSubscript:v23 - 2];
        --v23;
        senderID = v27;
      }

      v23 = 0;
      lastObject = v38;
      length = lengthCopy;
      goto LABEL_20;
    }

    v27 = 0;
LABEL_18:
  }

  lastObject = v38;
LABEL_20:
  v33 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:length];
  while (v23 < [v16 count] - 1)
  {
    v34 = [v16 objectAtIndexedSubscript:v23];
    text2 = [v34 text];
    [v33 appendString:text2];

    [v33 appendString:stringCopy];
    ++v23;
  }

  [v33 appendString:v37];
  v14 = _PASRepairString();

  messageCopy = v37;
LABEL_24:

LABEL_25:

  return v14;
}

uint64_t __128__SGConversationTracker_getMergedPromptForMessage_conversationTurns_maxPromptLength_maxPromptWindowSeconds_promptJoiningString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)sgConversationTurnsForStrings:(id)strings
{
  stringsCopy = strings;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;

  v7 = objc_opt_new();
  if ([stringsCopy count])
  {
    v8 = 0;
    v9 = v6 + -0.1;
    do
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9 + v8 * 0.0001];
      v11 = objc_alloc(MEMORY[0x277D01F70]);
      v12 = [stringsCopy objectAtIndexedSubscript:v8];
      v13 = [v11 initWithText:v12 senderID:@"sender" timestamp:v10];

      [v7 addObject:v13];
      ++v8;
    }

    while (v8 < [stringsCopy count]);
  }

  return v7;
}

+ (id)instance
{
  if (instance__pasOnceToken2 != -1)
  {
    dispatch_once(&instance__pasOnceToken2, &__block_literal_global_1104);
  }

  v3 = instance__pasExprOnceResult;

  return v3;
}

void __33__SGConversationTracker_instance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = instance__pasExprOnceResult;
  instance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end