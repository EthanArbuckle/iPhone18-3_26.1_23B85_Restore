@interface FTCPPETInteraction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FTCPPETInteraction

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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FTCPPETInteraction;
  v4 = [(FTCPPETInteraction *)&v8 description];
  dictionaryRepresentation = [(FTCPPETInteraction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_participants count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_participants, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_participants;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"participants"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{self->_timestamp, v17}];
  [dictionary setObject:v11 forKey:@"timestamp"];

  mechanism = self->_mechanism;
  if (mechanism)
  {
    [dictionary setObject:mechanism forKey:@"mechanism"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInbound];
  [dictionary setObject:v13 forKey:@"isInbound"];

  duration = self->_duration;
  if (duration)
  {
    [dictionary setObject:duration forKey:@"duration"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_participants;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  if (!self->_mechanism)
  {
    [FTCPPETInteraction writeTo:];
  }

  PBDataWriterWriteStringField();
  isInbound = self->_isInbound;
  PBDataWriterWriteBOOLField();
  if (!self->_duration)
  {
    [FTCPPETInteraction writeTo:];
  }

  PBDataWriterWriteStringField();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(FTCPPETInteraction *)self participantsCount])
  {
    [toCopy clearParticipants];
    participantsCount = [(FTCPPETInteraction *)self participantsCount];
    if (participantsCount)
    {
      v5 = participantsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(FTCPPETInteraction *)self participantsAtIndex:i];
        [toCopy addParticipants:v7];
      }
    }
  }

  *(toCopy + 1) = self->_timestamp;
  [toCopy setMechanism:self->_mechanism];
  *(toCopy + 40) = self->_isInbound;
  [toCopy setDuration:self->_duration];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_participants;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{zone, v18}];
        [v5 addParticipants:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  *(v5 + 8) = self->_timestamp;
  v12 = [(NSString *)self->_mechanism copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  *(v5 + 40) = self->_isInbound;
  v14 = [(NSString *)self->_duration copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  participants = self->_participants;
  if (participants | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)participants isEqual:?])
    {
      goto LABEL_9;
    }
  }

  if (self->_timestamp != *(equalCopy + 1))
  {
    goto LABEL_9;
  }

  mechanism = self->_mechanism;
  if (mechanism | *(equalCopy + 3))
  {
    if (![(NSString *)mechanism isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v7 = *(equalCopy + 40);
  if (self->_isInbound)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_9;
  }

  duration = self->_duration;
  if (duration | *(equalCopy + 2))
  {
    v8 = [(NSString *)duration isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_participants hash];
  v4 = 2654435761u * self->_timestamp;
  v5 = v4 ^ v3 ^ [(NSString *)self->_mechanism hash]^ (2654435761 * self->_isInbound);
  return v5 ^ [(NSString *)self->_duration hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 4);
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

        [(FTCPPETInteraction *)self addParticipants:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  self->_timestamp = *(fromCopy + 1);
  if (*(fromCopy + 3))
  {
    [(FTCPPETInteraction *)self setMechanism:?];
  }

  self->_isInbound = *(fromCopy + 40);
  if (*(fromCopy + 2))
  {
    [(FTCPPETInteraction *)self setDuration:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end