@interface ICMergeableDictionary
- (ICMergeableDictionary)initWithData:(id)data replicaID:(id)d;
- (NSArray)allKeys;
- (NSUUID)replicaID;
- (id)description;
- (id)encodedData;
- (id)objectForKey:(id)key;
- (unint64_t)mergeWithDictionary:(id)dictionary;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ICMergeableDictionary

- (ICMergeableDictionary)initWithData:(id)data replicaID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = ICMergeableDictionary;
  v8 = [(ICMergeableDictionary *)&v19 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!dataCopy)
  {
    v14 = [[ICCRDocument alloc] initWithReplica:dCopy];
    document = v8->_document;
    v8->_document = v14;

    v16 = [[ICCRDictionary alloc] initWithDocument:v8->_document];
    dictionary = v8->_dictionary;
    v8->_dictionary = v16;

    [(ICCRDocument *)v8->_document setRootObject:v8->_dictionary];
    goto LABEL_6;
  }

  v9 = [ICCRCoderUnarchiver decodedDocumentFromData:dataCopy replica:dCopy];
  v10 = v8->_document;
  v8->_document = v9;

  rootObject = [(ICCRDocument *)v8->_document rootObject];
  v12 = v8->_dictionary;
  v8->_dictionary = rootObject;

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
  dictionary = [(ICMergeableDictionary *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

- (NSArray)allKeys
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  dictionary = [(ICMergeableDictionary *)self dictionary];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dictionary, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dictionary2 = [(ICMergeableDictionary *)self dictionary];
  keyEnumerator = [dictionary2 keyEnumerator];

  v8 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        [v5 addObject:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(ICMergeableDictionary *)self dictionary];
  v6 = [dictionary objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(ICMergeableDictionary *)self objectForKey:keyCopy];

  if (v7)
  {
    [(ICMergeableDictionary *)self removeObjectForKey:keyCopy];
  }

  if (objectCopy)
  {
    dictionary = [(ICMergeableDictionary *)self dictionary];
    [dictionary setObject:objectCopy forKey:keyCopy];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(ICMergeableDictionary *)self dictionary];
  [dictionary removeObjectForKey:keyCopy];
}

- (void)removeAllObjects
{
  dictionary = [(ICMergeableDictionary *)self dictionary];
  [dictionary removeAllObjects];
}

- (NSUUID)replicaID
{
  document = [(ICMergeableDictionary *)self document];
  replica = [document replica];

  return replica;
}

- (id)encodedData
{
  document = [(ICMergeableDictionary *)self document];
  archivedData = [document archivedData];

  return archivedData;
}

- (unint64_t)mergeWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  document = [(ICMergeableDictionary *)self document];
  document2 = [dictionaryCopy document];
  archivedData = [document2 archivedData];
  v8 = [document mergeWithData:archivedData];

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
      [(ICMergeableDictionary *)self mergeWithDictionary:dictionaryCopy, v9];
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