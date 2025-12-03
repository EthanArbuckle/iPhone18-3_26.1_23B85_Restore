@interface BMNowPlayingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMNowPlayingEvent)initWithDKEvent:(id)event outputDevices:(id)devices iTunesArtistIdentifier:(id)identifier iTunesAlbumIdentifier:(id)albumIdentifier;
- (BMNowPlayingEvent)initWithProto:(id)proto;
- (BMNowPlayingEvent)initWithProtoData:(id)data;
- (BMNowPlayingEvent)initWithUniqueID:(id)d bundleID:(id)iD absoluteTimestamp:(double)timestamp playbackState:(unint64_t)state album:(id)album artist:(id)artist duration:(unsigned int)duration genre:(id)self0 title:(id)self1 elapsed:(unsigned int)self2 mediaType:(id)self3 itemMediaType:(int)self4 itemMediaSubtype:(int)self5 iTunesStoreIdentifier:(id)self6 iTunesSubscriptionIdentifier:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isAirPlayVideo:(BOOL)video isRemoteControl:(BOOL)control outputDevices:(id)devices;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMNowPlayingEvent

- (BMNowPlayingEvent)initWithUniqueID:(id)d bundleID:(id)iD absoluteTimestamp:(double)timestamp playbackState:(unint64_t)state album:(id)album artist:(id)artist duration:(unsigned int)duration genre:(id)self0 title:(id)self1 elapsed:(unsigned int)self2 mediaType:(id)self3 itemMediaType:(int)self4 itemMediaSubtype:(int)self5 iTunesStoreIdentifier:(id)self6 iTunesSubscriptionIdentifier:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isAirPlayVideo:(BOOL)video isRemoteControl:(BOOL)control outputDevices:(id)devices
{
  dCopy = d;
  iDCopy = iD;
  albumCopy = album;
  artistCopy = artist;
  genreCopy = genre;
  titleCopy = title;
  typeCopy = type;
  identifierCopy = identifier;
  subscriptionIdentifierCopy = subscriptionIdentifier;
  artistIdentifierCopy = artistIdentifier;
  albumIdentifierCopy = albumIdentifier;
  groupIdentifierCopy = groupIdentifier;
  devicesCopy = devices;
  v47.receiver = self;
  v47.super_class = BMNowPlayingEvent;
  v32 = [(BMEventBase *)&v47 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_uniqueID, d);
    objc_storeStrong(&v33->_bundleID, iD);
    v33->_absoluteTimestamp = timestamp;
    v33->_playbackState = state;
    objc_storeStrong(&v33->_album, album);
    objc_storeStrong(&v33->_artist, artist);
    v33->_duration = duration;
    objc_storeStrong(&v33->_genre, genre);
    objc_storeStrong(&v33->_title, title);
    v33->_elapsed = elapsed;
    objc_storeStrong(&v33->_mediaType, type);
    v33->_itemMediaType = mediaType;
    v33->_itemMediaSubtype = subtype;
    objc_storeStrong(&v33->_iTunesStoreIdentifier, identifier);
    objc_storeStrong(&v33->_iTunesSubscriptionIdentifier, subscriptionIdentifier);
    objc_storeStrong(&v33->_iTunesArtistIdentifier, artistIdentifier);
    objc_storeStrong(&v33->_iTunesAlbumIdentifier, albumIdentifier);
    objc_storeStrong(&v33->_groupIdentifier, groupIdentifier);
    v33->_isAirPlayVideo = video;
    v33->_isRemoteControl = control;
    objc_storeStrong(&v33->_outputDevices, devices);
  }

  return v33;
}

