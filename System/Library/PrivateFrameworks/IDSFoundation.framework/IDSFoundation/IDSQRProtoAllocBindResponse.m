@interface IDSQRProtoAllocBindResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)lightweightParticipantIdListAtIndex:(unint64_t)a3;
- (unsigned)ackedStaleLinkIdsAtIndex:(unint64_t)a3;
- (unsigned)peerSubscribedStreamIdsAtIndex:(unint64_t)a3;
- (void)addActiveExperiments:(id)a3;
- (void)addJoinedParticipants:(id)a3;
- (void)addLeftParticipants:(id)a3;
- (void)addMaterials:(id)a3;
- (void)addPeerPublishedStreams:(id)a3;
- (void)addQuicConnectionInfo:(id)a3;
- (void)addUpdatedParticipants:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasGenerationCounter:(BOOL)a3;
- (void)setHasIsNewlyJoined:(BOOL)a3;
- (void)setHasLinkId:(BOOL)a3;
- (void)setHasParticipantType:(BOOL)a3;
- (void)setHasSessionStateCounter:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)addPeerPublishedStreams:(id)a3
{
  v4 = a3;
  peerPublishedStreams = self->_peerPublishedStreams;
  v8 = v4;
  if (!peerPublishedStreams)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_peerPublishedStreams;
    self->_peerPublishedStreams = v6;

    v4 = v8;
    peerPublishedStreams = self->_peerPublishedStreams;
  }

  [(NSMutableArray *)peerPublishedStreams addObject:v4];
}

- (unsigned)peerSubscribedStreamIdsAtIndex:(unint64_t)a3
{
  p_peerSubscribedStreamIds = &self->_peerSubscribedStreamIds;
  count = self->_peerSubscribedStreamIds.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_peerSubscribedStreamIds->list[a3];
}

- (void)setHasLinkId:(BOOL)a3
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

- (unint64_t)lightweightParticipantIdListAtIndex:(unint64_t)a3
{
  p_lightweightParticipantIdLists = &self->_lightweightParticipantIdLists;
  count = self->_lightweightParticipantIdLists.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_lightweightParticipantIdLists->list[a3];
}

- (void)addQuicConnectionInfo:(id)a3
{
  v4 = a3;
  quicConnectionInfos = self->_quicConnectionInfos;
  v8 = v4;
  if (!quicConnectionInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_quicConnectionInfos;
    self->_quicConnectionInfos = v6;

    v4 = v8;
    quicConnectionInfos = self->_quicConnectionInfos;
  }

  [(NSMutableArray *)quicConnectionInfos addObject:v4];
}

- (void)setHasParticipantType:(BOOL)a3
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

- (void)setHasGenerationCounter:(BOOL)a3
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

- (void)setHasSessionStateCounter:(BOOL)a3
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

- (void)addMaterials:(id)a3
{
  v4 = a3;
  materials = self->_materials;
  v8 = v4;
  if (!materials)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_materials;
    self->_materials = v6;

    v4 = v8;
    materials = self->_materials;
  }

  [(NSMutableArray *)materials addObject:v4];
}

- (unsigned)ackedStaleLinkIdsAtIndex:(unint64_t)a3
{
  p_ackedStaleLinkIds = &self->_ackedStaleLinkIds;
  count = self->_ackedStaleLinkIds.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ackedStaleLinkIds->list[a3];
}

- (void)addActiveExperiments:(id)a3
{
  v4 = a3;
  activeExperiments = self->_activeExperiments;
  v8 = v4;
  if (!activeExperiments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activeExperiments;
    self->_activeExperiments = v6;

    v4 = v8;
    activeExperiments = self->_activeExperiments;
  }

  [(NSMutableArray *)activeExperiments addObject:v4];
}

- (void)addJoinedParticipants:(id)a3
{
  v4 = a3;
  joinedParticipants = self->_joinedParticipants;
  v8 = v4;
  if (!joinedParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_joinedParticipants;
    self->_joinedParticipants = v6;

    v4 = v8;
    joinedParticipants = self->_joinedParticipants;
  }

  [(NSMutableArray *)joinedParticipants addObject:v4];
}

- (void)addLeftParticipants:(id)a3
{
  v4 = a3;
  leftParticipants = self->_leftParticipants;
  v8 = v4;
  if (!leftParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_leftParticipants;
    self->_leftParticipants = v6;

    v4 = v8;
    leftParticipants = self->_leftParticipants;
  }

  [(NSMutableArray *)leftParticipants addObject:v4];
}

