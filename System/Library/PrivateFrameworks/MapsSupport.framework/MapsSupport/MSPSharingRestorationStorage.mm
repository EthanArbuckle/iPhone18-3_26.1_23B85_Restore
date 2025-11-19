@interface MSPSharingRestorationStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMapsIdentifier:(id)a3;
- (void)addMessagesIdentifier:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPSharingRestorationStorage

- (void)addMapsIdentifier:(id)a3
{
  v4 = a3;
  mapsIdentifiers = self->_mapsIdentifiers;
  v8 = v4;
  if (!mapsIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mapsIdentifiers;
    self->_mapsIdentifiers = v6;

    v4 = v8;
    mapsIdentifiers = self->_mapsIdentifiers;
  }

  [(NSMutableArray *)mapsIdentifiers addObject:v4];
}

- (void)addMessagesIdentifier:(id)a3
{
  v4 = a3;
  messagesIdentifiers = self->_messagesIdentifiers;
  v8 = v4;
  if (!messagesIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messagesIdentifiers;
    self->_messagesIdentifiers = v6;

    v4 = v8;
    messagesIdentifiers = self->_messagesIdentifiers;
  }

  [(NSMutableArray *)messagesIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPSharingRestorationStorage;
  v4 = [(MSPSharingRestorationStorage *)&v8 description];
  v5 = [(MSPSharingRestorationStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_createdTimestamp];
    [v3 setObject:v4 forKey:@"created_timestamp"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v3 setObject:groupIdentifier forKey:@"group_identifier"];
  }

  mapsIdentifiers = self->_mapsIdentifiers;
  if (mapsIdentifiers)
  {
    [v3 setObject:mapsIdentifiers forKey:@"maps_identifier"];
  }

  messagesIdentifiers = self->_messagesIdentifiers;
  if (messagesIdentifiers)
  {
    [v3 setObject:messagesIdentifiers forKey:@"messages_identifier"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    createdTimestamp = self->_createdTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_mapsIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_messagesIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4, v19];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = *&self->_createdTimestamp;
    *(v4 + 48) |= 1u;
  }

  v13 = v4;
  if (self->_groupIdentifier)
  {
    [v4 setGroupIdentifier:?];
  }

  if ([(MSPSharingRestorationStorage *)self mapsIdentifiersCount])
  {
    [v13 clearMapsIdentifiers];
    v5 = [(MSPSharingRestorationStorage *)self mapsIdentifiersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MSPSharingRestorationStorage *)self mapsIdentifierAtIndex:i];
        [v13 addMapsIdentifier:v8];
      }
    }
  }

  if ([(MSPSharingRestorationStorage *)self messagesIdentifiersCount])
  {
    [v13 clearMessagesIdentifiers];
    v9 = [(MSPSharingRestorationStorage *)self messagesIdentifiersCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(MSPSharingRestorationStorage *)self messagesIdentifierAtIndex:j];
        [v13 addMessagesIdentifier:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_createdTimestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_groupIdentifier copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_mapsIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v27 + 1) + 8 * v13) copyWithZone:a3];
        [v6 addMapsIdentifier:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_messagesIdentifiers;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) copyWithZone:{a3, v23}];
        [v6 addMessagesIdentifier:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  objc_storeStrong((v6 + 8), self->_unknownFields);
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_createdTimestamp != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(v4 + 3) && ![(NSString *)groupIdentifier isEqual:?])
  {
    goto LABEL_13;
  }

  mapsIdentifiers = self->_mapsIdentifiers;
  if (mapsIdentifiers | *(v4 + 4))
  {
    if (![(NSMutableArray *)mapsIdentifiers isEqual:?])
    {
      goto LABEL_13;
    }
  }

  messagesIdentifiers = self->_messagesIdentifiers;
  if (messagesIdentifiers | *(v4 + 5))
  {
    v9 = [(NSMutableArray *)messagesIdentifiers isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    createdTimestamp = self->_createdTimestamp;
    if (createdTimestamp < 0.0)
    {
      createdTimestamp = -createdTimestamp;
    }

    *v2.i64 = floor(createdTimestamp + 0.5);
    v7 = (createdTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_groupIdentifier hash]^ v5;
  v10 = [(NSMutableArray *)self->_mapsIdentifiers hash];
  return v9 ^ v10 ^ [(NSMutableArray *)self->_messagesIdentifiers hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 48))
  {
    self->_createdTimestamp = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(MSPSharingRestorationStorage *)self setGroupIdentifier:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5[4];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MSPSharingRestorationStorage *)self addMapsIdentifier:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5[5];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MSPSharingRestorationStorage *)self addMessagesIdentifier:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end