@interface ICCRDictionary
- (BOOL)isEqual:(id)a3;
- (ICCRDictionary)init;
- (ICCRDictionary)initWithDocument:(id)a3;
- (ICCRDictionary)initWithICCRCoder:(id)a3;
- (ICCRDictionary)initWithICCRCoder:(id)a3 dictionary:(const void *)a4 elementValueDecoder:(id)a5;
- (ICCRDocument)document;
- (NSString)description;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)a3;
- (void)encodeWithICCRCoder:(id)a3 dictionary:(void *)a4 elementValueCoder:(id)a5;
- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithDictionary:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setDocument:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRDictionary

- (ICCRDictionary)init
{
  v6.receiver = self;
  v6.super_class = ICCRDictionary;
  v2 = [(ICCRDictionary *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    contents = v2->_contents;
    v2->_contents = v3;
  }

  return v2;
}

- (ICCRDictionary)initWithDocument:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICCRDictionary;
  v5 = [(ICCRDictionary *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    contents = v5->_contents;
    v5->_contents = v6;

    objc_storeWeak(&v5->_document, v4);
  }

  return v5;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 6)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 6;
    operator new();
  }

  [(ICCRDictionary *)self encodeWithICCRCoder:v6 dictionary:*(v4 + 40)];
}

void __49__ICCRDictionary_encodeWithICCRCoder_dictionary___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a2;
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 conformsToProtocol:&unk_282759DF8])
  {
    *(a4 + 32) |= 2u;
    v10 = *(a4 + 48);
    if (!v10)
    {
      operator new();
    }

    [v9 encodeObject:v8 forObjectID:v10];
  }

  *(a4 + 32) |= 1u;
  v11 = *(a4 + 40);
  if (!v11)
  {
    operator new();
  }

  [v9 encodeObject:v12 forObjectID:v11];
}

- (void)encodeWithICCRCoder:(id)a3 dictionary:(void *)a4 elementValueCoder:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = self;
  obj = [(ICCRDictionary *)self contents];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v24 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = *(a4 + 13);
        v14 = *(a4 + 12);
        if (v14 >= v13)
        {
          if (v13 == *(a4 + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4 + 40, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::Dictionary_Element>::New();
        }

        v15 = *(a4 + 5);
        *(a4 + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [(ICCRDictionary *)v25 contents];
        v18 = [v17 objectForKey:v12];

        v19 = [v18 value];
        v9[2](v9, v12, v19, v16, v8);

        v20 = [v18 timestamp];
        v21 = v20;
        *(v16 + 32) |= 4u;
        v22 = *(v16 + 56);
        if (!v22)
        {
          operator new();
        }

        [v20 encodeIntoProtobufTimestamp:v22 coder:v8];
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }
}

- (ICCRDictionary)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 6)
  {
    v6 = [(ICCRDictionary *)self initWithICCRCoder:v4 dictionary:*(v5 + 40)];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(ICCRDictionary *)self initWithDocument:v7];
  }

  v8 = v6;

  return v8;
}

- (ICCRDictionary)initWithICCRCoder:(id)a3 dictionary:(const void *)a4 elementValueDecoder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 document];
  v11 = [(ICCRDictionary *)self initWithDocument:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 12)];
    if (*(a4 + 12))
    {
      for (i = *(a4 + 5); i != (*(a4 + 5) + 8 * *(a4 + 12)); ++i)
      {
        v14 = *i;
        v28 = 0;
        v15 = v9[2](v9, v14, &v28, v8);
        v16 = v28;
        v17 = v16;
        if ((*(v14 + 32) & 4) != 0)
        {
          v19 = [ICCRVectorTimestamp alloc];
          v20 = v19;
          v21 = *(v14 + 56);
          if (!v21)
          {
            v21 = *(CRDT::Dictionary_Element::default_instance(v19) + 56);
          }

          v18 = [(ICCRVectorTimestamp *)v20 initWithProtobufTimestamp:v21 decoder:v8];
          if (!v17)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v18 = 0;
          if (!v16)
          {
            goto LABEL_11;
          }
        }

        v22 = [[ICCRDictionaryElement alloc] initWithValue:v15 timestamp:v18];
        [v12 addObject:v17];
        [v12 addObject:v22];

LABEL_11:
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__ICCRDictionary_initWithICCRCoder_dictionary_elementValueDecoder___block_invoke;
    v25[3] = &unk_278197580;
    v23 = v12;
    v26 = v23;
    v27 = v11;
    [v8 addDecoderCompletionHandler:v25 dependency:0 for:v27];
  }

  return v11;
}

