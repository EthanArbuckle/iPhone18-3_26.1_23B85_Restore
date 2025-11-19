@interface IDSQRProtoAllocBindRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)a3;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (unsigned)publishedStreamIdsAtIndex:(unint64_t)a3;
- (void)addFastPluginRequests:(id)a3;
- (void)addMaterials:(id)a3;
- (void)addQuicConnectionInfo:(id)a3;
- (void)addSessionExperiments:(id)a3;
- (void)addStaleLinks:(id)a3;
- (void)addSubscribedStreams:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAllWildcardSubscription:(BOOL)a3;
- (void)setHasChannelBindingInfo:(BOOL)a3;
- (void)setHasMaxConcurrentStreams:(BOOL)a3;
- (void)setHasMaxEmbeddedStatsResponseDelay:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasServiceId:(BOOL)a3;
- (void)setHasStateFlags:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoAllocBindRequest

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoAllocBindRequest;
  [(IDSQRProtoAllocBindRequest *)&v3 dealloc];
}

- (void)setHasServiceId:(BOOL)a3
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

- (unsigned)publishedStreamIdsAtIndex:(unint64_t)a3
{
  p_publishedStreamIds = &self->_publishedStreamIds;
  count = self->_publishedStreamIds.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_publishedStreamIds->list[a3];
}

- (void)addSubscribedStreams:(id)a3
{
  v4 = a3;
  subscribedStreams = self->_subscribedStreams;
  v8 = v4;
  if (!subscribedStreams)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subscribedStreams;
    self->_subscribedStreams = v6;

    v4 = v8;
    subscribedStreams = self->_subscribedStreams;
  }

  [(NSMutableArray *)subscribedStreams addObject:v4];
}

- (void)setHasAllWildcardSubscription:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasMaxConcurrentStreams:(BOOL)a3
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

- (void)setHasChannelBindingInfo:(BOOL)a3
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

- (void)setHasMaxEmbeddedStatsResponseDelay:(BOOL)a3
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

- (void)setHasStateFlags:(BOOL)a3
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

- (int)reason
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReason:(BOOL)a3
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

- (id)reasonAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"NEWLY_JOINED";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"NONE";
  }

  return v4;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NEWLY_JOINED"];
  }

  return v4;
}

- (void)addSessionExperiments:(id)a3
{
  v4 = a3;
  sessionExperiments = self->_sessionExperiments;
  v8 = v4;
  if (!sessionExperiments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sessionExperiments;
    self->_sessionExperiments = v6;

    v4 = v8;
    sessionExperiments = self->_sessionExperiments;
  }

  [(NSMutableArray *)sessionExperiments addObject:v4];
}

