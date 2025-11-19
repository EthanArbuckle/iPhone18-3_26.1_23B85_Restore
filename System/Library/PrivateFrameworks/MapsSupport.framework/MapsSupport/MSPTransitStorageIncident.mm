@interface MSPTransitStorageIncident
- (BOOL)isEqual:(id)a3;
- (MSPTransitStorageIncident)initWithIncident:(id)a3;
- (NSDate)creationDate;
- (NSDate)endDate;
- (NSDate)lastUpdated;
- (NSDate)startDate;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)iconTypeAsString:(int)a3;
- (int)StringAsIconType:(id)a3;
- (unint64_t)hash;
- (void)addAffectedEntities:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBlockingIncident:(BOOL)a3;
- (void)setHasCreationDatetime:(BOOL)a3;
- (void)setHasEndDatetime:(BOOL)a3;
- (void)setHasIconType:(BOOL)a3;
- (void)setHasLastUpdatedDatetime:(BOOL)a3;
- (void)setHasStartDatetime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageIncident

- (MSPTransitStorageIncident)initWithIncident:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MSPTransitStorageIncident;
  v5 = [(MSPTransitStorageIncident *)&v36 init];
  if (v5)
  {
    -[MSPTransitStorageIncident setMuid:](v5, "setMuid:", [v4 muid]);
    v6 = [v4 title];
    [(MSPTransitStorageIncident *)v5 setTitle:v6];

    v7 = [v4 summary];
    [(MSPTransitStorageIncident *)v5 setSummary:v7];

    v8 = [v4 fullDescription];
    [(MSPTransitStorageIncident *)v5 setFullDescription:v8];

    v9 = [v4 messageForRoutePlanning];
    [(MSPTransitStorageIncident *)v5 setMessageForRoutePlanning:v9];

    v10 = [v4 messageForRouteStepping];
    [(MSPTransitStorageIncident *)v5 setMessageForRouteStepping:v10];

    v11 = [v4 messageForNonRoutable];
    [(MSPTransitStorageIncident *)v5 setMessageForNonRoutable:v11];

    v12 = [v4 startDate];

    if (v12)
    {
      v13 = [v4 startDate];
      [v13 timeIntervalSinceReferenceDate];
      [(MSPTransitStorageIncident *)v5 setStartDatetime:v14];
    }

    v15 = [v4 endDate];

    if (v15)
    {
      v16 = [v4 endDate];
      [v16 timeIntervalSinceReferenceDate];
      [(MSPTransitStorageIncident *)v5 setEndDatetime:v17];
    }

    -[MSPTransitStorageIncident setIconType:](v5, "setIconType:", [v4 iconType]);
    v18 = [v4 creationDate];

    if (v18)
    {
      v19 = [v4 creationDate];
      [v19 timeIntervalSinceReferenceDate];
      [(MSPTransitStorageIncident *)v5 setCreationDatetime:v20];
    }

    v21 = [v4 lastUpdated];

    if (v21)
    {
      v22 = [v4 lastUpdated];
      [v22 timeIntervalSinceReferenceDate];
      [(MSPTransitStorageIncident *)v5 setLastUpdatedDatetime:v23];
    }

    -[MSPTransitStorageIncident setBlockingIncident:](v5, "setBlockingIncident:", [v4 isBlockingIncident]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [v4 affectedEntities];
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        v28 = 0;
        do
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[MSPTransitStorageIncidentEntity alloc] initWithIncidentEntity:*(*(&v32 + 1) + 8 * v28)];
          [(MSPTransitStorageIncident *)v5 addAffectedEntities:v29];

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v26);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDate)creationDate
{
  if ([(MSPTransitStorageIncident *)self hasCreationDatetime])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MSPTransitStorageIncident creationDatetime](self, "creationDatetime")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)lastUpdated
{
  if ([(MSPTransitStorageIncident *)self hasLastUpdatedDatetime])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MSPTransitStorageIncident lastUpdatedDatetime](self, "lastUpdatedDatetime")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)startDate
{
  if ([(MSPTransitStorageIncident *)self hasStartDatetime])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MSPTransitStorageIncident startDatetime](self, "startDatetime")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)endDate
{
  if ([(MSPTransitStorageIncident *)self hasEndDatetime])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MSPTransitStorageIncident endDatetime](self, "endDatetime")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHasStartDatetime:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndDatetime:(BOOL)a3
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

