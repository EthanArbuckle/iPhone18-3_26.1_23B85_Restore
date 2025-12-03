@interface ICTTVectorMultiTimestamp
- (BOOL)isEqual:(id)equal;
- (ICTTVectorMultiTimestamp)initWithArchive:(const void *)archive andCapacity:(unint64_t)capacity;
- (ICTTVectorMultiTimestamp)initWithCapacity:(unint64_t)capacity;
- (ICTTVectorMultiTimestamp)initWithData:(id)data andCapacity:(unint64_t)capacity;
- (ICTTVectorMultiTimestamp)initWithTimestamps:(id)timestamps;
- (id)clockElementForUUID:(id)d atIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serialize;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)d atIndex:(unint64_t)index;
- (unint64_t)compareTo:(id)to;
- (void)mergeWithTimestamp:(id)timestamp;
- (void)saveToArchive:(void *)archive;
- (void)setClock:(unint64_t)clock forUUID:(id)d atIndex:(unint64_t)index;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d atIndex:(unint64_t)index;
@end

@implementation ICTTVectorMultiTimestamp

- (id)sortedUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      allUUIDs = [v7 allUUIDs];
      [v3 addObjectsFromArray:allUUIDs];
    }
  }

  allObjects = [v3 allObjects];
  v10 = [allObjects sortedArrayUsingSelector:sel_TTCompare_];

  return v10;
}

- (ICTTVectorMultiTimestamp)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = ICTTVectorMultiTimestamp;
  v4 = [(ICTTVectorMultiTimestamp *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
    timestamps = v4->_timestamps;
    v4->_timestamps = v5;

    if (capacity)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(ICTTVectorTimestamp);
        [(NSArray *)v4->_timestamps setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (capacity != v7);
    }
  }

  return v4;
}

- (ICTTVectorMultiTimestamp)initWithTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  v9.receiver = self;
  v9.super_class = ICTTVectorMultiTimestamp;
  v5 = [(ICTTVectorMultiTimestamp *)&v9 init];
  if (v5)
  {
    v6 = [timestampsCopy copy];
    timestamps = v5->_timestamps;
    v5->_timestamps = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICTTVectorMultiTimestamp allocWithZone:?], "initWithCapacity:", [(NSArray *)self->_timestamps count]];
  [(ICTTVectorMultiTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICTTVectorMultiTimestamp *)self compareTo:equalCopy]== 0;

  return v5;
}

- (id)clockElementForUUID:(id)d atIndex:(unint64_t)index
{
  timestamps = self->_timestamps;
  dCopy = d;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:index];
  v8 = [v7 clockElementForUUID:dCopy];

  return v8;
}

- (unint64_t)clockForUUID:(id)d atIndex:(unint64_t)index
{
  timestamps = self->_timestamps;
  dCopy = d;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:index];
  v8 = [v7 clockForUUID:dCopy];

  return v8;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d atIndex:(unint64_t)index
{
  timestamps = self->_timestamps;
  dCopy = d;
  v9 = [(NSArray *)timestamps objectAtIndexedSubscript:index];
  [v9 setClock:clock forUUID:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d atIndex:(unint64_t)index
{
  timestamps = self->_timestamps;
  dCopy = d;
  v11 = [(NSArray *)timestamps objectAtIndexedSubscript:index];
  [v11 setClock:clock subclock:subclock forUUID:dCopy];
}

- (unint64_t)compareTo:(id)to
{
  toCopy = to;
  v5 = [(NSArray *)self->_timestamps count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      timestamps = [toCopy timestamps];
      v11 = [timestamps objectAtIndexedSubscript:i];
      v7 |= [v9 compareTo:v11];

      if (v7 == 5)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      timestamps = [timestampCopy timestamps];
      v9 = [timestamps objectAtIndexedSubscript:i];
      [v7 mergeWithTimestamp:v9];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>(\n%@\n)", v5, self, self->_timestamps];

  return v6;
}

- (ICTTVectorMultiTimestamp)initWithData:(id)data andCapacity:(unint64_t)capacity
{
  dataCopy = data;
  topotext::VectorTimestamp::VectorTimestamp(v12);
  bytes = [dataCopy bytes];
  v8 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v12, bytes, v8))
  {
    self = [(ICTTVectorMultiTimestamp *)self initWithArchive:v12 andCapacity:capacity];
    selfCopy = self;
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICTTVectorMultiTimestamp(ICTTVectorTimestampPersistenceAdditions) initWithData:v10 andCapacity:?];
    }

    selfCopy = 0;
  }

  topotext::VectorTimestamp::~VectorTimestamp(v12);

  return selfCopy;
}