- (void)addFastPluginRequests:(id)a3
{
  v4 = a3;
  fastPluginRequests = self->_fastPluginRequests;
  v8 = v4;
  if (!fastPluginRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_fastPluginRequests;
    self->_fastPluginRequests = v6;

    v4 = v8;
    fastPluginRequests = self->_fastPluginRequests;
  }

  [(NSMutableArray *)fastPluginRequests addObject:v4];
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

- (void)addStaleLinks:(id)a3
{
  v4 = a3;
  staleLinks = self->_staleLinks;
  v8 = v4;
  if (!staleLinks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_staleLinks;
    self->_staleLinks = v6;

    v4 = v8;
    staleLinks = self->_staleLinks;
  }

  [(NSMutableArray *)staleLinks addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindRequest;
  v4 = [(IDSQRProtoAllocBindRequest *)&v8 description];
  v5 = [(IDSQRProtoAllocBindRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_serviceId];
    [v3 setObject:v4 forKey:@"service_id"];
  }

  clientOsVersion = self->_clientOsVersion;
  if (clientOsVersion)
  {
    [v3 setObject:clientOsVersion forKey:@"client_os_version"];
  }

  clientHwVersion = self->_clientHwVersion;
  if (clientHwVersion)
  {
    [v3 setObject:clientHwVersion forKey:@"client_hw_version"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_capabilities];
    [v3 setObject:v7 forKey:@"capabilities"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"published_stream_ids"];

  if ([(NSMutableArray *)self->_subscribedStreams count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_subscribedStreams, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v10 = self->_subscribedStreams;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v90;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v90 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"subscribed_streams"];
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_allWildcardSubscription];
  [v3 setObject:v32 forKey:@"all_wildcard_subscription"];

  *&has = self->_has;
  if ((*&has & 4) != 0)
  {
LABEL_20:
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_maxConcurrentStreams];
    [v3 setObject:v17 forKey:@"max_concurrent_streams"];

    *&has = self->_has;
  }

LABEL_21:
  if ((*&has & 2) == 0)
  {
    if ((*&has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelBindingInfo];
  [v3 setObject:v31 forKey:@"channel_binding_info"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_23:
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_maxEmbeddedStatsResponseDelay];
    [v3 setObject:v18 forKey:@"max_embedded_stats_response_delay"];
  }

LABEL_24:
  if ([(NSMutableArray *)self->_quicConnectionInfos count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_quicConnectionInfos, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v20 = self->_quicConnectionInfos;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v86;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v86 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v85 + 1) + 8 * j) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v85 objects:v97 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"quic_connection_info"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stateFlags];
    [v3 setObject:v26 forKey:@"state_flags"];
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    v28 = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"client_context_blob"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    reason = self->_reason;
    if (reason)
    {
      if (reason == 1)
      {
        v30 = @"NEWLY_JOINED";
      }

      else
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
      }
    }

    else
    {
      v30 = @"NONE";
    }

    [v3 setObject:v30 forKey:@"reason"];
  }

  randomSalt = self->_randomSalt;
  if (randomSalt)
  {
    [v3 setObject:randomSalt forKey:@"random_salt"];
  }

  accessToken = self->_accessToken;
  if (accessToken)
  {
    [v3 setObject:accessToken forKey:@"access_token"];
  }

  serverBlob = self->_serverBlob;
  if (serverBlob)
  {
    [v3 setObject:serverBlob forKey:@"server_blob"];
  }

  callModeInfo = self->_callModeInfo;
  if (callModeInfo)
  {
    v37 = [(IDSQRProtoCallModeUpdateInfo *)callModeInfo dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"call_mode_info"];
  }

  testOption = self->_testOption;
  if (testOption)
  {
    v39 = [(IDSQRProtoAllocBindTestOption *)testOption dictionaryRepresentation];
    [v3 setObject:v39 forKey:@"test_option"];
  }

  if ([(NSMutableArray *)self->_sessionExperiments count])
  {
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sessionExperiments, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v41 = self->_sessionExperiments;
    v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v82;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v82 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v81 + 1) + 8 * k) dictionaryRepresentation];
          [v40 addObject:v46];
        }

        v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v81 objects:v96 count:16];
      }

      while (v43);
    }

    [v3 setObject:v40 forKey:@"session_experiments"];
  }

  if ([(NSMutableArray *)self->_fastPluginRequests count])
  {
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fastPluginRequests, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v48 = self->_fastPluginRequests;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v78;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v78 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v77 + 1) + 8 * m) dictionaryRepresentation];
          [v47 addObject:v53];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v50);
    }

    [v3 setObject:v47 forKey:@"fast_plugin_requests"];
  }

  if ([(NSMutableArray *)self->_materials count])
  {
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_materials, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v55 = self->_materials;
    v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v73 objects:v94 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v74;
      do
      {
        for (n = 0; n != v57; ++n)
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [*(*(&v73 + 1) + 8 * n) dictionaryRepresentation];
          [v54 addObject:v60];
        }

        v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v73 objects:v94 count:16];
      }

      while (v57);
    }

    [v3 setObject:v54 forKey:@"materials"];
  }

  if ([(NSMutableArray *)self->_staleLinks count])
  {
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_staleLinks, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v62 = self->_staleLinks;
    v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v69 objects:v93 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v70;
      do
      {
        for (ii = 0; ii != v64; ++ii)
        {
          if (*v70 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = [*(*(&v69 + 1) + 8 * ii) dictionaryRepresentation];
          [v61 addObject:v67];
        }

        v64 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v69 objects:v93 count:16];
      }

      while (v64);
    }

    [v3 setObject:v61 forKey:@"stale_links"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_clientOsVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientHwVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

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

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = self->_subscribedStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v58;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 4) != 0)
  {
LABEL_21:
    PBDataWriterWriteUint32Field();
    *&has = self->_has;
  }