- (void)setHasIconType:(BOOL)a3
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

- (id)iconTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a3];
  }

  else
  {
    v4 = off_2798666D0[a3];
  }

  return v4;
}

- (int)StringAsIconType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GEOTransitIncidentIconTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GEOTransitIncidentIconTypeWarning"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GEOTransitIncidentIconTypeConstruction"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCreationDatetime:(BOOL)a3
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

- (void)setHasLastUpdatedDatetime:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasBlockingIncident:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)addAffectedEntities:(id)a3
{
  v4 = a3;
  affectedEntities = self->_affectedEntities;
  v8 = v4;
  if (!affectedEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_affectedEntities;
    self->_affectedEntities = v6;

    v4 = v8;
    affectedEntities = self->_affectedEntities;
  }

  [(NSMutableArray *)affectedEntities addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageIncident;
  v4 = [(MSPTransitStorageIncident *)&v8 description];
  v5 = [(MSPTransitStorageIncident *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [v3 setObject:v4 forKey:@"muid"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  summary = self->_summary;
  if (summary)
  {
    [v3 setObject:summary forKey:@"summary"];
  }

  fullDescription = self->_fullDescription;
  if (fullDescription)
  {
    [v3 setObject:fullDescription forKey:@"full_description"];
  }

  messageForRoutePlanning = self->_messageForRoutePlanning;
  if (messageForRoutePlanning)
  {
    [v3 setObject:messageForRoutePlanning forKey:@"message_for_route_planning"];
  }

  messageForRouteStepping = self->_messageForRouteStepping;
  if (messageForRouteStepping)
  {
    [v3 setObject:messageForRouteStepping forKey:@"message_for_route_stepping"];
  }

  messageForNonRoutable = self->_messageForNonRoutable;
  if (messageForNonRoutable)
  {
    [v3 setObject:messageForNonRoutable forKey:@"message_for_non_routable"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_startDatetime];
    [v3 setObject:v24 forKey:@"start_datetime"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_endDatetime];
  [v3 setObject:v25 forKey:@"end_datetime"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_38:
  iconType = self->_iconType;
  if (iconType >= 3)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_iconType];
  }

  else
  {
    v27 = off_2798666D0[iconType];
  }

  [v3 setObject:v27 forKey:@"icon_type"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_creationDatetime];
  [v3 setObject:v28 forKey:@"creation_datetime"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_20:
    if ((has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastUpdatedDatetime];
  [v3 setObject:v29 forKey:@"last_updated_datetime"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_blockingIncident];
    [v3 setObject:v12 forKey:@"blocking_incident"];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_affectedEntities count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_affectedEntities, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = self->_affectedEntities;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"affected_entities"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v21 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"Unknown Fields"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageForRoutePlanning)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageForRouteStepping)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageForNonRoutable)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    startDatetime = self->_startDatetime;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  endDatetime = self->_endDatetime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  iconType = self->_iconType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  creationDatetime = self->_creationDatetime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_20:
    if ((has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_34:
  lastUpdatedDatetime = self->_lastUpdatedDatetime;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    blockingIncident = self->_blockingIncident;
    PBDataWriterWriteBOOLField();
  }

LABEL_22:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_affectedEntities;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4, v20];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_muid;
    *(v4 + 108) |= 1u;
  }

  v10 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v10;
  }

  if (self->_summary)
  {
    [v10 setSummary:?];
    v4 = v10;
  }

  if (self->_fullDescription)
  {
    [v10 setFullDescription:?];
    v4 = v10;
  }

  if (self->_messageForRoutePlanning)
  {
    [v10 setMessageForRoutePlanning:?];
    v4 = v10;
  }

  if (self->_messageForRouteStepping)
  {
    [v10 setMessageForRouteStepping:?];
    v4 = v10;
  }

  if (self->_messageForNonRoutable)
  {
    [v10 setMessageForNonRoutable:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 20) = self->_startDatetime;
    *(v4 + 108) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 9) = self->_endDatetime;
  *(v4 + 108) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 12) = self->_iconType;
  *(v4 + 108) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_33:
    *(v4 + 13) = self->_lastUpdatedDatetime;
    *(v4 + 108) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_32:
  *(v4 + 8) = self->_creationDatetime;
  *(v4 + 108) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_20:
  if ((has & 0x40) != 0)
  {
LABEL_21:
    *(v4 + 104) = self->_blockingIncident;
    *(v4 + 108) |= 0x40u;
  }

LABEL_22:
  if ([(MSPTransitStorageIncident *)self affectedEntitiesCount])
  {
    [v10 clearAffectedEntities];
    v6 = [(MSPTransitStorageIncident *)self affectedEntitiesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MSPTransitStorageIncident *)self affectedEntitiesAtIndex:i];
        [v10 addAffectedEntities:v9];
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
    *(v5 + 16) = self->_muid;
    *(v5 + 108) |= 1u;
  }

  v7 = [(NSString *)self->_title copyWithZone:a3];
  v8 = *(v6 + 96);
  *(v6 + 96) = v7;

  v9 = [(NSString *)self->_summary copyWithZone:a3];
  v10 = *(v6 + 88);
  *(v6 + 88) = v9;

  v11 = [(NSString *)self->_fullDescription copyWithZone:a3];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v13 = [(NSString *)self->_messageForRoutePlanning copyWithZone:a3];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(NSString *)self->_messageForRouteStepping copyWithZone:a3];
  v16 = *(v6 + 72);
  *(v6 + 72) = v15;

  v17 = [(NSString *)self->_messageForNonRoutable copyWithZone:a3];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 80) = self->_startDatetime;
    *(v6 + 108) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 36) = self->_endDatetime;
  *(v6 + 108) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 48) = self->_iconType;
  *(v6 + 108) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 32) = self->_creationDatetime;
  *(v6 + 108) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_22:
  *(v6 + 52) = self->_lastUpdatedDatetime;
  *(v6 + 108) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(v6 + 104) = self->_blockingIncident;
    *(v6 + 108) |= 0x40u;
  }

