@interface NLParsecDataManager
+ (void)enumerateEntriesForSerializedData:(id)data withBlock:(id)block;
+ (void)notifyStoredSerializedDataChanged;
- (NSData)serializableData;
- (void)addEntry:(id)entry domain:(id)domain metaData:(id)data;
- (void)dealloc;
- (void)insertEntry:(id)entry;
- (void)serializableData;
@end

@implementation NLParsecDataManager

- (void)dealloc
{
  m_entries = self->m_entries;
  if (m_entries)
  {
  }

  v4.receiver = self;
  v4.super_class = NLParsecDataManager;
  [(NLParsecDataManager *)&v4 dealloc];
}

- (void)addEntry:(id)entry domain:(id)domain metaData:(id)data
{
  if (!self->m_entries)
  {
    self->m_entries = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v12 = objc_alloc_init(NLPOIEntryImpl);
  [(NLPOIEntryImpl *)v12 setName:entry];
  [(NLPOIEntryImpl *)v12 setDomain:domain];
  -[NLPOIEntryImpl setCategory:](v12, "setCategory:", [data valueForKey:@"c"]);
  [objc_msgSend(data valueForKey:{@"p", "floatValue"}];
  [(NLPOIEntryImpl *)v12 setScore:?];
  if ([(NSMutableArray *)self->m_entries count]>= 0x64)
  {
    [-[NSMutableArray lastObject](self->m_entries "lastObject")];
    v10 = v9;
    [(NLPOIEntryImpl *)v12 score];
    if (v10 >= v11)
    {
      goto LABEL_7;
    }

    [(NSMutableArray *)self->m_entries removeLastObject];
  }

  [(NLParsecDataManager *)self insertEntry:v12];
LABEL_7:
}

- (void)insertEntry:(id)entry
{
  v5 = [(NSMutableArray *)self->m_entries count];
  m_entries = self->m_entries;
  if (v5)
  {
    v7 = [(NSMutableArray *)self->m_entries indexOfObject:entry inSortedRange:0 options:[(NSMutableArray *)m_entries count] usingComparator:1024, &__block_literal_global_3];
    v8 = self->m_entries;

    [(NSMutableArray *)v8 insertObject:entry atIndex:v7];
  }

  else
  {

    [(NSMutableArray *)m_entries addObject:entry];
  }
}

uint64_t __35__NLParsecDataManager_insertEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  [a3 score];
  v5 = [v4 numberWithFloat:?];
  v6 = MEMORY[0x277CCABB0];
  [a2 score];
  v7 = [v6 numberWithFloat:?];

  return [v5 compare:v7];
}

- (NSData)serializableData
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->m_entries)
  {
    outputStreamToMemory = [MEMORY[0x277CBEB78] outputStreamToMemory];
    [outputStreamToMemory open];
    v4 = [objc_alloc(MEMORY[0x277D43188]) initWithOutputStream:outputStreamToMemory];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    m_entries = self->m_entries;
    v6 = [(NSMutableArray *)m_entries countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(m_entries);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (([v4 writeMessage:v10] & 1) == 0)
          {
            ParsecLogHandle = getParsecLogHandle();
            if (os_log_type_enabled(ParsecLogHandle, OS_LOG_TYPE_ERROR))
            {
              [(NLParsecDataManager *)v10 serializableData];
            }

            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)m_entries countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v11 = [outputStreamToMemory propertyForKey:*MEMORY[0x277CBE740]];
    }

    else
    {
LABEL_13:
      v11 = 0;
    }

    [outputStreamToMemory close];
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)enumerateEntriesForSerializedData:(id)data withBlock:(id)block
{
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithData:data];
  [v5 open];
  v10 = [objc_alloc(MEMORY[0x277D43180]) initWithStream:v5];
  [v10 setClassOfNextMessage:objc_opt_class()];
  v6 = objc_autoreleasePoolPush();
  nextMessage = [v10 nextMessage];
  if (nextMessage)
  {
    nextMessage2 = nextMessage;
    do
    {
      v9 = [[NLPOIEntry alloc] initWithProtoBuf:nextMessage2];

      (*(block + 2))(block, v9);
      objc_autoreleasePoolPop(v6);
      v6 = objc_autoreleasePoolPush();
      nextMessage2 = [v10 nextMessage];
    }

    while (nextMessage2);
  }

  objc_autoreleasePoolPop(v6);
  [v5 close];
}

+ (void)notifyStoredSerializedDataChanged
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];

  [defaultCenter postNotificationName:@"NLParsecDataChangedNotification" object:0];
}

- (void)serializableData
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22CD0B000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize hints data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end