LABEL_22:
  if ((*&has & 2) == 0)
  {
    if ((*&has & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_24:
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = self->_quicConnectionInfos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v54;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = self->_materials;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v19);
  }

  if (self->_randomSalt)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_accessToken)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_serverBlob)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_callModeInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = self->_fastPluginRequests;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v24);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = self->_staleLinks;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v41 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        PBDataWriterWriteSubmessage();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v41 objects:v62 count:16];
    }

    while (v29);
  }

  if (self->_testOption)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = self->_sessionExperiments;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v37 objects:v61 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v38;
    do
    {
      for (ii = 0; ii != v34; ++ii)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v32);
        }

        PBDataWriterWriteSubmessage();
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v37 objects:v61 count:16];
    }

    while (v34);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    v4[36] = self->_serviceId;
    *(v4 + 196) |= 0x20u;
  }

  v35 = v4;
  if (self->_clientOsVersion)
  {
    [v4 setClientOsVersion:?];
    v4 = v35;
  }

  if (self->_clientHwVersion)
  {
    [v35 setClientHwVersion:?];
    v4 = v35;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_capabilities;
    *(v4 + 196) |= 1u;
  }

  if ([(IDSQRProtoAllocBindRequest *)self publishedStreamIdsCount])
  {
    [v35 clearPublishedStreamIds];
    v5 = [(IDSQRProtoAllocBindRequest *)self publishedStreamIdsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v35 addPublishedStreamIds:{-[IDSQRProtoAllocBindRequest publishedStreamIdsAtIndex:](self, "publishedStreamIdsAtIndex:", i)}];
      }
    }
  }

  if ([(IDSQRProtoAllocBindRequest *)self subscribedStreamsCount])
  {
    [v35 clearSubscribedStreams];
    v8 = [(IDSQRProtoAllocBindRequest *)self subscribedStreamsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(IDSQRProtoAllocBindRequest *)self subscribedStreamsAtIndex:j];
        [v35 addSubscribedStreams:v11];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    v13 = v35;
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = v35;
  *(v35 + 192) = self->_allWildcardSubscription;
  *(v35 + 196) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 4) != 0)
  {
LABEL_19:
    v13[26] = self->_maxConcurrentStreams;
    *(v13 + 196) |= 4u;
    *&has = self->_has;
  }

