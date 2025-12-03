@interface MRExternalJSONClientConnection
- (MRExternalJSONClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
- (id)_createProtocolMessage:(Class)message underlyingCodableMessage:(id)codableMessage;
- (id)_encodeDeviceInfo:(id)info;
- (id)_encodeVolumeDidChange:(id)change;
- (id)_processDeviceInfo:(id)info;
- (id)_processSetState:(id)state;
- (id)_protocolMessageFromData:(id)data;
- (id)dataForMessage:(id)message;
@end

@implementation MRExternalJSONClientConnection

- (MRExternalJSONClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MRExternalJSONClientConnection;
  return [(MRExternalClientConnection *)&v5 initWithConnection:connection replyQueue:queue];
}

- (id)dataForMessage:(id)message
{
  v37[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if ([(MRProtocolClientConnection *)self disconnected])
  {
    v5 = 0;
    goto LABEL_25;
  }

  v37[0] = messageCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  objc_opt_class();
  v27 = messageCopy;
  if (objc_opt_isKindOfClass())
  {
    messages = [messageCopy messages];

    v6 = messages;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        type = [v12 type];
        switch(type)
        {
          case 15:
LABEL_13:
            v15 = [(MRExternalJSONClientConnection *)self _encodeDeviceInfo:v12];
            v16 = dictionary;
            v17 = v15;
            v18 = @"deviceInfo";
LABEL_15:
            [v16 setObject:v17 forKeyedSubscript:v18];
            goto LABEL_18;
          case 52:
            v15 = [(MRExternalJSONClientConnection *)self _encodeVolumeDidChange:v12];
            v16 = dictionary;
            v17 = v15;
            v18 = @"volume";
            goto LABEL_15;
          case 37:
            goto LABEL_13;
        }

        v19 = [v12 description];
        [dictionary setObject:v19 forKeyedSubscript:@"unsupportedMessage"];

        v15 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v12;
          _os_log_error_impl(&dword_1A2860000, v15, OS_LOG_TYPE_ERROR, "[ExternalJSONClientConnection] Unsupported message: %{public}@", buf, 0xCu);
        }

LABEL_18:

        replyIdentifier = [v12 replyIdentifier];
        [dictionary setObject:replyIdentifier forKeyedSubscript:@"identifier"];

        v29 = 0;
        v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v29];
        v22 = v29;
        if (v21)
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DF88]);
          v24 = [MEMORY[0x1E69B1438] createHeader:{objc_msgSend(v21, "length")}];
          [v23 appendData:v24];
          [v23 appendData:v21];
          [v5 appendData:v23];
        }

        else
        {
          v23 = _MRLogForCategory(4uLL);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v22;
            _os_log_error_impl(&dword_1A2860000, v23, OS_LOG_TYPE_ERROR, "[ExternalJSONClientConnection] Failed to encode message: %{public}@", buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  messageCopy = v27;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_protocolMessageFromData:(id)data
{
  v62 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  array = [MEMORY[0x1E695DF70] array];
  v60 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v60];
  v7 = v60;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 objectForKeyedSubscript:@"artwork"];
    artwork = self->_artwork;
    self->_artwork = v9;

    v11 = [v8 objectForKeyedSubscript:@"deviceInfo"];
    deviceInfo = self->_deviceInfo;
    self->_deviceInfo = v11;

    v13 = [v8 objectForKeyedSubscript:@"volume"];
    volume = self->_volume;
    self->_volume = v13;

    v15 = [v8 objectForKeyedSubscript:@"playerPath"];
    playerPath = self->_playerPath;
    self->_playerPath = v15;

    v17 = [v8 objectForKeyedSubscript:@"playbackQueue"];
    playbackQueue = self->_playbackQueue;
    self->_playbackQueue = v17;

    v19 = [v8 objectForKeyedSubscript:@"supportedCommands"];
    supportedCommands = self->_supportedCommands;
    self->_supportedCommands = v19;

    v21 = [v8 objectForKeyedSubscript:@"identifier"];
    v22 = [(MRExternalJSONClientConnection *)self _processDeviceInfo:v21];
    if (v22)
    {
      [array addObject:v22];
    }

    if ([(MRProtocolClientConnection *)self disconnected])
    {

      v23 = 0;
      goto LABEL_28;
    }

    v55 = [(MRExternalJSONClientConnection *)self _processSetState:v21];
    if (v55)
    {
      [array addObjectsFromArray:v55];
    }

    v54 = v7;
    if (self->_volume)
    {
      v24 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"deviceUID"];
      if ([v24 length])
      {
        v52 = v24;
        v25 = [(NSDictionary *)self->_volume objectForKeyedSubscript:@"volumeCapabilities"];

        if (v25)
        {
          v26 = [(NSDictionary *)self->_volume objectForKeyedSubscript:@"volumeCapabilities"];
          unsignedLongValue = [v26 unsignedLongValue];

          v28 = objc_alloc_init(_MRVolumeControlAvailabilityProtobuf);
          [(_MRVolumeControlAvailabilityProtobuf *)v28 setVolumeControlAvailable:unsignedLongValue != 0];
          v51 = v28;
          [(_MRVolumeControlAvailabilityProtobuf *)v28 setVolumeCapabilities:unsignedLongValue];
          v29 = objc_alloc_init(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf);
          [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v29 setCapabilities:v28];
          [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v29 setEndpointUID:v52];
          v50 = v29;
          [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v29 setOutputDeviceUID:v52];
          v49 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v29];
          [array addObject:v49];
          v30 = objc_alloc_init(_MRGetVolumeControlCapabilitiesResultMessageProtobuf);
          [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)v30 setCapabilities:v51];
          v31 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v30];

          [array addObject:v31];
        }

        v32 = [(NSDictionary *)self->_volume objectForKeyedSubscript:@"volumeLevel"];

        if (v32)
        {
          v33 = [(NSDictionary *)self->_volume objectForKeyedSubscript:@"volumeLevel"];
          [v33 floatValue];
          v35 = v34;

          v36 = objc_alloc_init(_MRVolumeDidChangeMessageProtobuf);
          LODWORD(v37) = v35;
          [(_MRVolumeDidChangeMessageProtobuf *)v36 setVolume:v37];
          [(_MRVolumeDidChangeMessageProtobuf *)v36 setEndpointUID:v52];
          [(_MRVolumeDidChangeMessageProtobuf *)v36 setOutputDeviceUID:v52];
          v38 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v36];

          [array addObject:v38];
          v39 = objc_alloc_init(_MRGetVolumeResultMessageProtobuf);
          LODWORD(v40) = v35;
          [(_MRGetVolumeResultMessageProtobuf *)v39 setVolume:v40];
          v22 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v39];

          v24 = v52;
          [array addObject:v22];
        }

        else
        {
          v24 = v52;
        }

        v7 = v54;
      }
    }

    if ([v21 length])
    {
      v53 = dataCopy;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v41 = array;
      v42 = [v41 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v57;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v57 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v56 + 1) + 8 * i);
            [v46 setReplyIdentifier:v21];
            [v46 setIsIncomingReply:1];
          }

          v43 = [v41 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v43);
      }

      dataCopy = v53;
      v7 = v54;
    }
  }

  v23 = array;
