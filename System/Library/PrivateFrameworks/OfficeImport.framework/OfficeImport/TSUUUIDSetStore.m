@interface TSUUUIDSetStore
- (TSUUUIDSetStore)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)indexesUsingAnyOfUuids:(const void *)a3;
- (id)indexesUsingUuid:(const void *)a3;
- (id)setForIndex:(unsigned int)a3;
- (id)subsetStoreForIndexes:(id)a3;
- (unsigned)addSet:(id)a3;
- (unsigned)addSetForSingleUuid:(const void *)a3;
- (unsigned)addSetForUuids:(const void *)a3;
- (unsigned)indexOfSet:(id)a3;
- (void)_foreachUuidSet:(id)a3;
- (void)foreachUuidSet:(id)a3;
- (void)p_addSet:(id)a3 atIndex:(unsigned int)a4;
- (void)removeSetAtIndex:(unsigned int)a3;
@end

@implementation TSUUUIDSetStore

- (TSUUUIDSetStore)init
{
  v10.receiver = self;
  v10.super_class = TSUUUIDSetStore;
  v2 = [(TSUUUIDSetStore *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uuidSetForIndex = v2->_uuidSetForIndex;
    v2->_uuidSetForIndex = v3;

    v5 = objc_opt_new();
    indexesUsingUuid = v2->_indexesUsingUuid;
    v2->_indexesUsingUuid = v5;

    v7 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__TSUUUIDSetStore_description__block_invoke;
  v5[3] = &unk_2799C7520;
  v5[4] = &v6;
  [(TSUUUIDSetStore *)self foreachUuidSet:v5];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>:\n %@", objc_opt_class(), self, v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unsigned)addSet:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    LODWORD(v5) = [(TSUUUIDSetStore *)self indexOfSet:v4];
    if (!v5)
    {
      highestIndex = self->_highestIndex;
      v5 = highestIndex + 1;
      self->_highestIndex = v5;
      if (highestIndex == -1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUUUIDSetStore addSet:]"];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUUUIDSetStore.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:70 isFatal:0 description:"We just rolled over uuidSet indexes, we shouldn't use that many in one collab session."];

        +[OITSUAssertionHandler logBacktraceThrottled];
        if (self->_highestIndex)
        {
          v5 = 0;
        }

        else
        {
          v5 = 1;
          self->_highestIndex = 1;
        }
      }

      [(TSUUUIDSetStore *)self p_addSet:v4 atIndex:v5];
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (unsigned)addSetForUuids:(const void *)a3
{
  if (*(a3 + 1) == *a3)
  {
    return 0;
  }

  v4 = [[TSUUUIDSet alloc] initWithUUIDVector:a3];
  v5 = [(TSUUUIDSetStore *)self addSet:v4];

  return v5;
}

- (void)p_addSet:(id)a3 atIndex:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = v6;
  if (v6 && v4)
  {
    if ([v6 index] && objc_msgSend(v7, "index") != v4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUUUIDSetStore p_addSet:atIndex:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUUUIDSetStore.mm"];
      v10 = objc_opt_class();
      [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:94 isFatal:0 description:"Is this %@ in two %@ instances - that won't work, they each need to set its internal index value.", v10, objc_opt_class()];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    [v7 setIndex:v4];
    TSULocker::TSULocker(&v13, self->_lock);
    [(TSUSparseArray *)self->_uuidSetForIndex setObject:v7 forKey:v4];
    if (self->_highestIndex < v4)
    {
      self->_highestIndex = v4;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__TSUUUIDSetStore_p_addSet_atIndex___block_invoke;
    v11[3] = &unk_2799C7548;
    v11[4] = self;
    v12 = v4;
    [v7 foreachUuid:v11];
    TSULocker::~TSULocker(&v13);
  }
}

void __36__TSUUUIDSetStore_p_addSet_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
  v3 = [*(*(a1 + 32) + 24) objectForKey:?];
  if (!v3)
  {
    v3 = objc_opt_new();
    [*(*(a1 + 32) + 24) setObject:? forKey:?];
  }

  [v3 addIndex:*(a1 + 40)];
}

- (void)removeSetAtIndex:(unsigned int)a3
{
  TSULocker::TSULocker(&v5, self->_lock);
  if (a3)
  {
    [(TSUSparseArray *)self->_uuidSetForIndex setObject:0 forKey:a3];
  }

  TSULocker::~TSULocker(&v5);
}

- (id)setForIndex:(unsigned int)a3
{
  TSULocker::TSULocker(&v7, self->_lock);
  if (a3)
  {
    v5 = [(TSUSparseArray *)self->_uuidSetForIndex objectForKey:a3];
  }

  else
  {
    v5 = 0;
  }

  TSULocker::~TSULocker(&v7);

  return v5;
}

- (unsigned)indexOfSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__20;
    v15 = __Block_byref_object_dispose__20;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__TSUUUIDSetStore_indexOfSet___block_invoke;
    v10[3] = &unk_2799C6C68;
    v10[4] = self;
    v10[5] = &v11;
    [v4 foreachUuid:v10];
    if ([v12[5] count] && (v6 = objc_msgSend(v12[5], "firstIndex"), v6 != 0x7FFFFFFFFFFFFFFFLL))
    {
      do
      {
        v8 = [(TSUUUIDSetStore *)self setForIndex:v6];
        if ([v8 isEqual:v5])
        {
          v7 = v6;
        }

        else
        {
          v6 = [v12[5] indexGreaterThanIndex:v6];
          v7 = 0;
        }
      }

      while (!v7 && v6 != 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __30__TSUUUIDSetStore_indexOfSet___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = [*(a1 + 32) indexesUsingUuid:a2];
  v5 = [v12 count];
  if (!v5)
  {
    *a3 = 1;
    v6 = a1 + 40;
    goto LABEL_12;
  }

  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = *(*(v7 + 8) + 40);
  if (!v8)
  {
    v5 = [v12 mutableCopy];
    goto LABEL_12;
  }

  for (i = [v8 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(*(*(*v6 + 8) + 40), "indexGreaterThanIndex:", i))
  {
    if (([v12 containsIndex:i] & 1) == 0)
    {
      [*(*(*v6 + 8) + 40) removeIndex:i];
    }
  }

  v5 = [*(*(*v6 + 8) + 40) count];
  if (!v5)
  {
    *a3 = 1;
LABEL_12:
    v10 = *(*v6 + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v5;
  }
}

- (id)indexesUsingUuid:(const void *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  TSULocker::TSULocker(&v7, self->_lock);
  v5 = [(NSMutableDictionary *)self->_indexesUsingUuid objectForKey:v4];
  TSULocker::~TSULocker(&v7);

  return v5;
}

- (id)indexesUsingAnyOfUuids:(const void *)a3
{
  v5 = [MEMORY[0x277CCAB58] indexSet];
  TSULocker::TSULocker(&v11, self->_lock);
  v6 = *a3;
  v7 = *(a3 + 1);
  if (*a3 != v7)
  {
    do
    {
      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
      v9 = [(NSMutableDictionary *)self->_indexesUsingUuid objectForKey:v8];
      [v5 addIndexes:v9];

      v6 += 16;
    }

    while (v6 != v7);
  }

  TSULocker::~TSULocker(&v11);

  return v5;
}

- (void)_foreachUuidSet:(id)a3
{
  v4 = a3;
  uuidSetForIndex = self->_uuidSetForIndex;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TSUUUIDSetStore__foreachUuidSet___block_invoke;
  v7[3] = &unk_2799C7570;
  v8 = v4;
  v6 = v4;
  [(TSUSparseArray *)uuidSetForIndex foreach:v7];
}

- (id)subsetStoreForIndexes:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  TSULocker::TSULocker(&v14, self->_lock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__TSUUUIDSetStore_subsetStoreForIndexes___block_invoke;
  v11[3] = &unk_2799C7598;
  v6 = v4;
  v12 = v6;
  v7 = v5;
  v13 = v7;
  [(TSUUUIDSetStore *)self _foreachUuidSet:v11];
  v8 = v13;
  v9 = v7;

  TSULocker::~TSULocker(&v14);

  return v9;
}

void __41__TSUUUIDSetStore_subsetStoreForIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsIndex:a3])
  {
    [*(a1 + 40) p_addSet:v5 atIndex:a3];
  }
}

- (void)foreachUuidSet:(id)a3
{
  v4 = a3;
  TSULocker::TSULocker(&v5, self->_lock);
  [(TSUUUIDSetStore *)self _foreachUuidSet:v4];
  TSULocker::~TSULocker(&v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  TSULocker::TSULocker(&v9, self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TSUUUIDSetStore_copyWithZone___block_invoke;
  v7[3] = &unk_2799C75C0;
  v5 = v4;
  v8 = v5;
  [(TSUUUIDSetStore *)self _foreachUuidSet:v7];

  TSULocker::~TSULocker(&v9);
  return v5;
}

- (unsigned)addSetForSingleUuid:(const void *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(TSUUUIDSetStore *)self indexesUsingUuid:?];
  if ([v5 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__TSUUUIDSetStore_addSetForSingleUuid___block_invoke;
    v10[3] = &unk_2799C75E8;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = a3;
    [v5 enumerateIndexesUsingBlock:v10];
  }

  v6 = *(v12 + 6);
  if (!v6)
  {
    v7 = [[TSUUUIDSet alloc] initWithUUID:a3];
    v8 = [(TSUUUIDSetStore *)self addSet:v7];
    *(v12 + 6) = v8;

    v6 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __39__TSUUUIDSetStore_addSetForSingleUuid___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v9 = [*(a1 + 32) setForIndex:a2];
  if ([v9 count] == 1)
  {
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v4;
    *a3 = 1;
    if (([v9 containsUuid:v6] & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUUUIDSetStore addSetForSingleUuid:]_block_invoke"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUUUIDSetStore.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:276 isFatal:0 description:"Oh no, [%@ indexesUsingUuid:] is broken.", objc_opt_class()];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }
}

@end