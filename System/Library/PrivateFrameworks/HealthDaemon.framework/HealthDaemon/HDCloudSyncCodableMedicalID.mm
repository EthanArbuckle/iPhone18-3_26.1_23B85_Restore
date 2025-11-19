@interface HDCloudSyncCodableMedicalID
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addMedicalIDLogs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableMedicalID

- (void)addMedicalIDLogs:(id)a3
{
  v4 = a3;
  medicalIDLogs = self->_medicalIDLogs;
  v8 = v4;
  if (!medicalIDLogs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_medicalIDLogs;
    self->_medicalIDLogs = v6;

    v4 = v8;
    medicalIDLogs = self->_medicalIDLogs;
  }

  [(NSMutableArray *)medicalIDLogs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableMedicalID;
  v4 = [(HDCloudSyncCodableMedicalID *)&v8 description];
  v5 = [(HDCloudSyncCodableMedicalID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  medicalIDData = self->_medicalIDData;
  if (medicalIDData)
  {
    v5 = [(HDCodableMedicalIDData *)medicalIDData dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"medicalIDData"];
  }

  if ([(NSMutableArray *)self->_medicalIDLogs count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_medicalIDLogs, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_medicalIDLogs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"medicalIDLogs"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_medicalIDData)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_medicalIDLogs;
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
  if (self->_medicalIDData)
  {
    [v8 setMedicalIDData:?];
  }

  if ([(HDCloudSyncCodableMedicalID *)self medicalIDLogsCount])
  {
    [v8 clearMedicalIDLogs];
    v4 = [(HDCloudSyncCodableMedicalID *)self medicalIDLogsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableMedicalID *)self medicalIDLogsAtIndex:i];
        [v8 addMedicalIDLogs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableMedicalIDData *)self->_medicalIDData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_medicalIDLogs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addMedicalIDLogs:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((medicalIDData = self->_medicalIDData, !(medicalIDData | v4[1])) || -[HDCodableMedicalIDData isEqual:](medicalIDData, "isEqual:")))
  {
    medicalIDLogs = self->_medicalIDLogs;
    if (medicalIDLogs | v4[2])
    {
      v7 = [(NSMutableArray *)medicalIDLogs isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  medicalIDData = self->_medicalIDData;
  v6 = *(v4 + 1);
  if (medicalIDData)
  {
    if (v6)
    {
      [(HDCodableMedicalIDData *)medicalIDData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCloudSyncCodableMedicalID *)self setMedicalIDData:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCloudSyncCodableMedicalID *)self addMedicalIDLogs:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end