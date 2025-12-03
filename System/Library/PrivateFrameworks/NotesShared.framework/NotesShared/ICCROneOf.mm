@interface ICCROneOf
- (ICCROneOf)init;
- (ICCROneOf)initWithICCRCoder:(id)coder;
- (id)contents;
- (id)timestampForNewItem;
- (void)addItem:(id)item;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)setContents:(id)contents;
- (void)setSet:(id)set;
- (void)setUpdated:(id)updated;
@end

@implementation ICCROneOf

- (ICCROneOf)init
{
  v6.receiver = self;
  v6.super_class = ICCROneOf;
  v2 = [(ICCROneOf *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    timestamps = v2->_timestamps;
    v2->_timestamps = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (ICCROneOf)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) != 12)
  {
    goto LABEL_6;
  }

  v28.receiver = self;
  v28.super_class = ICCROneOf;
  v6 = [(ICCROneOf *)&v28 init];
  if (!v6)
  {
    self = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_23;
  }

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  timestamps = v6->_timestamps;
  v6->_timestamps = strongToStrongObjectsMapTable;

  if (*(currentDocumentObjectForDecoding + 48) == 12)
  {
    v10 = *(currentDocumentObjectForDecoding + 40);
  }

  else
  {
    v10 = CRDT::OneOf::default_instance(v9);
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v10 + 48)];
  v13 = v12;
  if (*(v10 + 48))
  {
    for (i = *(v10 + 40); i != (*(v10 + 40) + 8 * *(v10 + 48)); ++i)
    {
      v15 = *i;
      v16 = *(*i + 32);
      if (v16)
      {
        v19 = *(v15 + 40);
        if (!v19)
        {
          v19 = *(CRDT::OneOf_Element::default_instance(v12) + 40);
        }

        v17 = [coderCopy decodeObjectForProtobufObjectID:v19];
        if ((*(v15 + 32) & 2) != 0)
        {
LABEL_16:
          v20 = [ICCRTimestamp alloc];
          v21 = v20;
          v22 = *(v15 + 48);
          if (!v22)
          {
            v22 = *(CRDT::OneOf_Element::default_instance(v20) + 48);
          }

          v23 = [(ICCRTimestamp *)v21 initWithProtobufTimestamp:v22 decoder:coderCopy];
          v18 = v23;
          if (v17 && v23)
          {
            [(CRDT::OneOf_Element *)v13 addObject:v17];
            [(CRDT::OneOf_Element *)v13 addObject:v18];
          }

          goto LABEL_21;
        }
      }

      else
      {
        v17 = 0;
        if ((v16 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      v18 = 0;
LABEL_21:
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __31__ICCROneOf_initWithICCRCoder___block_invoke;
  v25[3] = &unk_278197580;
  self = v13;
  selfCopy = self;
  v11 = v6;
  v27 = v11;
  [coderCopy addDecoderCompletionHandler:v25 dependency:0 for:v11];

LABEL_23:
  return v11;
}

void __31__ICCROneOf_initWithICCRCoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i < v3; i += 2)
    {
      v5 = [*(a1 + 40) timestamps];
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i + 1];
      v7 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v5 setObject:v6 forKey:v7];
    }
  }
}

