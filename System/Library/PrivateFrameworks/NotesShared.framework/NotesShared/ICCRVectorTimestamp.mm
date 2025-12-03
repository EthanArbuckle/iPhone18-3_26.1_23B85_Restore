@interface ICCRVectorTimestamp
- (BOOL)isEqual:(id)equal;
- (ICCRVectorTimestamp)init;
- (ICCRVectorTimestamp)initWithICCRCoder:(id)coder;
- (ICCRVectorTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder;
- (NSString)description;
- (id)clockElementForUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deltaSince:(id)since in:(id)in;
- (id)shortDescription;
- (id)sortedUUIDs;
- (id)timestampForReplica:(id)replica;
- (id)tombstone;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)compare:(id)compare;
- (unint64_t)subclockForUUID:(id)d;
- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder;
- (void)encodeWithICCRCoder:(id)coder;
- (void)incrementClockForUUID:(id)d;
- (void)maxClock:(unint64_t)clock forUUID:(id)d;
- (void)mergeWith:(id)with;
- (void)minusVectorTimestamp:(id)timestamp;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
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

- (ICCRVectorTimestamp)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 8)
  {
    v6 = [(ICCRVectorTimestamp *)self initWithProtobufTimestamp:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
  }

  else
  {
    v6 = [(ICCRVectorTimestamp *)self init];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 8)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 8;
    operator new();
  }

  [(ICCRVectorTimestamp *)self encodeIntoProtobufTimestamp:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (ICCRVectorTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = [(ICCRVectorTimestamp *)self init];
  if (v7)
  {
    v8 = *(timestamp + 12);
    if (v8)
    {
      v9 = *(timestamp + 5);
      v10 = v9;
      do
      {
        v11 = *v10;
        if (*(*v10 + 32))
        {
          v12 = [decoderCopy decodeUUIDFromUUIDIndex:*(v11 + 40)];
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

          v9 = *(timestamp + 5);
          v8 = *(timestamp + 12);
        }

        ++v10;
      }

      while (v10 != &v9[v8]);
    }
  }

  return v7;
}

- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:v11];
        v13 = *(timestamp + 13);
        v14 = *(timestamp + 12);
        if (v14 >= v13)
        {
          if (v13 == *(timestamp + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(timestamp + 40, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::VectorTimestamp_Element>::New();
        }

        v15 = *(timestamp + 5);
        *(timestamp + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [coderCopy encodeUUIDIndexFromUUID:v11];
        *(v16 + 32) |= 1u;
        *(v16 + 40) = v17;
        if ([v12 clock])
        {
          clock = [v12 clock];
          *(v16 + 32) |= 2u;
          *(v16 + 48) = clock;
        }

        if ([v12 subclock])
        {
          subclock = [v12 subclock];
          *(v16 + 32) |= 4u;
          *(v16 + 56) = subclock;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICCRVectorTimestamp allocWithZone:?]];
  [(ICCRVectorTimestamp *)v4 mergeWith:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICCRVectorTimestamp *)self compare:equalCopy]== 0;

  return v5;
}

- (id)timestampForReplica:(id)replica
{
  replicaCopy = replica;
  v5 = [[ICCRTimestamp alloc] initWithReplica:replicaCopy andCounter:[(ICCRVectorTimestamp *)self clockForUUID:replicaCopy]];

  return v5;
}

- (id)clockElementForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];

  return v3;
}

- (unint64_t)clockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  clock = [v3 clock];

  return clock;
}

- (unint64_t)subclockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  subclock = [v3 subclock];

  return subclock;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(ICCRVectorTimestampElement);
  }

  [(ICCRVectorTimestampElement *)v6 setClock:clock];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  v8 = objc_alloc_init(ICCRVectorTimestampElement);
  [(ICCRVectorTimestampElement *)v8 setClock:clock];
  [(ICCRVectorTimestampElement *)v8 setSubclock:subclock];
  [(NSMutableDictionary *)self->_clock setObject:v8 forKey:dCopy];
}

