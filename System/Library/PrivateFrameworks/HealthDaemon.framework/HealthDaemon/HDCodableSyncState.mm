@interface HDCodableSyncState
- ($2825F4736939C4A6D3AD43837233062D)versionRange;
- (BOOL)decodedObjectOfClass:(Class)a3 version:(int64_t)a4 decodedObject:(id *)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVersionedData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setCodableObject:(id)a3 version:(int64_t)a4 profile:(id)a5;
- (void)setVersionRange:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncState

- ($2825F4736939C4A6D3AD43837233062D)versionRange
{
  v2 = [(HDCodableSyncState *)self version];
  v3 = [v2 syncVersionRange];

  return v3;
}

- (void)setVersionRange:(id)a3
{
  v4 = [HDCodableSyncVersionRange versionRangeWithSyncVersionRange:a3];
  [(HDCodableSyncState *)self setVersion:v4];
}

- (void)setCodableObject:(id)a3 version:(int64_t)a4 profile:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HDCodableSyncState *)self versionedDatas];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__HDCodableSyncState_HDSyncSupport__setCodableObject_version_profile___block_invoke;
  v24[3] = &__block_descriptor_40_e41_B16__0__HDCodableSyncStateVersionedData_8l;
  v24[4] = a4;
  [v10 hk_removeObjectsPassingTest:v24];

  v11 = v8;
  objc_opt_self();
  v12 = [v11 daemon];
  v13 = [v12 behavior];

  v14 = objc_alloc_init(HDCodableSyncStateOrigin);
  [(HDCodableSyncStateOrigin *)v14 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v15 = [v13 currentOSBuild];
  [(HDCodableSyncStateOrigin *)v14 setBuild:v15];

  v16 = [v13 currentDeviceProductType];
  [(HDCodableSyncStateOrigin *)v14 setProductType:v16];

  if (v13)
  {
    [v13 currentOSVersionStruct];
    [(HDCodableSyncStateOrigin *)v14 setMajorVersion:v29];
    [v13 currentOSVersionStruct];
    [(HDCodableSyncStateOrigin *)v14 setMinorVersion:v27];
    [v13 currentOSVersionStruct];
    v17 = v25;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    [(HDCodableSyncStateOrigin *)v14 setMajorVersion:0];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    [(HDCodableSyncStateOrigin *)v14 setMinorVersion:0];
    v17 = 0;
    v24[5] = 0;
    v24[6] = 0;
    v25 = 0;
  }

  [(HDCodableSyncStateOrigin *)v14 setPatchVersion:v17];
  v18 = [v11 syncIdentityManager];
  v19 = [v18 currentSyncIdentity];
  v20 = [v19 identity];
  v21 = [v20 codableSyncIdentity];
  [(HDCodableSyncStateOrigin *)v14 setSyncIdentity:v21];

  v22 = objc_alloc_init(HDCodableSyncStateVersionedData);
  [(HDCodableSyncStateVersionedData *)v22 setVersion:a4];
  [(HDCodableSyncStateVersionedData *)v22 setOrigin:v14];
  v23 = [v9 data];

  [(HDCodableSyncStateVersionedData *)v22 setObjectData:v23];
  [(HDCodableSyncState *)self addVersionedData:v22];
  [(HDCodableSyncState *)self setOrigin:v14];
}

- (BOOL)decodedObjectOfClass:(Class)a3 version:(int64_t)a4 decodedObject:(id *)a5 error:(id *)a6
{
  v11 = [(HDCodableSyncState *)self versionedDatas];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__HDCodableSyncState_HDSyncSupport__decodedObjectOfClass_version_decodedObject_error___block_invoke;
  v22[3] = &__block_descriptor_40_e41_B16__0__HDCodableSyncStateVersionedData_8l;
  v22[4] = a4;
  v12 = [v11 hk_firstObjectPassingTest:v22];

  if (v12)
  {
    v13 = objc_alloc(objc_opt_class());
    v14 = [v12 objectData];
    v15 = [v13 initWithData:v14];

    v16 = v15 != 0;
    if (v15)
    {
      if (a5)
      {
        v17 = v15;
        *a5 = v15;
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = [(HDCodableSyncState *)self domain];
      v20 = [(HDCodableSyncState *)self key];
      [v18 hk_assignError:a6 code:129 format:{@"Unable to decode data as class %@ for version %d (%@, %@)", a3, a4, v19, v20}];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)addVersionedData:(id)a3
{
  v4 = a3;
  versionedDatas = self->_versionedDatas;
  v8 = v4;
  if (!versionedDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_versionedDatas;
    self->_versionedDatas = v6;

    v4 = v8;
    versionedDatas = self->_versionedDatas;
  }

  [(NSMutableArray *)versionedDatas addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncState;
  v4 = [(HDCodableSyncState *)&v8 description];
  v5 = [(HDCodableSyncState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  key = self->_key;
  if (key)
  {
    [v4 setObject:key forKey:@"key"];
  }

  version = self->_version;
  if (version)
  {
    v8 = [(HDCodableSyncVersionRange *)version dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"version"];
  }

  origin = self->_origin;
  if (origin)
  {
    v10 = [(HDCodableSyncStateOrigin *)origin dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"origin"];
  }

  if ([(NSMutableArray *)self->_versionedDatas count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_versionedDatas, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_versionedDatas;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"versionedData"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_key)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_origin)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_versionedDatas;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_domain)
  {
    [v8 setDomain:?];
  }

  if (self->_key)
  {
    [v8 setKey:?];
  }

  if (self->_version)
  {
    [v8 setVersion:?];
  }

  if (self->_origin)
  {
    [v8 setOrigin:?];
  }

  if ([(HDCodableSyncState *)self versionedDatasCount])
  {
    [v8 clearVersionedDatas];
    v4 = [(HDCodableSyncState *)self versionedDatasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSyncState *)self versionedDataAtIndex:i];
        [v8 addVersionedData:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_key copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HDCodableSyncVersionRange *)self->_version copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(HDCodableSyncStateOrigin *)self->_origin copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_versionedDatas;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addVersionedData:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[1])) || -[NSString isEqual:](domain, "isEqual:")) && ((key = self->_key, !(key | v4[2])) || -[NSString isEqual:](key, "isEqual:")) && ((version = self->_version, !(version | v4[4])) || -[HDCodableSyncVersionRange isEqual:](version, "isEqual:")) && ((origin = self->_origin, !(origin | v4[3])) || -[HDCodableSyncStateOrigin isEqual:](origin, "isEqual:")))
  {
    versionedDatas = self->_versionedDatas;
    if (versionedDatas | v4[5])
    {
      v10 = [(NSMutableArray *)versionedDatas isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_key hash]^ v3;
  v5 = [(HDCodableSyncVersionRange *)self->_version hash];
  v6 = v4 ^ v5 ^ [(HDCodableSyncStateOrigin *)self->_origin hash];
  return v6 ^ [(NSMutableArray *)self->_versionedDatas hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(HDCodableSyncState *)self setDomain:?];
  }

  if (*(v4 + 2))
  {
    [(HDCodableSyncState *)self setKey:?];
  }

  version = self->_version;
  v6 = *(v4 + 4);
  if (version)
  {
    if (v6)
    {
      [(HDCodableSyncVersionRange *)version mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableSyncState *)self setVersion:?];
  }

  origin = self->_origin;
  v8 = *(v4 + 3);
  if (origin)
  {
    if (v8)
    {
      [(HDCodableSyncStateOrigin *)origin mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableSyncState *)self setOrigin:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 5);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HDCodableSyncState *)self addVersionedData:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end