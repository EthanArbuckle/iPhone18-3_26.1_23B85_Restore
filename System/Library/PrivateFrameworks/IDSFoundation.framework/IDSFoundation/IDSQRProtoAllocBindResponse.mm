@interface IDSQRProtoAllocBindResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)lightweightParticipantIdListAtIndex:(unint64_t)index;
- (unsigned)ackedStaleLinkIdsAtIndex:(unint64_t)index;
- (unsigned)peerSubscribedStreamIdsAtIndex:(unint64_t)index;
- (void)addActiveExperiments:(id)experiments;
- (void)addJoinedParticipants:(id)participants;
- (void)addLeftParticipants:(id)participants;
- (void)addMaterials:(id)materials;
- (void)addPeerPublishedStreams:(id)streams;
- (void)addQuicConnectionInfo:(id)info;
- (void)addUpdatedParticipants:(id)participants;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasGenerationCounter:(BOOL)counter;
- (void)setHasIsNewlyJoined:(BOOL)joined;
- (void)setHasLinkId:(BOOL)id;
- (void)setHasParticipantType:(BOOL)type;
- (void)setHasSessionStateCounter:(BOOL)counter;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoAllocBindResponse

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoAllocBindResponse;
  [(IDSQRProtoAllocBindResponse *)&v3 dealloc];
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

- (void)addQuicConnectionInfo:(id)info
{
  infoCopy = info;
  quicConnectionInfos = self->_quicConnectionInfos;
  v8 = infoCopy;
  if (!quicConnectionInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_quicConnectionInfos;
    self->_quicConnectionInfos = v6;

    infoCopy = v8;
    quicConnectionInfos = self->_quicConnectionInfos;
  }

  [(NSMutableArray *)quicConnectionInfos addObject:infoCopy];
}

- (void)setHasParticipantType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (void)setHasSessionStateCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addMaterials:(id)materials
{
  materialsCopy = materials;
  materials = self->_materials;
  v8 = materialsCopy;
  if (!materials)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_materials;
    self->_materials = v6;

    materialsCopy = v8;
    materials = self->_materials;
  }

  [(NSMutableArray *)materials addObject:materialsCopy];
}

- (unsigned)ackedStaleLinkIdsAtIndex:(unint64_t)index
{
  p_ackedStaleLinkIds = &self->_ackedStaleLinkIds;
  count = self->_ackedStaleLinkIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ackedStaleLinkIds->list[index];
}

- (void)addActiveExperiments:(id)experiments
{
  experimentsCopy = experiments;
  activeExperiments = self->_activeExperiments;
  v8 = experimentsCopy;
  if (!activeExperiments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activeExperiments;
    self->_activeExperiments = v6;

    experimentsCopy = v8;
    activeExperiments = self->_activeExperiments;
  }

  [(NSMutableArray *)activeExperiments addObject:experimentsCopy];
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

- (void)setHasIsNewlyJoined:(BOOL)joined
{
  if (joined)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindResponse;
  v4 = [(IDSQRProtoAllocBindResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoAllocBindResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v105 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [dictionary setObject:clientAddress forKey:@"client_address"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelId];
  [v4 setObject:v6 forKey:@"channel_id"];

  software = self->_software;
  if (software)
  {
    [v4 setObject:software forKey:@"software"];
  }

  if ([(NSMutableArray *)self->_peerPublishedStreams count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peerPublishedStreams, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v9 = self->_peerPublishedStreams;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v95;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v95 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v94 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"peer_published_streams"];
  }

  v15 = PBRepeatedUInt32NSArray();
  [v4 setObject:v15 forKey:@"peer_subscribed_stream_ids"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_linkId];
    [v4 setObject:v17 forKey:@"link_id"];

    has = self->_has;
  }

  if (has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelSettings];
    [v4 setObject:v18 forKey:@"channel_settings"];
  }

  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob)
  {
    [v4 setObject:reportingDataBlob forKey:@"reporting_data_blob"];
  }

  v20 = PBRepeatedUInt64NSArray();
  [v4 setObject:v20 forKey:@"lightweight_participant_id_list"];

  if ([(NSMutableArray *)self->_quicConnectionInfos count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_quicConnectionInfos, "count")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v22 = self->_quicConnectionInfos;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v90 objects:v103 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v91;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v91 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation2 = [*(*(&v90 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation2];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"quic_connection_info"];
  }

  v28 = self->_has;
  if ((v28 & 8) != 0)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_participantType];
    [v4 setObject:v68 forKey:@"participant_type"];

    v28 = self->_has;
    if ((v28 & 2) == 0)
    {
LABEL_31:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_31;
  }

  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_generationCounter];
  [v4 setObject:v69 forKey:@"generation_counter"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_32:
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [v4 setObject:v29 forKey:@"session_state_counter"];
  }

