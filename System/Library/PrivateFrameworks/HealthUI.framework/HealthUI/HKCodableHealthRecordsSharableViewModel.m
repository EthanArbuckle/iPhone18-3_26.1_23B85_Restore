@interface HKCodableHealthRecordsSharableViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAllRecords:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsPinned:(BOOL)a3;
- (void)setHasLatestSupportedVersion:(BOOL)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsSharableViewModel

- (void)setHasIsPinned:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAllRecords:(id)a3
{
  v4 = a3;
  allRecords = self->_allRecords;
  v8 = v4;
  if (!allRecords)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_allRecords;
    self->_allRecords = v6;

    v4 = v8;
    allRecords = self->_allRecords;
  }

  [(NSMutableArray *)allRecords addObject:v4];
}

- (void)setHasLatestSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsSharableViewModel;
  v4 = [(HKCodableHealthRecordsSharableViewModel *)&v8 description];
  v5 = [(HKCodableHealthRecordsSharableViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  conceptIdentifier = self->_conceptIdentifier;
  if (conceptIdentifier)
  {
    [v3 setObject:conceptIdentifier forKey:@"conceptIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_category];
    [v4 setObject:v6 forKey:@"category"];
  }

  preferredName = self->_preferredName;
  if (preferredName)
  {
    [v4 setObject:preferredName forKey:@"preferredName"];
  }

  eduContent = self->_eduContent;
  if (eduContent)
  {
    v9 = [(HKCodableHealthRecordsEduContent *)eduContent dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"eduContent"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPinned];
    [v4 setObject:v10 forKey:@"isPinned"];
  }

  localizedEducationContent = self->_localizedEducationContent;
  if (localizedEducationContent)
  {
    v12 = [(HKCodableHealthRecordsLocalizedEducationContent *)localizedEducationContent dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"localizedEducationContent"];
  }

  latestRecord = self->_latestRecord;
  if (latestRecord)
  {
    v14 = [(HKCodableHealthRecordsIndividualRecord *)latestRecord dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"latestRecord"];
  }

  if ([(NSMutableArray *)self->_allRecords count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_allRecords, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = self->_allRecords;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"allRecords"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v4 setObject:v23 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v4 setObject:v24 forKey:@"minimumSupportedVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_conceptIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_preferredName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eduContent)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_latestRecord)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_allRecords;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_localizedEducationContent)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_conceptIdentifier)
  {
    [v4 setConceptIdentifier:?];
    v4 = v11;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_category;
    *(v4 + 84) |= 1u;
  }

  if (self->_preferredName)
  {
    [v11 setPreferredName:?];
    v4 = v11;
  }

  if (self->_eduContent)
  {
    [v11 setEduContent:?];
    v4 = v11;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 80) = self->_isPinned;
    *(v4 + 84) |= 8u;
  }

  if (self->_latestRecord)
  {
    [v11 setLatestRecord:?];
  }

  if ([(HKCodableHealthRecordsSharableViewModel *)self allRecordsCount])
  {
    [v11 clearAllRecords];
    v5 = [(HKCodableHealthRecordsSharableViewModel *)self allRecordsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableHealthRecordsSharableViewModel *)self allRecordsAtIndex:i];
        [v11 addAllRecords:v8];
      }
    }
  }

  has = self->_has;
  v10 = v11;
  if ((has & 2) != 0)
  {
    *(v11 + 2) = self->_latestSupportedVersion;
    *(v11 + 84) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v11 + 3) = self->_minimumSupportedVersion;
    *(v11 + 84) |= 4u;
  }

  if (self->_localizedEducationContent)
  {
    [v11 setLocalizedEducationContent:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_conceptIdentifier copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_category;
    *(v5 + 84) |= 1u;
  }

  v8 = [(NSString *)self->_preferredName copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(HKCodableHealthRecordsEduContent *)self->_eduContent copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 80) = self->_isPinned;
    *(v5 + 84) |= 8u;
  }

  v12 = [(HKCodableHealthRecordsIndividualRecord *)self->_latestRecord copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_allRecords;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{a3, v24}];
        [v5 addAllRecords:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_latestSupportedVersion;
    *(v5 + 84) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_minimumSupportedVersion;
    *(v5 + 84) |= 4u;
  }

  v21 = [(HKCodableHealthRecordsLocalizedEducationContent *)self->_localizedEducationContent copyWithZone:a3, v24];
  v22 = *(v5 + 64);
  *(v5 + 64) = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  conceptIdentifier = self->_conceptIdentifier;
  if (conceptIdentifier | *(v4 + 5))
  {
    if (![(NSString *)conceptIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_category != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_23;
  }

  preferredName = self->_preferredName;
  if (preferredName | *(v4 + 9) && ![(NSString *)preferredName isEqual:?])
  {
    goto LABEL_23;
  }

  eduContent = self->_eduContent;
  if (eduContent | *(v4 + 6))
  {
    if (![(HKCodableHealthRecordsEduContent *)eduContent isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 84) & 8) == 0)
    {
      goto LABEL_23;
    }

    if (self->_isPinned)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 84) & 8) != 0)
  {
    goto LABEL_23;
  }

  latestRecord = self->_latestRecord;
  if (latestRecord | *(v4 + 7) && ![(HKCodableHealthRecordsIndividualRecord *)latestRecord isEqual:?])
  {
    goto LABEL_23;
  }

  allRecords = self->_allRecords;
  if (allRecords | *(v4 + 4))
  {
    if (![(NSMutableArray *)allRecords isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_latestSupportedVersion != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 84) & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 84) & 4) == 0 || self->_minimumSupportedVersion != *(v4 + 3))
  {
    goto LABEL_23;
  }