LABEL_28:

  v47 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_processDeviceInfo:(id)info
{
  if (self->_deviceInfo)
  {
    v4 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
    v5 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"deviceName"];
    [(_MRDeviceInfoMessageProtobuf *)v4 setName:v5];

    v6 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"systemVersion"];
    [(_MRDeviceInfoMessageProtobuf *)v4 setSystemBuildVersion:v6];

    v7 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"protocolVersion"];
    -[_MRDeviceInfoMessageProtobuf setProtocolVersion:](v4, "setProtocolVersion:", [v7 longLongValue]);

    [(_MRDeviceInfoMessageProtobuf *)v4 setAllowsPairing:0];
    v8 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"deviceClass"];
    [(_MRDeviceInfoMessageProtobuf *)v4 setDeviceClass:[(_MRDeviceInfoMessageProtobuf *)v4 StringAsDeviceClass:v8]];

    [(_MRDeviceInfoMessageProtobuf *)v4 setIsProxyGroupPlayer:0];
    [(_MRDeviceInfoMessageProtobuf *)v4 setIsGroupLeader:0];
    v9 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"deviceUID"];
    [(_MRDeviceInfoMessageProtobuf *)v4 setDeviceUID:v9];

    v10 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"deviceUID"];
    [(_MRDeviceInfoMessageProtobuf *)v4 setUniqueIdentifier:v10];

    [(_MRDeviceInfoMessageProtobuf *)v4 setSupportsSystemPairing:0];
    [(_MRDeviceInfoMessageProtobuf *)v4 setSupportsSharedQueue:1];
    v11 = [(NSDictionary *)self->_deviceInfo objectForKeyedSubscript:@"lastSupportedMessageType"];
    -[_MRDeviceInfoMessageProtobuf setLastSupportedMessageType:](v4, "setLastSupportedMessageType:", [v11 unsignedIntValue]);

    v12 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_encodeDeviceInfo:(id)info
{
  v3 = MEMORY[0x1E695DF90];
  infoCopy = info;
  dictionary = [v3 dictionary];
  underlyingCodableMessage = [infoCopy underlyingCodableMessage];

  name = [underlyingCodableMessage name];
  [dictionary setObject:name forKeyedSubscript:@"deviceName"];

  systemBuildVersion = [underlyingCodableMessage systemBuildVersion];
  [dictionary setObject:systemBuildVersion forKeyedSubscript:@"systemVersion"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(underlyingCodableMessage, "protocolVersion")}];
  [dictionary setObject:v9 forKeyedSubscript:@"protocolVersion"];

  v10 = [underlyingCodableMessage deviceClassAsString:{objc_msgSend(underlyingCodableMessage, "deviceClass")}];
  [dictionary setObject:v10 forKeyedSubscript:@"deviceClass"];

  deviceUID = [underlyingCodableMessage deviceUID];
  [dictionary setObject:deviceUID forKeyedSubscript:@"deviceUID"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(underlyingCodableMessage, "lastSupportedMessageType")}];
  [dictionary setObject:v12 forKeyedSubscript:@"lastSupportedMessageType"];

  return dictionary;
}

