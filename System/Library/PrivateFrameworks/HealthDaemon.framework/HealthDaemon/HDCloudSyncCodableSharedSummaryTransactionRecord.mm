@interface HDCloudSyncCodableSharedSummaryTransactionRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSummaryIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableSharedSummaryTransactionRecord

- (void)addSummaryIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  summaryIdentifiers = self->_summaryIdentifiers;
  v8 = identifiersCopy;
  if (!summaryIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_summaryIdentifiers;
    self->_summaryIdentifiers = v6;

    identifiersCopy = v8;
    summaryIdentifiers = self->_summaryIdentifiers;
  }

  [(NSMutableArray *)summaryIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableSharedSummaryTransactionRecord;
  v4 = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  sourceDeviceIdentifier = self->_sourceDeviceIdentifier;
  if (sourceDeviceIdentifier)
  {
    [v4 setObject:sourceDeviceIdentifier forKey:@"sourceDeviceIdentifier"];
  }

  summaryIdentifiers = self->_summaryIdentifiers;
  if (summaryIdentifiers)
  {
    [v4 setObject:summaryIdentifiers forKey:@"summaryIdentifiers"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_summaryIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
  }

  if (self->_sourceDeviceIdentifier)
  {
    [toCopy setSourceDeviceIdentifier:?];
  }

  if ([(HDCloudSyncCodableSharedSummaryTransactionRecord *)self summaryIdentifiersCount])
  {
    [toCopy clearSummaryIdentifiers];
    summaryIdentifiersCount = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self summaryIdentifiersCount];
    if (summaryIdentifiersCount)
    {
      v5 = summaryIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self summaryIdentifiersAtIndex:i];
        [toCopy addSummaryIdentifiers:v7];
      }
    }
  }

  if (self->_metadata)
  {
    [toCopy setMetadata:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_sourceDeviceIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_summaryIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * v14) copyWithZone:{zone, v20}];
        [v5 addSummaryIdentifiers:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(NSData *)self->_metadata copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuid = self->_uuid, !(uuid | equalCopy[4])) || -[NSString isEqual:](uuid, "isEqual:")) && ((sourceDeviceIdentifier = self->_sourceDeviceIdentifier, !(sourceDeviceIdentifier | equalCopy[2])) || -[NSString isEqual:](sourceDeviceIdentifier, "isEqual:")) && ((summaryIdentifiers = self->_summaryIdentifiers, !(summaryIdentifiers | equalCopy[3])) || -[NSMutableArray isEqual:](summaryIdentifiers, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | equalCopy[1])
    {
      v9 = [(NSData *)metadata isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSString *)self->_sourceDeviceIdentifier hash]^ v3;
  v5 = [(NSMutableArray *)self->_summaryIdentifiers hash];
  return v4 ^ v5 ^ [(NSData *)self->_metadata hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self setUuid:?];
  }

  if (*(fromCopy + 2))
  {
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self setSourceDeviceIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self addSummaryIdentifiers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 1))
  {
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self setMetadata:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end