LABEL_37:
  localizedEducationContent = self->_localizedEducationContent;
  if (localizedEducationContent | *(v4 + 8))
  {
    v10 = [(HKCodableHealthRecordsLocalizedEducationContent *)localizedEducationContent isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_conceptIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_category;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_preferredName hash];
  v6 = [(HKCodableHealthRecordsEduContent *)self->_eduContent hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_isPinned;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HKCodableHealthRecordsIndividualRecord *)self->_latestRecord hash];
  v9 = [(NSMutableArray *)self->_allRecords hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(HKCodableHealthRecordsLocalizedEducationContent *)self->_localizedEducationContent hash];
  }

  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(HKCodableHealthRecordsLocalizedEducationContent *)self->_localizedEducationContent hash];
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(HKCodableHealthRecordsSharableViewModel *)self setConceptIdentifier:?];
  }

  if (*(v4 + 84))
  {
    self->_category = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 9))
  {
    [(HKCodableHealthRecordsSharableViewModel *)self setPreferredName:?];
  }

  eduContent = self->_eduContent;
  v6 = *(v4 + 6);
  if (eduContent)
  {
    if (v6)
    {
      [(HKCodableHealthRecordsEduContent *)eduContent mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableHealthRecordsSharableViewModel *)self setEduContent:?];
  }

  if ((*(v4 + 84) & 8) != 0)
  {
    self->_isPinned = *(v4 + 80);
    *&self->_has |= 8u;
  }

  latestRecord = self->_latestRecord;
  v8 = *(v4 + 7);
  if (latestRecord)
  {
    if (v8)
    {
      [(HKCodableHealthRecordsIndividualRecord *)latestRecord mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HKCodableHealthRecordsSharableViewModel *)self setLatestRecord:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(v4 + 4);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HKCodableHealthRecordsSharableViewModel *)self addAllRecords:*(*(&v17 + 1) + 8 * i), v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = *(v4 + 84);
  if ((v14 & 2) != 0)
  {
    self->_latestSupportedVersion = *(v4 + 2);
    *&self->_has |= 2u;
    v14 = *(v4 + 84);
  }

  if ((v14 & 4) != 0)
  {
    self->_minimumSupportedVersion = *(v4 + 3);
    *&self->_has |= 4u;
  }

  localizedEducationContent = self->_localizedEducationContent;
  v16 = *(v4 + 8);
  if (localizedEducationContent)
  {
    if (v16)
    {
      [(HKCodableHealthRecordsLocalizedEducationContent *)localizedEducationContent mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(HKCodableHealthRecordsSharableViewModel *)self setLocalizedEducationContent:?];
  }
}

@end