- (ICTTVectorMultiTimestamp)initWithArchive:(const void *)archive andCapacity:(unint64_t)capacity
{
  v6 = [(ICTTVectorMultiTimestamp *)self initWithCapacity:capacity];
  v7 = v6;
  if (!v6)
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  v8 = *(archive + 12);
  v9 = v6;
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(archive + 40, v10);
      v12 = v11;
      if ((*(v11 + 32) & 1) == 0)
      {
        break;
      }

      v13 = *(v11 + 40);
      v14 = *(v13 + 23);
      if (v14 < 0)
      {
        v14 = *(v13 + 8);
      }

      if (v14 != 16)
      {
        break;
      }

      v15 = objc_alloc(MEMORY[0x277CCAD78]);
      v16 = *(v12 + 40);
      if (*(v16 + 23) < 0)
      {
        v16 = *v16;
      }

      v17 = [v15 initWithUUIDBytes:v16];
      v18 = *(v12 + 56);
      if (v18 != capacity)
      {
        v22 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(ICTTVectorMultiTimestamp(ICTTVectorTimestampPersistenceAdditions) *)v18 initWithArchive:capacity andCapacity:v22];
        }

        goto LABEL_27;
      }

      if (v18)
      {
        v19 = 0;
        do
        {
          if (*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 32))
          {
            v20 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 40);
          }

          else
          {
            v20 = 0;
          }

          if ((*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 32) & 2) != 0)
          {
            v21 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 44);
          }

          else
          {
            v21 = 0;
          }

          [(ICTTVectorMultiTimestamp *)v7 setClock:v20 subclock:v21 forUUID:v17 atIndex:v19++];
        }

        while (capacity != v19);
      }

      if (++v10 == v8)
      {
        v9 = v7;
        goto LABEL_29;
      }
    }

    v17 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICTTVectorMultiTimestamp(ICTTVectorTimestampPersistenceAdditions) initWithArchive:v17 andCapacity:?];
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
  v23 = v9;

  return v23;
}

- (void)saveToArchive:(void *)archive
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(ICTTVectorMultiTimestamp *)self sortedUUIDs];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v24 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = *(archive + 13);
        v9 = *(archive + 12);
        if (v9 >= v8)
        {
          if (v8 == *(archive + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 40, v8 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
        }

        v10 = *(archive + 5);
        *(archive + 12) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v29 = 0uLL;
        [v7 getUUIDBytes:&v29];
        *(v11 + 32) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v12 = *(v11 + 40);
        if (v12 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (*(v12 + 23) < 0)
        {
          v12[1] = 16;
          v12 = *v12;
        }

        else
        {
          *(v12 + 23) = 16;
        }

        *v12 = v29;
        *(v12 + 16) = 0;
        timestamps = [(ICTTVectorMultiTimestamp *)self timestamps];
        v14 = [timestamps count];

        if (v14)
        {
          for (j = 0; j != v14; ++j)
          {
            v16 = [(ICTTVectorMultiTimestamp *)self clockElementForUUID:v7 atIndex:j];
            v17 = *(v11 + 60);
            v18 = *(v11 + 56);
            if (v18 >= v17)
            {
              if (v17 == *(v11 + 64))
              {
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v11 + 48, v17 + 1);
              }

              google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock_ReplicaClock>::New();
            }

            v19 = *(v11 + 48);
            *(v11 + 56) = v18 + 1;
            v20 = *(v19 + 8 * v18);
            if ([v16 clock])
            {
              v21 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v16 clock]);
              v20[8] |= 1u;
              v20[10] = v21;
            }

            if ([v16 subclock])
            {
              v22 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v16 subclock]);
              v20[8] |= 2u;
              v20[11] = v22;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }
}

- (id)serialize
{
  [(ICTTVectorMultiTimestamp *)self saveToArchive:v6, topotext::VectorTimestamp::VectorTimestamp(v6)];
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::VectorTimestamp::ByteSize(v6)];
  mutableBytes = [v2 mutableBytes];
  v4 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, mutableBytes, v4);
  topotext::VectorTimestamp::~VectorTimestamp(v6);

  return v2;
}

@end