LABEL_10:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = self->_affectedEntities;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v28 + 1) + 8 * i) copyWithZone:{a3, v28}];
        [v6 addAffectedEntities:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  objc_storeStrong((v6 + 8), self->_unknownFields);
  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  v5 = *(v4 + 108);
  if (*&self->_has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_muid != *(v4 + 2))
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_49;
  }

  title = self->_title;
  if (title | *(v4 + 12) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_49;
  }

  summary = self->_summary;
  if (summary | *(v4 + 11))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_49;
    }
  }

  fullDescription = self->_fullDescription;
  if (fullDescription | *(v4 + 5))
  {
    if (![(NSString *)fullDescription isEqual:?])
    {
      goto LABEL_49;
    }
  }

  messageForRoutePlanning = self->_messageForRoutePlanning;
  if (messageForRoutePlanning | *(v4 + 8))
  {
    if (![(NSString *)messageForRoutePlanning isEqual:?])
    {
      goto LABEL_49;
    }
  }

  messageForRouteStepping = self->_messageForRouteStepping;
  if (messageForRouteStepping | *(v4 + 9))
  {
    if (![(NSString *)messageForRouteStepping isEqual:?])
    {
      goto LABEL_49;
    }
  }

  messageForNonRoutable = self->_messageForNonRoutable;
  if (messageForNonRoutable | *(v4 + 7))
  {
    if (![(NSString *)messageForNonRoutable isEqual:?])
    {
      goto LABEL_49;
    }
  }

  v12 = *(v4 + 108);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 108) & 0x20) == 0 || self->_startDatetime != *(v4 + 20))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 108) & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 108) & 4) == 0 || self->_endDatetime != *(v4 + 9))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 108) & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 108) & 8) == 0 || self->_iconType != *(v4 + 12))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 108) & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 108) & 2) == 0 || self->_creationDatetime != *(v4 + 8))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 108) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 108) & 0x10) == 0 || self->_lastUpdatedDatetime != *(v4 + 13))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 108) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 108) & 0x40) == 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v14 = 0;
    goto LABEL_50;
  }

  if ((*(v4 + 108) & 0x40) == 0)
  {
    goto LABEL_49;
  }

  v16 = *(v4 + 104);
  if (self->_blockingIncident)
  {
    if ((*(v4 + 104) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 104))
  {
    goto LABEL_49;
  }

LABEL_46:
  affectedEntities = self->_affectedEntities;
  if (affectedEntities | *(v4 + 3))
  {
    v14 = [(NSMutableArray *)affectedEntities isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_50:

  return v14;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_muid;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_summary hash];
  v6 = [(NSString *)self->_fullDescription hash];
  v7 = [(NSString *)self->_messageForRoutePlanning hash];
  v8 = [(NSString *)self->_messageForRouteStepping hash];
  v9 = [(NSString *)self->_messageForNonRoutable hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_startDatetime;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v11 = 2654435761 * self->_endDatetime;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_iconType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_creationDatetime;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v14 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSMutableArray *)self->_affectedEntities hash];
  }

