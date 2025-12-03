@interface _MRPlaybackQueueProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContentItem:(id)item;
- (void)addHomeUserIdentifiers:(id)identifiers;
- (void)addParticipants:(id)participants;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSendingPlaybackQueueTransaction:(BOOL)transaction;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackQueueProtobuf

- (void)addContentItem:(id)item
{
  itemCopy = item;
  contentItems = self->_contentItems;
  v8 = itemCopy;
  if (!contentItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentItems;
    self->_contentItems = v6;

    itemCopy = v8;
    contentItems = self->_contentItems;
  }

  [(NSMutableArray *)contentItems addObject:itemCopy];
}

- (void)setHasSendingPlaybackQueueTransaction:(BOOL)transaction
{
  if (transaction)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_participants;
    self->_participants = v6;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSMutableArray *)participants addObject:participantsCopy];
}

- (void)addHomeUserIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  homeUserIdentifiers = self->_homeUserIdentifiers;
  v8 = identifiersCopy;
  if (!homeUserIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_homeUserIdentifiers;
    self->_homeUserIdentifiers = v6;

    identifiersCopy = v8;
    homeUserIdentifiers = self->_homeUserIdentifiers;
  }

  [(NSMutableArray *)homeUserIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackQueueProtobuf;
  v4 = [(_MRPlaybackQueueProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackQueueProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_location];
    [dictionary setObject:v4 forKey:@"location"];
  }

  if ([(NSMutableArray *)self->_contentItems count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contentItems, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = self->_contentItems;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"contentItem"];
  }

  context = self->_context;
  if (context)
  {
    dictionaryRepresentation2 = [(_MRPlaybackQueueContextProtobuf *)context dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"context"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [dictionary setObject:requestID forKey:@"requestID"];
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  if (resolvedPlayerPath)
  {
    dictionaryRepresentation3 = [(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"resolvedPlayerPath"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_sendingPlaybackQueueTransaction];
    [dictionary setObject:v17 forKey:@"sendingPlaybackQueueTransaction"];
  }

  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier)
  {
    [dictionary setObject:queueIdentifier forKey:@"queueIdentifier"];
  }

  if ([(NSMutableArray *)self->_participants count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_participants, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = self->_participants;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation4 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation4];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"participants"];
  }

  homeUserIdentifiers = self->_homeUserIdentifiers;
  if (homeUserIdentifiers)
  {
    [dictionary setObject:homeUserIdentifiers forKey:@"homeUserIdentifiers"];
  }

  properties = self->_properties;
  if (properties)
  {
    dictionaryRepresentation5 = [(_MRDictionaryProtobuf *)properties dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"properties"];
  }

  auxiliaryNowPlayingInfo = self->_auxiliaryNowPlayingInfo;
  if (auxiliaryNowPlayingInfo)
  {
    dictionaryRepresentation6 = [(_MRDictionaryProtobuf *)auxiliaryNowPlayingInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"auxiliaryNowPlayingInfo"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    location = self->_location;
    PBDataWriterWriteInt32Field();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_contentItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_resolvedPlayerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    sendingPlaybackQueueTransaction = self->_sendingPlaybackQueueTransaction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_queueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_participants;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_homeUserIdentifiers;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * v23);
        PBDataWriterWriteStringField();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  if (self->_properties)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_auxiliaryNowPlayingInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = self->_location;
    *(toCopy + 92) |= 1u;
  }

  v18 = toCopy;
  if ([(_MRPlaybackQueueProtobuf *)self contentItemsCount])
  {
    [v18 clearContentItems];
    contentItemsCount = [(_MRPlaybackQueueProtobuf *)self contentItemsCount];
    if (contentItemsCount)
    {
      v6 = contentItemsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRPlaybackQueueProtobuf *)self contentItemAtIndex:i];
        [v18 addContentItem:v8];
      }
    }
  }

  if (self->_context)
  {
    [v18 setContext:?];
  }

  if (self->_requestID)
  {
    [v18 setRequestID:?];
  }

  if (self->_resolvedPlayerPath)
  {
    [v18 setResolvedPlayerPath:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18[88] = self->_sendingPlaybackQueueTransaction;
    v18[92] |= 2u;
  }

  if (self->_queueIdentifier)
  {
    [v18 setQueueIdentifier:?];
  }

  if ([(_MRPlaybackQueueProtobuf *)self participantsCount])
  {
    [v18 clearParticipants];
    participantsCount = [(_MRPlaybackQueueProtobuf *)self participantsCount];
    if (participantsCount)
    {
      v10 = participantsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(_MRPlaybackQueueProtobuf *)self participantsAtIndex:j];
        [v18 addParticipants:v12];
      }
    }
  }

  if ([(_MRPlaybackQueueProtobuf *)self homeUserIdentifiersCount])
  {
    [v18 clearHomeUserIdentifiers];
    homeUserIdentifiersCount = [(_MRPlaybackQueueProtobuf *)self homeUserIdentifiersCount];
    if (homeUserIdentifiersCount)
    {
      v14 = homeUserIdentifiersCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(_MRPlaybackQueueProtobuf *)self homeUserIdentifiersAtIndex:k];
        [v18 addHomeUserIdentifiers:v16];
      }
    }
  }

  if (self->_properties)
  {
    [v18 setProperties:?];
  }

  v17 = v18;
  if (self->_auxiliaryNowPlayingInfo)
  {
    [v18 setAuxiliaryNowPlayingInfo:?];
    v17 = v18;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_location;
    *(v5 + 92) |= 1u;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = self->_contentItems;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      v11 = 0;
      do
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v47 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addContentItem:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v9);
  }

  v13 = [(_MRPlaybackQueueContextProtobuf *)self->_context copyWithZone:zone];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(NSString *)self->_requestID copyWithZone:zone];
  v16 = *(v6 + 72);
  *(v6 + 72) = v15;

  v17 = [(_MRNowPlayingPlayerPathProtobuf *)self->_resolvedPlayerPath copyWithZone:zone];
  v18 = *(v6 + 80);
  *(v6 + 80) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 88) = self->_sendingPlaybackQueueTransaction;
    *(v6 + 92) |= 2u;
  }

  v19 = [(NSString *)self->_queueIdentifier copyWithZone:zone];
  v20 = *(v6 + 64);
  *(v6 + 64) = v19;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = self->_participants;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v44;
    do
    {
      v25 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v43 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addParticipants:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v23);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = self->_homeUserIdentifiers;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      v31 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v39 + 1) + 8 * v31) copyWithZone:{zone, v39}];
        [v6 addHomeUserIdentifiers:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v29);
  }

  v33 = [(_MRDictionaryProtobuf *)self->_properties copyWithZone:zone];
  v34 = *(v6 + 56);
  *(v6 + 56) = v33;

  v35 = [(_MRDictionaryProtobuf *)self->_auxiliaryNowPlayingInfo copyWithZone:zone];
  v36 = *(v6 + 8);
  *(v6 + 8) = v35;

  v37 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 92);
  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_location != *(equalCopy + 10))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_28;
  }

  contentItems = self->_contentItems;
  if (contentItems | *(equalCopy + 2) && ![(NSMutableArray *)contentItems isEqual:?])
  {
    goto LABEL_28;
  }

  context = self->_context;
  if (context | *(equalCopy + 3))
  {
    if (![(_MRPlaybackQueueContextProtobuf *)context isEqual:?])
    {
      goto LABEL_28;
    }
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 9))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_28;
    }
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  if (resolvedPlayerPath | *(equalCopy + 10))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v10 = *(equalCopy + 92);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 92) & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v16 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 92) & 2) == 0)
  {
    goto LABEL_28;
  }

  v18 = *(equalCopy + 88);
  if (self->_sendingPlaybackQueueTransaction)
  {
    if ((*(equalCopy + 88) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_28;
  }

LABEL_17:
  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier | *(equalCopy + 8) && ![(NSString *)queueIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  participants = self->_participants;
  if (participants | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)participants isEqual:?])
    {
      goto LABEL_28;
    }
  }

  homeUserIdentifiers = self->_homeUserIdentifiers;
  if (homeUserIdentifiers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)homeUserIdentifiers isEqual:?])
    {
      goto LABEL_28;
    }
  }

  properties = self->_properties;
  if (properties | *(equalCopy + 7))
  {
    if (![(_MRDictionaryProtobuf *)properties isEqual:?])
    {
      goto LABEL_28;
    }
  }

  auxiliaryNowPlayingInfo = self->_auxiliaryNowPlayingInfo;
  if (auxiliaryNowPlayingInfo | *(equalCopy + 1))
  {
    v16 = [(_MRDictionaryProtobuf *)auxiliaryNowPlayingInfo isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_29:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_location;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_contentItems hash];
  v5 = [(_MRPlaybackQueueContextProtobuf *)self->_context hash];
  v6 = [(NSString *)self->_requestID hash];
  v7 = [(_MRNowPlayingPlayerPathProtobuf *)self->_resolvedPlayerPath hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_sendingPlaybackQueueTransaction;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_queueIdentifier hash];
  v10 = [(NSMutableArray *)self->_participants hash];
  v11 = v10 ^ [(NSMutableArray *)self->_homeUserIdentifiers hash];
  v12 = v11 ^ [(_MRDictionaryProtobuf *)self->_properties hash];
  return v9 ^ v12 ^ [(_MRDictionaryProtobuf *)self->_auxiliaryNowPlayingInfo hash];
}