- (void)incrementClockForUUID:(id)d
{
  dCopy = d;
  [(ICCRVectorTimestamp *)self setClock:[(ICCRVectorTimestamp *)self clockForUUID:?]+ 1 forUUID:dCopy];
}

- (void)maxClock:(unint64_t)clock forUUID:(id)d
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(ICCRVectorTimestampElement);
  }

  clock = [(ICCRVectorTimestampElement *)v6 clock];
  if (clock <= clock)
  {
    clockCopy = clock;
  }

  else
  {
    clockCopy = clock;
  }

  [(ICCRVectorTimestampElement *)v6 setClock:clockCopy];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:dCopy];
}

- (id)sortedUUIDs
{
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_CR_compare_];

  return v3;
}

- (unint64_t)compare:(id)compare
{
  v33 = *MEMORY[0x277D85DE8];
  compareCopy = compare;
  v5 = MEMORY[0x277CBEB58];
  allUUIDs = [(ICCRVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:allUUIDs];

  allUUIDs2 = [compareCopy allUUIDs];
  [v7 addObjectsFromArray:allUUIDs2];

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
      v16 = [compareCopy clockElementForUUID:v14];
      clock = [v15 clock];
      if (clock < [v16 clock])
      {
LABEL_7:
        v11 = 1;
        goto LABEL_12;
      }

      clock2 = [v15 clock];
      if (clock2 <= [v16 clock])
      {
        subclock = [v15 subclock];
        if (subclock < [v16 subclock])
        {
          goto LABEL_7;
        }

        subclock2 = [v15 subclock];
        v10 |= subclock2 > [v16 subclock];
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

- (void)minusVectorTimestamp:(id)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allUUIDs = [timestampCopy allUUIDs];
  v6 = [allUUIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allUUIDs);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(ICCRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [timestampCopy clockElementForUUID:v9];
        clock = [v10 clock];
        if (clock < [v11 clock] || (v13 = objc_msgSend(v10, "clock"), v13 == objc_msgSend(v11, "clock")) && (v14 = objc_msgSend(v10, "subclock"), v14 <= objc_msgSend(v11, "subclock")))
        {
          [(NSMutableDictionary *)self->_clock removeObjectForKey:v9];
        }
      }

      v6 = [allUUIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)mergeWith:(id)with
{
  v22 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allUUIDs = [withCopy allUUIDs];
  v6 = [allUUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allUUIDs);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(ICCRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [withCopy clockElementForUUID:v9];
        clock = [v10 clock];
        if (clock > [v11 clock] || (v15 = objc_msgSend(v10, "clock"), v15 == objc_msgSend(v11, "clock")) && (v16 = objc_msgSend(v10, "subclock"), v16 > objc_msgSend(v11, "subclock")))
        {
          clock2 = [v10 clock];
          subclock = [v10 subclock];
        }

        else
        {
          clock2 = [v11 clock];
          subclock = [v11 subclock];
        }

        [(ICCRVectorTimestamp *)self setClock:clock2 subclock:subclock forUUID:v9];
      }

      v6 = [allUUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
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
    sortedUUIDs = [(ICCRVectorTimestamp *)self sortedUUIDs];
    v5 = [sortedUUIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(sortedUUIDs);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(ICCRVectorTimestamp *)self clockElementForUUID:v8];
          cR_shortDescription = [v8 CR_shortDescription];
          -[__CFString appendFormat:](v3, "appendFormat:", @"%@:%lu ", cR_shortDescription, [v9 clock]);
        }

        v5 = [sortedUUIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  sortedUUIDs = [(ICCRVectorTimestamp *)self sortedUUIDs];
  v7 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sortedUUIDs);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(ICCRVectorTimestamp *)self clockElementForUUID:v10];
        [v3 appendFormat:@"  %@:%lu.%lu\n", v10, objc_msgSend(v11, "clock"), objc_msgSend(v11, "subclock")];
      }

      v7 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 appendString:@">"]);

  return v3;
}

@end