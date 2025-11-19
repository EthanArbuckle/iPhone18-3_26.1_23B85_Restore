@interface HDCodableAuthorizationRequestMessage
+ (id)codableAuthorizationRequestWithRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_objectTypeForCode:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedReadTypes;
- (id)decodedWriteTypes;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)typesToReadAtIndex:(unint64_t)a3;
- (int64_t)typesToWriteAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableAuthorizationRequestMessage

- (id)decodedReadTypes
{
  v3 = [(HDCodableAuthorizationRequestMessage *)self typesToReadsCount];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
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

- (id)_objectTypeForCode:(void *)a1
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (_HKValidDataTypeCode())
    {
      a1 = [MEMORY[0x277CCD720] dataTypeWithCode:a2];
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

      a1 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)decodedWriteTypes
{
  v3 = [(HDCodableAuthorizationRequestMessage *)self typesToWritesCount];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
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

+ (id)codableAuthorizationRequestWithRecord:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(HDCodableAuthorizationRequestMessage);
  v5 = [v3 source];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = [v3 source];
    v8 = [v7 bundleIdentifier];
    [(HDCodableAuthorizationRequestMessage *)v4 setAppBundleIdentifier:v8];
  }

  v9 = [v3 sessionIdentifier];

  if (v9)
  {
    v10 = [v3 sessionIdentifier];
    v11 = [v10 hk_dataForUUIDBytes];
    [(HDCodableAuthorizationRequestMessage *)v4 setRequestIdentifier:v11];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v3 typesRequiringReadAuthorization];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v12);
        }

        -[HDCodableAuthorizationRequestMessage addTypesToRead:](v4, "addTypesToRead:", [*(*(&v28 + 1) + 8 * i) code]);
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [v3 typesRequiringShareAuthorization];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v17);
        }

        -[HDCodableAuthorizationRequestMessage addTypesToWrite:](v4, "addTypesToWrite:", [*(*(&v24 + 1) + 8 * j) code]);
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (int64_t)typesToReadAtIndex:(unint64_t)a3
{
  p_typesToReads = &self->_typesToReads;
  count = self->_typesToReads.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typesToReads->list[a3];
}

- (int64_t)typesToWriteAtIndex:(unint64_t)a3
{
  p_typesToWrites = &self->_typesToWrites;
  count = self->_typesToWrites.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typesToWrites->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationRequestMessage;
  v4 = [(HDCodableAuthorizationRequestMessage *)&v8 description];
  v5 = [(HDCodableAuthorizationRequestMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v3 setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_typesToReads.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_typesToReads.list[v5];
      PBDataWriterWriteInt64Field();
      v4 = v10;
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
      v4 = v10;
      ++v8;
    }

    while (v8 < p_typesToWrites->count);
  }
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  if (self->_appBundleIdentifier)
  {
    [v10 setAppBundleIdentifier:?];
  }

  if (self->_requestIdentifier)
  {
    [v10 setRequestIdentifier:?];
  }

  if ([(HDCodableAuthorizationRequestMessage *)self typesToReadsCount])
  {
    [v10 clearTypesToReads];
    v4 = [(HDCodableAuthorizationRequestMessage *)self typesToReadsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v10 addTypesToRead:{-[HDCodableAuthorizationRequestMessage typesToReadAtIndex:](self, "typesToReadAtIndex:", i)}];
      }
    }
  }

  if ([(HDCodableAuthorizationRequestMessage *)self typesToWritesCount])
  {
    [v10 clearTypesToWrites];
    v7 = [(HDCodableAuthorizationRequestMessage *)self typesToWritesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v10 addTypesToWrite:{-[HDCodableAuthorizationRequestMessage typesToWriteAtIndex:](self, "typesToWriteAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appBundleIdentifier copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | v4[7])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[8])) || -[NSData isEqual:](requestIdentifier, "isEqual:")) && PBRepeatedInt64IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4[7])
  {
    [(HDCodableAuthorizationRequestMessage *)self setAppBundleIdentifier:?];
    v4 = v11;
  }

  if (v4[8])
  {
    [(HDCodableAuthorizationRequestMessage *)self setRequestIdentifier:?];
    v4 = v11;
  }

  v5 = [v4 typesToReadsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[HDCodableAuthorizationRequestMessage addTypesToRead:](self, "addTypesToRead:", [v11 typesToReadAtIndex:i]);
    }
  }

  v8 = [v11 typesToWritesCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[HDCodableAuthorizationRequestMessage addTypesToWrite:](self, "addTypesToWrite:", [v11 typesToWriteAtIndex:j]);
    }
  }
}

@end