LABEL_20:
  if ((*&has & 2) != 0)
  {
    v13[14] = self->_channelBindingInfo;
    *(v13 + 196) |= 2u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((*&has & 8) != 0)
  {
LABEL_22:
    v13[27] = self->_maxEmbeddedStatsResponseDelay;
    *(v13 + 196) |= 8u;
  }

LABEL_23:
  if ([(IDSQRProtoAllocBindRequest *)self quicConnectionInfosCount])
  {
    [v35 clearQuicConnectionInfos];
    v14 = [(IDSQRProtoAllocBindRequest *)self quicConnectionInfosCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(IDSQRProtoAllocBindRequest *)self quicConnectionInfoAtIndex:k];
        [v35 addQuicConnectionInfo:v17];
      }
    }
  }

  v18 = v35;
  if ((*&self->_has & 0x40) != 0)
  {
    v35[42] = self->_stateFlags;
    *(v35 + 196) |= 0x40u;
  }

  if (self->_clientContextBlob)
  {
    [v35 setClientContextBlob:?];
    v18 = v35;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v18[32] = self->_reason;
    *(v18 + 196) |= 0x10u;
  }

  if ([(IDSQRProtoAllocBindRequest *)self materialsCount])
  {
    [v35 clearMaterials];
    v19 = [(IDSQRProtoAllocBindRequest *)self materialsCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(IDSQRProtoAllocBindRequest *)self materialsAtIndex:m];
        [v35 addMaterials:v22];
      }
    }
  }

  if (self->_randomSalt)
  {
    [v35 setRandomSalt:?];
  }

  if (self->_accessToken)
  {
    [v35 setAccessToken:?];
  }

  if (self->_serverBlob)
  {
    [v35 setServerBlob:?];
  }

  if (self->_callModeInfo)
  {
    [v35 setCallModeInfo:?];
  }

  if ([(IDSQRProtoAllocBindRequest *)self fastPluginRequestsCount])
  {
    [v35 clearFastPluginRequests];
    v23 = [(IDSQRProtoAllocBindRequest *)self fastPluginRequestsCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(IDSQRProtoAllocBindRequest *)self fastPluginRequestsAtIndex:n];
        [v35 addFastPluginRequests:v26];
      }
    }
  }

  if ([(IDSQRProtoAllocBindRequest *)self staleLinksCount])
  {
    [v35 clearStaleLinks];
    v27 = [(IDSQRProtoAllocBindRequest *)self staleLinksCount];
    if (v27)
    {
      v28 = v27;
      for (ii = 0; ii != v28; ++ii)
      {
        v30 = [(IDSQRProtoAllocBindRequest *)self staleLinksAtIndex:ii];
        [v35 addStaleLinks:v30];
      }
    }
  }

  if (self->_testOption)
  {
    [v35 setTestOption:?];
  }

  if ([(IDSQRProtoAllocBindRequest *)self sessionExperimentsCount])
  {
    [v35 clearSessionExperiments];
    v31 = [(IDSQRProtoAllocBindRequest *)self sessionExperimentsCount];
    if (v31)
    {
      v32 = v31;
      for (jj = 0; jj != v32; ++jj)
      {
        v34 = [(IDSQRProtoAllocBindRequest *)self sessionExperimentsAtIndex:jj];
        [v35 addSessionExperiments:v34];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 144) = self->_serviceId;
    *(v5 + 196) |= 0x20u;
  }

  v7 = [(NSString *)self->_clientOsVersion copyWithZone:a3];
  v8 = *(v6 + 80);
  *(v6 + 80) = v7;

  v9 = [(NSString *)self->_clientHwVersion copyWithZone:a3];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  if (*&self->_has)
  {
    *(v6 + 32) = self->_capabilities;
    *(v6 + 196) |= 1u;
  }

  PBRepeatedUInt32Copy();
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v11 = self->_subscribedStreams;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v82;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v82 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v81 + 1) + 8 * i) copyWithZone:a3];
        [v6 addSubscribedStreams:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(v6 + 192) = self->_allWildcardSubscription;
  *(v6 + 196) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 4) != 0)
  {
LABEL_14:
    *(v6 + 104) = self->_maxConcurrentStreams;
    *(v6 + 196) |= 4u;
    *&has = self->_has;
  }

LABEL_15:
  if ((*&has & 2) == 0)
  {
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v6 + 56) = self->_channelBindingInfo;
  *(v6 + 196) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    *(v6 + 108) = self->_maxEmbeddedStatsResponseDelay;
    *(v6 + 196) |= 8u;
  }