- (void)addUpdatedParticipants:(id)a3
{
  v4 = a3;
  updatedParticipants = self->_updatedParticipants;
  v8 = v4;
  if (!updatedParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_updatedParticipants;
    self->_updatedParticipants = v6;

    v4 = v8;
    updatedParticipants = self->_updatedParticipants;
  }

  [(NSMutableArray *)updatedParticipants addObject:v4];
}

- (void)setHasIsNewlyJoined:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindResponse;
  v4 = [(IDSQRProtoAllocBindResponse *)&v8 description];
  v5 = [(IDSQRProtoAllocBindResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v105 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v3 setObject:clientAddress forKey:@"client_address"];
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

          v14 = [*(*(&v94 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
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

          v27 = [*(*(&v90 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
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

          v36 = [*(*(&v86 + 1) + 8 * k) dictionaryRepresentation];
          [v30 addObject:v36];
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

          v44 = [*(*(&v82 + 1) + 8 * m) dictionaryRepresentation];
          [v38 addObject:v44];
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

          v51 = [*(*(&v78 + 1) + 8 * n) dictionaryRepresentation];
          [v45 addObject:v51];
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

          v58 = [*(*(&v74 + 1) + 8 * ii) dictionaryRepresentation];
          [v52 addObject:v58];
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

          v65 = [*(*(&v70 + 1) + 8 * jj) dictionaryRepresentation];
          [v59 addObject:v65];
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

- (void)writeTo:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_clientAddress)
  {
    sub_1A7E1DA08();
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v43 = a3;
  [v43 setClientAddress:self->_clientAddress];
  *(v43 + 22) = self->_channelId;
  if (self->_software)
  {
    [v43 setSoftware:?];
  }

  if ([(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsCount])
  {
    [v43 clearPeerPublishedStreams];
    v4 = [(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSQRProtoAllocBindResponse *)self peerPublishedStreamsAtIndex:i];
        [v43 addPeerPublishedStreams:v7];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self peerSubscribedStreamIdsCount])
  {
    [v43 clearPeerSubscribedStreamIds];
    v8 = [(IDSQRProtoAllocBindResponse *)self peerSubscribedStreamIdsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v43 addPeerSubscribedStreamIds:{-[IDSQRProtoAllocBindResponse peerSubscribedStreamIdsAtIndex:](self, "peerSubscribedStreamIdsAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v43 + 32) = self->_linkId;
    *(v43 + 204) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v43 + 23) = self->_channelSettings;
    *(v43 + 204) |= 1u;
  }

  if (self->_reportingDataBlob)
  {
    [v43 setReportingDataBlob:?];
  }

  if ([(IDSQRProtoAllocBindResponse *)self lightweightParticipantIdListsCount])
  {
    [v43 clearLightweightParticipantIdLists];
    v12 = [(IDSQRProtoAllocBindResponse *)self lightweightParticipantIdListsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v43 addLightweightParticipantIdList:{-[IDSQRProtoAllocBindResponse lightweightParticipantIdListAtIndex:](self, "lightweightParticipantIdListAtIndex:", k)}];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self quicConnectionInfosCount])
  {
    [v43 clearQuicConnectionInfos];
    v15 = [(IDSQRProtoAllocBindResponse *)self quicConnectionInfosCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        v18 = [(IDSQRProtoAllocBindResponse *)self quicConnectionInfoAtIndex:m];
        [v43 addQuicConnectionInfo:v18];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v43 + 36) = self->_participantType;
    *(v43 + 204) |= 8u;
  }

  if ([(IDSQRProtoAllocBindResponse *)self materialsCount])
  {
    [v43 clearMaterials];
    v19 = [(IDSQRProtoAllocBindResponse *)self materialsCount];
    if (v19)
    {
      v20 = v19;
      for (n = 0; n != v20; ++n)
      {
        v22 = [(IDSQRProtoAllocBindResponse *)self materialsAtIndex:n];
        [v43 addMaterials:v22];
      }
    }
  }

  v23 = self->_has;
  if ((v23 & 2) != 0)
  {
    *(v43 + 26) = self->_generationCounter;
    *(v43 + 204) |= 2u;
    v23 = self->_has;
  }

  if ((v23 & 0x10) != 0)
  {
    *(v43 + 44) = self->_sessionStateCounter;
    *(v43 + 204) |= 0x10u;
  }

  if ([(IDSQRProtoAllocBindResponse *)self ackedStaleLinkIdsCount])
  {
    [v43 clearAckedStaleLinkIds];
    v24 = [(IDSQRProtoAllocBindResponse *)self ackedStaleLinkIdsCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        [v43 addAckedStaleLinkIds:{-[IDSQRProtoAllocBindResponse ackedStaleLinkIdsAtIndex:](self, "ackedStaleLinkIdsAtIndex:", ii)}];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self activeExperimentsCount])
  {
    [v43 clearActiveExperiments];
    v27 = [(IDSQRProtoAllocBindResponse *)self activeExperimentsCount];
    if (v27)
    {
      v28 = v27;
      for (jj = 0; jj != v28; ++jj)
      {
        v30 = [(IDSQRProtoAllocBindResponse *)self activeExperimentsAtIndex:jj];
        [v43 addActiveExperiments:v30];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self joinedParticipantsCount])
  {
    [v43 clearJoinedParticipants];
    v31 = [(IDSQRProtoAllocBindResponse *)self joinedParticipantsCount];
    if (v31)
    {
      v32 = v31;
      for (kk = 0; kk != v32; ++kk)
      {
        v34 = [(IDSQRProtoAllocBindResponse *)self joinedParticipantsAtIndex:kk];
        [v43 addJoinedParticipants:v34];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self leftParticipantsCount])
  {
    [v43 clearLeftParticipants];
    v35 = [(IDSQRProtoAllocBindResponse *)self leftParticipantsCount];
    if (v35)
    {
      v36 = v35;
      for (mm = 0; mm != v36; ++mm)
      {
        v38 = [(IDSQRProtoAllocBindResponse *)self leftParticipantsAtIndex:mm];
        [v43 addLeftParticipants:v38];
      }
    }
  }

  if ([(IDSQRProtoAllocBindResponse *)self updatedParticipantsCount])
  {
    [v43 clearUpdatedParticipants];
    v39 = [(IDSQRProtoAllocBindResponse *)self updatedParticipantsCount];
    if (v39)
    {
      v40 = v39;
      for (nn = 0; nn != v40; ++nn)
      {
        v42 = [(IDSQRProtoAllocBindResponse *)self updatedParticipantsAtIndex:nn];
        [v43 addUpdatedParticipants:v42];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v43 + 200) = self->_isNewlyJoined;
    *(v43 + 204) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientAddress copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  *(v5 + 88) = self->_channelId;
  v8 = [(NSString *)self->_software copyWithZone:a3];
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

        v15 = [*(*(&v81 + 1) + 8 * i) copyWithZone:a3];
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

  v17 = [(NSData *)self->_reportingDataBlob copyWithZone:a3];
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

        v24 = [*(*(&v77 + 1) + 8 * j) copyWithZone:a3];
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

        v30 = [*(*(&v73 + 1) + 8 * k) copyWithZone:a3];
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

        v37 = [*(*(&v69 + 1) + 8 * m) copyWithZone:a3];
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

        v43 = [*(*(&v65 + 1) + 8 * n) copyWithZone:a3];
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

        v49 = [*(*(&v61 + 1) + 8 * ii) copyWithZone:a3];
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

        v55 = [*(*(&v57 + 1) + 8 * jj) copyWithZone:{a3, v57}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(v4 + 12))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_55;
    }
  }

  if (self->_channelId != *(v4 + 22))
  {
    goto LABEL_55;
  }

  software = self->_software;
  if (software | *(v4 + 23))
  {
    if (![(NSString *)software isEqual:?])
    {
      goto LABEL_55;
    }
  }

  peerPublishedStreams = self->_peerPublishedStreams;
  if (peerPublishedStreams | *(v4 + 19))
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
    if ((*(v4 + 204) & 4) == 0 || self->_linkId != *(v4 + 32))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 204) & 4) != 0)
  {
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 204) & 1) == 0 || self->_channelSettings != *(v4 + 23))
    {
      goto LABEL_55;
    }
  }

  else if (*(v4 + 204))
  {
    goto LABEL_55;
  }

  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob | *(v4 + 21) && ![(NSData *)reportingDataBlob isEqual:?])
  {
    goto LABEL_55;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_55;
  }

  quicConnectionInfos = self->_quicConnectionInfos;
  if (quicConnectionInfos | *(v4 + 20))
  {
    if (![(NSMutableArray *)quicConnectionInfos isEqual:?])
    {
      goto LABEL_55;
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 204) & 8) == 0 || self->_participantType != *(v4 + 36))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 204) & 8) != 0)
  {
    goto LABEL_55;
  }

  materials = self->_materials;
  if (materials | *(v4 + 17))
  {
    if (![(NSMutableArray *)materials isEqual:?])
    {
      goto LABEL_55;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 204) & 2) == 0 || self->_generationCounter != *(v4 + 26))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 204) & 2) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 204) & 0x10) == 0 || self->_sessionStateCounter != *(v4 + 44))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 204) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_55;
  }

  activeExperiments = self->_activeExperiments;
  if (activeExperiments | *(v4 + 10))
  {
    if (![(NSMutableArray *)activeExperiments isEqual:?])
    {
      goto LABEL_55;
    }
  }

  joinedParticipants = self->_joinedParticipants;
  if (joinedParticipants | *(v4 + 14))
  {
    if (![(NSMutableArray *)joinedParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  leftParticipants = self->_leftParticipants;
  if (leftParticipants | *(v4 + 15))
  {
    if (![(NSMutableArray *)leftParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  updatedParticipants = self->_updatedParticipants;
  if (updatedParticipants | *(v4 + 24))
  {
    if (![(NSMutableArray *)updatedParticipants isEqual:?])
    {
      goto LABEL_55;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 204) & 0x20) != 0)
    {
      if (self->_isNewlyJoined)
      {
        if ((*(v4 + 200) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (*(v4 + 200))
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

  v16 = (*(v4 + 204) & 0x20) == 0;
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

- (void)mergeFrom:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 12))
  {
    [(IDSQRProtoAllocBindResponse *)self setClientAddress:?];
  }

  self->_channelId = *(v4 + 22);
  if (*(v4 + 23))
  {
    [(IDSQRProtoAllocBindResponse *)self setSoftware:?];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v5 = *(v4 + 19);
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

  v10 = [v4 peerSubscribedStreamIdsCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[IDSQRProtoAllocBindResponse addPeerSubscribedStreamIds:](self, "addPeerSubscribedStreamIds:", [v4 peerSubscribedStreamIdsAtIndex:j]);
    }
  }

  v13 = *(v4 + 204);
  if ((v13 & 4) != 0)
  {
    self->_linkId = *(v4 + 32);
    *&self->_has |= 4u;
    v13 = *(v4 + 204);
  }

  if (v13)
  {
    self->_channelSettings = *(v4 + 23);
    *&self->_has |= 1u;
  }

  if (*(v4 + 21))
  {
    [(IDSQRProtoAllocBindResponse *)self setReportingDataBlob:?];
  }

  v14 = [v4 lightweightParticipantIdListsCount];
  if (v14)
  {
    v15 = v14;
    for (k = 0; k != v15; ++k)
    {
      -[IDSQRProtoAllocBindResponse addLightweightParticipantIdList:](self, "addLightweightParticipantIdList:", [v4 lightweightParticipantIdListAtIndex:k]);
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = *(v4 + 20);
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

  if ((*(v4 + 204) & 8) != 0)
  {
    self->_participantType = *(v4 + 36);
    *&self->_has |= 8u;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v22 = *(v4 + 17);
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

  v27 = *(v4 + 204);
  if ((v27 & 2) != 0)
  {
    self->_generationCounter = *(v4 + 26);
    *&self->_has |= 2u;
    v27 = *(v4 + 204);
  }

  if ((v27 & 0x10) != 0)
  {
    self->_sessionStateCounter = *(v4 + 44);
    *&self->_has |= 0x10u;
  }

  v28 = [v4 ackedStaleLinkIdsCount];
  if (v28)
  {
    v29 = v28;
    for (ii = 0; ii != v29; ++ii)
    {
      -[IDSQRProtoAllocBindResponse addAckedStaleLinkIds:](self, "addAckedStaleLinkIds:", [v4 ackedStaleLinkIdsAtIndex:ii]);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = *(v4 + 10);
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
  v36 = *(v4 + 14);
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
  v41 = *(v4 + 15);
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
  v46 = *(v4 + 24);
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

  if ((*(v4 + 204) & 0x20) != 0)
  {
    self->_isNewlyJoined = *(v4 + 200);
    *&self->_has |= 0x20u;
  }
}

@end