- (void)encodeWithICCRCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v6 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 12)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v6 + 48) = 12;
    operator new();
  }

  v7 = *(currentDocumentObjectForEncoding + 40);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  timestamps = [(ICCROneOf *)self timestamps];
  v9 = [timestamps countByEnumeratingWithState:&v22 objects:v26 count:16];
  v10 = v9;
  if (v9)
  {
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(timestamps);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = *(v7 + 52);
        v15 = *(v7 + 48);
        if (v15 >= v14)
        {
          if (v14 == *(v7 + 56))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v7 + 40, v14 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::OneOf_Element>::New();
        }

        v16 = *(v7 + 40);
        *(v7 + 48) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        *(v17 + 32) |= 1u;
        v18 = *(v17 + 40);
        if (!v18)
        {
          operator new();
        }

        [coderCopy encodeObject:v13 forObjectID:v18];
        timestamps2 = [(ICCROneOf *)self timestamps];
        v20 = [timestamps2 objectForKey:v13];

        *(v17 + 32) |= 2u;
        v21 = *(v17 + 48);
        if (!v21)
        {
          operator new();
        }

        [v20 encodeIntoProtobufTimestamp:v21 coder:coderCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [timestamps countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (id)timestampForNewItem
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(ICCROneOf *)self set];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        timestamps = [(ICCROneOf *)self timestamps];
        v10 = [timestamps objectForKey:v8];

        if (!v4 || [v4 compare:v10] == 1)
        {
          v11 = v10;

          v4 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = [ICCRTimestamp alloc];
  v13 = [(ICCROneOf *)self set];
  document = [v13 document];
  replica = [document replica];
  v16 = -[ICCRTimestamp initWithReplica:andCounter:](v12, "initWithReplica:andCounter:", replica, [v4 counter] - 1);

  return v16;
}

- (void)setSet:(id)set
{
  setCopy = set;
  set = self->_set;
  v7 = setCopy;
  if (set != setCopy)
  {
    [(ICCRSet *)set removeObserver:self];
    objc_storeStrong(&self->_set, set);
    [(ICCRSet *)v7 addObserver:self];
  }
}

- (void)setUpdated:(id)updated
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ICCROneOf *)self set:updated];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        timestamps = [(ICCROneOf *)self timestamps];
        v10 = [timestamps objectForKey:v8];

        if (!v10)
        {
          timestamps2 = [(ICCROneOf *)self timestamps];
          timestampForNewItem = [(ICCROneOf *)self timestampForNewItem];
          [timestamps2 setObject:timestampForNewItem forKey:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)addItem:(id)item
{
  itemCopy = item;
  timestamps = [(ICCROneOf *)self timestamps];
  timestampForNewItem = [(ICCROneOf *)self timestampForNewItem];
  [timestamps setObject:timestampForNewItem forKey:itemCopy];
}

- (id)contents
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(ICCROneOf *)self set];
  v4 = 0;
  v5 = 0;
  v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        timestamps = [(ICCROneOf *)self timestamps];
        v11 = [timestamps objectForKey:v9];

        if (!v5 || [v5 compare:v11] == -1)
        {
          v12 = v11;

          v13 = v9;
          v4 = v13;
          v5 = v12;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  v4 = [(ICCROneOf *)self set];
  v5 = [v4 containsObject:contentsCopy];

  if (v5)
  {
    timestamps = [(ICCROneOf *)self timestamps];
    contents = [(ICCROneOf *)self contents];
    v8 = [timestamps objectForKey:contents];

    v9 = [ICCRTimestamp alloc];
    v10 = [(ICCROneOf *)self set];
    document = [v10 document];
    replica = [document replica];
    v13 = -[ICCRTimestamp initWithReplica:andCounter:](v9, "initWithReplica:andCounter:", replica, [v8 counter] + 1);

    timestamps2 = [(ICCROneOf *)self timestamps];
    v15 = [timestamps2 objectForKey:contentsCopy];
    [v15 mergeWith:v13];

    counter = [(ICCRTimestamp *)v13 counter];
    v17 = [(ICCROneOf *)self set];
    document2 = [v17 document];
    unserializedReplicaClock = [document2 unserializedReplicaClock];

    if (counter <= unserializedReplicaClock)
    {
      counter = unserializedReplicaClock;
    }

    v20 = [(ICCROneOf *)self set];
    document3 = [v20 document];
    [document3 setUnserializedReplicaClock:counter];
  }
}

- (void)mergeWith:(id)with
{
  v21 = *MEMORY[0x277D85DE8];
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge ICCROneOf userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v15);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  timestamps = [withCopy timestamps];
  v6 = [timestamps countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(timestamps);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        timestamps2 = [withCopy timestamps];
        v11 = [timestamps2 objectForKey:v9];

        timestamps3 = [(ICCROneOf *)self timestamps];
        v13 = [timestamps3 objectForKey:v9];

        if (v13)
        {
          [v13 mergeWith:v11];
        }

        else
        {
          timestamps4 = [(ICCROneOf *)self timestamps];
          [timestamps4 setObject:v11 forKey:v9];
        }
      }

      v6 = [timestamps countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

@end