LABEL_18:
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v18 = self->_quicConnectionInfos;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v78;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v78 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v77 + 1) + 8 * j) copyWithZone:a3];
        [v6 addQuicConnectionInfo:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v77 objects:v89 count:16];
    }

    while (v20);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v6 + 168) = self->_stateFlags;
    *(v6 + 196) |= 0x40u;
  }

  v24 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:a3];
  v25 = *(v6 + 64);
  *(v6 + 64) = v24;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 128) = self->_reason;
    *(v6 + 196) |= 0x10u;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v26 = self->_materials;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v73 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v74;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v73 + 1) + 8 * k) copyWithZone:a3];
        [v6 addMaterials:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v73 objects:v88 count:16];
    }

    while (v28);
  }

  v32 = [(NSData *)self->_randomSalt copyWithZone:a3];
  v33 = *(v6 + 120);
  *(v6 + 120) = v32;

  v34 = [(NSData *)self->_accessToken copyWithZone:a3];
  v35 = *(v6 + 40);
  *(v6 + 40) = v34;

  v36 = [(NSData *)self->_serverBlob copyWithZone:a3];
  v37 = *(v6 + 136);
  *(v6 + 136) = v36;

  v38 = [(IDSQRProtoCallModeUpdateInfo *)self->_callModeInfo copyWithZone:a3];
  v39 = *(v6 + 48);
  *(v6 + 48) = v38;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v40 = self->_fastPluginRequests;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v69 objects:v87 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v70;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v69 + 1) + 8 * m) copyWithZone:a3];
        [v6 addFastPluginRequests:v45];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v69 objects:v87 count:16];
    }

    while (v42);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = self->_staleLinks;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v65 objects:v86 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v66;
    do
    {
      for (n = 0; n != v48; ++n)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v65 + 1) + 8 * n) copyWithZone:a3];
        [v6 addStaleLinks:v51];
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v65 objects:v86 count:16];
    }

    while (v48);
  }

  v52 = [(IDSQRProtoAllocBindTestOption *)self->_testOption copyWithZone:a3];
  v53 = *(v6 + 184);
  *(v6 + 184) = v52;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = self->_sessionExperiments;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v85 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v62;
    do
    {
      for (ii = 0; ii != v56; ++ii)
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v61 + 1) + 8 * ii) copyWithZone:{a3, v61}];
        [v6 addSessionExperiments:v59];
      }

      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v85 count:16];
    }

    while (v56);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 196) & 0x20) == 0 || self->_serviceId != *(v4 + 36))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 0x20) != 0)
  {
    goto LABEL_76;
  }

  clientOsVersion = self->_clientOsVersion;
  if (clientOsVersion | *(v4 + 10) && ![(NSString *)clientOsVersion isEqual:?])
  {
    goto LABEL_76;
  }

  clientHwVersion = self->_clientHwVersion;
  if (clientHwVersion | *(v4 + 9))
  {
    if (![(NSString *)clientHwVersion isEqual:?])
    {
      goto LABEL_76;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 196) & 1) == 0 || self->_capabilities != *(v4 + 4))
    {
      goto LABEL_76;
    }
  }

  else if (*(v4 + 196))
  {
    goto LABEL_76;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_76;
  }

  subscribedStreams = self->_subscribedStreams;
  if (subscribedStreams | *(v4 + 22))
  {
    if (![(NSMutableArray *)subscribedStreams isEqual:?])
    {
      goto LABEL_76;
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(v4 + 196) & 0x80) == 0)
    {
      goto LABEL_76;
    }

    if (self->_allWildcardSubscription)
    {
      if ((*(v4 + 192) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 192))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 0x80) != 0)
  {
    goto LABEL_76;
  }

  if ((*&has & 4) != 0)
  {
    if ((*(v4 + 196) & 4) == 0 || self->_maxConcurrentStreams != *(v4 + 26))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 4) != 0)
  {
    goto LABEL_76;
  }

  if ((*&has & 2) != 0)
  {
    if ((*(v4 + 196) & 2) == 0 || self->_channelBindingInfo != *(v4 + 14))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 2) != 0)
  {
    goto LABEL_76;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(v4 + 196) & 8) == 0 || self->_maxEmbeddedStatsResponseDelay != *(v4 + 27))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 8) != 0)
  {
    goto LABEL_76;
  }

  quicConnectionInfos = self->_quicConnectionInfos;
  if (quicConnectionInfos | *(v4 + 14))
  {
    if (![(NSMutableArray *)quicConnectionInfos isEqual:?])
    {
      goto LABEL_76;
    }

    *&has = self->_has;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((*(v4 + 196) & 0x40) == 0 || self->_stateFlags != *(v4 + 42))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 0x40) != 0)
  {
    goto LABEL_76;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(v4 + 8))
  {
    if ([(IDSQRProtoMaterial *)clientContextBlob isEqual:?])
    {
      *&has = self->_has;
      goto LABEL_53;
    }

LABEL_76:
    v20 = 0;
    goto LABEL_77;
  }

