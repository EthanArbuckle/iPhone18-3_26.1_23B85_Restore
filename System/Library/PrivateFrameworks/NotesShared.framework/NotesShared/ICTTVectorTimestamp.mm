@interface ICTTVectorTimestamp
- (BOOL)isEqual:(id)equal;
- (ICTTVectorTimestamp)init;
- (ICTTVectorTimestamp)initWithArchive:(const void *)archive;
- (ICTTVectorTimestamp)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serialize;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)compareTo:(id)to;
- (unint64_t)subclockForUUID:(id)d;
- (void)incrementClockForUUID:(id)d;
- (void)mergeWithTimestamp:(id)timestamp;
- (void)saveToArchive:(void *)archive;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
@end

@implementation ICTTVectorTimestamp

- (ICTTVectorTimestamp)init
{
  v6.receiver = self;
  v6.super_class = ICTTVectorTimestamp;
  v2 = [(ICTTVectorTimestamp *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clock = v2->_clock;
    v2->_clock = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICTTVectorTimestamp allocWithZone:?]];
  [(ICTTVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICTTVectorTimestamp *)self compareTo:equalCopy]== 0;

  return v5;
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
  clock = self->_clock;
  dCopy = d;
  v8 = [(NSMutableDictionary *)clock objectForKeyedSubscript:dCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(ICTTVectorTimestampElement);
  }

  v9 = v8;
  [(ICTTVectorTimestampElement *)v8 setClock:clock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  v9 = objc_alloc_init(ICTTVectorTimestampElement);
  [(ICTTVectorTimestampElement *)v9 setClock:clock];
  [(ICTTVectorTimestampElement *)v9 setSubclock:subclock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)incrementClockForUUID:(id)d
{
  dCopy = d;
  [(ICTTVectorTimestamp *)self setClock:[(ICTTVectorTimestamp *)self clockForUUID:dCopy]+ 1 forUUID:dCopy];
}

- (id)sortedUUIDs
{
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_TTCompare_];

  return v3;
}

- (unint64_t)compareTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = MEMORY[0x277CBEB58];
  allUUIDs = [(ICTTVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:allUUIDs];

  allUUIDs2 = [toCopy allUUIDs];
  [v7 addObjectsFromArray:allUUIDs2];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {

    v25 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v29;
  obj = v9;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v28 + 1) + 8 * i);
      v17 = [(ICTTVectorTimestamp *)self clockElementForUUID:v16];
      v18 = [toCopy clockElementForUUID:v16];
      clock = [v17 clock];
      if (clock >= [v18 clock])
      {
        clock2 = [v17 clock];
        if (clock2 > [v18 clock])
        {
          v12 = 1;
          goto LABEL_12;
        }

        subclock = [v17 subclock];
        if (subclock >= [v18 subclock])
        {
          subclock2 = [v17 subclock];
          v12 |= subclock2 > [v18 subclock];
          goto LABEL_12;
        }
      }

      v13 = 1;
LABEL_12:

      if (v13 & 1) != 0 && (v12)
      {
        v9 = obj;
        v23 = 1;
        v24 = 4;
        goto LABEL_20;
      }
    }

    v9 = obj;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v23 = v13 & 1;
  if (v12)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

LABEL_20:

  v25 = v24 | v23;
LABEL_22:

  return v25;
}

- (void)mergeWithTimestamp:(id)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [timestampCopy allUUIDs];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(ICTTVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [timestampCopy clockElementForUUID:v9];
        clock = [v10 clock];
        v13 = v10;
        if (clock <= [v11 clock])
        {
          clock2 = [v10 clock];
          if (clock2 != [v11 clock] || (v15 = objc_msgSend(v10, "subclock"), v13 = v10, v15 <= objc_msgSend(v11, "subclock")))
          {
            v13 = v11;
          }
        }

        -[ICTTVectorTimestamp setClock:subclock:forUUID:](self, "setClock:subclock:forUUID:", [v13 clock], objc_msgSend(v13, "subclock"), v9);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@ %p>(\n"), v5, self;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortedUUIDs = [(ICTTVectorTimestamp *)self sortedUUIDs];
  v7 = [sortedUUIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sortedUUIDs);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(ICTTVectorTimestamp *)self clockElementForUUID:v11];
        [v3 appendFormat:@"  %@:%lu.%lu\n", v11, objc_msgSend(v12, "clock"), objc_msgSend(v12, "subclock")];
      }

      v8 = [sortedUUIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 appendString:@""]);

  return v3;
}

- (ICTTVectorTimestamp)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[ICTTVectorMultiTimestamp alloc] initWithData:dataCopy andCapacity:1];
  timestamps = [(ICTTVectorMultiTimestamp *)v5 timestamps];
  v7 = [timestamps objectAtIndexedSubscript:0];

  return v7;
}

- (ICTTVectorTimestamp)initWithArchive:(const void *)archive
{
  v4 = [[ICTTVectorMultiTimestamp alloc] initWithArchive:archive andCapacity:1];
  timestamps = [(ICTTVectorMultiTimestamp *)v4 timestamps];
  v6 = [timestamps objectAtIndexedSubscript:0];

  return v6;
}

- (void)saveToArchive:(void *)archive
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [ICTTVectorMultiTimestamp alloc];
  v8[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [(ICTTVectorMultiTimestamp *)v5 initWithTimestamps:v6];

  [(ICTTVectorMultiTimestamp *)v7 saveToArchive:archive];
}

- (id)serialize
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [ICTTVectorMultiTimestamp alloc];
  v8[0] = self;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(ICTTVectorMultiTimestamp *)v3 initWithTimestamps:v4];

  serialize = [(ICTTVectorMultiTimestamp *)v5 serialize];

  return serialize;
}

@end