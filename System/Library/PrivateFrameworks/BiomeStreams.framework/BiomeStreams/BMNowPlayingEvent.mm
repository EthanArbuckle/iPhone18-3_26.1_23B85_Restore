@interface BMNowPlayingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMNowPlayingEvent)initWithDKEvent:(id)a3 outputDevices:(id)a4 iTunesArtistIdentifier:(id)a5 iTunesAlbumIdentifier:(id)a6;
- (BMNowPlayingEvent)initWithProto:(id)a3;
- (BMNowPlayingEvent)initWithProtoData:(id)a3;
- (BMNowPlayingEvent)initWithUniqueID:(id)a3 bundleID:(id)a4 absoluteTimestamp:(double)a5 playbackState:(unint64_t)a6 album:(id)a7 artist:(id)a8 duration:(unsigned int)a9 genre:(id)a10 title:(id)a11 elapsed:(unsigned int)a12 mediaType:(id)a13 itemMediaType:(int)a14 itemMediaSubtype:(int)a15 iTunesStoreIdentifier:(id)a16 iTunesSubscriptionIdentifier:(id)a17 iTunesArtistIdentifier:(id)a18 iTunesAlbumIdentifier:(id)a19 groupIdentifier:(id)a20 isAirPlayVideo:(BOOL)a21 isRemoteControl:(BOOL)a22 outputDevices:(id)a23;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMNowPlayingEvent

- (BMNowPlayingEvent)initWithUniqueID:(id)a3 bundleID:(id)a4 absoluteTimestamp:(double)a5 playbackState:(unint64_t)a6 album:(id)a7 artist:(id)a8 duration:(unsigned int)a9 genre:(id)a10 title:(id)a11 elapsed:(unsigned int)a12 mediaType:(id)a13 itemMediaType:(int)a14 itemMediaSubtype:(int)a15 iTunesStoreIdentifier:(id)a16 iTunesSubscriptionIdentifier:(id)a17 iTunesArtistIdentifier:(id)a18 iTunesAlbumIdentifier:(id)a19 groupIdentifier:(id)a20 isAirPlayVideo:(BOOL)a21 isRemoteControl:(BOOL)a22 outputDevices:(id)a23
{
  v45 = a3;
  v43 = a4;
  v41 = a7;
  v40 = a8;
  v39 = a10;
  v46 = a11;
  v44 = a13;
  v42 = a16;
  v27 = a17;
  v28 = a18;
  v29 = a19;
  v30 = a20;
  v31 = a23;
  v47.receiver = self;
  v47.super_class = BMNowPlayingEvent;
  v32 = [(BMEventBase *)&v47 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_uniqueID, a3);
    objc_storeStrong(&v33->_bundleID, a4);
    v33->_absoluteTimestamp = a5;
    v33->_playbackState = a6;
    objc_storeStrong(&v33->_album, a7);
    objc_storeStrong(&v33->_artist, a8);
    v33->_duration = a9;
    objc_storeStrong(&v33->_genre, a10);
    objc_storeStrong(&v33->_title, a11);
    v33->_elapsed = a12;
    objc_storeStrong(&v33->_mediaType, a13);
    v33->_itemMediaType = a14;
    v33->_itemMediaSubtype = a15;
    objc_storeStrong(&v33->_iTunesStoreIdentifier, a16);
    objc_storeStrong(&v33->_iTunesSubscriptionIdentifier, a17);
    objc_storeStrong(&v33->_iTunesArtistIdentifier, a18);
    objc_storeStrong(&v33->_iTunesAlbumIdentifier, a19);
    objc_storeStrong(&v33->_groupIdentifier, a20);
    v33->_isAirPlayVideo = a21;
    v33->_isRemoteControl = a22;
    objc_storeStrong(&v33->_outputDevices, a23);
  }

  return v33;
}

