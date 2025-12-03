@interface DDMessageCache
- (DDMessageCache)init;
- (id)stringWithElement:(id)element conversationID:(id)d range:(_NSRange *)range;
- (void)_pruneIgnoringFirst:(BOOL)first;
- (void)removeConversation:(id)conversation;
@end

@implementation DDMessageCache

- (id)stringWithElement:(id)element conversationID:(id)d range:(_NSRange *)range
{
  elementCopy = element;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2115;
  v33 = __Block_byref_object_dispose__2116;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__DDMessageCache_stringWithElement_conversationID_range___block_invoke;
  block[3] = &unk_1E8002710;
  block[4] = self;
  v11 = dCopy;
  v21 = v11;
  v12 = elementCopy;
  v22 = v12;
  v23 = &v29;
  v24 = &v25;
  dispatch_sync(queue, block);
  if (!v30[5])
  {
    text = [v12 text];
    v14 = v30[5];
    v30[5] = text;
  }

  v15 = v26[3];
  text2 = [v12 text];
  v17 = [text2 length];
  range->location = v15;
  range->length = v17;

  v18 = v30[5];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

uint64_t __57__DDMessageCache_stringWithElement_conversationID_range___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 count];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-90000.0];
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = v7 - 1;
      if (v7 - 1 < 0)
      {
        break;
      }

      v9 = [v3 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 date];
      v11 = [v10 compare:v5];

      if (v11 == -1)
      {
        break;
      }

      v12 = [v3 objectAtIndexedSubscript:v7 - 1];
      v13 = [v12 text];
      v6 += [v13 length];

      v7 = v8;
    }

    while (v6 < 0x97);
    [v3 addObject:*(a1 + 48)];
    [*(*(a1 + 32) + 32) removeObjectIdenticalTo:*(a1 + 40)];
    [*(*(a1 + 32) + 32) insertObject:*(a1 + 40) atIndex:0];
    if (v7 == 1 || v4 == 5)
    {
      [v3 removeObjectAtIndex:0];
    }

    else if (v7)
    {
      v14 = [v3 subarrayWithRange:{v7, v4 - v7 + 1}];
      v15 = [v14 mutableCopy];

      [*(*(a1 + 32) + 24) setObject:v15 forKeyedSubscript:*(a1 + 40)];
      v3 = v15;
    }

    v20 = [v3 valueForKey:@"text"];
    v21 = [v20 componentsJoinedByString:@"\n¶\n"];
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = [*(*(*(a1 + 56) + 8) + 40) length];
    v25 = [*(a1 + 48) text];
    *(*(*(a1 + 64) + 8) + 24) = v24 - [v25 length];
  }

  else
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithObject:*(a1 + 48)];
    [*(*(a1 + 32) + 24) setObject:v16 forKeyedSubscript:*(a1 + 40)];

    [*(*(a1 + 32) + 32) insertObject:*(a1 + 40) atIndex:0];
    v17 = [*(a1 + 48) text];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v26 = *(a1 + 32);

  return [v26 _pruneIgnoringFirst:1];
}

- (void)removeConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DDMessageCache_removeConversation___block_invoke;
  v7[3] = &unk_1E80026E8;
  v7[4] = self;
  v8 = conversationCopy;
  v6 = conversationCopy;
  dispatch_sync(queue, v7);
}

- (void)_pruneIgnoringFirst:(BOOL)first
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_indexLRU copy];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-90000.0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  selfCopy = self;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v36;
    v31 = selfCopy;
    v32 = *v36;
    do
    {
      v13 = 0;
      v33 = v10;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        if (first)
        {
          ++v11;
        }

        else
        {
          v14 = *(*(&v35 + 1) + 8 * v13);
          v15 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v14];
          v16 = [v15 count];
          if (v11 > 0x14)
          {
            goto LABEL_16;
          }

          v17 = v16;
          if (!v16)
          {
            goto LABEL_16;
          }

          lastObject = [v15 lastObject];
          date = [lastObject date];
          v20 = [date compare:v6];

          v12 = v32;
          v21 = v20 == -1;
          v10 = v33;
          if (v21)
          {
LABEL_16:
            [(NSMutableDictionary *)selfCopy->_cache setObject:0 forKeyedSubscript:v14, v31];
            [(NSMutableArray *)selfCopy->_indexLRU removeObjectIdenticalTo:v14];
          }

          else
          {
            v22 = v17 - 2;
            if (v17 >= 2)
            {
              while (1)
              {
                v23 = [v15 objectAtIndexedSubscript:{v22, v31}];
                date2 = [v23 date];
                v25 = [date2 compare:v6];

                if (v25 == -1)
                {
                  break;
                }

                if (v22-- <= 0)
                {
                  goto LABEL_21;
                }
              }

              v27 = [v15 subarrayWithRange:{v22 + 1, v17 - (v22 + 1)}];
              v28 = [v27 mutableCopy];
              [(NSMutableDictionary *)v31->_cache setObject:v28 forKeyedSubscript:v14];

LABEL_21:
              ++v11;
              selfCopy = v31;
              v12 = v32;
              v10 = v33;
            }
          }
        }

        first = 0;
        ++v13;
      }

      while (v13 != v10);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v10 = v29;
      first = 0;
    }

    while (v29);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (DDMessageCache)init
{
  v16.receiver = self;
  v16.super_class = DDMessageCache;
  v2 = [(DDMessageCache *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.DDMessageCaching", v7);
    v9 = *(v2 + 1);
    *(v2 + 1) = v8;

    v10 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, *(v2 + 1));
    v11 = *(v2 + 2);
    *(v2 + 2) = v10;

    v12 = *(v2 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __22__DDMessageCache_init__block_invoke;
    handler[3] = &unk_1E80026C0;
    v15 = v2;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_resume(*(v2 + 2));
  }

  return v2;
}

@end