- (id)_processSetState:(id)state
{
  v449 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (self->_playerPath)
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    v6 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    v7 = objc_alloc_init(_MROriginProtobuf);
    [(_MRNowPlayingPlayerPathProtobuf *)v6 setOrigin:v7];

    UniqueIdentifier = MROriginGetUniqueIdentifier(LocalOrigin);
    origin = [(_MRNowPlayingPlayerPathProtobuf *)v6 origin];
    [origin setIdentifier:UniqueIdentifier];

    DisplayName = MROriginGetDisplayName(LocalOrigin);
    origin2 = [(_MRNowPlayingPlayerPathProtobuf *)v6 origin];
    [origin2 setDisplayName:DisplayName];

    v12 = objc_alloc_init(_MRNowPlayingClientProtobuf);
    [(_MRNowPlayingPlayerPathProtobuf *)v6 setClient:v12];

    v13 = [(NSDictionary *)self->_playerPath objectForKeyedSubscript:@"bundleIdentifier"];
    client = [(_MRNowPlayingPlayerPathProtobuf *)v6 client];
    [client setBundleIdentifier:v13];

    v15 = [(NSDictionary *)self->_playerPath objectForKeyedSubscript:@"displayName"];
    client2 = [(_MRNowPlayingPlayerPathProtobuf *)v6 client];
    [client2 setDisplayName:v15];

    client3 = [(_MRNowPlayingPlayerPathProtobuf *)v6 client];
    [client3 setProcessIdentifier:1];

    v18 = objc_alloc_init(_MRNowPlayingClientProtobuf);
    v19 = [(NSDictionary *)self->_playerPath objectForKeyedSubscript:@"bundleIdentifier"];
    [(_MRNowPlayingClientProtobuf *)v18 setBundleIdentifier:v19];

    v20 = [(NSDictionary *)self->_playerPath objectForKeyedSubscript:@"displayName"];
    [(_MRNowPlayingClientProtobuf *)v18 setDisplayName:v20];

    v419 = v18;
    [(_MRNowPlayingClientProtobuf *)v18 setProcessIdentifier:1];
  }

  else
  {
    v6 = 0;
    v419 = 0;
  }

  playbackQueue = self->_playbackQueue;
  v22 = playbackQueue != 0;
  v23 = 0x1E695D000;
  if (playbackQueue)
  {
    v24 = objc_alloc_init(_MRContentItemProtobuf);
    v25 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"queueIdentifier"];
    [(_MRContentItemProtobuf *)v24 setIdentifier:v25];

    v26 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"queueIdentifier"];
    [(_MRContentItemProtobuf *)v24 setQueueIdentifier:v26];

    v27 = objc_alloc_init(_MRContentItemMetadataProtobuf);
    [(_MRContentItemProtobuf *)v24 setMetadata:v27];

    v28 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"albumArtistName"];
    metadata = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata setAlbumArtistName:v28];

    v30 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"albumName"];
    metadata2 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata2 setAlbumName:v30];

    v32 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkIdentifier"];
    metadata3 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata3 setArtworkIdentifier:v32];

    v34 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkMIMEType"];
    metadata4 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata4 setArtworkMIMEType:v34];

    v36 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkURL"];
    metadata5 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata5 setArtworkURL:v36];

    v38 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"assetURLString"];
    metadata6 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata6 setAssetURLString:v38];

    v40 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"collectionIdentifier"];
    metadata7 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata7 setCollectionIdentifier:v40];

    v42 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"composer"];
    metadata8 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata8 setComposer:v42];

    v44 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"contentIdentifier"];
    metadata9 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata9 setContentIdentifier:v44];

    v46 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"internationalStandardRecordingCode"];
    metadata10 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata10 setInternationalStandardRecordingCode:v46];

    v48 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"directorName"];
    metadata11 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata11 setDirectorName:v48];

    v50 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"genre"];
    metadata12 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata12 setGenre:v50];

    v52 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"localizedContentRating"];
    metadata13 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata13 setLocalizedContentRating:v52];

    v54 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"lyricsURL"];
    metadata14 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata14 setLyricsURL:v54];

    v56 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"serviceIdentifier"];
    metadata15 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata15 setServiceIdentifier:v56];

    v58 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"profileIdentifier"];
    metadata16 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata16 setProfileIdentifier:v58];

    v60 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationName"];
    metadata17 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata17 setRadioStationName:v60];

    v62 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationString"];
    metadata18 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata18 setRadioStationString:v62];

    v64 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"seriesName"];
    metadata19 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata19 setSeriesName:v64];

    v66 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"serviceIdentifier"];
    metadata20 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata20 setServiceIdentifier:v66];

    v68 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"subtitle"];
    metadata21 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata21 setSubtitle:v68];

    v70 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"title"];
    metadata22 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata22 setTitle:v70];

    v72 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"trackArtistName"];
    metadata23 = [(_MRContentItemProtobuf *)v24 metadata];
    [metadata23 setTrackArtistName:v72];

    v74 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"appMetricsData"];

    if (v74)
    {
      v75 = objc_alloc(MEMORY[0x1E695DEF0]);
      v76 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"appMetricsData"];
      v77 = [v75 initWithBase64EncodedString:v76 options:0];
      metadata24 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata24 setAppMetricsData:v77];
    }

    v79 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkURLTemplatesData"];

    if (v79)
    {
      v80 = objc_alloc(MEMORY[0x1E695DEF0]);
      v81 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkURLTemplatesData"];
      v82 = [v80 initWithBase64EncodedString:v81 options:0];
      metadata25 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata25 setArtworkURLTemplatesData:v82];
    }

    v84 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"collectionInfoData"];

    if (v84)
    {
      v85 = objc_alloc(MEMORY[0x1E695DEF0]);
      v86 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"collectionInfoData"];
      v87 = [v85 initWithBase64EncodedString:v86 options:0];
      metadata26 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata26 setCollectionInfoData:v87];
    }

    v89 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"currentPlaybackDateData"];

    if (v89)
    {
      v90 = objc_alloc(MEMORY[0x1E695DEF0]);
      v91 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"currentPlaybackDateData"];
      v92 = [v90 initWithBase64EncodedString:v91 options:0];
      metadata27 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata27 setCurrentPlaybackDateData:v92];
    }

    v94 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"deviceSpecificUserInfoData"];

    if (v94)
    {
      v95 = objc_alloc(MEMORY[0x1E695DEF0]);
      v96 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"deviceSpecificUserInfoData"];
      v97 = [v95 initWithBase64EncodedString:v96 options:0];
      metadata28 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata28 setDeviceSpecificUserInfoData:v97];
    }

    v99 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"nowPlayingInfoData"];

    if (v99)
    {
      v100 = objc_alloc(MEMORY[0x1E695DEF0]);
      v101 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"nowPlayingInfoData"];
      v102 = [v100 initWithBase64EncodedString:v101 options:0];
      metadata29 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata29 setNowPlayingInfoData:v102];
    }

    v104 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"purchaseInfoData"];

    if (v104)
    {
      v105 = objc_alloc(MEMORY[0x1E695DEF0]);
      v106 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"purchaseInfoData"];
      v107 = [v105 initWithBase64EncodedString:v106 options:0];
      metadata30 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata30 setPurchaseInfoData:v107];
    }

    v109 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"userInfoData"];

    if (v109)
    {
      v110 = objc_alloc(MEMORY[0x1E695DEF0]);
      v111 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"userInfoData"];
      v112 = [v110 initWithBase64EncodedString:v111 options:0];
      metadata31 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata31 setUserInfoData:v112];
    }

    v114 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkAvailable"];

    if (v114)
    {
      v115 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkAvailable"];
      bOOLValue = [v115 BOOLValue];
      metadata32 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata32 setArtworkAvailable:bOOLValue];
    }

    v118 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"infoAvailable"];

    if (v118)
    {
      v119 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"infoAvailable"];
      bOOLValue2 = [v119 BOOLValue];
      metadata33 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata33 setInfoAvailable:bOOLValue2];
    }

    v122 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isAlwaysLive"];

    if (v122)
    {
      v123 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isAlwaysLive"];
      bOOLValue3 = [v123 BOOLValue];
      metadata34 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata34 setIsAlwaysLive:bOOLValue3];
    }

    v126 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isContainer"];

    if (v126)
    {
      v127 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isContainer"];
      bOOLValue4 = [v127 BOOLValue];
      metadata35 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata35 setIsContainer:bOOLValue4];
    }

    v130 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isCurrentlyPlaying"];

    if (v130)
    {
      v131 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isCurrentlyPlaying"];
      bOOLValue5 = [v131 BOOLValue];
      metadata36 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata36 setIsCurrentlyPlaying:bOOLValue5];
    }

    v134 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isExplicitItem"];

    if (v134)
    {
      v135 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isExplicitItem"];
      bOOLValue6 = [v135 BOOLValue];
      metadata37 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata37 setIsExplicitItem:bOOLValue6];
    }

    v138 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isInWishList"];

    if (v138)
    {
      v139 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isInWishList"];
      bOOLValue7 = [v139 BOOLValue];
      metadata38 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata38 setIsInWishList:bOOLValue7];
    }

    v142 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isLiked"];

    if (v142)
    {
      v143 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isLiked"];
      bOOLValue8 = [v143 BOOLValue];
      metadata39 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata39 setIsLiked:bOOLValue8];
    }

    v146 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isLoading"];

    if (v146)
    {
      v147 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isLoading"];
      bOOLValue9 = [v147 BOOLValue];
      metadata40 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata40 setIsLoading:bOOLValue9];
    }

    v150 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isInTransition"];

    if (v150)
    {
      v151 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isInTransition"];
      bOOLValue10 = [v151 BOOLValue];
      metadata41 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata41 setIsInTransition:bOOLValue10];
    }

    v154 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isPlayable"];

    if (v154)
    {
      v155 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isPlayable"];
      bOOLValue11 = [v155 BOOLValue];
      metadata42 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata42 setIsPlayable:bOOLValue11];
    }

    v158 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isSharable"];

    if (v158)
    {
      v159 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isSharable"];
      bOOLValue12 = [v159 BOOLValue];
      metadata43 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata43 setIsSharable:bOOLValue12];
    }

    v162 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isAdvertisement"];

    if (v162)
    {
      v163 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isAdvertisement"];
      bOOLValue13 = [v163 BOOLValue];
      metadata44 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata44 setIsAdvertisement:bOOLValue13];
    }

    v166 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isSteerable"];

    if (v166)
    {
      v167 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isSteerable"];
      bOOLValue14 = [v167 BOOLValue];
      metadata45 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata45 setIsSteerable:bOOLValue14];
    }

    v170 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isStreamingContent"];

    if (v170)
    {
      v171 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"isStreamingContent"];
      bOOLValue15 = [v171 BOOLValue];
      metadata46 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata46 setIsStreamingContent:bOOLValue15];
    }

    v174 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"languageOptionsAvailable"];

    if (v174)
    {
      v175 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"languageOptionsAvailable"];
      bOOLValue16 = [v175 BOOLValue];
      metadata47 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata47 setLanguageOptionsAvailable:bOOLValue16];
    }

    v178 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"lyricsAvailable"];

    if (v178)
    {
      v179 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"lyricsAvailable"];
      bOOLValue17 = [v179 BOOLValue];
      metadata48 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata48 setLyricsAvailable:bOOLValue17];
    }

    v182 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"duration"];

    if (v182)
    {
      v183 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"duration"];
      [v183 doubleValue];
      v185 = v184;
      metadata49 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata49 setDuration:v185];
    }

    v187 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"elapsedTime"];

    if (v187)
    {
      v188 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"elapsedTime"];
      [v188 doubleValue];
      v190 = v189;
      metadata50 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata50 setElapsedTime:v190];
    }

    v192 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"elapsedTimeTimestamp"];

    if (v192)
    {
      v193 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"elapsedTimeTimestamp"];
      [v193 doubleValue];
      v195 = v194;
      metadata51 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata51 setElapsedTimeTimestamp:v195];
    }

    v197 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"inferredTimestamp"];

    if (v197)
    {
      v198 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"inferredTimestamp"];
      [v198 doubleValue];
      v200 = v199;
      metadata52 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata52 setInferredTimestamp:v200];
    }

    v202 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"releaseDate"];

    if (v202)
    {
      v203 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"releaseDate"];
      [v203 doubleValue];
      v205 = v204;
      metadata53 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata53 setReleaseDate:v205];
    }

    v207 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"startTime"];

    if (v207)
    {
      v208 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"startTime"];
      [v208 doubleValue];
      v210 = v209;
      metadata54 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata54 setStartTime:v210];
    }

    v212 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"defaultPlaybackRate"];

    if (v212)
    {
      v213 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"defaultPlaybackRate"];
      [v213 floatValue];
      v215 = v214;
      metadata55 = [(_MRContentItemProtobuf *)v24 metadata];
      LODWORD(v217) = v215;
      [metadata55 setDefaultPlaybackRate:v217];
    }

    v218 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreAlbumIdentifier"];

    if (v218)
    {
      v219 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreAlbumIdentifier"];
      longLongValue = [v219 longLongValue];
      metadata56 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata56 setITunesStoreAlbumIdentifier:longLongValue];
    }

    v222 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreArtistIdentifier"];

    if (v222)
    {
      v223 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreArtistIdentifier"];
      longLongValue2 = [v223 longLongValue];
      metadata57 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata57 setITunesStoreArtistIdentifier:longLongValue2];
    }

    v226 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreIdentifier"];

    if (v226)
    {
      v227 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreIdentifier"];
      longLongValue3 = [v227 longLongValue];
      metadata58 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata58 setITunesStoreIdentifier:longLongValue3];
    }

    v230 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreSubscriptionIdentifier"];

    if (v230)
    {
      v231 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"iTunesStoreSubscriptionIdentifier"];
      longLongValue4 = [v231 longLongValue];
      metadata59 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata59 setITunesStoreSubscriptionIdentifier:longLongValue4];
    }

    v234 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"legacyUniqueIdentifier"];

    if (v234)
    {
      v235 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"legacyUniqueIdentifier"];
      longLongValue5 = [v235 longLongValue];
      metadata60 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata60 setLegacyUniqueIdentifier:longLongValue5];
    }

    v238 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationIdentifier"];

    if (v238)
    {
      v239 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationIdentifier"];
      longLongValue6 = [v239 longLongValue];
      metadata61 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata61 setRadioStationIdentifier:longLongValue6];
    }

    v242 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkDataHeightDeprecated"];

    if (v242)
    {
      v243 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkDataHeightDeprecated"];
      intValue = [v243 intValue];
      metadata62 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata62 setArtworkDataHeightDeprecated:intValue];
    }

    v246 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkDataWidthDeprecated"];

    if (v246)
    {
      v247 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"artworkDataWidthDeprecated"];
      intValue2 = [v247 intValue];
      metadata63 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata63 setArtworkDataWidthDeprecated:intValue2];
    }

    v250 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"chapterCount"];

    if (v250)
    {
      v251 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"chapterCount"];
      intValue3 = [v251 intValue];
      metadata64 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata64 setChapterCount:intValue3];
    }

    v254 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"discNumber"];

    if (v254)
    {
      v255 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"discNumber"];
      intValue4 = [v255 intValue];
      metadata65 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata65 setDiscNumber:intValue4];
    }

    v258 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"downloadProgress"];

    if (v258)
    {
      v259 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"downloadProgress"];
      [v259 floatValue];
      v261 = v260;
      metadata66 = [(_MRContentItemProtobuf *)v24 metadata];
      LODWORD(v263) = v261;
      [metadata66 setDownloadProgress:v263];
    }

    v264 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"downloadState"];

    if (v264)
    {
      v265 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"downloadState"];
      intValue5 = [v265 intValue];
      metadata67 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata67 setDownloadState:intValue5];
    }

    v268 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"editingStyleFlags"];

    if (v268)
    {
      v269 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"editingStyleFlags"];
      intValue6 = [v269 intValue];
      metadata68 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata68 setEditingStyleFlags:intValue6];
    }

    v272 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"episodeNumber"];

    if (v272)
    {
      v273 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"episodeNumber"];
      intValue7 = [v273 intValue];
      metadata69 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata69 setEpisodeNumber:intValue7];
    }

    v276 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"episodeType"];

    if (v276)
    {
      v277 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"episodeType"];
      intValue8 = [v277 intValue];
      metadata70 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata70 setEpisodeType:intValue8];
    }

    v280 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"mediaSubType"];

    if (v280)
    {
      v281 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"mediaSubType"];
      intValue9 = [v281 intValue];
      metadata71 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata71 setMediaSubType:intValue9];
    }

    v284 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"mediaType"];

    if (v284)
    {
      v285 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"mediaType"];
      intValue10 = [v285 intValue];
      metadata72 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata72 setMediaType:intValue10];
    }

    v288 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"numberOfSections"];

    if (v288)
    {
      v289 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"numberOfSections"];
      intValue11 = [v289 intValue];
      metadata73 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata73 setNumberOfSections:intValue11];
    }

    v292 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playCount"];

    if (v292)
    {
      v293 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playCount"];
      intValue12 = [v293 intValue];
      metadata74 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata74 setPlayCount:intValue12];
    }

    v296 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playbackProgress"];

    if (v296)
    {
      v297 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playbackProgress"];
      [v297 floatValue];
      v299 = v298;
      metadata75 = [(_MRContentItemProtobuf *)v24 metadata];
      LODWORD(v301) = v299;
      [metadata75 setPlaybackProgress:v301];
    }

    v302 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playbackRate"];

    if (v302)
    {
      v303 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playbackRate"];
      [v303 floatValue];
      v305 = v304;
      metadata76 = [(_MRContentItemProtobuf *)v24 metadata];
      LODWORD(v307) = v305;
      [metadata76 setPlaybackRate:v307];
    }

    v308 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playlistType"];

    if (v308)
    {
      v309 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"playlistType"];
      intValue13 = [v309 intValue];
      metadata77 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata77 setPlaylistType:intValue13];
    }

    v312 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationType"];

    if (v312)
    {
      v313 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"radioStationType"];
      intValue14 = [v313 intValue];
      metadata78 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata78 setRadioStationType:intValue14];
    }

    v316 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"seasonNumber"];

    if (v316)
    {
      v317 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"seasonNumber"];
      intValue15 = [v317 intValue];
      metadata79 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata79 setSeasonNumber:intValue15];
    }

    v320 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"totalDiscCount"];

    if (v320)
    {
      v321 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"totalDiscCount"];
      intValue16 = [v321 intValue];
      metadata80 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata80 setTotalDiscCount:intValue16];
    }

    v324 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"totalTrackCount"];

    if (v324)
    {
      v325 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"totalTrackCount"];
      intValue17 = [v325 intValue];
      metadata81 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata81 setTotalTrackCount:intValue17];
    }

    v328 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"trackNumber"];

    if (v328)
    {
      v329 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"trackNumber"];
      intValue18 = [v329 intValue];
      metadata82 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata82 setTrackNumber:intValue18];
    }

    v332 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"classicalWork"];

    if (v332)
    {
      v333 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"classicalWork"];
      stringValue = [v333 stringValue];
      metadata83 = [(_MRContentItemProtobuf *)v24 metadata];
      [metadata83 setClassicalWork:stringValue];
    }

    artwork = self->_artwork;
    if (artwork)
    {
      v337 = [(NSDictionary *)artwork objectForKeyedSubscript:@"jpeg"];

      if (v337)
      {
        v338 = objc_alloc(MEMORY[0x1E695DEF0]);
        v339 = [(NSDictionary *)self->_artwork objectForKeyedSubscript:@"jpeg"];
        v340 = [v338 initWithBase64EncodedString:v339 options:0];
        [(_MRContentItemProtobuf *)v24 setArtworkData:v340];
      }

      v341 = objc_alloc_init(_MRUpdateContentItemArtworkMessageProtobuf);
      v23 = 0x1E695D000uLL;
      array = [MEMORY[0x1E695DF70] array];
      [(_MRUpdateContentItemArtworkMessageProtobuf *)v341 setContentItems:array];

      v343 = v341;
      contentItems = [(_MRUpdateContentItemArtworkMessageProtobuf *)v341 contentItems];
      [contentItems addObject:v24];
    }

    else
    {
      v343 = 0;
      v23 = 0x1E695D000uLL;
    }

    v347 = objc_alloc_init(_MRPlaybackQueueProtobuf);
    [(_MRPlaybackQueueProtobuf *)v347 setLocation:0];
    array2 = [MEMORY[0x1E695DF70] array];
    [(_MRPlaybackQueueProtobuf *)v347 setContentItems:array2];

    contentItems2 = [(_MRPlaybackQueueProtobuf *)v347 contentItems];
    [contentItems2 addObject:v24];

    [(_MRPlaybackQueueProtobuf *)v347 setResolvedPlayerPath:v6];
    v346 = v347;
    v350 = [(NSDictionary *)self->_playbackQueue objectForKeyedSubscript:@"queueIdentifier"];
    [(_MRPlaybackQueueProtobuf *)v347 setQueueIdentifier:v350];

    v345 = v343;
  }

  else
  {
    v345 = 0;
    v346 = 0;
  }

  if (self->_supportedCommands)
  {
    v415 = v346;
    v416 = v345;
    v417 = v6;
    v418 = stateCopy;
    v422 = objc_alloc_init(_MRSupportedCommandsProtobuf);
    v440 = 0u;
    v441 = 0u;
    v442 = 0u;
    v443 = 0u;
    obj = self->_supportedCommands;
    v423 = [(NSDictionary *)obj countByEnumeratingWithState:&v440 objects:v448 count:16];
    if (v423)
    {
      v421 = *v441;
      v351 = @"command";
      v352 = @"maximumRating";
      do
      {
        for (i = 0; i != v423; ++i)
        {
          v354 = v352;
          v355 = v351;
          if (*v441 != v421)
          {
            objc_enumerationMutation(obj);
          }

          v356 = *(*(&v440 + 1) + 8 * i);
          v357 = objc_alloc_init(_MRCommandInfoProtobuf);
          v358 = [v356 objectForKeyedSubscript:@"localizedShortTitle"];
          [(_MRCommandInfoProtobuf *)v357 setLocalizedShortTitle:v358];

          v359 = [v356 objectForKeyedSubscript:@"localizedTitle"];
          [(_MRCommandInfoProtobuf *)v357 setLocalizedTitle:v359];

          v438 = 0u;
          v439 = 0u;
          v436 = 0u;
          v437 = 0u;
          v360 = [v356 objectForKeyedSubscript:@"preferredIntervals"];
          v361 = [v360 countByEnumeratingWithState:&v436 objects:v447 count:16];
          if (v361)
          {
            v362 = v361;
            v363 = *v437;
            do
            {
              for (j = 0; j != v362; ++j)
              {
                if (*v437 != v363)
                {
                  objc_enumerationMutation(v360);
                }

                [*(*(&v436 + 1) + 8 * j) doubleValue];
                [(_MRCommandInfoProtobuf *)v357 addPreferredInterval:?];
              }

              v362 = [v360 countByEnumeratingWithState:&v436 objects:v447 count:16];
            }

            while (v362);
          }

          v434 = 0u;
          v435 = 0u;
          v432 = 0u;
          v433 = 0u;
          v365 = [v356 objectForKeyedSubscript:@"supportedInterstionPositions"];
          v366 = [v365 countByEnumeratingWithState:&v432 objects:v446 count:16];
          if (v366)
          {
            v367 = v366;
            v368 = *v433;
            do
            {
              for (k = 0; k != v367; ++k)
              {
                if (*v433 != v368)
                {
                  objc_enumerationMutation(v365);
                }

                -[_MRCommandInfoProtobuf addSupportedInsertionPositions:](v357, "addSupportedInsertionPositions:", [*(*(&v432 + 1) + 8 * k) intValue]);
              }

              v367 = [v365 countByEnumeratingWithState:&v432 objects:v446 count:16];
            }

            while (v367);
          }

          v430 = 0u;
          v431 = 0u;
          v428 = 0u;
          v429 = 0u;
          v370 = [v356 objectForKeyedSubscript:@"supportedPlaybackQueueTypes"];
          v371 = [v370 countByEnumeratingWithState:&v428 objects:v445 count:16];
          if (v371)
          {
            v372 = v371;
            v373 = *v429;
            do
            {
              for (m = 0; m != v372; ++m)
              {
                if (*v429 != v373)
                {
                  objc_enumerationMutation(v370);
                }

                -[_MRCommandInfoProtobuf addSupportedPlaybackQueueTypes:](v357, "addSupportedPlaybackQueueTypes:", [*(*(&v428 + 1) + 8 * m) intValue]);
              }

              v372 = [v370 countByEnumeratingWithState:&v428 objects:v445 count:16];
            }

            while (v372);
          }

          v426 = 0u;
          v427 = 0u;
          v424 = 0u;
          v425 = 0u;
          v375 = [v356 objectForKeyedSubscript:@"supportedRates"];
          v376 = [v375 countByEnumeratingWithState:&v424 objects:v444 count:16];
          if (v376)
          {
            v377 = v376;
            v378 = *v425;
            do
            {
              for (n = 0; n != v377; ++n)
              {
                if (*v425 != v378)
                {
                  objc_enumerationMutation(v375);
                }

                [*(*(&v424 + 1) + 8 * n) doubleValue];
                *&v380 = v380;
                [(_MRCommandInfoProtobuf *)v357 addSupportedRate:v380];
              }

              v377 = [v375 countByEnumeratingWithState:&v424 objects:v444 count:16];
            }

            while (v377);
          }

          v351 = v355;
          v381 = [v356 objectForKeyedSubscript:v355];

          if (v381)
          {
            v382 = [v356 objectForKeyedSubscript:v355];
            -[_MRCommandInfoProtobuf setCommand:](v357, "setCommand:", [v382 intValue]);
          }

          v352 = v354;
          v383 = [v356 objectForKeyedSubscript:{v354, v415, v416}];

          if (v383)
          {
            v384 = [v356 objectForKeyedSubscript:v354];
            [v384 floatValue];
            [(_MRCommandInfoProtobuf *)v357 setMaximumRating:?];
          }

          v385 = [v356 objectForKeyedSubscript:@"minimumRating"];

          if (v385)
          {
            v386 = [v356 objectForKeyedSubscript:@"minimumRating"];
            [v386 floatValue];
            [(_MRCommandInfoProtobuf *)v357 setMinimumRating:?];
          }

          v387 = [v356 objectForKeyedSubscript:@"preferredPlaybackRate"];

          if (v387)
          {
            v388 = [v356 objectForKeyedSubscript:@"preferredPlaybackRate"];
            [v388 floatValue];
            [(_MRCommandInfoProtobuf *)v357 setPreferredPlaybackRate:?];
          }

          v389 = [v356 objectForKeyedSubscript:@"canScrub"];

          if (v389)
          {
            v390 = [v356 objectForKeyedSubscript:@"canScrub"];
            -[_MRCommandInfoProtobuf setCanScrub:](v357, "setCanScrub:", [v390 intValue]);
          }

          v391 = [v356 objectForKeyedSubscript:@"numAvailableSkips"];

          if (v391)
          {
            v392 = [v356 objectForKeyedSubscript:@"numAvailableSkips"];
            -[_MRCommandInfoProtobuf setNumAvailableSkips:](v357, "setNumAvailableSkips:", [v392 intValue]);
          }

          v393 = [v356 objectForKeyedSubscript:@"presentationStyle"];

          if (v393)
          {
            v394 = [v356 objectForKeyedSubscript:@"presentationStyle"];
            -[_MRCommandInfoProtobuf setPresentationStyle:](v357, "setPresentationStyle:", [v394 intValue]);
          }

          v395 = [v356 objectForKeyedSubscript:@"skipFrequency"];

          if (v395)
          {
            v396 = [v356 objectForKeyedSubscript:@"skipFrequency"];
            -[_MRCommandInfoProtobuf setSkipFrequency:](v357, "setSkipFrequency:", [v396 intValue]);
          }

          v397 = [v356 objectForKeyedSubscript:@"skipInterval"];

          if (v397)
          {
            v398 = [v356 objectForKeyedSubscript:@"skipInterval"];
            -[_MRCommandInfoProtobuf setSkipInterval:](v357, "setSkipInterval:", [v398 intValue]);
          }

          v399 = [v356 objectForKeyedSubscript:@"upNextItemCount"];

          if (v399)
          {
            v400 = [v356 objectForKeyedSubscript:@"upNextItemCount"];
            -[_MRCommandInfoProtobuf setUpNextItemCount:](v357, "setUpNextItemCount:", [v400 intValue]);
          }

          v401 = [v356 objectForKeyedSubscript:@"active"];

          if (v401)
          {
            v402 = [v356 objectForKeyedSubscript:@"active"];
            -[_MRCommandInfoProtobuf setActive:](v357, "setActive:", [v402 BOOLValue]);
          }

          v403 = [v356 objectForKeyedSubscript:@"enabled"];

          if (v403)
          {
            v404 = [v356 objectForKeyedSubscript:@"enabled"];
            -[_MRCommandInfoProtobuf setEnabled:](v357, "setEnabled:", [v404 BOOLValue]);
          }

          [(_MRSupportedCommandsProtobuf *)v422 addSupportedCommand:v357];
        }

        v423 = [(NSDictionary *)obj countByEnumeratingWithState:&v440 objects:v448 count:16];
      }

      while (v423);
    }

    v22 = 1;
    v6 = v417;
    stateCopy = v418;
    v345 = v416;
    v23 = 0x1E695D000;
    v346 = v415;
  }

  else
  {
    v422 = 0;
  }

  array3 = [*(v23 + 3952) array];
  if (v22)
  {
    if (!v6)
    {
      v412 = 0;
      v409 = v419;
      goto LABEL_202;
    }

    v406 = objc_alloc_init(_MRSetStateMessageProtobuf);
    [(_MRSetStateMessageProtobuf *)v406 setPlayerPath:v6];
    [(_MRSetStateMessageProtobuf *)v406 setPlaybackQueue:v346];
    [(_MRSetStateMessageProtobuf *)v406 setSupportedCommands:v422];
    v407 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v406];
    if (v345)
    {
      v408 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v345];
      [array3 addObject:v408];
    }

    [array3 addObject:v407];
  }

  v409 = v419;
  if (v419)
  {
    v410 = objc_alloc_init(_MRSetNowPlayingClientMessageProtobuf);
    [(_MRSetNowPlayingClientMessageProtobuf *)v410 setClient:v419];
    v411 = [(MRExternalJSONClientConnection *)self _createProtocolMessage:objc_opt_class() underlyingCodableMessage:v410];
    [array3 addObject:v411];
  }

  v412 = array3;