LABEL_14:
  v13 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v14 = 2654435761 * self->_lastUpdatedDatetime;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v15 = 2654435761 * self->_blockingIncident;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSMutableArray *)self->_affectedEntities hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 108))
  {
    self->_muid = v4[2];
    *&self->_has |= 1u;
  }

  if (v4[12])
  {
    [(MSPTransitStorageIncident *)self setTitle:?];
  }

  if (*(v5 + 11))
  {
    [(MSPTransitStorageIncident *)self setSummary:?];
  }

  if (*(v5 + 5))
  {
    [(MSPTransitStorageIncident *)self setFullDescription:?];
  }

  if (*(v5 + 8))
  {
    [(MSPTransitStorageIncident *)self setMessageForRoutePlanning:?];
  }

  if (*(v5 + 9))
  {
    [(MSPTransitStorageIncident *)self setMessageForRouteStepping:?];
  }

  if (*(v5 + 7))
  {
    [(MSPTransitStorageIncident *)self setMessageForNonRoutable:?];
  }

  v6 = *(v5 + 108);
  if ((v6 & 0x20) != 0)
  {
    self->_startDatetime = *(v5 + 20);
    *&self->_has |= 0x20u;
    v6 = *(v5 + 108);
    if ((v6 & 4) == 0)
    {
LABEL_17:
      if ((v6 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else if ((*(v5 + 108) & 4) == 0)
  {
    goto LABEL_17;
  }

  self->_endDatetime = *(v5 + 9);
  *&self->_has |= 4u;
  v6 = *(v5 + 108);
  if ((v6 & 8) == 0)
  {
LABEL_18:
    if ((v6 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_iconType = *(v5 + 12);
  *&self->_has |= 8u;
  v6 = *(v5 + 108);
  if ((v6 & 2) == 0)
  {
LABEL_19:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_creationDatetime = *(v5 + 8);
  *&self->_has |= 2u;
  v6 = *(v5 + 108);
  if ((v6 & 0x10) == 0)
  {
LABEL_20:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_34:
  self->_lastUpdatedDatetime = *(v5 + 13);
  *&self->_has |= 0x10u;
  if ((*(v5 + 108) & 0x40) != 0)
  {
LABEL_21:
    self->_blockingIncident = *(v5 + 104);
    *&self->_has |= 0x40u;
  }

LABEL_22:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 3);
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

        [(MSPTransitStorageIncident *)self addAffectedEntities:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end