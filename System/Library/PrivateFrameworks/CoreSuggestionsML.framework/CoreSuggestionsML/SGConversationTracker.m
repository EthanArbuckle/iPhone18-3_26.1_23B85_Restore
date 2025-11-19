@interface SGConversationTracker
+ (id)getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4 maxPromptLength:(unint64_t)a5 maxPromptWindowSeconds:(double)a6 promptJoiningString:(id)a7;
+ (id)instance;
+ (id)sgConversationTurnsForStrings:(id)a3;
- (SGConversationTracker)init;
- (id)addMessage:(id)a3;
- (id)conversationForSenderID:(id)a3;
@end

@implementation SGConversationTracker

- (id)addMessage:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 senderID];

  if (v5)
  {
    conversations = self->_conversations;
    v7 = [v4 senderID];
    v8 = [(_PASLRUCache *)conversations objectForKey:v7];

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
      v16 = v4;
      v17 = &v18;
      [v8 runWithLockAcquired:v15];
      v9 = v19[5];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v4, 0}];
      v8 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v10];
      v11 = self->_conversations;
      v12 = [v4 senderID];
      [(_PASLRUCache *)v11 setObject:v8 forKey:v12];

      v9 = [v10 copy];
    }
  }

  else
  {
    v24[0] = v4;
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

- (id)conversationForSenderID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_PASLRUCache *)self->_conversations objectForKey:v4];
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

+ (id)getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4 maxPromptLength:(unint64_t)a5 maxPromptWindowSeconds:(double)a6 promptJoiningString:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if ([v12 count] <= 1)
  {
    v14 = v11;
    goto LABEL_25;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [v12 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_18];
  objc_autoreleasePoolPop(v15);
  v17 = [v16 lastObject];
  v18 = [v17 text];
  v19 = _PASRepairString();
  v20 = [v11 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Most recent message in conversation turns does not match specified current message.", buf, 2u);
    }

    v14 = v11;
    goto LABEL_24;
  }

  v40 = [v17 timestamp];
  v38 = v17;
  v21 = [v17 senderID];
  v22 = [v13 length];
  v23 = [v16 count];
  v37 = v11;
  if ((v23 - 1) < 0)
  {
    v27 = v21;
  }

  else
  {
    v24 = [v16 objectAtIndexedSubscript:v23 - 1];
    if (v21)
    {
      v39 = a5;
      v25 = -v22;
      while (1)
      {
        v26 = [v24 senderID];
        v27 = v21;
        v28 = [v26 isEqualToString:v21];

        if (!v28)
        {
          goto LABEL_16;
        }

        v29 = [v24 timestamp];
        [v40 timeIntervalSinceDate:v29];
        v31 = v30;

        if (v31 > a6 || ([v24 text], v32 = objc_claimAutoreleasedReturnValue(), v25 += v22 + objc_msgSend(v32, "length"), v32, v25 > v39))
        {
LABEL_16:
          a5 = v39;
          goto LABEL_18;
        }

        if ((v23 - 1) <= 0)
        {
          break;
        }

        v24 = [v16 objectAtIndexedSubscript:v23 - 2];
        --v23;
        v21 = v27;
      }

      v23 = 0;
      v17 = v38;
      a5 = v39;
      goto LABEL_20;
    }

    v27 = 0;
LABEL_18:
  }

  v17 = v38;
LABEL_20:
  v33 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:a5];
  while (v23 < [v16 count] - 1)
  {
    v34 = [v16 objectAtIndexedSubscript:v23];
    v35 = [v34 text];
    [v33 appendString:v35];

    [v33 appendString:v13];
    ++v23;
  }

  [v33 appendString:v37];
  v14 = _PASRepairString();

  v11 = v37;
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

+ (id)sgConversationTurnsForStrings:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = objc_opt_new();
  if ([v3 count])
  {
    v8 = 0;
    v9 = v6 + -0.1;
    do
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9 + v8 * 0.0001];
      v11 = objc_alloc(MEMORY[0x277D01F70]);
      v12 = [v3 objectAtIndexedSubscript:v8];
      v13 = [v11 initWithText:v12 senderID:@"sender" timestamp:v10];

      [v7 addObject:v13];
      ++v8;
    }

    while (v8 < [v3 count]);
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