LABEL_33:
  if ([(NSMutableArray *)self->_materials count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_materials, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v31 = self->_materials;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v87;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v87 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation3 = [*(*(&v86 + 1) + 8 * k) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation3];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v33);
    }

    [v4 setObject:v30 forKey:@"materials"];
  }

  v37 = PBRepeatedUInt32NSArray();
  [v4 setObject:v37 forKey:@"acked_stale_link_ids"];

  if ([(NSMutableArray *)self->_activeExperiments count])
  {
    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeExperiments, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v39 = self->_activeExperiments;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v83;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v83 != v42)
          {
            objc_enumerationMutation(v39);
          }

          dictionaryRepresentation4 = [*(*(&v82 + 1) + 8 * m) dictionaryRepresentation];
          [v38 addObject:dictionaryRepresentation4];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v41);
    }

    [v4 setObject:v38 forKey:@"active_experiments"];
  }

  if ([(NSMutableArray *)self->_joinedParticipants count])
  {
    v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_joinedParticipants, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v46 = self->_joinedParticipants;
    v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v79;
      do
      {
        for (n = 0; n != v48; ++n)
        {
          if (*v79 != v49)
          {
            objc_enumerationMutation(v46);
          }

          dictionaryRepresentation5 = [*(*(&v78 + 1) + 8 * n) dictionaryRepresentation];
          [v45 addObject:dictionaryRepresentation5];
        }

        v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v78 objects:v100 count:16];
      }

      while (v48);
    }

    [v4 setObject:v45 forKey:@"joined_participants"];
  }

  if ([(NSMutableArray *)self->_leftParticipants count])
  {
    v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_leftParticipants, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v53 = self->_leftParticipants;
    v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v75;
      do
      {
        for (ii = 0; ii != v55; ++ii)
        {
          if (*v75 != v56)
          {
            objc_enumerationMutation(v53);
          }

          dictionaryRepresentation6 = [*(*(&v74 + 1) + 8 * ii) dictionaryRepresentation];
          [v52 addObject:dictionaryRepresentation6];
        }

        v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v74 objects:v99 count:16];
      }

      while (v55);
    }

    [v4 setObject:v52 forKey:@"left_participants"];
  }

  if ([(NSMutableArray *)self->_updatedParticipants count])
  {
    v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_updatedParticipants, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v60 = self->_updatedParticipants;
    v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v70 objects:v98 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v71;
      do
      {
        for (jj = 0; jj != v62; ++jj)
        {
          if (*v71 != v63)
          {
            objc_enumerationMutation(v60);
          }

          dictionaryRepresentation7 = [*(*(&v70 + 1) + 8 * jj) dictionaryRepresentation];
          [v59 addObject:dictionaryRepresentation7];
        }

        v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v70 objects:v98 count:16];
      }

      while (v62);
    }

    [v4 setObject:v59 forKey:@"updated_participants"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNewlyJoined];
    [v4 setObject:v66 forKey:@"is_newly_joined"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v81 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_clientAddress)
  {
    sub_1A7E1DA08();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  PBDataWriterWriteUint32Field();
  if (self->_software)
  {
    PBDataWriterWriteStringField();
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = self->_peerPublishedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v71;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v71 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v8);
  }

  if (self->_peerSubscribedStreamIds.count)
  {
    v11 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v11;
    }

    while (v11 < self->_peerSubscribedStreamIds.count);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_reportingDataBlob)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_lightweightParticipantIdLists.count)
  {
    v13 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      ++v13;
    }

    while (v13 < self->_lightweightParticipantIdLists.count);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v14 = self->_quicConnectionInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v67;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v16);
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = self->_materials;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v63;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v63 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v21);
  }

  v24 = self->_has;
  if ((v24 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v24 = self->_has;
  }

  if ((v24 & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_ackedStaleLinkIds.count)
  {
    v25 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v25;
    }

    while (v25 < self->_ackedStaleLinkIds.count);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = self->_activeExperiments;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v58 objects:v77 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v58 objects:v77 count:16];
    }

    while (v28);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v31 = self->_joinedParticipants;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v54 objects:v76 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v55;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(v31);
        }

        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v54 objects:v76 count:16];
    }

    while (v33);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = self->_leftParticipants;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v50 objects:v75 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    do
    {
      for (ii = 0; ii != v38; ++ii)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v36);
        }

        PBDataWriterWriteSubmessage();
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v50 objects:v75 count:16];
    }

    while (v38);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v41 = self->_updatedParticipants;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v46 objects:v74 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v47;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v47 != v44)
        {
          objc_enumerationMutation(v41);
        }

        PBDataWriterWriteSubmessage();
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v46 objects:v74 count:16];
    }

    while (v43);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setClientAddress:self->_clientAddress];
  *(toCopy + 22) = self->_channelId;
  if (self->_software)
  {
    [toCopy setSoftware:?];
  }

  if ([(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsCount])
  {
    [toCopy clearPeerPublishedStreams];
    peerPublishedStreamsCount = [(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsCount];
    if (peerPublishedStreamsCount)
    {
      v5 = peerPublishedStreamsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsAtIndex:i];
        [toCopy addPeerPublishedStreams:v7];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self peerSubscribedStreamIdsCount])
  {
    [toCopy clearPeerSubscribedStreamIds];
    peerSubscribedStreamIdsCount = [(IDSQRProtoAllocBindResponse *)self peerSubscribedStreamIdsCount];
    if (peerSubscribedStreamIdsCount)
    {
      v9 = peerSubscribedStreamIdsCount;
      for (j = 0; j != v9; ++j)
      {
        [toCopy addPeerSubscribedStreamIds:{-[IDSQRProtoAllocBindResponse peerSubscribedStreamIdsAtIndex:](self, "peerSubscribedStreamIdsAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 32) = self->_linkId;
    *(toCopy + 204) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 23) = self->_channelSettings;
    *(toCopy + 204) |= 1u;
  }

  if (self->_reportingDataBlob)
  {
    [toCopy setReportingDataBlob:?];
  }

  if ([(IDSQRProtoAllocBindResponse *)self lightweightParticipantIdListsCount])
  {
    [toCopy clearLightweightParticipantIdLists];
    lightweightParticipantIdListsCount = [(IDSQRProtoAllocBindResponse *)self lightweightParticipantIdListsCount];
    if (lightweightParticipantIdListsCount)
    {
      v13 = lightweightParticipantIdListsCount;
      for (k = 0; k != v13; ++k)
      {
        [toCopy addLightweightParticipantIdList:{-[IDSQRProtoAllocBindResponse lightweightParticipantIdListAtIndex:](self, "lightweightParticipantIdListAtIndex:", k)}];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self quicConnectionInfosCount])
  {
    [toCopy clearQuicConnectionInfos];
    quicConnectionInfosCount = [(IDSQRProtoAllocBindResponse *)self quicConnectionInfosCount];
    if (quicConnectionInfosCount)
    {
      v16 = quicConnectionInfosCount;
      for (m = 0; m != v16; ++m)
      {
        v18 = [(IDSQRProtoAllocBindResponse *)self quicConnectionInfoAtIndex:m];
        [toCopy addQuicConnectionInfo:v18];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 36) = self->_participantType;
    *(toCopy + 204) |= 8u;
  }

  if ([(IDSQRProtoAllocBindResponse *)self materialsCount])
  {
    [toCopy clearMaterials];
    materialsCount = [(IDSQRProtoAllocBindResponse *)self materialsCount];
    if (materialsCount)
    {
      v20 = materialsCount;
      for (n = 0; n != v20; ++n)
      {
        v22 = [(IDSQRProtoAllocBindResponse *)self materialsAtIndex:n];
        [toCopy addMaterials:v22];
      }
    }
  }

  v23 = self->_has;
  if ((v23 & 2) != 0)
  {
    *(toCopy + 26) = self->_generationCounter;
    *(toCopy + 204) |= 2u;
    v23 = self->_has;
  }

  if ((v23 & 0x10) != 0)
  {
    *(toCopy + 44) = self->_sessionStateCounter;
    *(toCopy + 204) |= 0x10u;
  }

  if ([(IDSQRProtoAllocBindResponse *)self ackedStaleLinkIdsCount])
  {
    [toCopy clearAckedStaleLinkIds];
    ackedStaleLinkIdsCount = [(IDSQRProtoAllocBindResponse *)self ackedStaleLinkIdsCount];
    if (ackedStaleLinkIdsCount)
    {
      v25 = ackedStaleLinkIdsCount;
      for (ii = 0; ii != v25; ++ii)
      {
        [toCopy addAckedStaleLinkIds:{-[IDSQRProtoAllocBindResponse ackedStaleLinkIdsAtIndex:](self, "ackedStaleLinkIdsAtIndex:", ii)}];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self activeExperimentsCount])
  {
    [toCopy clearActiveExperiments];
    activeExperimentsCount = [(IDSQRProtoAllocBindResponse *)self activeExperimentsCount];
    if (activeExperimentsCount)
    {
      v28 = activeExperimentsCount;
      for (jj = 0; jj != v28; ++jj)
      {
        v30 = [(IDSQRProtoAllocBindResponse *)self activeExperimentsAtIndex:jj];
        [toCopy addActiveExperiments:v30];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self joinedParticipantsCount])
  {
    [toCopy clearJoinedParticipants];
    joinedParticipantsCount = [(IDSQRProtoAllocBindResponse *)self joinedParticipantsCount];
    if (joinedParticipantsCount)
    {
      v32 = joinedParticipantsCount;
      for (kk = 0; kk != v32; ++kk)
      {
        v34 = [(IDSQRProtoAllocBindResponse *)self joinedParticipantsAtIndex:kk];
        [toCopy addJoinedParticipants:v34];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self leftParticipantsCount])
  {
    [toCopy clearLeftParticipants];
    leftParticipantsCount = [(IDSQRProtoAllocBindResponse *)self leftParticipantsCount];
    if (leftParticipantsCount)
    {
      v36 = leftParticipantsCount;
      for (mm = 0; mm != v36; ++mm)
      {
        v38 = [(IDSQRProtoAllocBindResponse *)self leftParticipantsAtIndex:mm];
        [toCopy addLeftParticipants:v38];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self updatedParticipantsCount])
  {
    [toCopy clearUpdatedParticipants];
    updatedParticipantsCount = [(IDSQRProtoAllocBindResponse *)self updatedParticipantsCount];
    if (updatedParticipantsCount)
    {
      v40 = updatedParticipantsCount;
      for (nn = 0; nn != v40; ++nn)
      {
        v42 = [(IDSQRProtoAllocBindResponse *)self updatedParticipantsAtIndex:nn];
        [toCopy addUpdatedParticipants:v42];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 200) = self->_isNewlyJoined;
    *(toCopy + 204) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientAddress copyWithZone:zone];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  *(v5 + 88) = self->_channelId;
  v8 = [(NSString *)self->_software copyWithZone:zone];
  v9 = *(v5 + 184);
  *(v5 + 184) = v8;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = self->_peerPublishedStreams;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v82;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v82 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v81 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPeerPublishedStreams:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v12);
  }

  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 128) = self->_linkId;
    *(v5 + 204) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 92) = self->_channelSettings;
    *(v5 + 204) |= 1u;
  }

  v17 = [(NSData *)self->_reportingDataBlob copyWithZone:zone];
  v18 = *(v5 + 168);
  *(v5 + 168) = v17;

  PBRepeatedUInt64Copy();
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v19 = self->_quicConnectionInfos;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v78;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v78 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v77 + 1) + 8 * j) copyWithZone:zone];
        [v5 addQuicConnectionInfo:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 144) = self->_participantType;
    *(v5 + 204) |= 8u;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v25 = self->_materials;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v74;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v74 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v73 + 1) + 8 * k) copyWithZone:zone];
        [v5 addMaterials:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v27);
  }

  v31 = self->_has;
  if ((v31 & 2) != 0)
  {
    *(v5 + 104) = self->_generationCounter;
    *(v5 + 204) |= 2u;
    v31 = self->_has;
  }

  if ((v31 & 0x10) != 0)
  {
    *(v5 + 176) = self->_sessionStateCounter;
    *(v5 + 204) |= 0x10u;
  }

  PBRepeatedUInt32Copy();
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v32 = self->_activeExperiments;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v70;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v70 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v69 + 1) + 8 * m) copyWithZone:zone];
        [v5 addActiveExperiments:v37];
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v69 objects:v88 count:16];
    }

    while (v34);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v38 = self->_joinedParticipants;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v65 objects:v87 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v66;
    do
    {
      for (n = 0; n != v40; ++n)
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v65 + 1) + 8 * n) copyWithZone:zone];
        [v5 addJoinedParticipants:v43];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v65 objects:v87 count:16];
    }

    while (v40);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v44 = self->_leftParticipants;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v62;
    do
    {
      for (ii = 0; ii != v46; ++ii)
      {
        if (*v62 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v61 + 1) + 8 * ii) copyWithZone:zone];
        [v5 addLeftParticipants:v49];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v61 objects:v86 count:16];
    }

    while (v46);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v50 = self->_updatedParticipants;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v57 objects:v85 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v58;
    do
    {
      for (jj = 0; jj != v52; ++jj)
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [*(*(&v57 + 1) + 8 * jj) copyWithZone:{zone, v57}];
        [v5 addUpdatedParticipants:v55];
      }

      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v57 objects:v85 count:16];
    }

    while (v52);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 200) = self->_isNewlyJoined;
    *(v5 + 204) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(equalCopy + 12))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_55;
    }
  }

  if (self->_channelId != *(equalCopy + 22))
  {
    goto LABEL_55;
  }

  software = self->_software;
  if (software | *(equalCopy + 23))
  {
    if (![(NSString *)software isEqual:?])
    {
      goto LABEL_55;
    }
  }

  peerPublishedStreams = self->_peerPublishedStreams;
  if (peerPublishedStreams | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)peerPublishedStreams isEqual:?])
    {
      goto LABEL_55;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 204) & 4) == 0 || self->_linkId != *(equalCopy + 32))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 204) & 4) != 0)
  {
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 204) & 1) == 0 || self->_channelSettings != *(equalCopy + 23))
    {
      goto LABEL_55;
    }
  }

  else if (*(equalCopy + 204))
  {
    goto LABEL_55;
  }

  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob | *(equalCopy + 21) && ![(NSData *)reportingDataBlob isEqual:?])
  {
    goto LABEL_55;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_55;
  }

  quicConnectionInfos = self->_quicConnectionInfos;
  if (quicConnectionInfos | *(equalCopy + 20))
  {
    if (![(NSMutableArray *)quicConnectionInfos isEqual:?])
    {
      goto LABEL_55;
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 204) & 8) == 0 || self->_participantType != *(equalCopy + 36))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 204) & 8) != 0)
  {
    goto LABEL_55;
  }

  materials = self->_materials;
  if (materials | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)materials isEqual:?])
    {
      goto LABEL_55;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 204) & 2) == 0 || self->_generationCounter != *(equalCopy + 26))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 204) & 2) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 204) & 0x10) == 0 || self->_sessionStateCounter != *(equalCopy + 44))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 204) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_55;
  }

  activeExperiments = self->_activeExperiments;
  if (activeExperiments | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)activeExperiments isEqual:?])
    {
      goto LABEL_55;
    }
  }

  joinedParticipants = self->_joinedParticipants;
  if (joinedParticipants | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)joinedParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  leftParticipants = self->_leftParticipants;
  if (leftParticipants | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)leftParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  updatedParticipants = self->_updatedParticipants;
  if (updatedParticipants | *(equalCopy + 24))
  {
    if (![(NSMutableArray *)updatedParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 204) & 0x20) != 0)
    {
      if (self->_isNewlyJoined)
      {
        if ((*(equalCopy + 200) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (*(equalCopy + 200))
      {
        goto LABEL_55;
      }

      v16 = 1;
      goto LABEL_56;
    }

LABEL_55:
    v16 = 0;
    goto LABEL_56;
  }

  v16 = (*(equalCopy + 204) & 0x20) == 0;
LABEL_56:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientAddress hash];
  channelId = self->_channelId;
  v25 = v3;
  v23 = [(NSString *)self->_software hash];
  v22 = [(NSMutableArray *)self->_peerPublishedStreams hash];
  v21 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v20 = 2654435761 * self->_linkId;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v19 = 2654435761 * self->_channelSettings;
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v18 = [(NSData *)self->_reportingDataBlob hash];
  v17 = PBRepeatedUInt64Hash();
  v15 = [(NSMutableArray *)self->_quicConnectionInfos hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_participantType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_materials hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_generationCounter;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_11:
      v7 = 2654435761 * self->_sessionStateCounter;
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:
  v8 = PBRepeatedUInt32Hash();
  v9 = [(NSMutableArray *)self->_activeExperiments hash];
  v10 = [(NSMutableArray *)self->_joinedParticipants hash];
  v11 = [(NSMutableArray *)self->_leftParticipants hash];
  v12 = [(NSMutableArray *)self->_updatedParticipants hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v13 = 2654435761 * self->_isNewlyJoined;
  }

  else
  {
    v13 = 0;
  }

  return (2654435761 * channelId) ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v86 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 12))
  {
    [(IDSQRProtoAllocBindResponse *)self setClientAddress:?];
  }

  self->_channelId = *(fromCopy + 22);
  if (*(fromCopy + 23))
  {
    [(IDSQRProtoAllocBindResponse *)self setSoftware:?];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v5 = *(fromCopy + 19);
  v6 = [v5 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v76;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSQRProtoAllocBindResponse *)self addPeerPublishedStreams:*(*(&v75 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v7);
  }

  peerSubscribedStreamIdsCount = [fromCopy peerSubscribedStreamIdsCount];
  if (peerSubscribedStreamIdsCount)
  {
    v11 = peerSubscribedStreamIdsCount;
    for (j = 0; j != v11; ++j)
    {
      -[IDSQRProtoAllocBindResponse addPeerSubscribedStreamIds:](self, "addPeerSubscribedStreamIds:", [fromCopy peerSubscribedStreamIdsAtIndex:j]);
    }
  }

  v13 = *(fromCopy + 204);
  if ((v13 & 4) != 0)
  {
    self->_linkId = *(fromCopy + 32);
    *&self->_has |= 4u;
    v13 = *(fromCopy + 204);
  }

  if (v13)
  {
    self->_channelSettings = *(fromCopy + 23);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 21))
  {
    [(IDSQRProtoAllocBindResponse *)self setReportingDataBlob:?];
  }

  lightweightParticipantIdListsCount = [fromCopy lightweightParticipantIdListsCount];
  if (lightweightParticipantIdListsCount)
  {
    v15 = lightweightParticipantIdListsCount;
    for (k = 0; k != v15; ++k)
    {
      -[IDSQRProtoAllocBindResponse addLightweightParticipantIdList:](self, "addLightweightParticipantIdList:", [fromCopy lightweightParticipantIdListAtIndex:k]);
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = *(fromCopy + 20);
  v18 = [v17 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v72;
    do
    {
      for (m = 0; m != v19; ++m)
      {
        if (*v72 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(IDSQRProtoAllocBindResponse *)self addQuicConnectionInfo:*(*(&v71 + 1) + 8 * m)];
      }

      v19 = [v17 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v19);
  }

  if ((*(fromCopy + 204) & 8) != 0)
  {
    self->_participantType = *(fromCopy + 36);
    *&self->_has |= 8u;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v22 = *(fromCopy + 17);
  v23 = [v22 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v68;
    do
    {
      for (n = 0; n != v24; ++n)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(IDSQRProtoAllocBindResponse *)self addMaterials:*(*(&v67 + 1) + 8 * n)];
      }

      v24 = [v22 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v24);
  }

  v27 = *(fromCopy + 204);
  if ((v27 & 2) != 0)
  {
    self->_generationCounter = *(fromCopy + 26);
    *&self->_has |= 2u;
    v27 = *(fromCopy + 204);
  }

  if ((v27 & 0x10) != 0)
  {
    self->_sessionStateCounter = *(fromCopy + 44);
    *&self->_has |= 0x10u;
  }

  ackedStaleLinkIdsCount = [fromCopy ackedStaleLinkIdsCount];
  if (ackedStaleLinkIdsCount)
  {
    v29 = ackedStaleLinkIdsCount;
    for (ii = 0; ii != v29; ++ii)
    {
      -[IDSQRProtoAllocBindResponse addAckedStaleLinkIds:](self, "addAckedStaleLinkIds:", [fromCopy ackedStaleLinkIdsAtIndex:ii]);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = *(fromCopy + 10);
  v32 = [v31 countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v64;
    do
    {
      for (jj = 0; jj != v33; ++jj)
      {
        if (*v64 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(IDSQRProtoAllocBindResponse *)self addActiveExperiments:*(*(&v63 + 1) + 8 * jj)];
      }

      v33 = [v31 countByEnumeratingWithState:&v63 objects:v82 count:16];
    }

    while (v33);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = *(fromCopy + 14);
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    do
    {
      for (kk = 0; kk != v38; ++kk)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(IDSQRProtoAllocBindResponse *)self addJoinedParticipants:*(*(&v59 + 1) + 8 * kk)];
      }

      v38 = [v36 countByEnumeratingWithState:&v59 objects:v81 count:16];
    }

    while (v38);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v41 = *(fromCopy + 15);
  v42 = [v41 countByEnumeratingWithState:&v55 objects:v80 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v56;
    do
    {
      for (mm = 0; mm != v43; ++mm)
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(IDSQRProtoAllocBindResponse *)self addLeftParticipants:*(*(&v55 + 1) + 8 * mm)];
      }

      v43 = [v41 countByEnumeratingWithState:&v55 objects:v80 count:16];
    }

    while (v43);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = *(fromCopy + 24);
  v47 = [v46 countByEnumeratingWithState:&v51 objects:v79 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v52;
    do
    {
      for (nn = 0; nn != v48; ++nn)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(IDSQRProtoAllocBindResponse *)self addUpdatedParticipants:*(*(&v51 + 1) + 8 * nn), v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v51 objects:v79 count:16];
    }

    while (v48);
  }

  if ((*(fromCopy + 204) & 0x20) != 0)
  {
    self->_isNewlyJoined = *(fromCopy + 200);
    *&self->_has |= 0x20u;
  }
}

@end