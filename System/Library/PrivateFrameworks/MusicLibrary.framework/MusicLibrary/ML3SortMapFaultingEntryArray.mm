@interface ML3SortMapFaultingEntryArray
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation ML3SortMapFaultingEntryArray

void __64__ML3SortMapFaultingEntryArray_enumerateDirtyObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  if (a3[36] == 1)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    (*(v7 + 16))(v7, v8, [a2 integerValue], a4);
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  dirtyInserts = self->_dirtyInserts;
  v6 = MEMORY[0x277CCABB0];
  objectCopy = object;
  v8 = [v6 numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)dirtyInserts setObject:objectCopy forKey:v8];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6467;
  v19 = __Block_byref_object_dispose__6468;
  v20 = 0;
  dirtyInserts = self->_dirtyInserts;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__ML3SortMapFaultingEntryArray_removeObjectAtIndex___block_invoke;
  v14[3] = &unk_278762048;
  v14[4] = &v15;
  v14[5] = index;
  [(NSMutableDictionary *)dirtyInserts enumerateKeysAndObjectsUsingBlock:v14];
  if (v16[5])
  {
    [(NSMutableDictionary *)self->_dirtyInserts removeObjectForKey:?];
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_dirtyInserts, "count")}];
  v7 = self->_dirtyInserts;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ML3SortMapFaultingEntryArray_removeObjectAtIndex___block_invoke_2;
  v11[3] = &unk_278761FF8;
  indexCopy = index;
  v8 = v6;
  v12 = v8;
  [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = self->_dirtyInserts;
  self->_dirtyInserts = v8;
  v10 = v8;

  _Block_object_dispose(&v15, 8);
}

void __52__ML3SortMapFaultingEntryArray_removeObjectAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) integerValue] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __52__ML3SortMapFaultingEntryArray_removeObjectAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 integerValue];
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  if (v6 > *(v8 + 8))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v5 integerValue];

    v5 = [v9 numberWithInteger:v10 - 1];
  }

  [v7 setObject:v11 forKey:v5];
}

- (void)removeLastObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6467;
  v9 = __Block_byref_object_dispose__6468;
  v10 = 0;
  dirtyInserts = self->_dirtyInserts;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ML3SortMapFaultingEntryArray_removeLastObject__block_invoke;
  v4[3] = &unk_278762020;
  v4[4] = &v5;
  [(NSMutableDictionary *)dirtyInserts enumerateKeysAndObjectsUsingBlock:v4];
  if (v6[5])
  {
    [(NSMutableDictionary *)self->_dirtyInserts removeObjectForKey:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __48__ML3SortMapFaultingEntryArray_removeLastObject__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = [v8 integerValue];
    if (v9 >= [v10 integerValue])
    {
      goto LABEL_5;
    }

    v7 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v7 + 40), a2);
LABEL_5:
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v6 = MEMORY[0x277CBEB38];
  dirtyInserts = self->_dirtyInserts;
  objectCopy = object;
  v9 = [v6 dictionaryWithCapacity:{-[NSMutableDictionary count](dirtyInserts, "count")}];
  v10 = self->_dirtyInserts;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __53__ML3SortMapFaultingEntryArray_insertObject_atIndex___block_invoke;
  v19 = &unk_278761FF8;
  indexCopy = index;
  v11 = v9;
  v20 = v11;
  [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:&v16];
  v12 = self->_dirtyInserts;
  self->_dirtyInserts = v11;
  v13 = v11;

  v14 = self->_dirtyInserts;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{index, v16, v17, v18, v19}];
  [(NSMutableDictionary *)v14 setObject:objectCopy forKey:v15];
}

void __53__ML3SortMapFaultingEntryArray_insertObject_atIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 integerValue];
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  if (v6 >= *(v8 + 8))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v5 integerValue];

    v5 = [v9 numberWithInteger:v10 + 1];
  }

  [v7 setObject:v11 forKey:v5];
}

- (void)addObject:(id)object
{
  dirtyInserts = self->_dirtyInserts;
  v5 = MEMORY[0x277CCABB0];
  objectCopy = object;
  v7 = [v5 numberWithUnsignedInteger:{-[ML3SortMapFaultingEntryArray count](self, "count")}];
  [(NSMutableDictionary *)dirtyInserts setObject:objectCopy forKey:v7];
}

- (id)objectAtIndex:(unint64_t)index
{
  v27[1] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6467;
  dirtyInserts = self->_dirtyInserts;
  v21 = __Block_byref_object_dispose__6468;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__ML3SortMapFaultingEntryArray_objectAtIndex___block_invoke;
  v16[3] = &unk_278761FD0;
  v16[5] = &v23;
  v16[6] = index;
  v16[4] = &v17;
  [(NSMutableDictionary *)dirtyInserts enumerateKeysAndObjectsUsingBlock:v16];
  v7 = v18[5];
  if (!v7)
  {
    connection = self->_connection;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index - *(v24 + 6)];
    v27[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v11 = [(ML3DatabaseConnection *)connection executeQuery:@"SELECT name withParameters:name_order, name_section, sort_key FROM sort_map ORDER BY name_order LIMIT 1 OFFSET ?", v10];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__ML3SortMapFaultingEntryArray_objectAtIndex___block_invoke_2;
    v15[3] = &unk_2787653C8;
    v15[4] = &v17;
    [v11 enumerateRowsWithBlock:v15];

    v7 = v18[5];
    if (!v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3SortMap.m" lineNumber:1135 description:{@"Did not find object at index %ld with %ld inserted objects", index, -[NSMutableDictionary count](self->_dirtyInserts, "count")}];

      v7 = v18[5];
    }
  }

  v12 = v7;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __46__ML3SortMapFaultingEntryArray_objectAtIndex___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([v8 integerValue] == a1[6])
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    *a4 = 1;
  }

  if ([v8 integerValue] < a1[6])
  {
    ++*(*(a1[5] + 8) + 24);
  }
}

void __46__ML3SortMapFaultingEntryArray_objectAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];
  v6 = [v3 dataForColumnIndex:3];

  v7 = [[ML3MusicLibrary_SortMapEntry alloc] initWithName:v10 nameSection:v5 sortKey:v6 nameOrder:v4 dirtyFlag:0];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (unint64_t)count
{
  v3 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT COUNT() from sort_map"];
  int64ValueForFirstRowAndColumn = [v3 int64ValueForFirstRowAndColumn];
  v5 = [(NSMutableDictionary *)self->_dirtyInserts count];

  return v5 + int64ValueForFirstRowAndColumn;
}

@end