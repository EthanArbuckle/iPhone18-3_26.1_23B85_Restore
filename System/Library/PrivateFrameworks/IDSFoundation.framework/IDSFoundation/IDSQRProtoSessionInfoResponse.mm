@interface IDSQRProtoSessionInfoResponse
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

@implementation IDSQRProtoSessionInfoResponse

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoSessionInfoResponse;
  [(IDSQRProtoSessionInfoResponse *)&v3 dealloc];
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
  v8.super_class = IDSQRProtoSessionInfoResponse;
  v4 = [(IDSQRProtoSessionInfoResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoSessionInfoResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_peerPublishedStreams count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peerPublishedStreams, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = self->_peerPublishedStreams;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"peer_published_streams"];
  }

  v11 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v11 forKey:@"peer_subscribed_stream_ids"];

  v12 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v12 forKey:@"lightweight_participant_id_list"];

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_commandFlags];
    [dictionary setObject:v13 forKey:@"command_flags"];
  }

  if ([(NSMutableArray *)self->_joinedParticipants count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_joinedParticipants, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = self->_joinedParticipants;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"joined_participants"];
  }

  if ([(NSMutableArray *)self->_leftParticipants count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_leftParticipants, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = self->_leftParticipants;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"left_participants"];
  }

  if ([(NSMutableArray *)self->_updatedParticipants count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_updatedParticipants, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = self->_updatedParticipants;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation4 = [*(*(&v37 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:dictionaryRepresentation4];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v31);
    }

    [dictionary setObject:v28 forKey:@"updated_participants"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_generationCounter];
    [dictionary setObject:v35 forKey:@"generation_counter"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = self->_peerPublishedStreams;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
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

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = self->_joinedParticipants;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = self->_leftParticipants;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      v21 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = self->_updatedParticipants;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      v26 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteSubmessage();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(IDSQRProtoSessionInfoResponse *)self peerPublishedStreamsCount])
  {
    [toCopy clearPeerPublishedStreams];
    peerPublishedStreamsCount = [(IDSQRProtoSessionInfoResponse *)self peerPublishedStreamsCount];
    if (peerPublishedStreamsCount)
    {
      v5 = peerPublishedStreamsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSQRProtoSessionInfoResponse *)self peerPublishedStreamsAtIndex:i];
        [toCopy addPeerPublishedStreams:v7];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoResponse *)self peerSubscribedStreamIdsCount])
  {
    [toCopy clearPeerSubscribedStreamIds];
    peerSubscribedStreamIdsCount = [(IDSQRProtoSessionInfoResponse *)self peerSubscribedStreamIdsCount];
    if (peerSubscribedStreamIdsCount)
    {
      v9 = peerSubscribedStreamIdsCount;
      for (j = 0; j != v9; ++j)
      {
        [toCopy addPeerSubscribedStreamIds:{-[IDSQRProtoSessionInfoResponse peerSubscribedStreamIdsAtIndex:](self, "peerSubscribedStreamIdsAtIndex:", j)}];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoResponse *)self lightweightParticipantIdListsCount])
  {
    [toCopy clearLightweightParticipantIdLists];
    lightweightParticipantIdListsCount = [(IDSQRProtoSessionInfoResponse *)self lightweightParticipantIdListsCount];
    if (lightweightParticipantIdListsCount)
    {
      v12 = lightweightParticipantIdListsCount;
      for (k = 0; k != v12; ++k)
      {
        [toCopy addLightweightParticipantIdList:{-[IDSQRProtoSessionInfoResponse lightweightParticipantIdListAtIndex:](self, "lightweightParticipantIdListAtIndex:", k)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 14) = self->_commandFlags;
    *(toCopy + 96) |= 1u;
  }

  if ([(IDSQRProtoSessionInfoResponse *)self joinedParticipantsCount])
  {
    [toCopy clearJoinedParticipants];
    joinedParticipantsCount = [(IDSQRProtoSessionInfoResponse *)self joinedParticipantsCount];
    if (joinedParticipantsCount)
    {
      v15 = joinedParticipantsCount;
      for (m = 0; m != v15; ++m)
      {
        v17 = [(IDSQRProtoSessionInfoResponse *)self joinedParticipantsAtIndex:m];
        [toCopy addJoinedParticipants:v17];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoResponse *)self leftParticipantsCount])
  {
    [toCopy clearLeftParticipants];
    leftParticipantsCount = [(IDSQRProtoSessionInfoResponse *)self leftParticipantsCount];
    if (leftParticipantsCount)
    {
      v19 = leftParticipantsCount;
      for (n = 0; n != v19; ++n)
      {
        v21 = [(IDSQRProtoSessionInfoResponse *)self leftParticipantsAtIndex:n];
        [toCopy addLeftParticipants:v21];
      }
    }
  }

  if ([(IDSQRProtoSessionInfoResponse *)self updatedParticipantsCount])
  {
    [toCopy clearUpdatedParticipants];
    updatedParticipantsCount = [(IDSQRProtoSessionInfoResponse *)self updatedParticipantsCount];
    if (updatedParticipantsCount)
    {
      v23 = updatedParticipantsCount;
      for (ii = 0; ii != v23; ++ii)
      {
        v25 = [(IDSQRProtoSessionInfoResponse *)self updatedParticipantsAtIndex:ii];
        [toCopy addUpdatedParticipants:v25];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 15) = self->_generationCounter;
    *(toCopy + 96) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_peerPublishedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v43 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addPeerPublishedStreams:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt64Copy();
  if (*&self->_has)
  {
    *(v5 + 56) = self->_commandFlags;
    *(v5 + 96) |= 1u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = self->_joinedParticipants;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v39 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addJoinedParticipants:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_leftParticipants;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v35 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addLeftParticipants:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_updatedParticipants;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v31 + 1) + 8 * v28) copyWithZone:{zone, v31}];
        [v5 addUpdatedParticipants:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v26);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 60) = self->_generationCounter;
    *(v5 + 96) |= 2u;
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
  if (peerPublishedStreams | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)peerPublishedStreams isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_commandFlags != *(equalCopy + 14))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 96))
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  joinedParticipants = self->_joinedParticipants;
  if (joinedParticipants | *(equalCopy + 8) && ![(NSMutableArray *)joinedParticipants isEqual:?])
  {
    goto LABEL_21;
  }

  leftParticipants = self->_leftParticipants;
  if (leftParticipants | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)leftParticipants isEqual:?])
    {
      goto LABEL_21;
    }
  }

  updatedParticipants = self->_updatedParticipants;
  if (updatedParticipants | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)updatedParticipants isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v9 = (*(equalCopy + 96) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_generationCounter != *(equalCopy + 15))
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
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_commandFlags;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_joinedParticipants hash];
  v8 = [(NSMutableArray *)self->_leftParticipants hash];
  v9 = [(NSMutableArray *)self->_updatedParticipants hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_generationCounter;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  v51 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = *(fromCopy + 10);
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSQRProtoSessionInfoResponse *)self addPeerPublishedStreams:*(*(&v43 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v7);
  }

  peerSubscribedStreamIdsCount = [fromCopy peerSubscribedStreamIdsCount];
  if (peerSubscribedStreamIdsCount)
  {
    v11 = peerSubscribedStreamIdsCount;
    for (i = 0; i != v11; ++i)
    {
      -[IDSQRProtoSessionInfoResponse addPeerSubscribedStreamIds:](self, "addPeerSubscribedStreamIds:", [fromCopy peerSubscribedStreamIdsAtIndex:i]);
    }
  }

  lightweightParticipantIdListsCount = [fromCopy lightweightParticipantIdListsCount];
  if (lightweightParticipantIdListsCount)
  {
    v14 = lightweightParticipantIdListsCount;
    for (j = 0; j != v14; ++j)
    {
      -[IDSQRProtoSessionInfoResponse addLightweightParticipantIdList:](self, "addLightweightParticipantIdList:", [fromCopy lightweightParticipantIdListAtIndex:j]);
    }
  }

  if (*(fromCopy + 96))
  {
    self->_commandFlags = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = *(fromCopy + 8);
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(IDSQRProtoSessionInfoResponse *)self addJoinedParticipants:*(*(&v39 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = *(fromCopy + 9);
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(IDSQRProtoSessionInfoResponse *)self addLeftParticipants:*(*(&v35 + 1) + 8 * v25++)];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v23);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = *(fromCopy + 11);
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(IDSQRProtoSessionInfoResponse *)self addUpdatedParticipants:*(*(&v31 + 1) + 8 * v30++), v31];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v28);
  }

  if ((*(fromCopy + 96) & 2) != 0)
  {
    self->_generationCounter = *(fromCopy + 15);
    *&self->_has |= 2u;
  }
}

@end