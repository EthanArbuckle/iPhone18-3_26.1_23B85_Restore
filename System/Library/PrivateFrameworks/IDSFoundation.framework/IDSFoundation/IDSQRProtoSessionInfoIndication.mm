@interface IDSQRProtoSessionInfoIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)lightweightParticipantIdListAtIndex:(unint64_t)index;
- (unsigned)peerSubscribedStreamIdsAtIndex:(unint64_t)index;
- (void)addJoinedParticipants:(id)participants;
- (void)addLeftParticipants:(id)participants;
- (void)addPeerPublishedStreams:(id)streams;
- (void)addUpdatedParticipants:(id)participants;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasGenerationCounter:(BOOL)counter;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoSessionInfoIndication

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoSessionInfoIndication;
  [(IDSQRProtoSessionInfoIndication *)&v3 dealloc];
}

- (void)addPeerPublishedStreams:(id)streams
{
  streamsCopy = streams;
  peerPublishedStreams = self->_peerPublishedStreams;
  v8 = streamsCopy;
  if (!peerPublishedStreams)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_peerPublishedStreams;
    self->_peerPublishedStreams = v6;

    streamsCopy = v8;
    peerPublishedStreams = self->_peerPublishedStreams;
  }

  [(NSMutableArray *)peerPublishedStreams addObject:streamsCopy];
}

- (unsigned)peerSubscribedStreamIdsAtIndex:(unint64_t)index
{
  p_peerSubscribedStreamIds = &self->_peerSubscribedStreamIds;
  count = self->_peerSubscribedStreamIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_peerSubscribedStreamIds->list[index];
}

- (unint64_t)lightweightParticipantIdListAtIndex:(unint64_t)index
{
  p_lightweightParticipantIdLists = &self->_lightweightParticipantIdLists;
  count = self->_lightweightParticipantIdLists.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_lightweightParticipantIdLists->list[index];
}

- (void)addJoinedParticipants:(id)participants
{
  participantsCopy = participants;
  joinedParticipants = self->_joinedParticipants;
  v8 = participantsCopy;
  if (!joinedParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_joinedParticipants;
    self->_joinedParticipants = v6;

    participantsCopy = v8;
    joinedParticipants = self->_joinedParticipants;
  }

  [(NSMutableArray *)joinedParticipants addObject:participantsCopy];
}

- (void)addLeftParticipants:(id)participants
{
  participantsCopy = participants;
  leftParticipants = self->_leftParticipants;
  v8 = participantsCopy;
  if (!leftParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_leftParticipants;
    self->_leftParticipants = v6;

    participantsCopy = v8;
    leftParticipants = self->_leftParticipants;
  }

  [(NSMutableArray *)leftParticipants addObject:participantsCopy];
}