- (BMNowPlayingEvent)initWithDKEvent:(id)event outputDevices:(id)devices iTunesArtistIdentifier:(id)identifier iTunesAlbumIdentifier:(id)albumIdentifier
{
  v112 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  devicesCopy = devices;
  identifierCopy = identifier;
  albumIdentifierCopy = albumIdentifier;
  metadata = [eventCopy metadata];
  iTunesStoreIdentifier = [get_DKNowPlayingMetadataKeyClass() iTunesStoreIdentifier];
  v15 = [metadata objectForKeyedSubscript:iTunesStoreIdentifier];

  metadata2 = [eventCopy metadata];
  iTunesSubscriptionIdentifier = [get_DKNowPlayingMetadataKeyClass() iTunesSubscriptionIdentifier];
  v18 = [metadata2 objectForKeyedSubscript:iTunesSubscriptionIdentifier];

  source = [eventCopy source];
  itemID = [source itemID];
  value = [eventCopy value];
  stringValue = [value stringValue];
  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v22 = v21;
  metadata3 = [eventCopy metadata];
  playing = [get_DKNowPlayingMetadataKeyClass() playing];
  v93 = metadata3;
  v90 = [metadata3 objectForKeyedSubscript:?];
  integerValue = [v90 integerValue];
  v25 = integerValue;
  v96 = source;
  v103 = itemID;
  if (integerValue >= 6)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [BMNowPlayingEvent initWithDKEvent:v25 outputDevices:? iTunesArtistIdentifier:? iTunesAlbumIdentifier:?];
    }

    v80 = 0;
  }

  else
  {
    v80 = integerValue & 7;
  }

  metadata4 = [eventCopy metadata];
  album = [get_DKNowPlayingMetadataKeyClass() album];
  v89 = metadata4;
  v87 = [metadata4 objectForKeyedSubscript:?];
  metadata5 = [eventCopy metadata];
  artist = [get_DKNowPlayingMetadataKeyClass() artist];
  v86 = metadata5;
  v84 = [metadata5 objectForKeyedSubscript:?];
  metadata6 = [eventCopy metadata];
  duration = [get_DKNowPlayingMetadataKeyClass() duration];
  v83 = metadata6;
  v81 = [metadata6 objectForKeyedSubscript:?];
  unsignedLongValue = [v81 unsignedLongValue];
  metadata7 = [eventCopy metadata];
  genre = [get_DKNowPlayingMetadataKeyClass() genre];
  v79 = metadata7;
  v77 = [metadata7 objectForKeyedSubscript:?];
  metadata8 = [eventCopy metadata];
  title = [get_DKNowPlayingMetadataKeyClass() title];
  v76 = metadata8;
  v74 = [metadata8 objectForKeyedSubscript:?];
  metadata9 = [eventCopy metadata];
  [get_DKNowPlayingMetadataKeyClass() elapsed];
  v71 = v73 = metadata9;
  v70 = [metadata9 objectForKeyedSubscript:?];
  unsignedLongValue2 = [v70 unsignedLongValue];
  metadata10 = [eventCopy metadata];
  mediaType = [get_DKNowPlayingMetadataKeyClass() mediaType];
  v69 = metadata10;
  v67 = [metadata10 objectForKeyedSubscript:?];
  v98 = v15;
  stringValue2 = [v15 stringValue];
  v97 = v18;
  stringValue3 = [v18 stringValue];
  v100 = identifierCopy;
  stringValue4 = [identifierCopy stringValue];
  v99 = albumIdentifierCopy;
  stringValue5 = [albumIdentifierCopy stringValue];
  v101 = eventCopy;
  metadata11 = [eventCopy metadata];
  isAirPlayVideo = [get_DKNowPlayingMetadataKeyClass() isAirPlayVideo];
  v61 = metadata11;
  v59 = [metadata11 objectForKeyedSubscript:?];
  bOOLValue = [v59 BOOLValue];
  v35 = devicesCopy;
  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v37 = v35;
  v38 = [v37 countByEnumeratingWithState:&v105 objects:v109 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v106;
    do
    {
      v41 = 0;
      do
      {
        if (*v106 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v105 + 1) + 8 * v41);
        v43 = [BMNowPlayingOutputDevice alloc];
        deviceType = [v42 deviceType];
        v45 = deviceType;
        if (deviceType >= 5)
        {
          v47 = __biome_log_for_category();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v111 = v45;
            _os_log_fault_impl(&dword_1848EE000, v47, OS_LOG_TYPE_FAULT, "BMNowPlayingAVOutputDeviceType: Unrecognized value for outputDevice: %ld", buf, 0xCu);
          }

          v46 = 0;
        }

        else
        {
          v46 = deviceType + 1;
        }

        deviceSubType = [v42 deviceSubType];
        v49 = deviceSubType;
        if (deviceSubType >= 0x14)
        {
          v51 = __biome_log_for_category();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v111 = v49;
            _os_log_fault_impl(&dword_1848EE000, v51, OS_LOG_TYPE_FAULT, "BMNowPlayingAVOutputDeviceSubType: Unrecognized value for outputSubtype: %ld", buf, 0xCu);
          }

          v50 = 0;
        }

        else
        {
          v50 = deviceSubType + 1;
        }

        deviceID = [v42 deviceID];
        v53 = [(BMNowPlayingOutputDevice *)v43 initWithDeviceType:v46 deviceSubType:v50 deviceId:deviceID];
        [v36 addObject:v53];

        ++v41;
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v105 objects:v109 count:16];
    }

    while (v39);
  }

  LOBYTE(v57) = bOOLValue;
  LODWORD(v56) = unsignedLongValue2;
  v104 = [(BMNowPlayingEvent *)self initWithUniqueID:v103 bundleID:stringValue absoluteTimestamp:v80 playbackState:v87 album:v84 artist:unsignedLongValue duration:v22 genre:v77 title:v74 elapsed:v56 mediaType:v67 iTunesStoreIdentifier:stringValue2 iTunesSubscriptionIdentifier:stringValue3 iTunesArtistIdentifier:stringValue4 iTunesAlbumIdentifier:stringValue5 isAirPlayVideo:v57 outputDevices:v36];

  v54 = *MEMORY[0x1E69E9840];
  return v104;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlaying event with uniqueId:%@", self->_uniqueID];

  return v2;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMNowPlayingEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMNowPlayingEvent)initWithProto:(id)proto
{
  v53 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v46 = protoCopy;
      v5 = protoCopy;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      outputDevices = [v5 outputDevices];
      v8 = [v6 initWithCapacity:{objc_msgSend(outputDevices, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      outputDevices2 = [v5 outputDevices];
      v10 = [outputDevices2 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v49;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(outputDevices2);
            }

            v14 = *(*(&v48 + 1) + 8 * i);
            v15 = [BMNowPlayingOutputDevice alloc];
            outputDeviceType = [v14 outputDeviceType];
            outputDeviceSubType = [v14 outputDeviceSubType];
            outputDeviceId = [v14 outputDeviceId];
            v19 = [(BMNowPlayingOutputDevice *)v15 initWithDeviceType:outputDeviceType deviceSubType:outputDeviceSubType deviceId:outputDeviceId];
            [v8 addObject:v19];
          }

          v11 = [outputDevices2 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v11);
      }

      playbackState = [v5 playbackState];
      itemMediaType = [v5 itemMediaType];
      itemMediaSubtype = [v5 itemMediaSubtype];
      uniqueId = [v5 uniqueId];
      bundleId = [v5 bundleId];
      [v5 absoluteTimestamp];
      v21 = v20;
      album = [v5 album];
      artist = [v5 artist];
      duration = [v5 duration];
      genre = [v5 genre];
      title = [v5 title];
      elapsed = [v5 elapsed];
      mediaType = [v5 mediaType];
      iTunesStoreIdentifier = [v5 iTunesStoreIdentifier];
      iTunesSubscriptionIdentifier = [v5 iTunesSubscriptionIdentifier];
      iTunesArtistIdentifier = [v5 iTunesArtistIdentifier];
      iTunesAlbumIdentifier = [v5 iTunesAlbumIdentifier];
      groupIdentifier = [v5 groupIdentifier];
      isAirPlayVideo = [v5 isAirPlayVideo];
      BYTE1(v31) = [v5 isRemoteControl];
      LOBYTE(v31) = isAirPlayVideo;
      LODWORD(v30) = elapsed;
      self = [(BMNowPlayingEvent *)selfCopy initWithUniqueID:uniqueId bundleID:bundleId absoluteTimestamp:playbackState playbackState:album album:artist artist:duration duration:v21 genre:genre title:title elapsed:v30 mediaType:mediaType itemMediaType:__PAIR64__(itemMediaSubtype itemMediaSubtype:itemMediaType) iTunesStoreIdentifier:iTunesStoreIdentifier iTunesSubscriptionIdentifier:iTunesSubscriptionIdentifier iTunesArtistIdentifier:iTunesArtistIdentifier iTunesAlbumIdentifier:iTunesAlbumIdentifier groupIdentifier:groupIdentifier isAirPlayVideo:v31 isRemoteControl:v8 outputDevices:?];

      v26 = v5;
      selfCopy2 = self;
      protoCopy = v46;
    }

    else
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [(BMNowPlayingEvent *)self initWithProto:v26];
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BMNowPlayingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNowPlayingEvent alloc] initWithData:dataCopy];

    self = [(BMNowPlayingEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_outputDevices, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_outputDevices;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        proto = [*(*(&v18 + 1) + 8 * i) proto];
        [v3 addObject:proto];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  [v10 setUniqueId:self->_uniqueID];
  [v10 setBundleId:self->_bundleID];
  [v10 setAbsoluteTimestamp:self->_absoluteTimestamp];
  playbackState = self->_playbackState;
  if (playbackState >= 6)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(BMNowPlayingEvent *)playbackState proto];
    }
  }

  else
  {
    itemMediaType = self->_itemMediaType;
    if (itemMediaType >= 3)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(BMNowPlayingEvent *)itemMediaType proto];
      }
    }

    else
    {
      itemMediaSubtype = self->_itemMediaSubtype;
      if (itemMediaSubtype < 8)
      {
        [v10 setPlaybackState:self->_playbackState];
        [v10 setAlbum:self->_album];
        [v10 setArtist:self->_artist];
        [v10 setDuration:self->_duration];
        [v10 setGenre:self->_genre];
        [v10 setTitle:self->_title];
        [v10 setElapsed:self->_elapsed];
        [v10 setMediaType:self->_mediaType];
        [v10 setItemMediaType:itemMediaType];
        [v10 setItemMediaSubtype:itemMediaSubtype];
        [v10 setITunesStoreIdentifier:self->_iTunesStoreIdentifier];
        [v10 setITunesSubscriptionIdentifier:self->_iTunesSubscriptionIdentifier];
        [v10 setITunesArtistIdentifier:self->_iTunesArtistIdentifier];
        [v10 setITunesAlbumIdentifier:self->_iTunesAlbumIdentifier];
        [v10 setGroupIdentifier:self->_groupIdentifier];
        [v10 setIsAirPlayVideo:self->_isAirPlayVideo];
        [v10 setIsRemoteControl:self->_isRemoteControl];
        [v10 setOutputDevices:v3];
        v14 = v10;
        goto LABEL_19;
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(BMNowPlayingEvent *)itemMediaSubtype proto];
      }
    }
  }

  v14 = 0;
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)hash
{
  v3 = self->_playbackState + (self->_absoluteTimestamp + (31 * [(NSString *)self->_uniqueID hash])) * 31.0;
  v4 = [(NSString *)self->_album hash]+ v3 * 31.0;
  v5 = [(NSString *)self->_artist hash];
  LODWORD(v6) = self->_duration;
  v7 = [(NSString *)self->_genre hash]+ (v6 + (v5 + v4 * 31.0) * 31.0) * 31.0;
  v8 = [(NSString *)self->_title hash];
  LODWORD(v9) = self->_elapsed;
  v10 = self->_itemMediaSubtype + (self->_itemMediaType + ([(NSString *)self->_mediaType hash]+ (v9 + (v8 + v7 * 31.0) * 31.0) * 31.0) * 31.0) * 31.0;
  v11 = [(NSString *)self->_iTunesStoreIdentifier hash]+ v10 * 31.0;
  v12 = [(NSString *)self->_iTunesSubscriptionIdentifier hash]+ v11 * 31.0;
  v13 = [(NSString *)self->_iTunesArtistIdentifier hash]+ v12 * 31.0;
  v14 = [(NSString *)self->_iTunesAlbumIdentifier hash]+ v13 * 31.0;
  v15 = [(NSString *)self->_groupIdentifier hash];
  LOBYTE(v16) = self->_isAirPlayVideo;
  *&v17 = v16;
  v18 = *&v17 + (v15 + v14 * 31.0) * 31.0;
  LOBYTE(v17) = self->_isRemoteControl;
  v19 = [(NSArray *)self->_outputDevices hash]+ (v17 + v18 * 31.0) * 31.0;
  return (v19 + [(NSString *)self->_bundleID hash]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_108;
  }

  v8 = equalCopy;
  v9 = v8;
  uniqueID = self->_uniqueID;
  v11 = uniqueID;
  if (uniqueID)
  {
LABEL_5:
    uniqueID = [v9 uniqueID];
    v79 = [(NSString *)v11 isEqual:uniqueID];

    if (uniqueID)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  uniqueID2 = [v8 uniqueID];
  if (uniqueID2)
  {
    v11 = self->_uniqueID;
    goto LABEL_5;
  }

  v79 = 1;
LABEL_9:

LABEL_10:
  bundleID = self->_bundleID;
  v15 = bundleID;
  if (bundleID)
  {
    goto LABEL_13;
  }

  uniqueID2 = [v9 bundleID];
  if (uniqueID2)
  {
    v15 = self->_bundleID;
LABEL_13:
    bundleID = [v9 bundleID];
    v78 = [(NSString *)v15 isEqual:bundleID];

    if (bundleID)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v78 = 1;
LABEL_16:

LABEL_17:
  album = self->_album;
  v18 = album;
  if (album)
  {
    goto LABEL_20;
  }

  uniqueID2 = [v9 album];
  if (uniqueID2)
  {
    v18 = self->_album;
LABEL_20:
    album = [v9 album];
    v77 = [(NSString *)v18 isEqual:album];

    if (album)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v77 = 1;
LABEL_23:

LABEL_24:
  artist = self->_artist;
  v21 = artist;
  if (artist)
  {
    goto LABEL_27;
  }

  uniqueID2 = [v9 artist];
  if (uniqueID2)
  {
    v21 = self->_artist;
LABEL_27:
    artist = [v9 artist];
    v76 = [(NSString *)v21 isEqual:artist];

    if (artist)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v76 = 1;
LABEL_30:

LABEL_31:
  genre = self->_genre;
  v24 = genre;
  if (genre)
  {
    goto LABEL_34;
  }

  uniqueID2 = [v9 genre];
  if (uniqueID2)
  {
    v24 = self->_genre;
LABEL_34:
    genre = [v9 genre];
    v75 = [(NSString *)v24 isEqual:genre];

    if (genre)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v75 = 1;
LABEL_37:

LABEL_38:
  title = self->_title;
  v27 = title;
  if (title)
  {
    goto LABEL_41;
  }

  uniqueID2 = [v9 title];
  if (uniqueID2)
  {
    v27 = self->_title;
LABEL_41:
    title = [v9 title];
    v74 = [(NSString *)v27 isEqual:title];

    if (title)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v74 = 1;
LABEL_44:

LABEL_45:
  mediaType = self->_mediaType;
  iTunesStoreIdentifier = mediaType;
  if (mediaType)
  {
    goto LABEL_48;
  }

  uniqueID2 = [v9 mediaType];
  if (uniqueID2)
  {
    iTunesStoreIdentifier = self->_mediaType;
LABEL_48:
    mediaType = [v9 mediaType];
    v73 = [iTunesStoreIdentifier isEqual:mediaType];

    if (mediaType)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v73 = 1;
LABEL_51:

LABEL_52:
  iTunesStoreIdentifier2 = 112;
  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  v34 = iTunesStoreIdentifier;
  if (iTunesStoreIdentifier)
  {
    goto LABEL_55;
  }

  iTunesStoreIdentifier = [v9 iTunesStoreIdentifier];
  if (iTunesStoreIdentifier)
  {
    v34 = self->_iTunesStoreIdentifier;
LABEL_55:
    iTunesStoreIdentifier2 = [v9 iTunesStoreIdentifier];
    v72 = [(NSString *)v34 isEqual:iTunesStoreIdentifier2];

    if (iTunesStoreIdentifier)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v72 = 1;
LABEL_58:

LABEL_59:
  iTunesSubscriptionIdentifier = 120;
  iTunesSubscriptionIdentifier = self->_iTunesSubscriptionIdentifier;
  v37 = iTunesSubscriptionIdentifier;
  if (iTunesSubscriptionIdentifier)
  {
    goto LABEL_62;
  }

  iTunesStoreIdentifier2 = [v9 iTunesSubscriptionIdentifier];
  if (iTunesStoreIdentifier2)
  {
    v37 = self->_iTunesSubscriptionIdentifier;
LABEL_62:
    iTunesSubscriptionIdentifier = [v9 iTunesSubscriptionIdentifier];
    v71 = [(NSString *)v37 isEqual:iTunesSubscriptionIdentifier];

    if (iTunesSubscriptionIdentifier)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v71 = 1;
LABEL_65:

LABEL_66:
  iTunesArtistIdentifier = self->_iTunesArtistIdentifier;
  v39 = iTunesArtistIdentifier;
  if (iTunesArtistIdentifier)
  {
    goto LABEL_69;
  }

  iTunesSubscriptionIdentifier = [v9 iTunesArtistIdentifier];
  if (iTunesSubscriptionIdentifier)
  {
    v39 = self->_iTunesArtistIdentifier;
LABEL_69:
    iTunesArtistIdentifier = [v9 iTunesArtistIdentifier];
    v40 = [(NSString *)v39 isEqual:iTunesArtistIdentifier];

    if (iTunesArtistIdentifier)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v40 = 1;
LABEL_72:

LABEL_73:
  iTunesAlbumIdentifier = self->_iTunesAlbumIdentifier;
  v42 = iTunesAlbumIdentifier;
  if (iTunesAlbumIdentifier)
  {
    goto LABEL_76;
  }

  iTunesArtistIdentifier = [v9 iTunesAlbumIdentifier];
  if (iTunesArtistIdentifier)
  {
    v42 = self->_iTunesAlbumIdentifier;
LABEL_76:
    iTunesAlbumIdentifier = [v9 iTunesAlbumIdentifier];
    v70 = [(NSString *)v42 isEqual:iTunesAlbumIdentifier];

    if (iTunesAlbumIdentifier)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v70 = 1;
LABEL_79:

LABEL_80:
  groupIdentifier = self->_groupIdentifier;
  v44 = groupIdentifier;
  if (!groupIdentifier)
  {
    iTunesAlbumIdentifier = [v9 groupIdentifier];
    if (!iTunesAlbumIdentifier)
    {
      v46 = 1;
LABEL_86:

      goto LABEL_87;
    }

    v44 = self->_groupIdentifier;
  }

  groupIdentifier = [v9 groupIdentifier];
  v46 = [(NSString *)v44 isEqual:groupIdentifier];

  if (!groupIdentifier)
  {
    goto LABEL_86;
  }

LABEL_87:
  v47 = [(NSArray *)self->_outputDevices count];
  outputDevices = [v9 outputDevices];
  v49 = [outputDevices count];

  if (v47 == v49)
  {
    v50 = v47 - 1;
    if (v47 < 1)
    {
      LOBYTE(v56) = 1;
    }

    else
    {
      v68 = v46;
      v69 = equalCopy;
      v51 = v40;
      v52 = 0;
      do
      {
        v53 = [(NSArray *)self->_outputDevices objectAtIndexedSubscript:v52];
        outputDevices2 = [v9 outputDevices];
        v55 = [outputDevices2 objectAtIndexedSubscript:v52];
        v56 = [v53 isEqual:v55];

        if (v56)
        {
          v57 = v50 == v52;
        }

        else
        {
          v57 = 1;
        }

        ++v52;
      }

      while (!v57);
      v40 = v51;
      equalCopy = v69;
      v46 = v68;
    }
  }

  else
  {
    LOBYTE(v56) = 0;
  }

  absoluteTimestamp = self->_absoluteTimestamp;
  [v9 absoluteTimestamp];
  if (absoluteTimestamp == v59 && (playbackState = self->_playbackState, playbackState == [v9 playbackState]) && (duration = self->_duration, duration == objc_msgSend(v9, "duration")) && (elapsed = self->_elapsed, elapsed == objc_msgSend(v9, "elapsed")) && (itemMediaType = self->_itemMediaType, itemMediaType == objc_msgSend(v9, "itemMediaType")) && (itemMediaSubtype = self->_itemMediaSubtype, itemMediaSubtype == objc_msgSend(v9, "itemMediaSubtype")) && (isAirPlayVideo = self->_isAirPlayVideo, isAirPlayVideo == objc_msgSend(v9, "isAirPlayVideo")))
  {
    isRemoteControl = self->_isRemoteControl;
    v13 = (isRemoteControl == [v9 isRemoteControl]) & v79 & v78 & v77 & v76 & v75 & v74 & v73 & v72 & v71 & v40 & v70 & v46 & v56;
  }

  else
  {
    v13 = 0;
  }

LABEL_108:
  return v13 & 1;
}

@end