- (BMNowPlayingEvent)initWithDKEvent:(id)a3 outputDevices:(id)a4 iTunesArtistIdentifier:(id)a5 iTunesAlbumIdentifier:(id)a6
{
  v112 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 metadata];
  v14 = [get_DKNowPlayingMetadataKeyClass() iTunesStoreIdentifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = [v9 metadata];
  v17 = [get_DKNowPlayingMetadataKeyClass() iTunesSubscriptionIdentifier];
  v18 = [v16 objectForKeyedSubscript:v17];

  v19 = [v9 source];
  v20 = [v19 itemID];
  v95 = [v9 value];
  v102 = [v95 stringValue];
  v94 = [v9 startDate];
  [v94 timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = [v9 metadata];
  v92 = [get_DKNowPlayingMetadataKeyClass() playing];
  v93 = v23;
  v90 = [v23 objectForKeyedSubscript:?];
  v24 = [v90 integerValue];
  v25 = v24;
  v96 = v19;
  v103 = v20;
  if (v24 >= 6)
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
    v80 = v24 & 7;
  }

  v27 = [v9 metadata];
  v88 = [get_DKNowPlayingMetadataKeyClass() album];
  v89 = v27;
  v87 = [v27 objectForKeyedSubscript:?];
  v28 = [v9 metadata];
  v85 = [get_DKNowPlayingMetadataKeyClass() artist];
  v86 = v28;
  v84 = [v28 objectForKeyedSubscript:?];
  v29 = [v9 metadata];
  v82 = [get_DKNowPlayingMetadataKeyClass() duration];
  v83 = v29;
  v81 = [v29 objectForKeyedSubscript:?];
  v72 = [v81 unsignedLongValue];
  v30 = [v9 metadata];
  v78 = [get_DKNowPlayingMetadataKeyClass() genre];
  v79 = v30;
  v77 = [v30 objectForKeyedSubscript:?];
  v31 = [v9 metadata];
  v75 = [get_DKNowPlayingMetadataKeyClass() title];
  v76 = v31;
  v74 = [v31 objectForKeyedSubscript:?];
  v32 = [v9 metadata];
  [get_DKNowPlayingMetadataKeyClass() elapsed];
  v71 = v73 = v32;
  v70 = [v32 objectForKeyedSubscript:?];
  v64 = [v70 unsignedLongValue];
  v33 = [v9 metadata];
  v68 = [get_DKNowPlayingMetadataKeyClass() mediaType];
  v69 = v33;
  v67 = [v33 objectForKeyedSubscript:?];
  v98 = v15;
  v66 = [v15 stringValue];
  v97 = v18;
  v65 = [v18 stringValue];
  v100 = v11;
  v63 = [v11 stringValue];
  v99 = v12;
  v62 = [v12 stringValue];
  v101 = v9;
  v34 = [v9 metadata];
  v60 = [get_DKNowPlayingMetadataKeyClass() isAirPlayVideo];
  v61 = v34;
  v59 = [v34 objectForKeyedSubscript:?];
  v58 = [v59 BOOLValue];
  v35 = v10;
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
        v44 = [v42 deviceType];
        v45 = v44;
        if (v44 >= 5)
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
          v46 = v44 + 1;
        }

        v48 = [v42 deviceSubType];
        v49 = v48;
        if (v48 >= 0x14)
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
          v50 = v48 + 1;
        }

        v52 = [v42 deviceID];
        v53 = [(BMNowPlayingOutputDevice *)v43 initWithDeviceType:v46 deviceSubType:v50 deviceId:v52];
        [v36 addObject:v53];

        ++v41;
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v105 objects:v109 count:16];
    }

    while (v39);
  }

  LOBYTE(v57) = v58;
  LODWORD(v56) = v64;
  v104 = [(BMNowPlayingEvent *)self initWithUniqueID:v103 bundleID:v102 absoluteTimestamp:v80 playbackState:v87 album:v84 artist:v72 duration:v22 genre:v77 title:v74 elapsed:v56 mediaType:v67 iTunesStoreIdentifier:v66 iTunesSubscriptionIdentifier:v65 iTunesArtistIdentifier:v63 iTunesAlbumIdentifier:v62 isAirPlayVideo:v57 outputDevices:v36];

  v54 = *MEMORY[0x1E69E9840];
  return v104;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlaying event with uniqueId:%@", self->_uniqueID];

  return v2;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMNowPlayingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNowPlayingEvent)initWithProto:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = self;
      v46 = v4;
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      v7 = [v5 outputDevices];
      v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = [v5 outputDevices];
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v48 + 1) + 8 * i);
            v15 = [BMNowPlayingOutputDevice alloc];
            v16 = [v14 outputDeviceType];
            v17 = [v14 outputDeviceSubType];
            v18 = [v14 outputDeviceId];
            v19 = [(BMNowPlayingOutputDevice *)v15 initWithDeviceType:v16 deviceSubType:v17 deviceId:v18];
            [v8 addObject:v19];
          }

          v11 = [v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v11);
      }

      v44 = [v5 playbackState];
      v43 = [v5 itemMediaType];
      v41 = [v5 itemMediaSubtype];
      v42 = [v5 uniqueId];
      v40 = [v5 bundleId];
      [v5 absoluteTimestamp];
      v21 = v20;
      v39 = [v5 album];
      v38 = [v5 artist];
      v37 = [v5 duration];
      v47 = [v5 genre];
      v35 = [v5 title];
      v36 = [v5 elapsed];
      v34 = [v5 mediaType];
      v33 = [v5 iTunesStoreIdentifier];
      v32 = [v5 iTunesSubscriptionIdentifier];
      v22 = [v5 iTunesArtistIdentifier];
      v23 = [v5 iTunesAlbumIdentifier];
      v24 = [v5 groupIdentifier];
      v25 = [v5 isAirPlayVideo];
      BYTE1(v31) = [v5 isRemoteControl];
      LOBYTE(v31) = v25;
      LODWORD(v30) = v36;
      self = [(BMNowPlayingEvent *)v45 initWithUniqueID:v42 bundleID:v40 absoluteTimestamp:v44 playbackState:v39 album:v38 artist:v37 duration:v21 genre:v47 title:v35 elapsed:v30 mediaType:v34 itemMediaType:__PAIR64__(v41 itemMediaSubtype:v43) iTunesStoreIdentifier:v33 iTunesSubscriptionIdentifier:v32 iTunesArtistIdentifier:v22 iTunesAlbumIdentifier:v23 groupIdentifier:v24 isAirPlayVideo:v31 isRemoteControl:v8 outputDevices:?];

      v26 = v5;
      v27 = self;
      v4 = v46;
    }

    else
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [(BMNowPlayingEvent *)self initWithProto:v26];
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BMNowPlayingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNowPlayingEvent alloc] initWithData:v4];

    self = [(BMNowPlayingEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

        v9 = [*(*(&v18 + 1) + 8 * i) proto];
        [v3 addObject:v9];
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

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_108;
  }

  v8 = v7;
  v9 = v8;
  uniqueID = self->_uniqueID;
  v11 = uniqueID;
  if (uniqueID)
  {
LABEL_5:
    v12 = [v9 uniqueID];
    v79 = [(NSString *)v11 isEqual:v12];

    if (uniqueID)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = [v8 uniqueID];
  if (v3)
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

  v3 = [v9 bundleID];
  if (v3)
  {
    v15 = self->_bundleID;
LABEL_13:
    v16 = [v9 bundleID];
    v78 = [(NSString *)v15 isEqual:v16];

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

  v3 = [v9 album];
  if (v3)
  {
    v18 = self->_album;
LABEL_20:
    v19 = [v9 album];
    v77 = [(NSString *)v18 isEqual:v19];

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

  v3 = [v9 artist];
  if (v3)
  {
    v21 = self->_artist;
LABEL_27:
    v22 = [v9 artist];
    v76 = [(NSString *)v21 isEqual:v22];

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

  v3 = [v9 genre];
  if (v3)
  {
    v24 = self->_genre;
LABEL_34:
    v25 = [v9 genre];
    v75 = [(NSString *)v24 isEqual:v25];

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

  v3 = [v9 title];
  if (v3)
  {
    v27 = self->_title;
LABEL_41:
    v28 = [v9 title];
    v74 = [(NSString *)v27 isEqual:v28];

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
  v30 = mediaType;
  if (mediaType)
  {
    goto LABEL_48;
  }

  v3 = [v9 mediaType];
  if (v3)
  {
    v30 = self->_mediaType;
LABEL_48:
    v31 = [v9 mediaType];
    v73 = [v30 isEqual:v31];

    if (mediaType)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v73 = 1;
LABEL_51:

LABEL_52:
  v32 = 112;
  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  v34 = iTunesStoreIdentifier;
  if (iTunesStoreIdentifier)
  {
    goto LABEL_55;
  }

  v30 = [v9 iTunesStoreIdentifier];
  if (v30)
  {
    v34 = self->_iTunesStoreIdentifier;
LABEL_55:
    v32 = [v9 iTunesStoreIdentifier];
    v72 = [(NSString *)v34 isEqual:v32];

    if (iTunesStoreIdentifier)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v72 = 1;
LABEL_58:

LABEL_59:
  v35 = 120;
  iTunesSubscriptionIdentifier = self->_iTunesSubscriptionIdentifier;
  v37 = iTunesSubscriptionIdentifier;
  if (iTunesSubscriptionIdentifier)
  {
    goto LABEL_62;
  }

  v32 = [v9 iTunesSubscriptionIdentifier];
  if (v32)
  {
    v37 = self->_iTunesSubscriptionIdentifier;
LABEL_62:
    v35 = [v9 iTunesSubscriptionIdentifier];
    v71 = [(NSString *)v37 isEqual:v35];

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

  v35 = [v9 iTunesArtistIdentifier];
  if (v35)
  {
    v39 = self->_iTunesArtistIdentifier;
LABEL_69:
    v4 = [v9 iTunesArtistIdentifier];
    v40 = [(NSString *)v39 isEqual:v4];

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

  v4 = [v9 iTunesAlbumIdentifier];
  if (v4)
  {
    v42 = self->_iTunesAlbumIdentifier;
LABEL_76:
    v5 = [v9 iTunesAlbumIdentifier];
    v70 = [(NSString *)v42 isEqual:v5];

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
    v5 = [v9 groupIdentifier];
    if (!v5)
    {
      v46 = 1;
LABEL_86:

      goto LABEL_87;
    }

    v44 = self->_groupIdentifier;
  }

  v45 = [v9 groupIdentifier];
  v46 = [(NSString *)v44 isEqual:v45];

  if (!groupIdentifier)
  {
    goto LABEL_86;
  }

LABEL_87:
  v47 = [(NSArray *)self->_outputDevices count];
  v48 = [v9 outputDevices];
  v49 = [v48 count];

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
      v69 = v7;
      v51 = v40;
      v52 = 0;
      do
      {
        v53 = [(NSArray *)self->_outputDevices objectAtIndexedSubscript:v52];
        v54 = [v9 outputDevices];
        v55 = [v54 objectAtIndexedSubscript:v52];
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
      v7 = v69;
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