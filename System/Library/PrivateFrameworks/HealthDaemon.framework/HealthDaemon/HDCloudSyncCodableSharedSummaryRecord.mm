@interface HDCloudSyncCodableSharedSummaryRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAuthorizationCategories:(id)a3;
- (void)addObjectTypeIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableSharedSummaryRecord

- (void)addObjectTypeIdentifiers:(id)a3
{
  v4 = a3;
  objectTypeIdentifiers = self->_objectTypeIdentifiers;
  v8 = v4;
  if (!objectTypeIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_objectTypeIdentifiers;
    self->_objectTypeIdentifiers = v6;

    v4 = v8;
    objectTypeIdentifiers = self->_objectTypeIdentifiers;
  }

  [(NSMutableArray *)objectTypeIdentifiers addObject:v4];
}

- (void)addAuthorizationCategories:(id)a3
{
  v4 = a3;
  authorizationCategories = self->_authorizationCategories;
  v8 = v4;
  if (!authorizationCategories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizationCategories;
    self->_authorizationCategories = v6;

    v4 = v8;
    authorizationCategories = self->_authorizationCategories;
  }

  [(NSMutableArray *)authorizationCategories addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableSharedSummaryRecord;
  v4 = [(HDCloudSyncCodableSharedSummaryRecord *)&v8 description];
  v5 = [(HDCloudSyncCodableSharedSummaryRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  package = self->_package;
  if (package)
  {
    [v4 setObject:package forKey:@"package"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion)
  {
    [v4 setObject:compatibilityVersion forKey:@"compatibilityVersion"];
  }

  objectTypeIdentifiers = self->_objectTypeIdentifiers;
  if (objectTypeIdentifiers)
  {
    [v4 setObject:objectTypeIdentifiers forKey:@"objectTypeIdentifiers"];
  }

  authorizationCategories = self->_authorizationCategories;
  if (authorizationCategories)
  {
    [v4 setObject:authorizationCategories forKey:@"authorizationCategories"];
  }

  summaryData = self->_summaryData;
  if (summaryData)
  {
    [v4 setObject:summaryData forKey:@"summaryData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_package)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_compatibilityVersion)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_objectTypeIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_authorizationCategories;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_summaryData)
  {
    PBDataWriterWriteDataField();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_uuid)
  {
    [v12 setUuid:?];
  }

  if (self->_package)
  {
    [v12 setPackage:?];
  }

  if (self->_name)
  {
    [v12 setName:?];
  }

  if (self->_version)
  {
    [v12 setVersion:?];
  }

  if (self->_compatibilityVersion)
  {
    [v12 setCompatibilityVersion:?];
  }

  if ([(HDCloudSyncCodableSharedSummaryRecord *)self objectTypeIdentifiersCount])
  {
    [v12 clearObjectTypeIdentifiers];
    v4 = [(HDCloudSyncCodableSharedSummaryRecord *)self objectTypeIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableSharedSummaryRecord *)self objectTypeIdentifiersAtIndex:i];
        [v12 addObjectTypeIdentifiers:v7];
      }
    }
  }

  if ([(HDCloudSyncCodableSharedSummaryRecord *)self authorizationCategoriesCount])
  {
    [v12 clearAuthorizationCategories];
    v8 = [(HDCloudSyncCodableSharedSummaryRecord *)self authorizationCategoriesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HDCloudSyncCodableSharedSummaryRecord *)self authorizationCategoriesAtIndex:j];
        [v12 addAuthorizationCategories:v11];
      }
    }
  }

  if (self->_summaryData)
  {
    [v12 setSummaryData:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_package copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_name copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_version copyWithZone:a3];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_compatibilityVersion copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = self->_objectTypeIdentifiers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v36 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addObjectTypeIdentifiers:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self->_authorizationCategories;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v32 + 1) + 8 * v26) copyWithZone:{a3, v32}];
        [v5 addAuthorizationCategories:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v24);
  }

  v28 = [(NSData *)self->_summaryData copyWithZone:a3];
  v29 = v5[6];
  v5[6] = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuid = self->_uuid, !(uuid | v4[7])) || -[NSString isEqual:](uuid, "isEqual:")) && ((package = self->_package, !(package | v4[5])) || -[NSString isEqual:](package, "isEqual:")) && ((name = self->_name, !(name | v4[3])) || -[NSString isEqual:](name, "isEqual:")) && ((version = self->_version, !(version | v4[8])) || -[NSString isEqual:](version, "isEqual:")) && ((compatibilityVersion = self->_compatibilityVersion, !(compatibilityVersion | v4[2])) || -[NSString isEqual:](compatibilityVersion, "isEqual:")) && ((objectTypeIdentifiers = self->_objectTypeIdentifiers, !(objectTypeIdentifiers | v4[4])) || -[NSMutableArray isEqual:](objectTypeIdentifiers, "isEqual:")) && ((authorizationCategories = self->_authorizationCategories, !(authorizationCategories | v4[1])) || -[NSMutableArray isEqual:](authorizationCategories, "isEqual:")))
  {
    summaryData = self->_summaryData;
    if (summaryData | v4[6])
    {
      v13 = [(NSData *)summaryData isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSString *)self->_package hash]^ v3;
  v5 = [(NSString *)self->_name hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_version hash];
  v7 = [(NSString *)self->_compatibilityVersion hash];
  v8 = v7 ^ [(NSMutableArray *)self->_objectTypeIdentifiers hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_authorizationCategories hash];
  return v9 ^ [(NSData *)self->_summaryData hash];
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setUuid:?];
  }

  if (*(v4 + 5))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setPackage:?];
  }

  if (*(v4 + 3))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setName:?];
  }

  if (*(v4 + 8))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setVersion:?];
  }

  if (*(v4 + 2))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setCompatibilityVersion:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCloudSyncCodableSharedSummaryRecord *)self addObjectTypeIdentifiers:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 1);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HDCloudSyncCodableSharedSummaryRecord *)self addAuthorizationCategories:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(v4 + 6))
  {
    [(HDCloudSyncCodableSharedSummaryRecord *)self setSummaryData:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end