LABEL_53:
  if ((*&has & 0x10) != 0)
  {
    if ((*(v4 + 196) & 0x10) == 0 || self->_reason != *(v4 + 32))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 196) & 0x10) != 0)
  {
    goto LABEL_76;
  }

  materials = self->_materials;
  if (materials | *(v4 + 12) && ![(NSMutableArray *)materials isEqual:?])
  {
    goto LABEL_76;
  }

  randomSalt = self->_randomSalt;
  if (randomSalt | *(v4 + 15))
  {
    if (![(NSData *)randomSalt isEqual:?])
    {
      goto LABEL_76;
    }
  }

  accessToken = self->_accessToken;
  if (accessToken | *(v4 + 5))
  {
    if (![(NSData *)accessToken isEqual:?])
    {
      goto LABEL_76;
    }
  }

  serverBlob = self->_serverBlob;
  if (serverBlob | *(v4 + 17))
  {
    if (![(NSData *)serverBlob isEqual:?])
    {
      goto LABEL_76;
    }
  }

  callModeInfo = self->_callModeInfo;
  if (callModeInfo | *(v4 + 6))
  {
    if (![(IDSQRProtoCallModeUpdateInfo *)callModeInfo isEqual:?])
    {
      goto LABEL_76;
    }
  }

  fastPluginRequests = self->_fastPluginRequests;
  if (fastPluginRequests | *(v4 + 11))
  {
    if (![(NSMutableArray *)fastPluginRequests isEqual:?])
    {
      goto LABEL_76;
    }
  }

  staleLinks = self->_staleLinks;
  if (staleLinks | *(v4 + 20))
  {
    if (![(NSMutableArray *)staleLinks isEqual:?])
    {
      goto LABEL_76;
    }
  }

  testOption = self->_testOption;
  if (testOption | *(v4 + 23))
  {
    if (![(IDSQRProtoAllocBindTestOption *)testOption isEqual:?])
    {
      goto LABEL_76;
    }
  }

  sessionExperiments = self->_sessionExperiments;
  if (sessionExperiments | *(v4 + 19))
  {
    v20 = [(NSMutableArray *)sessionExperiments isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_77:

  return v20;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v26 = 2654435761 * self->_serviceId;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_clientOsVersion hash];
  v24 = [(NSString *)self->_clientHwVersion hash];
  if (*&self->_has)
  {
    v23 = 2654435761u * self->_capabilities;
  }

  else
  {
    v23 = 0;
  }

  v22 = PBRepeatedUInt32Hash();
  v3 = [(NSMutableArray *)self->_subscribedStreams hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v4 = 2654435761 * self->_allWildcardSubscription;
    if ((*&self->_has & 4) == 0)
    {
LABEL_9:
      v5 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = 2654435761 * self->_maxConcurrentStreams;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v6 = 2654435761 * self->_channelBindingInfo;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v7 = 2654435761 * self->_maxEmbeddedStatsResponseDelay;
    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
LABEL_16:
  v8 = [(NSMutableArray *)self->_quicConnectionInfos hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v9 = 2654435761 * self->_stateFlags;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(IDSQRProtoMaterial *)self->_clientContextBlob hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_reason;
  }

  else
  {
    v11 = 0;
  }

  v12 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v13 = v11 ^ [(NSMutableArray *)self->_materials hash];
  v14 = v13 ^ [(NSData *)self->_randomSalt hash];
  v15 = v14 ^ [(NSData *)self->_accessToken hash];
  v16 = v12 ^ v15 ^ [(NSData *)self->_serverBlob hash];
  v17 = [(IDSQRProtoCallModeUpdateInfo *)self->_callModeInfo hash];
  v18 = v17 ^ [(NSMutableArray *)self->_fastPluginRequests hash];
  v19 = v18 ^ [(NSMutableArray *)self->_staleLinks hash];
  v20 = v19 ^ [(IDSQRProtoAllocBindTestOption *)self->_testOption hash];
  return v16 ^ v20 ^ [(NSMutableArray *)self->_sessionExperiments hash];
}

- (void)mergeFrom:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((v4[196] & 0x20) != 0)
  {
    self->_serviceId = *(v4 + 36);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 10))
  {
    [(IDSQRProtoAllocBindRequest *)self setClientOsVersion:?];
  }

  if (*(v5 + 9))
  {
    [(IDSQRProtoAllocBindRequest *)self setClientHwVersion:?];
  }

  if (v5[196])
  {
    self->_capabilities = *(v5 + 4);
    *&self->_has |= 1u;
  }

  v6 = [v5 publishedStreamIdsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[IDSQRProtoAllocBindRequest addPublishedStreamIds:](self, "addPublishedStreamIds:", [v5 publishedStreamIdsAtIndex:i]);
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = *(v5 + 22);
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(IDSQRProtoAllocBindRequest *)self addSubscribedStreams:*(*(&v66 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v11);
  }

  v14 = v5[196];
  if ((v14 & 0x80000000) == 0)
  {
    if ((v14 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  self->_allWildcardSubscription = v5[192];
  *&self->_has |= 0x80u;
  LOBYTE(v14) = v5[196];
  if ((v14 & 4) != 0)
  {
LABEL_21:
    self->_maxConcurrentStreams = *(v5 + 26);
    *&self->_has |= 4u;
    LOBYTE(v14) = v5[196];
  }

LABEL_22:
  if ((v14 & 2) == 0)
  {
    if ((v14 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  self->_channelBindingInfo = *(v5 + 14);
  *&self->_has |= 2u;
  if ((v5[196] & 8) != 0)
  {
LABEL_24:
    self->_maxEmbeddedStatsResponseDelay = *(v5 + 27);
    *&self->_has |= 8u;
  }

LABEL_25:
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = *(v5 + 14);
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(IDSQRProtoAllocBindRequest *)self addQuicConnectionInfo:*(*(&v62 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v17);
  }

  if ((v5[196] & 0x40) != 0)
  {
    self->_stateFlags = *(v5 + 42);
    *&self->_has |= 0x40u;
  }

  clientContextBlob = self->_clientContextBlob;
  v21 = *(v5 + 8);
  if (clientContextBlob)
  {
    if (v21)
    {
      [(IDSQRProtoMaterial *)clientContextBlob mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(IDSQRProtoAllocBindRequest *)self setClientContextBlob:?];
  }

  if ((v5[196] & 0x10) != 0)
  {
    self->_reason = *(v5 + 32);
    *&self->_has |= 0x10u;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = *(v5 + 12);
  v23 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v59;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(IDSQRProtoAllocBindRequest *)self addMaterials:*(*(&v58 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v24);
  }

  if (*(v5 + 15))
  {
    [(IDSQRProtoAllocBindRequest *)self setRandomSalt:?];
  }

  if (*(v5 + 5))
  {
    [(IDSQRProtoAllocBindRequest *)self setAccessToken:?];
  }

  if (*(v5 + 17))
  {
    [(IDSQRProtoAllocBindRequest *)self setServerBlob:?];
  }

  callModeInfo = self->_callModeInfo;
  v28 = *(v5 + 6);
  if (callModeInfo)
  {
    if (v28)
    {
      [(IDSQRProtoCallModeUpdateInfo *)callModeInfo mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(IDSQRProtoAllocBindRequest *)self setCallModeInfo:?];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = *(v5 + 11);
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v72 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v55;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(IDSQRProtoAllocBindRequest *)self addFastPluginRequests:*(*(&v54 + 1) + 8 * n)];
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v72 count:16];
    }

    while (v31);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = *(v5 + 20);
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v71 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(IDSQRProtoAllocBindRequest *)self addStaleLinks:*(*(&v50 + 1) + 8 * ii)];
      }

      v36 = [v34 countByEnumeratingWithState:&v50 objects:v71 count:16];
    }

    while (v36);
  }

  testOption = self->_testOption;
  v40 = *(v5 + 23);
  if (testOption)
  {
    if (v40)
    {
      [(IDSQRProtoAllocBindTestOption *)testOption mergeFrom:?];
    }
  }

  else if (v40)
  {
    [(IDSQRProtoAllocBindRequest *)self setTestOption:?];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v41 = *(v5 + 19);
  v42 = [v41 countByEnumeratingWithState:&v46 objects:v70 count:16];
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

        [(IDSQRProtoAllocBindRequest *)self addSessionExperiments:*(*(&v46 + 1) + 8 * jj), v46];
      }

      v43 = [v41 countByEnumeratingWithState:&v46 objects:v70 count:16];
    }

    while (v43);
  }
}

@end