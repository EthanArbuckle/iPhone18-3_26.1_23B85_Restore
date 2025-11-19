@interface ICCRVectorTimestamp
- (BOOL)isEqual:(id)a3;
- (ICCRVectorTimestamp)init;
- (ICCRVectorTimestamp)initWithICCRCoder:(id)a3;
- (ICCRVectorTimestamp)initWithProtobufTimestamp:(const void *)a3 decoder:(id)a4;
- (NSString)description;
- (id)clockElementForUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)shortDescription;
- (id)sortedUUIDs;
- (id)timestampForReplica:(id)a3;
- (id)tombstone;
- (unint64_t)clockForUUID:(id)a3;
- (unint64_t)compare:(id)a3;
- (unint64_t)subclockForUUID:(id)a3;
- (void)encodeIntoProtobufTimestamp:(void *)a3 coder:(id)a4;
- (void)encodeWithICCRCoder:(id)a3;
- (void)incrementClockForUUID:(id)a3;
- (void)maxClock:(unint64_t)a3 forUUID:(id)a4;
- (void)mergeWith:(id)a3;
- (void)minusVectorTimestamp:(id)a3;
- (void)setClock:(unint64_t)a3 forUUID:(id)a4;
- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5;
@end

@implementation ICCRVectorTimestamp

- (ICCRVectorTimestamp)init
{
  v6.receiver = self;
  v6.super_class = ICCRVectorTimestamp;
  v2 = [(ICCRVectorTimestamp *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clock = v2->_clock;
    v2->_clock = v3;
  }

  return v2;
}

- (ICCRVectorTimestamp)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 8)
  {
    v6 = [(ICCRVectorTimestamp *)self initWithProtobufTimestamp:*(v5 + 40) decoder:v4];
  }

  else
  {
    v6 = [(ICCRVectorTimestamp *)self init];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 8)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 8;
    operator new();
  }

  [(ICCRVectorTimestamp *)self encodeIntoProtobufTimestamp:*(v4 + 40) coder:v6];
}

- (ICCRVectorTimestamp)initWithProtobufTimestamp:(const void *)a3 decoder:(id)a4
{
  v6 = a4;
  v7 = [(ICCRVectorTimestamp *)self init];
  if (v7)
  {
    v8 = *(a3 + 12);
    if (v8)
    {
      v9 = *(a3 + 5);
      v10 = v9;
      do
      {
        v11 = *v10;
        if (*(*v10 + 32))
        {
          v12 = [v6 decodeUUIDFromUUIDIndex:*(v11 + 40)];
          v13 = objc_alloc_init(ICCRVectorTimestampElement);
          v14 = v13;
          v15 = *(v11 + 32);
          if ((v15 & 2) != 0)
          {
            [(ICCRVectorTimestampElement *)v13 setClock:*(v11 + 48)];
            v15 = *(v11 + 32);
          }

          if ((v15 & 4) != 0)
          {
            [(ICCRVectorTimestampElement *)v14 setSubclock:*(v11 + 56)];
          }

          [(NSMutableDictionary *)v7->_clock setObject:v14 forKeyedSubscript:v12];

          v9 = *(a3 + 5);
          v8 = *(a3 + 12);
        }

        ++v10;
      }

      while (v10 != &v9[v8]);
    }
  }

  return v7;
}

- (void)encodeIntoProtobufTimestamp:(void *)a3 coder:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableDictionary *)self->_clock allKeys];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:v11];
        v13 = *(a3 + 13);
        v14 = *(a3 + 12);
        if (v14 >= v13)
        {
          if (v13 == *(a3 + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 40, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::VectorTimestamp_Element>::New();
        }

        v15 = *(a3 + 5);
        *(a3 + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [v6 encodeUUIDIndexFromUUID:v11];
        *(v16 + 32) |= 1u;
        *(v16 + 40) = v17;
        if ([v12 clock])
        {
          v18 = [v12 clock];
          *(v16 + 32) |= 2u;
          *(v16 + 48) = v18;
        }

        if ([v12 subclock])
        {
          v19 = [v12 subclock];
          *(v16 + 32) |= 4u;
          *(v16 + 56) = v19;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICCRVectorTimestamp allocWithZone:?]];
  [(ICCRVectorTimestamp *)v4 mergeWith:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICCRVectorTimestamp *)self compare:v4]== 0;

  return v5;
}

- (id)timestampForReplica:(id)a3
{
  v4 = a3;
  v5 = [[ICCRTimestamp alloc] initWithReplica:v4 andCounter:[(ICCRVectorTimestamp *)self clockForUUID:v4]];

  return v5;
}

- (id)clockElementForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:a3];

  return v3;
}

- (unint64_t)clockForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:a3];
  v4 = [v3 clock];

  return v4;
}

- (unint64_t)subclockForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:a3];
  v4 = [v3 subclock];

  return v4;
}

