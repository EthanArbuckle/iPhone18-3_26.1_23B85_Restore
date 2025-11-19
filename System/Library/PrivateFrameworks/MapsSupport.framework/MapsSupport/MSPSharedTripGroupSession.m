@interface MSPSharedTripGroupSession
- (BOOL)_isValidParticipant:(id)a3;
- (BOOL)_joinLiveModeFromHandle:(id)a3 fromAccountID:(id)a4 error:(id *)a5;
- (BOOL)_leaveLiveMode:(id *)a3;
- (BOOL)_sendChunkMessage:(id)a3 to:(id)a4 packet:(id)a5 options:(id)a6 error:(id *)a7;
- (BOOL)joinLiveModeFromHandle:(id)a3 fromAccountID:(id)a4 error:(id *)a5;
- (BOOL)leaveLiveModeForced:(id *)a3;
- (BOOL)leaveLiveModeIfNeeded:(id *)a3;
- (BOOL)sendChunkedMessage:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)sendCommand:(id)a3 fromHandle:(id)a4 fromAccountID:(id)a5 error:(id *)a6;
- (BOOL)sessionIsAliveAfterRemovingSharingIdentifiers:(id)a3;
- (MSPSharedTripGroupSession)initWithService:(id)a3 groupID:(id)a4 initiator:(BOOL)a5 initiatorIdentifier:(id)a6;
- (MSPSharedTripGroupSessionDelegate)delegate;
- (NSArray)accountIdentifiers;
- (id)_currentRoutePath;
- (void)_sharingEndedWithError:(id)a3;
- (void)addSharingWith:(id)a3;
- (void)dealloc;
- (void)participantDidJoin:(id)a3;
- (void)participantDidLeave:(id)a3;
@end

@implementation MSPSharedTripGroupSession

- (MSPSharedTripGroupSession)initWithService:(id)a3 groupID:(id)a4 initiator:(BOOL)a5 initiatorIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = MSPSharedTripGroupSession;
  v14 = [(MSPSharedTripGroupSession *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_initiator = a5;
    objc_storeStrong(&v14->_groupID, a4);
    objc_storeStrong(&v15->_sharingIDSService, a3);
    v16 = [MEMORY[0x277CBEB58] set];
    identifiers = v15->_identifiers;
    v15->_identifiers = v16;

    objc_storeStrong(&v15->_initiatorIdentifier, a6);
    v18 = [MEMORY[0x277CBEB58] set];
    liveModeParticipantIdentifiers = v15->_liveModeParticipantIdentifiers;
    v15->_liveModeParticipantIdentifiers = v18;

    if (!v15->_initiator)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mapspushd.ETAReceiving.%@", v15->_groupID];
      [v20 UTF8String];
      v21 = os_transaction_create();
      transaction = v15->_transaction;
      v15->_transaction = v21;
    }
  }

  return v15;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[GS] group dealloc %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSharedTripGroupSession;
  [(MSPSharedTripGroupSession *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSArray)accountIdentifiers
{
  v2 = [self->_sharingIDSService aliases];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)joinLiveModeFromHandle:(id)a3 fromAccountID:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  ++self->_nbClients;
  v8 = a4;
  v9 = a3;
  v10 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nbClients];
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[GS] joinLiveMode nbClients %@", &v15, 0xCu);
  }

  v12 = [(MSPSharedTripGroupSession *)self _joinLiveModeFromHandle:v9 fromAccountID:v8 error:a5];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)leaveLiveModeIfNeeded:(id *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  --self->_nbClients;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nbClients];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] leaveLiveModeIfNeeded nbClients %@", &v9, 0xCu);
  }

  if (self->_nbClients)
  {
    result = 1;
  }

  else
  {
    result = [(MSPSharedTripGroupSession *)self leaveLiveModeForced:a3];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)leaveLiveModeForced:(id *)a3
{
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] leaveLiveModeForced", v8, 2u);
  }

  v6 = [(MSPSharedTripGroupSession *)self _leaveLiveMode:a3];
  if (v6)
  {
    [(MSPSharedTripGroupSession *)self _sharingEnded];
  }

  return v6;
}

