@interface IDSQRProtoSessionInfoRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)publishedStreamIdsAtIndex:(unint64_t)index;
- (void)addSubscribedStreams:(id)streams;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAllWildcardSubscription:(BOOL)subscription;
- (void)setHasGenerationCounter:(BOOL)counter;
- (void)setHasLinkId:(BOOL)id;
- (void)setHasMaxConcurrentStreams:(BOOL)streams;
- (void)setHasRequestId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoSessionInfoRequest

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoSessionInfoRequest;
  [(IDSQRProtoSessionInfoRequest *)&v3 dealloc];
}

- (unsigned)publishedStreamIdsAtIndex:(unint64_t)index
{
  p_publishedStreamIds = &self->_publishedStreamIds;
  count = self->_publishedStreamIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_publishedStreamIds->list[index];
}

- (void)addSubscribedStreams:(id)streams
{
  streamsCopy = streams;
  subscribedStreams = self->_subscribedStreams;
  v8 = streamsCopy;
  if (!subscribedStreams)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subscribedStreams;
    self->_subscribedStreams = v6;

    streamsCopy = v8;
    subscribedStreams = self->_subscribedStreams;
  }

  [(NSMutableArray *)subscribedStreams addObject:streamsCopy];
}

- (void)setHasAllWildcardSubscription:(BOOL)subscription
{
  if (subscription)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMaxConcurrentStreams:(BOOL)streams
{
  if (streams)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLinkId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRequestId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasGenerationCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoSessionInfoRequest;
  v4 = [(IDSQRProtoSessionInfoRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoSessionInfoRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v4 forKey:@"published_stream_ids"];

  if ([(NSMutableArray *)self->_subscribedStreams count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_subscribedStreams, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_subscribedStreams;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"subscribed_streams"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_allWildcardSubscription];
    [dictionary setObject:v15 forKey:@"all_wildcard_subscription"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_maxConcurrentStreams, v20}];
  [dictionary setObject:v16 forKey:@"max_concurrent_streams"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_linkId, v20}];
  [dictionary setObject:v17 forKey:@"link_id"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_requestId, v20}];
  [dictionary setObject:v18 forKey:@"request_id"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_commandFlags, v20}];
  [dictionary setObject:v19 forKey:@"command_flags"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_16:
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_generationCounter, v20}];
    [dictionary setObject:v13 forKey:@"generation_counter"];
  }

LABEL_17:

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_publishedStreamIds.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_publishedStreamIds.count);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_subscribedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((has & 2) != 0)
  {
LABEL_17:
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(IDSQRProtoSessionInfoRequest *)self publishedStreamIdsCount])
  {
    [toCopy clearPublishedStreamIds];
    publishedStreamIdsCount = [(IDSQRProtoSessionInfoRequest *)self publishedStreamIdsCount];
    if (publishedStreamIdsCount)
    {
      v5 = publishedStreamIdsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addPublishedStreamIds:{-[IDSQRProtoSessionInfoRequest publishedStreamIdsAtIndex:](self, "publishedStreamIdsAtIndex:", i)}];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoRequest *)self subscribedStreamsCount])
  {
    [toCopy clearSubscribedStreams];
    subscribedStreamsCount = [(IDSQRProtoSessionInfoRequest *)self subscribedStreamsCount];
    if (subscribedStreamsCount)
    {
      v8 = subscribedStreamsCount;
      for (j = 0; j != v8; ++j)
      {
        v10 = [(IDSQRProtoSessionInfoRequest *)self subscribedStreamsAtIndex:j];
        [toCopy addSubscribedStreams:v10];
      }
    }
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 64) = self->_allWildcardSubscription;
    *(toCopy + 68) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 11) = self->_maxConcurrentStreams;
  *(toCopy + 68) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 10) = self->_linkId;
  *(toCopy + 68) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 12) = self->_requestId;
  *(toCopy + 68) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *(toCopy + 8) = self->_commandFlags;
  *(toCopy + 68) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(toCopy + 9) = self->_generationCounter;
    *(toCopy + 68) |= 2u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_subscribedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithZone:{zone, v14}];
        [v5 addSubscribedStreams:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 64) = self->_allWildcardSubscription;
    *(v5 + 68) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 44) = self->_maxConcurrentStreams;
  *(v5 + 68) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 40) = self->_linkId;
  *(v5 + 68) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    *(v5 + 32) = self->_commandFlags;
    *(v5 + 68) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_14;
  }

LABEL_19:
  *(v5 + 48) = self->_requestId;
  *(v5 + 68) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((has & 2) != 0)
  {
LABEL_14:
    *(v5 + 36) = self->_generationCounter;
    *(v5 + 68) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_37;
  }

  subscribedStreams = self->_subscribedStreams;
  if (subscribedStreams | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)subscribedStreams isEqual:?])
    {
      goto LABEL_37;
    }
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 68) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_37:
    v6 = 0;
    goto LABEL_38;
  }

  if ((*(equalCopy + 68) & 0x20) == 0)
  {
    goto LABEL_37;
  }

  if (self->_allWildcardSubscription)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_37;
  }

LABEL_7:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0 || self->_maxConcurrentStreams != *(equalCopy + 11))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 68) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_linkId != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0 || self->_requestId != *(equalCopy + 12))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_commandFlags != *(equalCopy + 8))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_37;
  }

  v6 = (*(equalCopy + 68) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_generationCounter != *(equalCopy + 9))
    {
      goto LABEL_37;
    }

    v6 = 1;
  }

LABEL_38:

  return v6;
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  v4 = [(NSMutableArray *)self->_subscribedStreams hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v5 = 2654435761 * self->_allWildcardSubscription;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_maxConcurrentStreams;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_linkId;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_requestId;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_commandFlags;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 2654435761 * self->_generationCounter;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  publishedStreamIdsCount = [fromCopy publishedStreamIdsCount];
  if (publishedStreamIdsCount)
  {
    v6 = publishedStreamIdsCount;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoSessionInfoRequest addPublishedStreamIds:](self, "addPublishedStreamIds:", [fromCopy publishedStreamIdsAtIndex:i]);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(fromCopy + 7);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(IDSQRProtoSessionInfoRequest *)self addSubscribedStreams:*(*(&v14 + 1) + 8 * j), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *(fromCopy + 68);
  if ((v13 & 0x20) != 0)
  {
    self->_allWildcardSubscription = *(fromCopy + 64);
    *&self->_has |= 0x20u;
    v13 = *(fromCopy + 68);
    if ((v13 & 8) == 0)
    {
LABEL_13:
      if ((v13 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 68) & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_maxConcurrentStreams = *(fromCopy + 11);
  *&self->_has |= 8u;
  v13 = *(fromCopy + 68);
  if ((v13 & 4) == 0)
  {
LABEL_14:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_linkId = *(fromCopy + 10);
  *&self->_has |= 4u;
  v13 = *(fromCopy + 68);
  if ((v13 & 0x10) == 0)
  {
LABEL_15:
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    self->_commandFlags = *(fromCopy + 8);
    *&self->_has |= 1u;
    if ((*(fromCopy + 68) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_22:
  self->_requestId = *(fromCopy + 12);
  *&self->_has |= 0x10u;
  v13 = *(fromCopy + 68);
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v13 & 2) != 0)
  {
LABEL_17:
    self->_generationCounter = *(fromCopy + 9);
    *&self->_has |= 2u;
  }

LABEL_18:
}

@end