@interface _ML3SortMapFaultingNameOrderDictionaryEnumerator
- (_ML3SortMapFaultingNameOrderDictionaryEnumerator)initWithDirtyInsertsEnumerator:(id)enumerator connection:(id)connection;
- (id)nextObject;
@end

@implementation _ML3SortMapFaultingNameOrderDictionaryEnumerator

- (id)nextObject
{
  v19[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6467;
  v17 = __Block_byref_object_dispose__6468;
  nextObject = [(NSEnumerator *)self->_dirtyInsertsEnumerator nextObject];
  v4 = v14[5];
  if (!v4)
  {
    connection = self->_connection;
    v6 = MEMORY[0x277CCABB0];
    ++self->_offset;
    v7 = [v6 numberWithUnsignedInteger:?];
    v19[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v9 = [(ML3DatabaseConnection *)connection executeQuery:@"SELECT name withParameters:name_order, name_section FROM sort_map LIMIT 1 OFFSET ?", v8];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62___ML3SortMapFaultingNameOrderDictionaryEnumerator_nextObject__block_invoke;
    v12[3] = &unk_278762098;
    v12[5] = &v13;
    v12[6] = a2;
    v12[4] = self;
    [v9 enumerateRowsWithBlock:v12];

    v4 = v14[5];
  }

  v10 = v4;
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (_ML3SortMapFaultingNameOrderDictionaryEnumerator)initWithDirtyInsertsEnumerator:(id)enumerator connection:(id)connection
{
  enumeratorCopy = enumerator;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = _ML3SortMapFaultingNameOrderDictionaryEnumerator;
  v9 = [(_ML3SortMapFaultingNameOrderDictionaryEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_dirtyInsertsEnumerator, enumerator);
  }

  return v10;
}

@end