- (BOOL)_joinLiveModeFromHandle:(id)a3 fromAccountID:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!self->_joined)
  {
    if (![(MSPSharedTripGroupSession *)self sendCommand:@"j" fromHandle:v9 fromAccountID:v10 error:a5])
    {
      v12 = 0;
      goto LABEL_8;
    }

    self->_joined = 1;
    objc_storeStrong(&self->_joinedFromHandle, a3);
    objc_storeStrong(&self->_joinedFromAccountIdentifier, a4);
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[GS] _joinLiveMode from accountID %@", &v15, 0xCu);
    }
  }

  v12 = 1;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_leaveLiveMode:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_joined)
  {
LABEL_6:
    LOBYTE(v4) = 1;
    goto LABEL_7;
  }

  v4 = [(MSPSharedTripGroupSession *)self sendCommand:@"l" fromHandle:self->_joinedFromHandle fromAccountID:self->_joinedFromAccountIdentifier error:a3];
  if (v4)
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      joinedFromHandle = self->_joinedFromHandle;
      v10 = 138412290;
      v11 = joinedFromHandle;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] _leaveLivemode from handle %@", &v10, 0xCu);
    }

    self->_joined = 0;
    v7 = self->_joinedFromHandle;
    self->_joinedFromHandle = 0;

    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)addSharingWith:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] addSharingWith %@", &v7, 0xCu);
  }

  if ([v4 count])
  {
    [(NSMutableSet *)self->_identifiers addObjectsFromArray:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)sessionIsAliveAfterRemovingSharingIdentifiers:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] removeSharingWith %@", &v11, 0xCu);
  }

  if (![(NSMutableSet *)self->_identifiers count])
  {
    goto LABEL_8;
  }

  if ([v4 count])
  {
    identifiers = self->_identifiers;
    v7 = [MEMORY[0x277CBEB98] setWithArray:v4];
    [(NSMutableSet *)identifiers minusSet:v7];

    if (![(NSMutableSet *)self->_identifiers count])
    {
      [(MSPSharedTripGroupSession *)self _sharingEnded];
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  v8 = 1;
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_sharingEndedWithError:(id)a3
{
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] _sharingEnded", v8, 2u);
  }

  liveModeParticipantIdentifiers = self->_liveModeParticipantIdentifiers;
  self->_liveModeParticipantIdentifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained groupSessionEnded:self withError:v4];
}

- (BOOL)sendCommand:(id)a3 fromHandle:(id)a4 fromAccountID:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB98] setWithObject:self->_initiatorIdentifier];
  v13 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v34 = v9;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[GS] sendCommand: %@ to destination: %@ (from account: %@, handle: %@)", buf, 0x2Au);
  }

  v14 = self->_sharingIDSService;
  v31 = @"commandKey";
  v32 = v9;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = *MEMORY[0x277D185E0];
  v29[0] = *MEMORY[0x277D18570];
  v29[1] = v16;
  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = v10;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v18 = [(IDSService *)v14 _msp_accountFromIdentifier:v11];
  v27 = 0;
  v28 = 0;
  [(IDSService *)v14 sendMessage:v15 fromAccount:v18 toDestinations:v12 priority:300 options:v17 identifier:&v28 error:&v27];
  v19 = v28;
  v20 = v27;

  v21 = MSPGetSharedTripLog();
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v20;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_ERROR, "[GS] sendCommand error: %{public}@", buf, 0xCu);
    }

    if (a6)
    {
      v23 = v20;
      *a6 = v20;
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "[GS] sent command messageUUID: %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20 == 0;
}

- (BOOL)sendChunkedMessage:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6
{
  v74[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v59 = a5;
  v12 = self->_groupID;
  v13 = MEMORY[0x277CBEB98];
  v57 = self;
  sharingIDSService = self->_sharingIDSService;
  v15 = [v11 allObjects];
  v16 = [sharingIDSService _msp_removeSelfFrom:v15];
  v17 = [v13 setWithArray:v16];

  v58 = v17;
  if (![v17 count])
  {
    v41 = [v11 count];
    v42 = MSPGetSharedTripLog();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        *buf = 0;
        v44 = "[GS] trying to send message without destinations after removing self";
LABEL_38:
        _os_log_impl(&dword_25813A000, v42, OS_LOG_TYPE_ERROR, v44, buf, 2u);
      }
    }

    else if (v43)
    {
      *buf = 0;
      v44 = "[GS] trying to send message without destinations";
      goto LABEL_38;
    }

    v74[0] = *MEMORY[0x277CCA068];
    *buf = @"No contact handles provided";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:1];
    v47 = MEMORY[0x277CCA9B8];
    v48 = 11;
    goto LABEL_40;
  }

  if (!v12)
  {
    v45 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v45, OS_LOG_TYPE_ERROR, "[GS] trying to send message without a groupID", buf, 2u);
    }

    v74[0] = *MEMORY[0x277CCA068];
    *buf = @"No IDS group ID";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:1];
    v47 = MEMORY[0x277CCA9B8];
    v48 = 15;
