@interface HDCodableNanoSyncStatus
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyForPersistentUserInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (int)StringAsStatusCode:(id)code;
- (int)statusCode;
- (int64_t)anchorForSyncEntityClass:(Class)class;
- (int64_t)anchorForSyncEntityIdentifier:(id)identifier;
- (unint64_t)anchorCount;
- (unint64_t)hash;
- (void)addAnchors:(id)anchors;
- (void)copyTo:(id)to;
- (void)enumerateAnchorsAndEntityIdentifiersWithBlock:(id)block;
- (void)mergeFrom:(id)from;
- (void)setAnchor:(int64_t)anchor forSyncEntity:(Class)entity;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNanoSyncStatus

- (id)nanoSyncDescription
{
  if (*&self->_has)
  {
    statusCode = self->_statusCode;
    if (statusCode >= 7)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_statusCode];
    }

    else
    {
      v3 = off_2786232C0[statusCode];
    }
  }

  else
  {
    v3 = @"(null)";
  }

  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v6 = HDNanoSyncDescriptionWithArray(anchors);

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"status:%@ anchors:%@", v3, v6];

  return v7;
}

- (int)statusCode
{
  if (*&self->_has)
  {
    return self->_statusCode;
  }

  else
  {
    return 0;
  }
}

- (id)copyForPersistentUserInfo
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HDCodableNanoSyncStatus);
  v4 = v3;
  if (*&self->_has)
  {
    [(HDCodableNanoSyncStatus *)v3 setStatusCode:self->_statusCode];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v6 = [anchors countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(anchors);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) copy];
        [(HDCodableNanoSyncStatus *)v4 addAnchors:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [anchors countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)StringAsStatusCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"UnknownError"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"Continue"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"Resend"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"Reactivate"])
  {
    v4 = 3;
  }

  else if ([codeCopy isEqualToString:@"ChangesRequested"])
  {
    v4 = 4;
  }

  else if ([codeCopy isEqualToString:@"LastChanceChangesRequested"])
  {
    v4 = 5;
  }

  else if ([codeCopy isEqualToString:@"Obliterate"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAnchors:(id)anchors
{
  anchorsCopy = anchors;
  anchors = self->_anchors;
  v8 = anchorsCopy;
  if (!anchors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_anchors;
    self->_anchors = v6;

    anchorsCopy = v8;
    anchors = self->_anchors;
  }

  [(NSMutableArray *)anchors addObject:anchorsCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncStatus;
  v4 = [(HDCodableNanoSyncStatus *)&v8 description];
  dictionaryRepresentation = [(HDCodableNanoSyncStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    statusCode = self->_statusCode;
    if (statusCode >= 7)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_statusCode];
    }

    else
    {
      v5 = off_2786206C0[statusCode];
    }

    [dictionary setObject:v5 forKey:@"statusCode"];
  }

  if ([(NSMutableArray *)self->_anchors count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_anchors, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_anchors;
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"anchors"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_anchors;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_statusCode;
    *(toCopy + 20) |= 1u;
  }

  v9 = toCopy;
  if ([(HDCodableNanoSyncStatus *)self anchorsCount])
  {
    [v9 clearAnchors];
    anchorsCount = [(HDCodableNanoSyncStatus *)self anchorsCount];
    if (anchorsCount)
    {
      v6 = anchorsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableNanoSyncStatus *)self anchorsAtIndex:i];
        [v9 addAnchors:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_statusCode;
    *(v5 + 20) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_anchors;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{zone, v15}];
        [v6 addAnchors:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_statusCode != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  anchors = self->_anchors;
  if (anchors | *(equalCopy + 1))
  {
    v7 = [(NSMutableArray *)anchors isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_statusCode;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_anchors hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 20))
  {
    self->_statusCode = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableNanoSyncStatus *)self addAnchors:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setAnchor:(int64_t)anchor forSyncEntity:(Class)entity
{
  v9 = objc_alloc_init(HDCodableNanoSyncAnchor);
  syncEntityIdentifier = [(objc_class *)entity syncEntityIdentifier];
  codableEntityIdentifier = [syncEntityIdentifier codableEntityIdentifier];
  [(HDCodableNanoSyncAnchor *)v9 setEntityIdentifier:codableEntityIdentifier];

  if (objc_opt_respondsToSelector())
  {
    [(HDCodableNanoSyncAnchor *)v9 setObjectType:[(objc_class *)entity nanoSyncObjectType]];
  }

  [(HDCodableNanoSyncAnchor *)v9 setAnchor:anchor];
  [(HDCodableNanoSyncStatus *)self addAnchors:v9];
}

- (int64_t)anchorForSyncEntityClass:(Class)class
{
  v20 = *MEMORY[0x277D85DE8];
  syncEntityIdentifier = [(objc_class *)class syncEntityIdentifier];
  codableEntityIdentifier = [syncEntityIdentifier codableEntityIdentifier];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v7 = [anchors countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(anchors);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([*(v11 + 16) isEqual:codableEntityIdentifier])
        {
          v12 = *(v11 + 8);
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [anchors countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = -1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)anchorForSyncEntityIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  codableEntityIdentifier = [identifier codableEntityIdentifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v6 = [anchors countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(anchors);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        entityIdentifier = [v10 entityIdentifier];
        v12 = entityIdentifier;
        if (entityIdentifier == codableEntityIdentifier)
        {

LABEL_15:
          v15 = v10[1];
          goto LABEL_17;
        }

        if (codableEntityIdentifier)
        {
          entityIdentifier2 = [v10 entityIdentifier];
          v14 = [entityIdentifier2 isEqual:codableEntityIdentifier];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [anchors countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = -1;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = -1;
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)enumerateAnchorsAndEntityIdentifiersWithBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v6 = [anchors countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(anchors);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 hasAnchor] ? objc_msgSend(v10, "anchor") : -1;
      entityIdentifier = [v10 entityIdentifier];
      if (entityIdentifier)
      {
        v13 = [[HDSyncEntityIdentifier alloc] initWithCodableEntityIdentifier:entityIdentifier];
        v14 = v13;
        if ((v11 & 0x8000000000000000) == 0 && v13)
        {
          blockCopy[2](blockCopy, v13, v11, &v21);
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v21;

      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [anchors countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)anchorCount
{
  anchors = [(HDCodableNanoSyncStatus *)self anchors];
  v3 = [anchors count];

  return v3;
}

@end