void __67__ICCRDictionary_initWithICCRCoder_dictionary_elementValueDecoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i < v3; i += 2)
    {
      v5 = [*(a1 + 40) contents];
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i + 1];
      v7 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v5 setObject:v6 forKey:v7];
    }
  }
}

- (unint64_t)count
{
  v2 = [(ICCRDictionary *)self contents];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(ICCRDictionary *)self contents];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)keyEnumerator
{
  v2 = [(ICCRDictionary *)self contents];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(ICCRDictionary *)self contents];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [(ICCRDictionary *)self contents];
      v10 = [v9 objectForKey:v8];

      v11 = [v10 value];
      v12 = [v10 timestamp];
      v4[2](v4, v8, v11, v12, &v18);

      LOBYTE(v11) = v18;
      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (unint64_t)hash
{
  v2 = [(ICCRDictionary *)self contents];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRDictionary *)self contents];
    v6 = [v4 contents];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRDictionary *)self contents];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 value];

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(ICCRDictionary *)self contents];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v10 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
      {
        [ICCRDictionary setObject:? forKey:?];
      }
    }

    else
    {
      v10 = [[ICCRDictionaryElement alloc] initWithValue:v6];
      v11 = [(ICCRDictionary *)self document];
      v12 = [v11 replicaClock];

      v13 = [(ICCRDictionaryElement *)v10 timestamp];
      v14 = [MEMORY[0x277CCAD78] CR_unserialized];
      [v13 setClock:v12 + 1 forUUID:v14];

      v15 = [(ICCRDictionary *)self contents];
      [v15 setObject:v10 forKey:v7];

      v16 = [(ICCRDictionary *)self document];
      [v16 setDocumentFor:v7];

      v17 = [(ICCRDictionary *)self document];
      [v17 setDocumentFor:v6];
    }
  }

  else
  {
    [(ICCRDictionary *)self removeObjectForKey:v7];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(ICCRDictionary *)self objectForKey:a3];

  return v3;
}

- (void)removeObjectForKey:(id)a3
{
  v6 = a3;
  v4 = [(ICCRDictionary *)self contents];
  [v4 removeObjectForKey:v6];

  v5 = [(ICCRDictionary *)self document];
  -[ICCRDictionary setRemoveClock:](self, "setRemoveClock:", [v5 replicaClock] + 1);
}

- (void)removeAllObjects
{
  v3 = [(ICCRDictionary *)self contents];
  [v3 removeAllObjects];

  v4 = [(ICCRDictionary *)self document];
  -[ICCRDictionary setRemoveClock:](self, "setRemoveClock:", [v4 replicaClock] + 1);
}

- (void)realizeLocalChangesIn:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(ICCRDictionary *)self contents];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [(ICCRDictionary *)self contents];
        v10 = [v9 objectForKey:v8];

        v11 = [v10 timestamp];
        v12 = [MEMORY[0x277CCAD78] CR_unserialized];
        v13 = [v11 clockForUUID:v12];

        if (v13 >= 1)
        {
          v14 = [v10 timestamp];
          v15 = [MEMORY[0x277CCAD78] CR_unserialized];
          [v14 removeUUID:v15];

          v16 = [v10 timestamp];
          v17 = [v4 replica];
          [v16 setClock:v13 forUUID:v17];

          v18 = [v4 unserializedReplicaClock];
          if (v18 <= v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = v18;
          }

          [v4 setUnserializedReplicaClock:v19];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  if ([(ICCRDictionary *)self removeClock]>= 1)
  {
    v20 = [v4 unserializedReplicaClock];
    v21 = [(ICCRDictionary *)self removeClock];
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    [v4 setUnserializedReplicaClock:v22];
  }

  [(ICCRDictionary *)self setRemoveClock:0];
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCRDictionary *)self mergeWithDictionary:v5];
}

