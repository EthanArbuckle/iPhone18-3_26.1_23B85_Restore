@interface HDCodableAuthorizationRequestMessage
+ (id)codableAuthorizationRequestWithRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (id)_objectTypeForCode:(void *)code;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedReadTypes;
- (id)decodedWriteTypes;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)typesToReadAtIndex:(unint64_t)index;
- (int64_t)typesToWriteAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableAuthorizationRequestMessage

- (id)decodedReadTypes
{
  typesToReadsCount = [(HDCodableAuthorizationRequestMessage *)self typesToReadsCount];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (typesToReadsCount)
  {
    for (i = 0; i != typesToReadsCount; ++i)
    {
      v6 = [(HDCodableAuthorizationRequestMessage *)self _objectTypeForCode:?];
      if (v6)
      {
        [v4 addObject:v6];
      }
    }
  }

  v7 = [v4 copy];

  return v7;
}

- (id)_objectTypeForCode:(void *)code
{
  v8 = *MEMORY[0x277D85DE8];
  if (code)
  {
    if (_HKValidDataTypeCode())
    {
      code = [MEMORY[0x277CCD720] dataTypeWithCode:a2];
    }

    else
    {
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v6 = 134217984;
        v7 = a2;
        _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Codable authorization request contains an invalid object type code (%ld) which will be ignored.", &v6, 0xCu);
      }

      code = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return code;
}

- (id)decodedWriteTypes
{
  typesToWritesCount = [(HDCodableAuthorizationRequestMessage *)self typesToWritesCount];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (typesToWritesCount)
  {
    for (i = 0; i != typesToWritesCount; ++i)
    {
      v6 = [(HDCodableAuthorizationRequestMessage *)self _objectTypeForCode:?];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v6];
        }
      }
    }
  }

  return v4;
}

+ (id)codableAuthorizationRequestWithRecord:(id)record
{
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = objc_alloc_init(HDCodableAuthorizationRequestMessage);
  source = [recordCopy source];
  bundleIdentifier = [source bundleIdentifier];

  if (bundleIdentifier)
  {
    source2 = [recordCopy source];
    bundleIdentifier2 = [source2 bundleIdentifier];
    [(HDCodableAuthorizationRequestMessage *)v4 setAppBundleIdentifier:bundleIdentifier2];
  }

  sessionIdentifier = [recordCopy sessionIdentifier];

  if (sessionIdentifier)
  {
    sessionIdentifier2 = [recordCopy sessionIdentifier];
    hk_dataForUUIDBytes = [sessionIdentifier2 hk_dataForUUIDBytes];
    [(HDCodableAuthorizationRequestMessage *)v4 setRequestIdentifier:hk_dataForUUIDBytes];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  typesRequiringReadAuthorization = [recordCopy typesRequiringReadAuthorization];
  v13 = [typesRequiringReadAuthorization countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(typesRequiringReadAuthorization);
        }

        -[HDCodableAuthorizationRequestMessage addTypesToRead:](v4, "addTypesToRead:", [*(*(&v28 + 1) + 8 * i) code]);
      }

      v14 = [typesRequiringReadAuthorization countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  typesRequiringShareAuthorization = [recordCopy typesRequiringShareAuthorization];
  v18 = [typesRequiringShareAuthorization countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(typesRequiringShareAuthorization);
        }

        -[HDCodableAuthorizationRequestMessage addTypesToWrite:](v4, "addTypesToWrite:", [*(*(&v24 + 1) + 8 * j) code]);
      }

      v19 = [typesRequiringShareAuthorization countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HDCodableAuthorizationRequestMessage;
  [(HDCodableAuthorizationRequestMessage *)&v3 dealloc];
}

- (int64_t)typesToReadAtIndex:(unint64_t)index
{
  p_typesToReads = &self->_typesToReads;
  count = self->_typesToReads.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typesToReads->list[index];
}

- (int64_t)typesToWriteAtIndex:(unint64_t)index
{
  p_typesToWrites = &self->_typesToWrites;
  count = self->_typesToWrites.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typesToWrites->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationRequestMessage;
  v4 = [(HDCodableAuthorizationRequestMessage *)&v8 description];
  dictionaryRepresentation = [(HDCodableAuthorizationRequestMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [dictionary setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v4 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  v7 = PBRepeatedInt64NSArray();
  [v4 setObject:v7 forKey:@"typesToRead"];

  v8 = PBRepeatedInt64NSArray();
  [v4 setObject:v8 forKey:@"typesToWrite"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_typesToReads.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_typesToReads.list[v5];
      PBDataWriterWriteInt64Field();
      toCopy = v10;
      ++v5;
    }

    while (v5 < self->_typesToReads.count);
  }

  p_typesToWrites = &self->_typesToWrites;
  if (p_typesToWrites->count)
  {
    v8 = 0;
    do
    {
      v9 = p_typesToWrites->list[v8];
      PBDataWriterWriteInt64Field();
      toCopy = v10;
      ++v8;
    }

    while (v8 < p_typesToWrites->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_appBundleIdentifier)
  {
    [toCopy setAppBundleIdentifier:?];
  }

  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
  }

  if ([(HDCodableAuthorizationRequestMessage *)self typesToReadsCount])
  {
    [toCopy clearTypesToReads];
    typesToReadsCount = [(HDCodableAuthorizationRequestMessage *)self typesToReadsCount];
    if (typesToReadsCount)
    {
      v5 = typesToReadsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addTypesToRead:{-[HDCodableAuthorizationRequestMessage typesToReadAtIndex:](self, "typesToReadAtIndex:", i)}];
      }
    }
  }

  if ([(HDCodableAuthorizationRequestMessage *)self typesToWritesCount])
  {
    [toCopy clearTypesToWrites];
    typesToWritesCount = [(HDCodableAuthorizationRequestMessage *)self typesToWritesCount];
    if (typesToWritesCount)
    {
      v8 = typesToWritesCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addTypesToWrite:{-[HDCodableAuthorizationRequestMessage typesToWriteAtIndex:](self, "typesToWriteAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | equalCopy[7])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[8])) || -[NSData isEqual:](requestIdentifier, "isEqual:")) && PBRepeatedInt64IsEqual())
  {
    IsEqual = PBRepeatedInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleIdentifier hash];
  v4 = [(NSData *)self->_requestIdentifier hash]^ v3;
  v5 = PBRepeatedInt64Hash();
  return v4 ^ v5 ^ PBRepeatedInt64Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = fromCopy;
  if (fromCopy[7])
  {
    [(HDCodableAuthorizationRequestMessage *)self setAppBundleIdentifier:?];
    fromCopy = v11;
  }

  if (fromCopy[8])
  {
    [(HDCodableAuthorizationRequestMessage *)self setRequestIdentifier:?];
    fromCopy = v11;
  }

  typesToReadsCount = [fromCopy typesToReadsCount];
  if (typesToReadsCount)
  {
    v6 = typesToReadsCount;
    for (i = 0; i != v6; ++i)
    {
      -[HDCodableAuthorizationRequestMessage addTypesToRead:](self, "addTypesToRead:", [v11 typesToReadAtIndex:i]);
    }
  }

  typesToWritesCount = [v11 typesToWritesCount];
  if (typesToWritesCount)
  {
    v9 = typesToWritesCount;
    for (j = 0; j != v9; ++j)
    {
      -[HDCodableAuthorizationRequestMessage addTypesToWrite:](self, "addTypesToWrite:", [v11 typesToWriteAtIndex:j]);
    }
  }
}

@end