- (void)addUpdatedParticipants:(id)participants
{
  participantsCopy = participants;
  updatedParticipants = self->_updatedParticipants;
  v8 = participantsCopy;
  if (!updatedParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_updatedParticipants;
    self->_updatedParticipants = v6;

    participantsCopy = v8;
    updatedParticipants = self->_updatedParticipants;
  }

  [(NSMutableArray *)updatedParticipants addObject:participantsCopy];
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
  v8.super_class = IDSQRProtoSessionInfoIndication;
  v4 = [(IDSQRProtoSessionInfoIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoSessionInfoIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v58 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_peerPublishedStreams count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peerPublishedStreams, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = self->_peerPublishedStreams;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v51;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"peer_published_streams"];
  }

  v11 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v11 forKey:@"peer_subscribed_stream_ids"];

  v12 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v12 forKey:@"lightweight_participant_id_list"];

  if ([(NSMutableArray *)self->_joinedParticipants count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_joinedParticipants, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = self->_joinedParticipants;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"joined_participants"];
  }

  if ([(NSMutableArray *)self->_leftParticipants count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_leftParticipants, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = self->_leftParticipants;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v42 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"left_participants"];
  }

  if ([(NSMutableArray *)self->_updatedParticipants count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_updatedParticipants, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = self->_updatedParticipants;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v38 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation4];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"updated_participants"];
  }

  has = self->_has;
  if (has)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [dictionary setObject:v35 forKey:@"txn_id"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_generationCounter];
    [dictionary setObject:v36 forKey:@"generation_counter"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_peerPublishedStreams;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v7);
  }

  if (self->_peerSubscribedStreamIds.count)
  {
    v10 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < self->_peerSubscribedStreamIds.count);
  }

  if (self->_lightweightParticipantIdLists.count)
  {
    v11 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      ++v11;
    }

    while (v11 < self->_lightweightParticipantIdLists.count);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = self->_joinedParticipants;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_leftParticipants;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self->_updatedParticipants;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v24);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(IDSQRProtoSessionInfoIndication *)self peerPublishedStreamsCount])
  {
    [toCopy clearPeerPublishedStreams];
    peerPublishedStreamsCount = [(IDSQRProtoSessionInfoIndication *)self peerPublishedStreamsCount];
    if (peerPublishedStreamsCount)
    {
      v5 = peerPublishedStreamsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSQRProtoSessionInfoIndication *)self peerPublishedStreamsAtIndex:i];
        [toCopy addPeerPublishedStreams:v7];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoIndication *)self peerSubscribedStreamIdsCount])
  {
    [toCopy clearPeerSubscribedStreamIds];
    peerSubscribedStreamIdsCount = [(IDSQRProtoSessionInfoIndication *)self peerSubscribedStreamIdsCount];
    if (peerSubscribedStreamIdsCount)
    {
      v9 = peerSubscribedStreamIdsCount;
      for (j = 0; j != v9; ++j)
      {
        [toCopy addPeerSubscribedStreamIds:{-[IDSQRProtoSessionInfoIndication peerSubscribedStreamIdsAtIndex:](self, "peerSubscribedStreamIdsAtIndex:", j)}];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoIndication *)self lightweightParticipantIdListsCount])
  {
    [toCopy clearLightweightParticipantIdLists];
    lightweightParticipantIdListsCount = [(IDSQRProtoSessionInfoIndication *)self lightweightParticipantIdListsCount];
    if (lightweightParticipantIdListsCount)
    {
      v12 = lightweightParticipantIdListsCount;
      for (k = 0; k != v12; ++k)
      {
        [toCopy addLightweightParticipantIdList:{-[IDSQRProtoSessionInfoIndication lightweightParticipantIdListAtIndex:](self, "lightweightParticipantIdListAtIndex:", k)}];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoIndication *)self joinedParticipantsCount])
  {
    [toCopy clearJoinedParticipants];
    joinedParticipantsCount = [(IDSQRProtoSessionInfoIndication *)self joinedParticipantsCount];
    if (joinedParticipantsCount)
    {
      v15 = joinedParticipantsCount;
      for (m = 0; m != v15; ++m)
      {
        v17 = [(IDSQRProtoSessionInfoIndication *)self joinedParticipantsAtIndex:m];
        [toCopy addJoinedParticipants:v17];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoIndication *)self leftParticipantsCount])
  {
    [toCopy clearLeftParticipants];
    leftParticipantsCount = [(IDSQRProtoSessionInfoIndication *)self leftParticipantsCount];
    if (leftParticipantsCount)
    {
      v19 = leftParticipantsCount;
      for (n = 0; n != v19; ++n)
      {
        v21 = [(IDSQRProtoSessionInfoIndication *)self leftParticipantsAtIndex:n];
        [toCopy addLeftParticipants:v21];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoIndication *)self updatedParticipantsCount])
  {
    [toCopy clearUpdatedParticipants];
    updatedParticipantsCount = [(IDSQRProtoSessionInfoIndication *)self updatedParticipantsCount];
    if (updatedParticipantsCount)
    {
      v23 = updatedParticipantsCount;
      for (ii = 0; ii != v23; ++ii)
      {
        v25 = [(IDSQRProtoSessionInfoIndication *)self updatedParticipantsAtIndex:ii];
        [toCopy addUpdatedParticipants:v25];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 7) = self->_txnId;
    *(toCopy + 104) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 16) = self->_generationCounter;
    *(toCopy + 104) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_peerPublishedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v44 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPeerPublishedStreams:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v8);
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_joinedParticipants;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * j) copyWithZone:zone];
        [v5 addJoinedParticipants:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_leftParticipants;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v36 + 1) + 8 * k) copyWithZone:zone];
        [v5 addLeftParticipants:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_updatedParticipants;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v32 + 1) + 8 * m) copyWithZone:{zone, v32}];
        [v5 addUpdatedParticipants:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v26);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 56) = self->_txnId;
    *(v5 + 104) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_generationCounter;
    *(v5 + 104) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  peerPublishedStreams = self->_peerPublishedStreams;
  if (peerPublishedStreams | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)peerPublishedStreams isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_21;
  }

  joinedParticipants = self->_joinedParticipants;
  if (joinedParticipants | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)joinedParticipants isEqual:?])
    {
      goto LABEL_21;
    }
  }

  leftParticipants = self->_leftParticipants;
  if (leftParticipants | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)leftParticipants isEqual:?])
    {
      goto LABEL_21;
    }
  }

  updatedParticipants = self->_updatedParticipants;
  if (updatedParticipants | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)updatedParticipants isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_txnId != *(equalCopy + 7))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 104))
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v9 = (*(equalCopy + 104) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 104) & 2) == 0 || self->_generationCounter != *(equalCopy + 16))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_peerPublishedStreams hash];
  v4 = PBRepeatedUInt32Hash();
  v5 = PBRepeatedUInt64Hash();
  v6 = [(NSMutableArray *)self->_joinedParticipants hash];
  v7 = [(NSMutableArray *)self->_leftParticipants hash];
  v8 = [(NSMutableArray *)self->_updatedParticipants hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_txnId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_generationCounter;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  v52 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = *(fromCopy + 11);
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSQRProtoSessionInfoIndication *)self addPeerPublishedStreams:*(*(&v44 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v7);
  }

  peerSubscribedStreamIdsCount = [fromCopy peerSubscribedStreamIdsCount];
  if (peerSubscribedStreamIdsCount)
  {
    v11 = peerSubscribedStreamIdsCount;
    for (j = 0; j != v11; ++j)
    {
      -[IDSQRProtoSessionInfoIndication addPeerSubscribedStreamIds:](self, "addPeerSubscribedStreamIds:", [fromCopy peerSubscribedStreamIdsAtIndex:j]);
    }
  }

  lightweightParticipantIdListsCount = [fromCopy lightweightParticipantIdListsCount];
  if (lightweightParticipantIdListsCount)
  {
    v14 = lightweightParticipantIdListsCount;
    for (k = 0; k != v14; ++k)
    {
      -[IDSQRProtoSessionInfoIndication addLightweightParticipantIdList:](self, "addLightweightParticipantIdList:", [fromCopy lightweightParticipantIdListAtIndex:k]);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = *(fromCopy + 9);
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (m = 0; m != v18; ++m)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(IDSQRProtoSessionInfoIndication *)self addJoinedParticipants:*(*(&v40 + 1) + 8 * m)];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v18);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = *(fromCopy + 10);
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (n = 0; n != v23; ++n)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(IDSQRProtoSessionInfoIndication *)self addLeftParticipants:*(*(&v36 + 1) + 8 * n)];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v23);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = *(fromCopy + 12);
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (ii = 0; ii != v28; ++ii)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(IDSQRProtoSessionInfoIndication *)self addUpdatedParticipants:*(*(&v32 + 1) + 8 * ii), v32];
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v28);
  }

  v31 = *(fromCopy + 104);
  if (v31)
  {
    self->_txnId = *(fromCopy + 7);
    *&self->_has |= 1u;
    v31 = *(fromCopy + 104);
  }

  if ((v31 & 2) != 0)
  {
    self->_generationCounter = *(fromCopy + 16);
    *&self->_has |= 2u;
  }
}

@end