LABEL_40:
    v22 = [v47 errorWithDomain:@"com.apple.Maps.SharedTrip" code:v48 userInfo:v46];

    if (!a6)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (![v10 length])
  {
    v49 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v49, OS_LOG_TYPE_ERROR, "[GS] trying to send message without any message data", buf, 2u);
    }

    v74[0] = *MEMORY[0x277CCA068];
    *buf = @"No data for IDS message";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:1];
    v47 = MEMORY[0x277CCA9B8];
    v48 = 16;
    goto LABEL_40;
  }

  v53 = a6;
  v54 = v11;
  v18 = [v10 length];
  v61 = (v18 - 1) / 0x2710 + 1;
  v19 = [MEMORY[0x277CCAD78] UUID];
  v60 = [v19 UUIDString];

  if ((v18 - 1) >> 4 >= 0x271)
  {
    v20 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134219011;
      *&buf[4] = vcvts_n_f32_u64(v18, 0xAuLL);
      v66 = 2048;
      v67 = (v18 - 1) / 0x2710 + 1;
      v68 = 2048;
      v69 = 0x4023880000000000;
      v70 = 2113;
      v71 = *&v58;
      v72 = 2114;
      v73 = v59;
      _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_INFO, "[GS] will send %#.3lfkB message in %lu chunks (up to %#.1lfkB each)\n\tdestinations: %{private}@\n\toptions: %{public}@", buf, 0x34u);
    }
  }

  v56 = v12;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v55 = *MEMORY[0x277CCA068];
  do
  {
    if (v18 >= 0x2710)
    {
      v24 = 10000;
    }

    else
    {
      v24 = v18;
    }

    v25 = [v10 subdataWithRange:{v21, v24}];
    if (v25)
    {
      v26 = v10;
      v63[0] = @"chunkNumberKey";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
      v64[0] = v27;
      v63[1] = @"chunkIndexKey";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
      v64[1] = v28;
      v64[2] = v25;
      v63[2] = @"chunkDataKey";
      v63[3] = @"chunkGroupIDKey";
      v63[4] = @"chunkMessageIDKey";
      v64[3] = v56;
      v64[4] = v60;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:5];
      v30 = [v29 mutableCopy];

      BOOL = GEOConfigGetBOOL();
      v32 = [MEMORY[0x277D0EC70] sharedPlatform];
      LODWORD(v28) = [v32 isInternalInstall];

      if (v28 && BOOL)
      {
        v33 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25813A000, v33, OS_LOG_TYPE_INFO, "[GS] - mangling chunk message by dropping message ID", buf, 2u);
        }

        [v30 removeObjectForKey:@"chunkMessageIDKey"];
      }

      v34 = [v30 plistData];
      v35 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v34 length];
        *buf = 134218754;
        *&buf[4] = v23 + 1;
        v66 = 2048;
        v67 = v61;
        v68 = 2114;
        v69 = v60;
        v70 = 2048;
        v71 = vcvts_n_f32_u64(v36, 0xAuLL);
        _os_log_impl(&dword_25813A000, v35, OS_LOG_TYPE_INFO, "[GS] - chunked-message %lu/%lu: UUID: %{public}@ data length %.3fkB", buf, 0x2Au);
      }

      v62 = v22;
      [(MSPSharedTripGroupSession *)v57 _sendChunkMessage:v34 to:v58 packet:v30 options:v59 error:&v62];
      v37 = v62;

      v22 = v37;
      v10 = v26;
    }

    else
    {
      v38 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v23;
        _os_log_impl(&dword_25813A000, v38, OS_LOG_TYPE_ERROR, "[GS] - trying to send message chunk %lu without any packet data", buf, 0xCu);
      }

      v74[0] = v55;
      *buf = @"No data for IDS message";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:1];
      v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:16 userInfo:v39];

      v30 = v22;
      v22 = v40;
    }

    ++v23;
    v21 += 10000;
    v18 -= 10000;
  }

  while (v61 != v23);

  a6 = v53;
  v11 = v54;
  v12 = v56;
  if (v53)
  {
LABEL_41:
    if (v22)
    {
      v50 = v22;
      *a6 = v22;
    }
  }