- (void)mergeFrom:(id)from
{
  v45 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 92))
  {
    self->_location = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_MRPlaybackQueueProtobuf *)self addContentItem:*(*(&v38 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  context = self->_context;
  v12 = *(v5 + 3);
  if (context)
  {
    if (v12)
    {
      [(_MRPlaybackQueueContextProtobuf *)context mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(_MRPlaybackQueueProtobuf *)self setContext:?];
  }

  if (*(v5 + 9))
  {
    [(_MRPlaybackQueueProtobuf *)self setRequestID:?];
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  v14 = *(v5 + 10);
  if (resolvedPlayerPath)
  {
    if (v14)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(_MRPlaybackQueueProtobuf *)self setResolvedPlayerPath:?];
  }

  if ((*(v5 + 92) & 2) != 0)
  {
    self->_sendingPlaybackQueueTransaction = *(v5 + 88);
    *&self->_has |= 2u;
  }

  if (*(v5 + 8))
  {
    [(_MRPlaybackQueueProtobuf *)self setQueueIdentifier:?];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = *(v5 + 6);
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(_MRPlaybackQueueProtobuf *)self addParticipants:*(*(&v34 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = *(v5 + 4);
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(_MRPlaybackQueueProtobuf *)self addHomeUserIdentifiers:*(*(&v30 + 1) + 8 * k), v30];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v22);
  }

  properties = self->_properties;
  v26 = *(v5 + 7);
  if (properties)
  {
    if (v26)
    {
      [(_MRDictionaryProtobuf *)properties mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(_MRPlaybackQueueProtobuf *)self setProperties:?];
  }

  auxiliaryNowPlayingInfo = self->_auxiliaryNowPlayingInfo;
  v28 = *(v5 + 1);
  if (auxiliaryNowPlayingInfo)
  {
    if (v28)
    {
      [(_MRDictionaryProtobuf *)auxiliaryNowPlayingInfo mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(_MRPlaybackQueueProtobuf *)self setAuxiliaryNowPlayingInfo:?];
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end