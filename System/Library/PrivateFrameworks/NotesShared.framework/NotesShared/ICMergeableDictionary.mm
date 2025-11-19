@interface ICMergeableDictionary
- (ICMergeableDictionary)initWithData:(id)a3 replicaID:(id)a4;
- (NSArray)allKeys;
- (NSUUID)replicaID;
- (id)description;
- (id)encodedData;
- (id)objectForKey:(id)a3;
- (unint64_t)mergeWithDictionary:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ICMergeableDictionary

- (ICMergeableDictionary)initWithData:(id)a3 replicaID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ICMergeableDictionary;
  v8 = [(ICMergeableDictionary *)&v19 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    v14 = [[ICCRDocument alloc] initWithReplica:v7];
    document = v8->_document;
    v8->_document = v14;

    v16 = [[ICCRDictionary alloc] initWithDocument:v8->_document];
    dictionary = v8->_dictionary;
    v8->_dictionary = v16;

    [(ICCRDocument *)v8->_document setRootObject:v8->_dictionary];
    goto LABEL_6;
  }

  v9 = [ICCRCoderUnarchiver decodedDocumentFromData:v6 replica:v7];
  v10 = v8->_document;
  v8->_document = v9;

  v11 = [(ICCRDocument *)v8->_document rootObject];
  v12 = v8->_dictionary;
  v8->_dictionary = v11;

  if (v8->_document)
  {
LABEL_6:
    v13 = v8;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)description
{
  v2 = [(ICMergeableDictionary *)self dictionary];
  v3 = [v2 description];

  return v3;
}

- (NSArray)allKeys
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(ICMergeableDictionary *)self dictionary];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(ICMergeableDictionary *)self dictionary];
  v7 = [v6 keyEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICMergeableDictionary *)self dictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ICMergeableDictionary *)self objectForKey:v6];

  if (v7)
  {
    [(ICMergeableDictionary *)self removeObjectForKey:v6];
  }

  if (v9)
  {
    v8 = [(ICMergeableDictionary *)self dictionary];
    [v8 setObject:v9 forKey:v6];
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICMergeableDictionary *)self dictionary];
  [v5 removeObjectForKey:v4];
}

- (void)removeAllObjects
{
  v2 = [(ICMergeableDictionary *)self dictionary];
  [v2 removeAllObjects];
}

- (NSUUID)replicaID
{
  v2 = [(ICMergeableDictionary *)self document];
  v3 = [v2 replica];

  return v3;
}

- (id)encodedData
{
  v2 = [(ICMergeableDictionary *)self document];
  v3 = [v2 archivedData];

  return v3;
}

- (unint64_t)mergeWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICMergeableDictionary *)self document];
  v6 = [v4 document];
  v7 = [v6 archivedData];
  v8 = [v5 mergeWithData:v7];

  if (v8 == 2)
  {
    v10 = 2;
  }

  else if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICMergeableDictionary *)self mergeWithDictionary:v4, v9];
    }

    v10 = 0;
  }

  return v10;
}

- (void)mergeWithDictionary:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Failed to merge %@ with %@", &v3, 0x16u);
}

@end