LABEL_202:

  v413 = *MEMORY[0x1E69E9840];

  return v412;
}

- (id)_encodeVolumeDidChange:(id)change
{
  v3 = MEMORY[0x1E695DF90];
  changeCopy = change;
  dictionary = [v3 dictionary];
  underlyingCodableMessage = [changeCopy underlyingCodableMessage];

  endpointUID = [underlyingCodableMessage endpointUID];
  [dictionary setObject:endpointUID forKeyedSubscript:@"deviceUID"];

  v8 = MEMORY[0x1E696AB90];
  v9 = MEMORY[0x1E696AD98];
  [underlyingCodableMessage volume];
  v10 = [v9 numberWithFloat:?];
  v11 = v10;
  if (v10)
  {
    [v10 decimalValue];
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
  }

  v12 = [v8 decimalNumberWithDecimal:v14];
  [dictionary setObject:v12 forKeyedSubscript:@"volumeLevel"];

  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"muting"];

  return dictionary;
}

- (id)_createProtocolMessage:(Class)message underlyingCodableMessage:(id)codableMessage
{
  codableMessageCopy = codableMessage;
  v6 = [[message alloc] initWithUnderlyingCodableMessage:codableMessageCopy error:0];

  [v6 setTimestamp:mach_absolute_time()];

  return v6;
}

@end