- (void)setClock:(unint64_t)a3 forUUID:(id)a4
{
  v7 = a4;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(ICCRVectorTimestampElement);
  }

  [(ICCRVectorTimestampElement *)v6 setClock:a3];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:v7];
}

- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5
{
  v9 = a5;
  v8 = objc_alloc_init(ICCRVectorTimestampElement);
  [(ICCRVectorTimestampElement *)v8 setClock:a3];
  [(ICCRVectorTimestampElement *)v8 setSubclock:a4];
  [(NSMutableDictionary *)self->_clock setObject:v8 forKey:v9];
}

- (void)incrementClockForUUID:(id)a3
{
  v4 = a3;
  [(ICCRVectorTimestamp *)self setClock:[(ICCRVectorTimestamp *)self clockForUUID:?]+ 1 forUUID:v4];
}

- (void)maxClock:(unint64_t)a3 forUUID:(id)a4
{
  v9 = a4;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(ICCRVectorTimestampElement);
  }

  v7 = [(ICCRVectorTimestampElement *)v6 clock];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  [(ICCRVectorTimestampElement *)v6 setClock:v8];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:v9];
}

- (id)sortedUUIDs
{
  v2 = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_CR_compare_];

  return v3;
}

- (unint64_t)compare:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [(ICCRVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 allUUIDs];
  [v7 addObjectsFromArray:v8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v9)
  {

    v22 = 0;
    goto LABEL_20;
  }

  v24 = v7;
  v10 = 0;
  v11 = 0;
  v12 = *v29;
  v26 = 1;
  v25 = 4;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      v15 = [(ICCRVectorTimestamp *)self clockElementForUUID:v14, v24];
      v16 = [v4 clockElementForUUID:v14];
      v17 = [v15 clock];
      if (v17 < [v16 clock])
      {
LABEL_7:
        v11 = 1;
        goto LABEL_12;
      }

      v18 = [v15 clock];
      if (v18 <= [v16 clock])
      {
        v19 = [v15 subclock];
        if (v19 < [v16 subclock])
        {
          goto LABEL_7;
        }

        v20 = [v15 subclock];
        v10 |= v20 > [v16 subclock];
      }

      else
      {
        v10 = 1;
      }

LABEL_12:

      if (v11 & v10)
      {
        goto LABEL_18;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v9);
  v21 = 4;
  if ((v10 & 1) == 0)
  {
    v21 = 0;
  }

  v25 = v21;
  v26 = v11 & 1;
LABEL_18:

  v22 = v25 | v26;
LABEL_20:

  return v22;
}

- (void)minusVectorTimestamp:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 allUUIDs];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(ICCRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [v4 clockElementForUUID:v9];
        v12 = [v10 clock];
        if (v12 < [v11 clock] || (v13 = objc_msgSend(v10, "clock"), v13 == objc_msgSend(v11, "clock")) && (v14 = objc_msgSend(v10, "subclock"), v14 <= objc_msgSend(v11, "subclock")))
        {
          [(NSMutableDictionary *)self->_clock removeObjectForKey:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)mergeWith:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 allUUIDs];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(ICCRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [v4 clockElementForUUID:v9];
        v12 = [v10 clock];
        if (v12 > [v11 clock] || (v15 = objc_msgSend(v10, "clock"), v15 == objc_msgSend(v11, "clock")) && (v16 = objc_msgSend(v10, "subclock"), v16 > objc_msgSend(v11, "subclock")))
        {
          v13 = [v10 clock];
          v14 = [v10 subclock];
        }

        else
        {
          v13 = [v11 clock];
          v14 = [v11 subclock];
        }

        [(ICCRVectorTimestamp *)self setClock:v13 subclock:v14 forUUID:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot calculate deltas for vector timestamps." userInfo:0];
  objc_exception_throw(v7);
}

- (id)tombstone
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot tombstone a non-value / non-identified object." userInfo:0];
  objc_exception_throw(v2);
}

- (id)shortDescription
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(ICCRVectorTimestamp *)self count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(__CFString *)v3 appendFormat:@"{"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(ICCRVectorTimestamp *)self sortedUUIDs];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(ICCRVectorTimestamp *)self clockElementForUUID:v8];
          v10 = [v8 CR_shortDescription];
          -[__CFString appendFormat:](v3, "appendFormat:", @"%@:%lu ", v10, [v9 clock]);
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    [(__CFString *)v3 replaceCharactersInRange:[(__CFString *)v3 length]- 1 withString:1, @"}"];
  }

  else
  {
    v3 = @"{}";
  }

  return v3;
}

- (NSString)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@ %p (\n"), v5, self;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(ICCRVectorTimestamp *)self sortedUUIDs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(ICCRVectorTimestamp *)self clockElementForUUID:v10];
        [v3 appendFormat:@"  %@:%lu.%lu\n", v10, objc_msgSend(v11, "clock"), objc_msgSend(v11, "subclock")];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 appendString:@">"]);

  return v3;
}

@end