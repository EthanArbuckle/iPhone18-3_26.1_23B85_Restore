@interface ML3SortMapFaultingNameOrderDictionary
- (ML3SortMapFaultingNameOrderDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
@end

@implementation ML3SortMapFaultingNameOrderDictionary

- (id)keyEnumerator
{
  v3 = [_ML3SortMapFaultingNameOrderDictionaryEnumerator alloc];
  v4 = [(NSMutableDictionary *)self->_dirtyInserts keyEnumerator];
  v5 = [(_ML3SortMapFaultingNameOrderDictionaryEnumerator *)v3 initWithDirtyInsertsEnumerator:v4 connection:self->_connection];

  return v5;
}

- (id)objectForKey:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6467;
  v17 = __Block_byref_object_dispose__6468;
  v18 = 0;
  v6 = [(NSMutableDictionary *)self->_dirtyInserts objectForKey:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_dirtyInserts objectForKey:v5];
  }

  else
  {
    connection = self->_connection;
    v19[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v10 = [(ML3DatabaseConnection *)connection executeQuery:@"SELECT name withParameters:name_order, name_section FROM sort_map WHERE name = ?", v9];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__ML3SortMapFaultingNameOrderDictionary_objectForKey___block_invoke;
    v12[3] = &unk_278762098;
    v12[5] = &v13;
    v12[6] = a2;
    v12[4] = self;
    [v10 enumerateRowsWithBlock:v12];
    v7 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __54__ML3SortMapFaultingNameOrderDictionary_objectForKey___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v12 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];

  v6 = [MEMORY[0x277CCAE60] valueWithML3NameOrder:{v4, v5}];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = v12;
  if (!v12)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[4] file:@"ML3SortMap.m" lineNumber:1278 description:@"got nil name from the sort map!"];

    v9 = 0;
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a1[6] object:a1[4] file:@"ML3SortMap.m" lineNumber:1279 description:@"valueWithML3NameOrder returned nil!"];

    v9 = v12;
  }
}

- (unint64_t)count
{
  v3 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT COUNT() from sort_map"];
  v4 = [v3 int64ValueForFirstRowAndColumn];
  v5 = [(NSMutableDictionary *)self->_dirtyInserts count];

  return v5 + v4;
}

- (ML3SortMapFaultingNameOrderDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = ML3SortMapFaultingNameOrderDictionary;
  v8 = [(ML3SortMapFaultingNameOrderDictionary *)&v14 init];
  if (v8)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(NSMutableDictionary *)v8->_dirtyInserts setObject:v10 forKey:v12];
      --a5;
    }

    while (a5);
  }

  return v8;
}

@end