LABEL_43:

  v51 = *MEMORY[0x277D85DE8];
  return v22 == 0;
}

- (BOOL)_sendChunkMessage:(id)a3 to:(id)a4 packet:(id)a5 options:(id)a6 error:(id *)a7
{
  v43[1] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_sendChunkMessage", &unk_2581CCE6D, buf, 2u);
  }

  v16 = [MEMORY[0x277D18778] _msp_IDSIdentifierFor:self->_initiatorIdentifier];
  if (v16)
  {
    if (v14)
    {
      v17 = [v14 mutableCopy];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    }

    v22 = v17;
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
    [v22 setObject:v16 forKeyedSubscript:*MEMORY[0x277D185E0]];
    v23 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D18638]];
      v25 = [v22 objectForKeyedSubscript:*MEMORY[0x277D18640]];
      *buf = 138413058;
      *&buf[4] = v24;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "[GS] sendChunkMessage (requiring %@, lacking %@, packet %@, destinations %@)", buf, 0x2Au);
    }

    v26 = self->_sharingIDSService;
    v27 = [(IDSService *)v26 _msp_currentAccount];
    v34 = 0;
    v35 = 0;
    [(IDSService *)v26 sendData:v33 fromAccount:v27 toDestinations:v12 priority:300 options:v22 identifier:&v35 error:&v34];
    v21 = v35;
    v20 = v34;
  }

  else
  {
    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[GS] sendChunkMessage failing on invalid account (packet: %@, destinations %@)", buf, 0x16u);
    }

    v43[0] = *MEMORY[0x277CCA068];
    *buf = @"Invalid account for sharing";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v43 count:1];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:5 userInfo:v19];

    v21 = 0;
  }

  v28 = MSPGetSharedTripLog();
  v29 = v28;
  if (v20)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_ERROR, "[GS] sendChunkMessage error: %{public}@", buf, 0xCu);
    }

    if (a7)
    {
      v30 = v20;
      *a7 = v20;
    }
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_INFO, "[GS] sent chunk messageUUID: %{public}@", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v20 == 0;
}

- (id)_currentRoutePath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 cacheDirectory];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"route.data"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (BOOL)_isValidParticipant:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@":"];
  v6 = [v5 lastObject];
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    identifiers = self->_identifiers;
    *buf = 138412802;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = identifiers;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[GS] _validParticipant %@ -> %@ in %@", buf, 0x20u);
  }

  if ([v6 length])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(NSMutableSet *)self->_identifiers copy];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v20 = v5;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) componentsSeparatedByString:@":"];
          v15 = [v14 lastObject];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            v17 = 1;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_14:
      v5 = v20;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)participantDidJoin:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"/"];
  v6 = [v5 lastObject];
  if ([(MSPSharedTripGroupSession *)self _isValidParticipant:v6])
  {
    v7 = [(NSMutableSet *)self->_liveModeParticipantIdentifiers containsObject:v4];
    v8 = MSPGetSharedTripLog();
    WeakRetained = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        v10 = "[GS] participant already present %@";
LABEL_7:
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, v10, &v12, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[GS] participantDidJoin %@", &v12, 0xCu);
      }

      [(NSMutableSet *)self->_liveModeParticipantIdentifiers addObject:v4];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained groupSession:self participantDidJoin:v4];
    }
  }

  else
  {
    WeakRetained = MSPGetSharedTripLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      v10 = "[GS] participantDidJoin discard invalid %@";
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)participantDidLeave:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"/"];
  v6 = [v5 lastObject];
  if (![(MSPSharedTripGroupSession *)self _isValidParticipant:v6])
  {
    WeakRetained = MSPGetSharedTripLog();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 138412290;
    v13 = v6;
    v10 = "[GS] participantDidLeave discard invalid %@";
LABEL_10:
    _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, v10, &v12, 0xCu);
    goto LABEL_11;
  }

  v7 = [(NSMutableSet *)self->_liveModeParticipantIdentifiers containsObject:v4];
  v8 = MSPGetSharedTripLog();
  WeakRetained = v8;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 138412290;
    v13 = v4;
    v10 = "[GS] participant not present %@";
    goto LABEL_10;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[GS] participantDidLeave %@", &v12, 0xCu);
  }

  [(NSMutableSet *)self->_liveModeParticipantIdentifiers removeObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained groupSession:self participantDidLeave:v4];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (MSPSharedTripGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end