- (void)mergeWithDictionary:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(ICCRDictionary *)self contents];
  v4 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v4)
  {
    v5 = *v49;
    do
    {
      v6 = 0;
      do
      {
        if (*v49 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * v6);
        v8 = [(ICCRDictionary *)self contents];
        v9 = [v8 objectForKey:v7];

        v10 = [v39 contents];
        v11 = [v10 objectForKey:v7];

        if (v11)
        {
          [v9 mergeWith:v11];
        }

        else
        {
          v12 = [v9 timestamp];
          v13 = [v39 document];
          v14 = [v13 version];
          [v12 minusVectorTimestamp:v14];

          v15 = [v9 timestamp];
          LODWORD(v12) = [v15 count] == 0;

          if (v12)
          {
            [v35 addObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v4);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = v35;
  v16 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v16)
  {
    v17 = *v45;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obja);
        }

        v19 = *(*(&v44 + 1) + 8 * v18);
        v20 = [(ICCRDictionary *)self contents];
        [v20 removeObjectForKey:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v16);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = [v39 contents];
  v21 = [v36 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v21)
  {
    v22 = *v41;
    do
    {
      v23 = 0;
      do
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v36);
        }

        v24 = *(*(&v40 + 1) + 8 * v23);
        v25 = [(ICCRDictionary *)self contents];
        v26 = [v25 objectForKey:v24];
        v27 = v26 == 0;

        if (v27)
        {
          v28 = [v39 contents];
          v29 = [v28 objectForKey:v24];

          v30 = [(ICCRDictionary *)self document];
          v31 = [v30 version];
          v32 = [v29 timestamp];
          v33 = ([v31 compare:v32] & 1) == 0;

          if (!v33)
          {
            v34 = [(ICCRDictionary *)self contents];
            [v34 setObject:v29 forKey:v24];
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v36 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v21);
  }
}

- (void)setDocument:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ICCRDictionary *)self contents];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(ICCRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 value];
        v13 = [v4 localObject:v12];

        if (v13)
        {
          v14 = [v11 value];
          v15 = v14 == v13;

          if (!v15)
          {
            [v11 setValue:v13];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v20 = [[ICCRDictionary alloc] initWithDocument:v21];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(ICCRDictionary *)self contents];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(ICCRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 timestamp];
        v13 = [v12 copy];

        [v13 minusVectorTimestamp:v5];
        v14 = [v11 value];
        v15 = [v14 deltaSince:v5 in:v21];

        v16 = objc_alloc_init(ICCRDictionaryElement);
        [(ICCRDictionaryElement *)v16 setValue:v15];
        [(ICCRDictionaryElement *)v16 setTimestamp:v13];
        v17 = [(ICCRDictionary *)v20 contents];
        [v17 setObject:v16 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  return v20;
}

- (void)walkGraph:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICCRDictionary *)self contents];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v4[2](v4, v9);
        v10 = [(ICCRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];
        v12 = [v11 value];
        (v4)[2](v4, v12);
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(ICCRDictionary *)self count])
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(ICCRDictionary *)self contents];
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(ICCRDictionary *)self contents];
          v12 = [v11 objectForKey:v10];

          v13 = [v12 value];
          LODWORD(v11) = v13 == v10;

          v14 = [v12 timestamp];
          v15 = [v14 shortDescription];
          [v12 value];
          if (v11)
            v16 = {;
            [v6 appendFormat:@"  %@ %@, \n", v15, v16];
          }

          else
            v16 = {;
            [v6 appendFormat:@"  %@ : %@ %@, \n", v10, v15, v16];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v6 = [v17 stringWithFormat:@"<%@ %p>", v19, self];
  }

  return v6;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end