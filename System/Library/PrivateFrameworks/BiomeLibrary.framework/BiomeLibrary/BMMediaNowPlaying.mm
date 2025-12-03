@interface BMMediaNowPlaying
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaNowPlaying)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaNowPlaying)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp playbackState:(int)state album:(id)album artist:(id)artist duration:(id)duration genre:(id)genre title:(id)self0 elapsed:(id)self1 mediaType:(id)self2 iTunesStoreIdentifier:(id)self3 iTunesSubscriptionIdentifier:(id)self4 isAirPlayVideo:(id)self5 outputDevices:(id)self6 bundleID:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isRemoteControl:(id)control itemMediaType:(int)mediaType itemMediaSubtype:(int)subtype isAirPlayActive:(id)active parentGroupContainsDiscoverableGroupLeader:(id)leader excludeFromSuggestions:(id)suggestions;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_outputDevicesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaNowPlaying

+ (id)columns
{
  v29[24] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"playbackState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"album" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artist" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"genre" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"elapsed" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesStoreIdentifier" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesSubscriptionIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAirPlayVideo" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"outputDevices_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_353];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesArtistIdentifier" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesAlbumIdentifier" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRemoteControl" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemMediaType" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemMediaSubtype" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAirPlayActive" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentGroupContainsDiscoverableGroupLeader" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"excludeFromSuggestions" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v29[0] = v28;
  v29[1] = v27;
  v29[2] = v26;
  v29[3] = v25;
  v29[4] = v24;
  v29[5] = v23;
  v29[6] = v22;
  v29[7] = v21;
  v29[8] = v20;
  v29[9] = v19;
  v29[10] = v18;
  v29[11] = v17;
  v29[12] = v16;
  v29[13] = v15;
  v29[14] = v2;
  v29[15] = v3;
  v29[16] = v4;
  v29[17] = v14;
  v29[18] = v5;
  v29[19] = v6;
  v29[20] = v7;
  v29[21] = v13;
  v29[22] = v8;
  v29[23] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:24];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMMediaNowPlaying *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMMediaNowPlaying *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_97;
      }
    }

    absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMMediaNowPlaying *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_97;
      }
    }

    playbackState = [(BMMediaNowPlaying *)self playbackState];
    if (playbackState == [v5 playbackState])
    {
      album = [(BMMediaNowPlaying *)self album];
      album2 = [v5 album];
      v22 = album2;
      if (album == album2)
      {
      }

      else
      {
        album3 = [(BMMediaNowPlaying *)self album];
        album4 = [v5 album];
        v25 = [album3 isEqual:album4];

        if (!v25)
        {
          goto LABEL_97;
        }
      }

      artist = [(BMMediaNowPlaying *)self artist];
      artist2 = [v5 artist];
      v28 = artist2;
      if (artist == artist2)
      {
      }

      else
      {
        artist3 = [(BMMediaNowPlaying *)self artist];
        artist4 = [v5 artist];
        v31 = [artist3 isEqual:artist4];

        if (!v31)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasDuration](self, "hasDuration") || [v5 hasDuration])
      {
        if (![(BMMediaNowPlaying *)self hasDuration])
        {
          goto LABEL_97;
        }

        if (![v5 hasDuration])
        {
          goto LABEL_97;
        }

        duration = [(BMMediaNowPlaying *)self duration];
        if (duration != [v5 duration])
        {
          goto LABEL_97;
        }
      }

      genre = [(BMMediaNowPlaying *)self genre];
      genre2 = [v5 genre];
      v35 = genre2;
      if (genre == genre2)
      {
      }

      else
      {
        genre3 = [(BMMediaNowPlaying *)self genre];
        genre4 = [v5 genre];
        v38 = [genre3 isEqual:genre4];

        if (!v38)
        {
          goto LABEL_97;
        }
      }

      title = [(BMMediaNowPlaying *)self title];
      title2 = [v5 title];
      v41 = title2;
      if (title == title2)
      {
      }

      else
      {
        title3 = [(BMMediaNowPlaying *)self title];
        title4 = [v5 title];
        v44 = [title3 isEqual:title4];

        if (!v44)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasElapsed](self, "hasElapsed") || [v5 hasElapsed])
      {
        if (![(BMMediaNowPlaying *)self hasElapsed])
        {
          goto LABEL_97;
        }

        if (![v5 hasElapsed])
        {
          goto LABEL_97;
        }

        elapsed = [(BMMediaNowPlaying *)self elapsed];
        if (elapsed != [v5 elapsed])
        {
          goto LABEL_97;
        }
      }

      mediaType = [(BMMediaNowPlaying *)self mediaType];
      mediaType2 = [v5 mediaType];
      v48 = mediaType2;
      if (mediaType == mediaType2)
      {
      }

      else
      {
        mediaType3 = [(BMMediaNowPlaying *)self mediaType];
        mediaType4 = [v5 mediaType];
        v51 = [mediaType3 isEqual:mediaType4];

        if (!v51)
        {
          goto LABEL_97;
        }
      }

      iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
      iTunesStoreIdentifier2 = [v5 iTunesStoreIdentifier];
      v54 = iTunesStoreIdentifier2;
      if (iTunesStoreIdentifier == iTunesStoreIdentifier2)
      {
      }

      else
      {
        iTunesStoreIdentifier3 = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
        iTunesStoreIdentifier4 = [v5 iTunesStoreIdentifier];
        v57 = [iTunesStoreIdentifier3 isEqual:iTunesStoreIdentifier4];

        if (!v57)
        {
          goto LABEL_97;
        }
      }

      iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
      iTunesSubscriptionIdentifier2 = [v5 iTunesSubscriptionIdentifier];
      v60 = iTunesSubscriptionIdentifier2;
      if (iTunesSubscriptionIdentifier == iTunesSubscriptionIdentifier2)
      {
      }

      else
      {
        iTunesSubscriptionIdentifier3 = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
        iTunesSubscriptionIdentifier4 = [v5 iTunesSubscriptionIdentifier];
        v63 = [iTunesSubscriptionIdentifier3 isEqual:iTunesSubscriptionIdentifier4];

        if (!v63)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasIsAirPlayVideo](self, "hasIsAirPlayVideo") || [v5 hasIsAirPlayVideo])
      {
        if (![(BMMediaNowPlaying *)self hasIsAirPlayVideo])
        {
          goto LABEL_97;
        }

        if (![v5 hasIsAirPlayVideo])
        {
          goto LABEL_97;
        }

        isAirPlayVideo = [(BMMediaNowPlaying *)self isAirPlayVideo];
        if (isAirPlayVideo != [v5 isAirPlayVideo])
        {
          goto LABEL_97;
        }
      }

      outputDevices = [(BMMediaNowPlaying *)self outputDevices];
      outputDevices2 = [v5 outputDevices];
      v67 = outputDevices2;
      if (outputDevices == outputDevices2)
      {
      }

      else
      {
        outputDevices3 = [(BMMediaNowPlaying *)self outputDevices];
        outputDevices4 = [v5 outputDevices];
        v70 = [outputDevices3 isEqual:outputDevices4];

        if (!v70)
        {
          goto LABEL_97;
        }
      }

      bundleID = [(BMMediaNowPlaying *)self bundleID];
      bundleID2 = [v5 bundleID];
      v73 = bundleID2;
      if (bundleID == bundleID2)
      {
      }

      else
      {
        bundleID3 = [(BMMediaNowPlaying *)self bundleID];
        bundleID4 = [v5 bundleID];
        v76 = [bundleID3 isEqual:bundleID4];

        if (!v76)
        {
          goto LABEL_97;
        }
      }

      iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
      iTunesArtistIdentifier2 = [v5 iTunesArtistIdentifier];
      v79 = iTunesArtistIdentifier2;
      if (iTunesArtistIdentifier == iTunesArtistIdentifier2)
      {
      }

      else
      {
        iTunesArtistIdentifier3 = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
        iTunesArtistIdentifier4 = [v5 iTunesArtistIdentifier];
        v82 = [iTunesArtistIdentifier3 isEqual:iTunesArtistIdentifier4];

        if (!v82)
        {
          goto LABEL_97;
        }
      }

      iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
      iTunesAlbumIdentifier2 = [v5 iTunesAlbumIdentifier];
      v85 = iTunesAlbumIdentifier2;
      if (iTunesAlbumIdentifier == iTunesAlbumIdentifier2)
      {
      }

      else
      {
        iTunesAlbumIdentifier3 = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
        iTunesAlbumIdentifier4 = [v5 iTunesAlbumIdentifier];
        v88 = [iTunesAlbumIdentifier3 isEqual:iTunesAlbumIdentifier4];

        if (!v88)
        {
          goto LABEL_97;
        }
      }

      groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
      groupIdentifier2 = [v5 groupIdentifier];
      v91 = groupIdentifier2;
      if (groupIdentifier == groupIdentifier2)
      {
      }

      else
      {
        groupIdentifier3 = [(BMMediaNowPlaying *)self groupIdentifier];
        groupIdentifier4 = [v5 groupIdentifier];
        v94 = [groupIdentifier3 isEqual:groupIdentifier4];

        if (!v94)
        {
          goto LABEL_97;
        }
      }

      if (!-[BMMediaNowPlaying hasIsRemoteControl](self, "hasIsRemoteControl") && ![v5 hasIsRemoteControl] || -[BMMediaNowPlaying hasIsRemoteControl](self, "hasIsRemoteControl") && objc_msgSend(v5, "hasIsRemoteControl") && (v95 = -[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl"), v95 == objc_msgSend(v5, "isRemoteControl")))
      {
        itemMediaType = [(BMMediaNowPlaying *)self itemMediaType];
        if (itemMediaType == [v5 itemMediaType])
        {
          itemMediaSubtype = [(BMMediaNowPlaying *)self itemMediaSubtype];
          if (itemMediaSubtype == [v5 itemMediaSubtype])
          {
            if (!-[BMMediaNowPlaying hasIsAirPlayActive](self, "hasIsAirPlayActive") && ![v5 hasIsAirPlayActive] || -[BMMediaNowPlaying hasIsAirPlayActive](self, "hasIsAirPlayActive") && objc_msgSend(v5, "hasIsAirPlayActive") && (v98 = -[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive"), v98 == objc_msgSend(v5, "isAirPlayActive")))
            {
              if (!-[BMMediaNowPlaying hasParentGroupContainsDiscoverableGroupLeader](self, "hasParentGroupContainsDiscoverableGroupLeader") && ![v5 hasParentGroupContainsDiscoverableGroupLeader] || -[BMMediaNowPlaying hasParentGroupContainsDiscoverableGroupLeader](self, "hasParentGroupContainsDiscoverableGroupLeader") && objc_msgSend(v5, "hasParentGroupContainsDiscoverableGroupLeader") && (v99 = -[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader"), v99 == objc_msgSend(v5, "parentGroupContainsDiscoverableGroupLeader")))
              {
                if (!-[BMMediaNowPlaying hasExcludeFromSuggestions](self, "hasExcludeFromSuggestions") && ![v5 hasExcludeFromSuggestions])
                {
                  LOBYTE(v12) = 1;
                  goto LABEL_98;
                }

                if (-[BMMediaNowPlaying hasExcludeFromSuggestions](self, "hasExcludeFromSuggestions") && [v5 hasExcludeFromSuggestions])
                {
                  excludeFromSuggestions = [(BMMediaNowPlaying *)self excludeFromSuggestions];
                  v12 = excludeFromSuggestions ^ [v5 excludeFromSuggestions] ^ 1;
LABEL_98:

                  goto LABEL_99;
                }
              }
            }
          }
        }
      }
    }

LABEL_97:
    LOBYTE(v12) = 0;
    goto LABEL_98;
  }

  LOBYTE(v12) = 0;
LABEL_99:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v82[24] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMMediaNowPlaying *)self uniqueID];
  absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMMediaNowPlaying *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying playbackState](self, "playbackState")}];
  album = [(BMMediaNowPlaying *)self album];
  artist = [(BMMediaNowPlaying *)self artist];
  if ([(BMMediaNowPlaying *)self hasDuration])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying duration](self, "duration")}];
  }

  else
  {
    v10 = 0;
  }

  genre = [(BMMediaNowPlaying *)self genre];
  title = [(BMMediaNowPlaying *)self title];
  if ([(BMMediaNowPlaying *)self hasElapsed])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying elapsed](self, "elapsed")}];
  }

  else
  {
    v78 = 0;
  }

  mediaType = [(BMMediaNowPlaying *)self mediaType];
  iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
  iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
  if ([(BMMediaNowPlaying *)self hasIsAirPlayVideo])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayVideo](self, "isAirPlayVideo")}];
  }

  else
  {
    v74 = 0;
  }

  _outputDevicesJSONArray = [(BMMediaNowPlaying *)self _outputDevicesJSONArray];
  bundleID = [(BMMediaNowPlaying *)self bundleID];
  iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
  iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
  groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
  if ([(BMMediaNowPlaying *)self hasIsRemoteControl])
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl")}];
  }

  else
  {
    v68 = 0;
  }

  v67 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying itemMediaType](self, "itemMediaType")}];
  v66 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying itemMediaSubtype](self, "itemMediaSubtype")}];
  if ([(BMMediaNowPlaying *)self hasIsAirPlayActive])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive")}];
  }

  else
  {
    v65 = 0;
  }

  if ([(BMMediaNowPlaying *)self hasParentGroupContainsDiscoverableGroupLeader])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
  }

  else
  {
    v64 = 0;
  }

  if ([(BMMediaNowPlaying *)self hasExcludeFromSuggestions])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying excludeFromSuggestions](self, "excludeFromSuggestions")}];
  }

  else
  {
    v12 = 0;
  }

  v81[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null;
  v82[0] = null;
  v81[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null2;
  v82[1] = null2;
  v81[2] = @"playbackState";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null3;
  v82[2] = null3;
  v81[3] = @"album";
  null4 = album;
  if (!album)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null4;
  v82[3] = null4;
  v81[4] = @"artist";
  null5 = artist;
  if (!artist)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null5;
  v82[4] = null5;
  v81[5] = @"duration";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null6;
  v82[5] = null6;
  v81[6] = @"genre";
  null7 = genre;
  if (!genre)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null7;
  v82[6] = null7;
  v81[7] = @"title";
  null8 = title;
  if (!title)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v82[7] = null8;
  v81[8] = @"elapsed";
  null9 = v78;
  if (!v78)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v82[8] = null9;
  v81[9] = @"mediaType";
  null10 = mediaType;
  if (!mediaType)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null10;
  v82[9] = null10;
  v81[10] = @"iTunesStoreIdentifier";
  null11 = iTunesStoreIdentifier;
  if (!iTunesStoreIdentifier)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null11;
  v82[10] = null11;
  v81[11] = @"iTunesSubscriptionIdentifier";
  null12 = iTunesSubscriptionIdentifier;
  if (!iTunesSubscriptionIdentifier)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null12;
  v82[11] = null12;
  v81[12] = @"isAirPlayVideo";
  null13 = v74;
  if (!v74)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null13;
  v82[12] = null13;
  v81[13] = @"outputDevices";
  null14 = _outputDevicesJSONArray;
  if (!_outputDevicesJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null14;
  v82[13] = null14;
  v81[14] = @"bundleID";
  null15 = bundleID;
  if (!bundleID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null15;
  v82[14] = null15;
  v81[15] = @"iTunesArtistIdentifier";
  null16 = iTunesArtistIdentifier;
  if (!iTunesArtistIdentifier)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = genre;
  v43 = null16;
  v82[15] = null16;
  v81[16] = @"iTunesAlbumIdentifier";
  null17 = iTunesAlbumIdentifier;
  if (!iTunesAlbumIdentifier)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null9;
  v42 = null17;
  v82[16] = null17;
  v81[17] = @"groupIdentifier";
  null18 = groupIdentifier;
  if (!groupIdentifier)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v8;
  v40 = null18;
  v82[17] = null18;
  v81[18] = @"isRemoteControl";
  null19 = v68;
  if (!v68)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v12;
  v60 = album;
  v82[18] = null19;
  v81[19] = @"itemMediaType";
  null20 = v67;
  if (!v67)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v10;
  v82[19] = null20;
  v81[20] = @"itemMediaSubtype";
  null21 = v66;
  if (!v66)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v82[20] = null21;
  v81[21] = @"isAirPlayActive";
  null22 = v65;
  if (!v65)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v82[21] = null22;
  v81[22] = @"parentGroupContainsDiscoverableGroupLeader";
  null23 = v64;
  if (!v64)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v82[22] = null23;
  v81[23] = @"excludeFromSuggestions";
  null24 = v63;
  if (!v63)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v82[23] = null24;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:{24, v40}];
  if (!v63)
  {
  }

  v37 = v80;
  if (!v64)
  {

    v37 = v80;
  }

  if (!v65)
  {

    v37 = v80;
  }

  if (!v66)
  {

    v37 = v80;
  }

  if (!v67)
  {

    v37 = v80;
  }

  if (!v68)
  {

    v37 = v80;
  }

  if (!groupIdentifier)
  {

    v37 = v80;
  }

  if (!iTunesAlbumIdentifier)
  {

    v37 = v80;
  }

  if (!iTunesArtistIdentifier)
  {

    v37 = v80;
  }

  if (!bundleID)
  {

    v37 = v80;
  }

  if (!_outputDevicesJSONArray)
  {

    v37 = v80;
  }

  if (!v74)
  {
  }

  if (!iTunesSubscriptionIdentifier)
  {
  }

  if (!iTunesStoreIdentifier)
  {
  }

  if (!mediaType)
  {
  }

  if (!v78)
  {
  }

  if (title)
  {
    if (v59)
    {
      goto LABEL_107;
    }
  }

  else
  {

    if (v59)
    {
LABEL_107:
      if (v55)
      {
        goto LABEL_108;
      }

      goto LABEL_118;
    }
  }

  if (v55)
  {
LABEL_108:
    if (artist)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (artist)
  {
LABEL_109:
    if (v60)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:

  if (v60)
  {
LABEL_110:
    if (v61)
    {
      goto LABEL_111;
    }

    goto LABEL_121;
  }

LABEL_120:

  if (v61)
  {
LABEL_111:
    if (v7)
    {
      goto LABEL_112;
    }

LABEL_122:

    if (uniqueID)
    {
      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_121:

  if (!v7)
  {
    goto LABEL_122;
  }

LABEL_112:
  if (uniqueID)
  {
    goto LABEL_113;
  }

LABEL_123:

LABEL_113:
  v38 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)_outputDevicesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  outputDevices = [(BMMediaNowPlaying *)self outputDevices];
  v5 = [outputDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(outputDevices);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [outputDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMediaNowPlaying)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v344[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  v285 = dictionaryCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v286 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v286 = v6;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    v282 = v7;
    if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v280 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      v13 = objc_alloc(MEMORY[0x1E695DF00]);
      [v12 doubleValue];
      v280 = [v13 initWithTimeIntervalSinceReferenceDate:?];

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v19 = v8;
      v280 = [v18 dateFromString:v19];

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v280 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"playbackState"];
      v284 = v9;
      errorCopy = error;
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = v286;
        v11 = 0;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v286;
        v11 = v9;
LABEL_22:

LABEL_23:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"album"];
        v281 = v21;
        v286 = v10;
        if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v277 = 0;
          goto LABEL_26;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v277 = v22;
LABEL_26:
          v23 = [dictionaryCopy objectForKeyedSubscript:@"artist"];
          v278 = v23;
          if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v276 = 0;
            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v276 = v24;
LABEL_29:
            v25 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
            if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v26 = 0;
LABEL_32:
              v27 = [dictionaryCopy objectForKeyedSubscript:@"genre"];
              v274 = v25;
              if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v275 = 0;
                    v17 = 0;
                    v16 = v280;
                    v44 = v276;
                    v48 = v277;
LABEL_228:
                    v25 = v274;
                    goto LABEL_229;
                  }

                  v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v65 = v11;
                  v66 = v26;
                  v67 = v6;
                  v68 = v66;
                  v69 = v64;
                  v70 = *MEMORY[0x1E698F240];
                  v331 = *MEMORY[0x1E696A578];
                  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v220 = objc_opt_class();
                  v72 = v71;
                  v9 = v284;
                  v73 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v220, @"genre"];
                  v332 = v73;
                  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
                  v75 = v69;
                  v76 = v68;
                  v6 = v67;
                  v26 = v76;
                  v11 = v65;
                  v273 = v74;
                  v275 = 0;
                  v17 = 0;
                  *errorCopy = [v75 initWithDomain:v70 code:2 userInfo:?];
                  v77 = v73;
                  v16 = v280;
                  v44 = v276;
                  v48 = v277;
                  goto LABEL_227;
                }

                v275 = v27;
              }

              else
              {
                v275 = 0;
              }

              v28 = [dictionaryCopy objectForKeyedSubscript:@"title"];
              v271 = v11;
              v273 = v28;
              v268 = v27;
              if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v267 = 0;
                goto LABEL_38;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v267 = v29;
LABEL_38:
                v30 = [dictionaryCopy objectForKeyedSubscript:@"elapsed"];
                v269 = v30;
                if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v32 = 0;
                  goto LABEL_41;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v31;
LABEL_41:
                  v33 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
                  v265 = v32;
                  v266 = v33;
                  if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v270 = 0;
LABEL_44:
                    v35 = [dictionaryCopy objectForKeyedSubscript:@"iTunesStoreIdentifier"];
                    v264 = v35;
                    if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy)
                        {
                          v37 = 0;
                          selfCopy = 0;
                          v16 = v280;
                          v44 = v276;
                          v48 = v277;
                          goto LABEL_223;
                        }

                        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v114 = *MEMORY[0x1E698F240];
                        v323 = *MEMORY[0x1E696A578];
                        v115 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v225 = objc_opt_class();
                        v116 = v115;
                        v9 = v284;
                        v38 = [v116 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v225, @"iTunesStoreIdentifier"];
                        v324 = v38;
                        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
                        v118 = v113;
                        v32 = v265;
                        v258 = v117;
                        v37 = 0;
                        selfCopy = 0;
                        *errorCopy = [v118 initWithDomain:v114 code:2 userInfo:?];
                        goto LABEL_165;
                      }

                      v37 = v36;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = [dictionaryCopy objectForKeyedSubscript:@"iTunesSubscriptionIdentifier"];
                    v255 = v37;
                    v258 = v38;
                    if (!v38)
                    {
LABEL_80:
                      v83 = [dictionaryCopy objectForKeyedSubscript:@"isAirPlayVideo"];
                      v253 = v26;
                      v256 = v83;
                      if (v83 && (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (errorCopy)
                          {
                            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v143 = *MEMORY[0x1E698F240];
                            v319 = *MEMORY[0x1E696A578];
                            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v227 = objc_opt_class();
                            v145 = v144;
                            v9 = v284;
                            v257 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"isAirPlayVideo"];
                            v320 = v257;
                            v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
                            v254 = 0;
                            selfCopy = 0;
                            *errorCopy = [v142 initWithDomain:v143 code:2 userInfo:v146];
                            v129 = v146;
                            v16 = v280;
                            v44 = v276;
                            v48 = v277;
                            v32 = v265;
                            goto LABEL_219;
                          }

                          v254 = 0;
                          selfCopy = 0;
                          v16 = v280;
                          v44 = v276;
                          v48 = v277;
                          v32 = v265;
                          goto LABEL_221;
                        }

                        v85 = v38;
                        v254 = v84;
                      }

                      else
                      {
                        v85 = v38;
                        v254 = 0;
                      }

                      v86 = [dictionaryCopy objectForKeyedSubscript:@"outputDevices"];
                      null = [MEMORY[0x1E695DFB0] null];
                      v88 = [v86 isEqual:null];

                      v252 = v85;
                      if (v88)
                      {
                        v250 = v6;
                      }

                      else
                      {
                        v32 = v265;
                        if (v86)
                        {
                          objc_opt_class();
                          v257 = v86;
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v38 = v85;
                            if (errorCopy)
                            {
                              v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v155 = *MEMORY[0x1E698F240];
                              v317 = *MEMORY[0x1E696A578];
                              v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"outputDevices"];
                              v318 = v129;
                              v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
                              v157 = v154;
                              v32 = v265;
                              v158 = v155;
                              v159 = v156;
                              selfCopy = 0;
                              *errorCopy = [v157 initWithDomain:v158 code:2 userInfo:v156];
                              v16 = v280;
                              v48 = v277;
                              v27 = v268;
                              goto LABEL_218;
                            }

                            selfCopy = 0;
                            v16 = v280;
                            v44 = v276;
                            v48 = v277;
                            v27 = v268;
                            goto LABEL_220;
                          }

                          v250 = v6;
                          v89 = v86;
                          goto LABEL_110;
                        }

                        v250 = v6;
                      }

                      v89 = 0;
LABEL_110:
                      v129 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v89, "count")}];
                      v288 = 0u;
                      v289 = 0u;
                      v290 = 0u;
                      v291 = 0u;
                      v130 = v89;
                      v131 = [v130 countByEnumeratingWithState:&v288 objects:v316 count:16];
                      v257 = v130;
                      if (!v131)
                      {
                        goto LABEL_120;
                      }

                      v132 = v131;
                      v133 = *v289;
LABEL_112:
                      v134 = 0;
                      while (1)
                      {
                        if (*v289 != v133)
                        {
                          objc_enumerationMutation(v130);
                        }

                        v135 = *(*(&v288 + 1) + 8 * v134);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v147 = errorCopy;
                          if (errorCopy)
                          {
                            v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v149 = *MEMORY[0x1E698F240];
                            v312 = *MEMORY[0x1E696A578];
                            v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"outputDevices"];
                            v313 = v136;
                            v150 = MEMORY[0x1E695DF20];
                            v151 = &v313;
                            v152 = &v312;
                            goto LABEL_132;
                          }

                          goto LABEL_142;
                        }

                        v136 = v135;
                        v137 = [BMMediaNowPlayingOutputDevice alloc];
                        v287 = 0;
                        v138 = [(BMMediaNowPlayingOutputDevice *)v137 initWithJSONDictionary:v136 error:&v287];
                        v139 = v287;
                        if (v139)
                        {
                          v140 = v139;
                          if (errorCopy)
                          {
                            v153 = v139;
                            *errorCopy = v140;
                          }

                          selfCopy = 0;
                          goto LABEL_137;
                        }

                        [v129 addObject:v138];

                        ++v134;
                        v9 = v284;
                        if (v132 == v134)
                        {
                          v132 = [v130 countByEnumeratingWithState:&v288 objects:v316 count:16];
                          dictionaryCopy = v285;
                          if (v132)
                          {
                            goto LABEL_112;
                          }

LABEL_120:

                          v136 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
                          if (!v136 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v249 = 0;
                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v249 = v136;
                            dictionaryCopy = v285;
LABEL_123:
                            v140 = [dictionaryCopy objectForKeyedSubscript:@"iTunesArtistIdentifier"];
                            v247 = v140;
                            if (v140)
                            {
                              objc_opt_class();
                              v6 = v250;
                              v38 = v252;
                              v27 = v268;
                              v32 = v265;
                              v141 = v270;
                              if (objc_opt_isKindOfClass())
                              {
                                v140 = 0;
LABEL_152:
                                v160 = [dictionaryCopy objectForKeyedSubscript:@"iTunesAlbumIdentifier"];
                                v270 = v141;
                                v245 = v160;
                                if (v160 && (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v246 = v161;
                                    v32 = v265;
                                    goto LABEL_155;
                                  }

                                  if (!errorCopy)
                                  {
                                    v246 = 0;
                                    selfCopy = 0;
                                    v16 = v280;
                                    v48 = v277;
                                    v26 = v253;
                                    v32 = v265;
                                    goto LABEL_214;
                                  }

                                  v176 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v177 = *MEMORY[0x1E698F240];
                                  v306 = *MEMORY[0x1E696A578];
                                  v251 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"iTunesAlbumIdentifier"];
                                  v307 = v251;
                                  v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
                                  v246 = 0;
                                  selfCopy = 0;
                                  *errorCopy = [v176 initWithDomain:v177 code:2 userInfo:?];
                                }

                                else
                                {
                                  v246 = 0;
LABEL_155:
                                  v162 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
                                  v244 = v162;
                                  if (!v162 || (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v251 = 0;
LABEL_158:
                                    v164 = [dictionaryCopy objectForKeyedSubscript:@"isRemoteControl"];
                                    v242 = v164;
                                    if (v164 && (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v243 = v165;
                                        goto LABEL_161;
                                      }

                                      v180 = v129;
                                      if (!errorCopy)
                                      {
                                        v243 = 0;
                                        selfCopy = 0;
                                        v16 = v280;
                                        v48 = v277;
                                        v38 = v252;
                                        v26 = v253;
                                        goto LABEL_212;
                                      }

                                      v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v182 = *MEMORY[0x1E698F240];
                                      v302 = *MEMORY[0x1E696A578];
                                      v183 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v228 = objc_opt_class();
                                      v184 = v183;
                                      v32 = v265;
                                      v241 = [v184 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"isRemoteControl"];
                                      v303 = v241;
                                      v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
                                      v243 = 0;
                                      selfCopy = 0;
                                      *errorCopy = [v181 initWithDomain:v182 code:2 userInfo:?];
                                      v16 = v280;
                                      v48 = v277;
                                      v26 = v253;
                                    }

                                    else
                                    {
                                      v243 = 0;
LABEL_161:
                                      v166 = [dictionaryCopy objectForKeyedSubscript:@"itemMediaType"];
                                      v239 = v166;
                                      if (!v166 || (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v241 = 0;
                                        goto LABEL_189;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v172 = v167;
LABEL_188:
                                        v241 = v172;

                                        v32 = v265;
LABEL_189:
                                        v186 = [dictionaryCopy objectForKeyedSubscript:@"itemMediaSubtype"];
                                        v237 = v186;
                                        if (v186)
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v186 = 0;
                                            goto LABEL_197;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v187 = v186;
LABEL_196:

                                            v32 = v265;
                                            v186 = v187;
                                            goto LABEL_197;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v188 = v186;
                                            v187 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingMediaSubtypeFromString(v188)];

                                            dictionaryCopy = v285;
                                            goto LABEL_196;
                                          }

                                          v180 = v129;
                                          if (errorCopy)
                                          {
                                            v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v263 = *MEMORY[0x1E698F240];
                                            v298 = *MEMORY[0x1E696A578];
                                            v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"itemMediaSubtype"];
                                            v299 = v240;
                                            v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
                                            v216 = [v215 initWithDomain:v263 code:2 userInfo:?];
                                            v236 = 0;
                                            selfCopy = 0;
                                            *errorCopy = v216;
                                            v16 = v280;
                                            v48 = v277;
                                            v26 = v253;
                                            v32 = v265;
                                            goto LABEL_260;
                                          }

                                          v236 = 0;
                                          selfCopy = 0;
LABEL_266:
                                          v16 = v280;
                                          v48 = v277;
                                          v32 = v265;
                                          v129 = v180;
                                          v38 = v252;
                                          v26 = v253;
LABEL_210:

LABEL_211:
LABEL_212:

LABEL_213:
LABEL_214:

LABEL_215:
LABEL_216:

                                          v9 = v284;
                                          goto LABEL_217;
                                        }

LABEL_197:
                                        v189 = [dictionaryCopy objectForKeyedSubscript:@"isAirPlayActive"];
                                        v235 = v189;
                                        v236 = v186;
                                        if (v189 && (v190 = v189, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v240 = v190;
                                            goto LABEL_200;
                                          }

                                          v180 = v129;
                                          if (!errorCopy)
                                          {
                                            v240 = 0;
                                            selfCopy = 0;
                                            v16 = v280;
                                            v48 = v277;
                                            v26 = v253;
LABEL_260:
                                            v129 = v180;
                                            v38 = v252;
                                            goto LABEL_209;
                                          }

                                          v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v203 = *MEMORY[0x1E698F240];
                                          v296 = *MEMORY[0x1E696A578];
                                          v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v229 = objc_opt_class();
                                          v205 = v204;
                                          v32 = v265;
                                          v238 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"isAirPlayActive"];
                                          v297 = v238;
                                          v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                                          v240 = 0;
                                          selfCopy = 0;
                                          *errorCopy = [v202 initWithDomain:v203 code:2 userInfo:?];
                                        }

                                        else
                                        {
                                          v240 = 0;
LABEL_200:
                                          v191 = [dictionaryCopy objectForKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
                                          v233 = v191;
                                          if (!v191 || (v192 = v191, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v238 = 0;
LABEL_203:
                                            v193 = [dictionaryCopy objectForKeyedSubscript:@"excludeFromSuggestions"];
                                            v232 = v193;
                                            if (!v193 || (v194 = v193, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v234 = 0;
                                              v16 = v280;
                                              goto LABEL_206;
                                            }

                                            objc_opt_class();
                                            isKindOfClass = objc_opt_isKindOfClass();
                                            v201 = v194;
                                            v16 = v280;
                                            if (isKindOfClass)
                                            {
                                              v234 = v201;
LABEL_206:
                                              intValue = [v271 intValue];
                                              intValue2 = [v241 intValue];
                                              v231 = __PAIR64__([v186 intValue], intValue2);
                                              v197 = intValue;
                                              v32 = v265;
                                              v48 = v277;
                                              v26 = v253;
                                              self = [BMMediaNowPlaying initWithUniqueID:"initWithUniqueID:absoluteTimestamp:playbackState:album:artist:duration:genre:title:elapsed:mediaType:iTunesStoreIdentifier:iTunesSubscriptionIdentifier:isAirPlayVideo:outputDevices:bundleID:iTunesArtistIdentifier:iTunesAlbumIdentifier:groupIdentifier:isRemoteControl:itemMediaType:itemMediaSubtype:isAirPlayActive:parentGroupContainsDiscoverableGroupLeader:excludeFromSuggestions:" absoluteTimestamp:v286 playbackState:v16 album:v197 artist:v277 duration:v276 genre:v275 title:v267 elapsed:v265 mediaType:v270 iTunesStoreIdentifier:v255 iTunesSubscriptionIdentifier:v38 isAirPlayVideo:v254 outputDevices:v129 bundleID:v249 iTunesArtistIdentifier:v140 iTunesAlbumIdentifier:v246 groupIdentifier:v251 isRemoteControl:v243 itemMediaType:v231 itemMediaSubtype:v240 isAirPlayActive:v238 parentGroupContainsDiscoverableGroupLeader:v234 excludeFromSuggestions:?];
                                              selfCopy = self;
                                            }

                                            else
                                            {
                                              if (errorCopy)
                                              {
                                                v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v261 = *MEMORY[0x1E698F240];
                                                v292 = *MEMORY[0x1E696A578];
                                                v211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"excludeFromSuggestions"];
                                                v293 = v211;
                                                v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
                                                *errorCopy = [v210 initWithDomain:v261 code:2 userInfo:v212];

                                                v32 = v265;
                                              }

                                              v234 = 0;
                                              selfCopy = 0;
                                              v48 = v277;
                                              v26 = v253;
                                              v27 = v268;
                                            }

LABEL_207:

LABEL_208:
LABEL_209:

                                            goto LABEL_210;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v238 = v192;
                                            goto LABEL_203;
                                          }

                                          v180 = v129;
                                          if (errorCopy)
                                          {
                                            v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v207 = *MEMORY[0x1E698F240];
                                            v294 = *MEMORY[0x1E696A578];
                                            v208 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v230 = objc_opt_class();
                                            v209 = v208;
                                            v32 = v265;
                                            v234 = [v209 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v230, @"parentGroupContainsDiscoverableGroupLeader"];
                                            v295 = v234;
                                            v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
                                            v238 = 0;
                                            selfCopy = 0;
                                            *errorCopy = [v206 initWithDomain:v207 code:2 userInfo:?];
                                            v16 = v280;
                                            v48 = v277;
                                            v38 = v252;
                                            v26 = v253;
                                            goto LABEL_207;
                                          }

                                          v238 = 0;
                                          selfCopy = 0;
                                        }

                                        v16 = v280;
                                        v48 = v277;
                                        v129 = v180;
                                        v38 = v252;
                                        v26 = v253;
                                        goto LABEL_208;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v185 = v167;
                                        v172 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingMediaTypeFromString(v185)];

                                        dictionaryCopy = v285;
                                        goto LABEL_188;
                                      }

                                      v180 = v129;
                                      if (errorCopy)
                                      {
                                        v213 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v262 = *MEMORY[0x1E698F240];
                                        v300 = *MEMORY[0x1E696A578];
                                        v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"itemMediaType"];
                                        v301 = v236;
                                        v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
                                        v214 = [v213 initWithDomain:v262 code:2 userInfo:?];
                                        v241 = 0;
                                        selfCopy = 0;
                                        *errorCopy = v214;
                                        goto LABEL_266;
                                      }

                                      v241 = 0;
                                      selfCopy = 0;
                                      v16 = v280;
                                      v48 = v277;
                                      v26 = v253;
                                      v32 = v265;
                                    }

                                    v129 = v180;
                                    v38 = v252;
                                    goto LABEL_211;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v251 = v163;
                                    v32 = v265;
                                    goto LABEL_158;
                                  }

                                  if (errorCopy)
                                  {
                                    v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v179 = *MEMORY[0x1E698F240];
                                    v304 = *MEMORY[0x1E696A578];
                                    v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
                                    v305 = v243;
                                    v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
                                    v251 = 0;
                                    selfCopy = 0;
                                    *errorCopy = [v178 initWithDomain:v179 code:2 userInfo:?];
                                    v16 = v280;
                                    v48 = v277;
                                    v26 = v253;
                                    v32 = v265;
                                    goto LABEL_212;
                                  }

                                  v251 = 0;
                                  selfCopy = 0;
                                }

                                v16 = v280;
                                v48 = v277;
                                v26 = v253;
                                v32 = v265;
                                goto LABEL_213;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (errorCopy)
                                {
                                  v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v174 = *MEMORY[0x1E698F240];
                                  v308 = *MEMORY[0x1E696A578];
                                  v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"iTunesArtistIdentifier"];
                                  v309 = v246;
                                  v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
                                  v175 = [v173 initWithDomain:v174 code:2 userInfo:?];
                                  v140 = 0;
                                  selfCopy = 0;
                                  *errorCopy = v175;
                                  v16 = v280;
                                  v48 = v277;
                                  v32 = v265;
                                  v38 = v252;
                                  v26 = v253;
                                  goto LABEL_214;
                                }

                                v140 = 0;
                                selfCopy = 0;
                                v16 = v280;
                                v48 = v277;
                                v32 = v265;
                                v38 = v252;
                                v26 = v253;
                                goto LABEL_215;
                              }

                              v140 = v140;
                              v32 = v265;
                            }

                            else
                            {
                              v6 = v250;
                              v27 = v268;
                              v32 = v265;
                            }

                            v141 = v270;
                            v38 = v252;
                            goto LABEL_152;
                          }

                          v6 = v250;
                          v38 = v252;
                          v32 = v265;
                          if (errorCopy)
                          {
                            v260 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v168 = *MEMORY[0x1E698F240];
                            v310 = *MEMORY[0x1E696A578];
                            v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
                            v311 = v140;
                            v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
                            v170 = v168;
                            v32 = v265;
                            v38 = v252;
                            v248 = v169;
                            v171 = [v260 initWithDomain:v170 code:2 userInfo:?];
                            v249 = 0;
                            selfCopy = 0;
                            *errorCopy = v171;
                            v16 = v280;
                            v48 = v277;
                            v27 = v268;

                            goto LABEL_216;
                          }

                          v249 = 0;
                          selfCopy = 0;
                          v16 = v280;
                          v48 = v277;
                          v27 = v268;
LABEL_217:

                          v159 = v249;
LABEL_218:

                          v44 = v276;
LABEL_219:

                          v37 = v255;
LABEL_220:

LABEL_221:
LABEL_222:

LABEL_223:
                          v77 = v267;
LABEL_224:

                          v17 = selfCopy;
                          goto LABEL_225;
                        }
                      }

                      v147 = errorCopy;
                      if (errorCopy)
                      {
                        v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v149 = *MEMORY[0x1E698F240];
                        v314 = *MEMORY[0x1E696A578];
                        v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"outputDevices"];
                        v315 = v136;
                        v150 = MEMORY[0x1E695DF20];
                        v151 = &v315;
                        v152 = &v314;
LABEL_132:
                        v140 = [v150 dictionaryWithObjects:v151 forKeys:v152 count:1];
                        selfCopy = 0;
                        *v147 = [v148 initWithDomain:v149 code:2 userInfo:v140];
LABEL_137:
                        v249 = v257;
                        v6 = v250;
                        v38 = v252;
                        v16 = v280;
                        v48 = v277;
                        v27 = v268;
                        v32 = v265;
                        goto LABEL_216;
                      }

LABEL_142:
                      selfCopy = 0;
                      v159 = v257;
                      v6 = v250;
                      v38 = v252;
                      v16 = v280;
                      v48 = v277;
                      v27 = v268;
                      v32 = v265;
                      goto LABEL_218;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v38 = 0;
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v38 = v38;
                      goto LABEL_80;
                    }

                    if (errorCopy)
                    {
                      v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v124 = *MEMORY[0x1E698F240];
                      v321 = *MEMORY[0x1E696A578];
                      v125 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v226 = objc_opt_class();
                      v126 = v125;
                      v9 = v284;
                      v254 = [v126 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v226, @"iTunesSubscriptionIdentifier"];
                      v322 = v254;
                      v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
                      v128 = v123;
                      v32 = v265;
                      v256 = v127;
                      v38 = 0;
                      selfCopy = 0;
                      *errorCopy = [v128 initWithDomain:v124 code:2 userInfo:?];
                      v16 = v280;
                      v44 = v276;
                      v48 = v277;
                      goto LABEL_221;
                    }

                    v38 = 0;
                    selfCopy = 0;
LABEL_165:
                    v16 = v280;
                    v44 = v276;
                    v48 = v277;
                    goto LABEL_222;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v270 = v34;
                    goto LABEL_44;
                  }

                  if (errorCopy)
                  {
                    v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v108 = *MEMORY[0x1E698F240];
                    v325 = *MEMORY[0x1E696A578];
                    v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v224 = objc_opt_class();
                    v110 = v109;
                    v9 = v284;
                    v37 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v224, @"mediaType"];
                    v326 = v37;
                    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
                    v112 = v107;
                    v32 = v265;
                    v77 = v267;
                    v264 = v111;
                    v270 = 0;
                    selfCopy = 0;
                    *errorCopy = [v112 initWithDomain:v108 code:2 userInfo:?];
                    v16 = v280;
                    v44 = v276;
                    v48 = v277;
                    goto LABEL_224;
                  }

                  v270 = 0;
                  v17 = 0;
                  v16 = v280;
                  v44 = v276;
                  v48 = v277;
                  v77 = v267;
LABEL_225:

                  goto LABEL_226;
                }

                v17 = errorCopy;
                if (errorCopy)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v103 = *MEMORY[0x1E698F240];
                  v327 = *MEMORY[0x1E696A578];
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v223 = objc_opt_class();
                  v105 = v104;
                  v9 = v284;
                  v270 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v223, @"elapsed"];
                  v328 = v270;
                  v266 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
                  v106 = [v102 initWithDomain:v103 code:2 userInfo:?];
                  v32 = 0;
                  *errorCopy = v106;
                  v17 = 0;
                  v16 = v280;
                  v44 = v276;
                  v48 = v277;
                  v77 = v267;
                  goto LABEL_225;
                }

                v32 = 0;
                v16 = v280;
                v44 = v276;
                v48 = v277;
                v77 = v267;
LABEL_226:

                v11 = v271;
                goto LABEL_227;
              }

              if (errorCopy)
              {
                v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = v26;
                v92 = v6;
                v93 = v91;
                v94 = v90;
                v95 = *MEMORY[0x1E698F240];
                v329 = *MEMORY[0x1E696A578];
                v96 = objc_alloc(MEMORY[0x1E696AEC0]);
                v222 = objc_opt_class();
                v97 = v96;
                v9 = v284;
                v98 = [v97 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v222, @"title"];
                v330 = v98;
                v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
                v100 = v94;
                v101 = v93;
                v6 = v92;
                v26 = v101;
                v32 = v98;
                v269 = v99;
                v77 = 0;
                v17 = 0;
                *errorCopy = [v100 initWithDomain:v95 code:2 userInfo:?];
                v16 = v280;
                v44 = v276;
                v48 = v277;
                goto LABEL_226;
              }

              v77 = 0;
              v17 = 0;
              v16 = v280;
              v44 = v276;
              v48 = v277;
LABEL_227:

              goto LABEL_228;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
              goto LABEL_32;
            }

            v17 = errorCopy;
            if (errorCopy)
            {
              v58 = v11;
              v59 = objc_alloc(MEMORY[0x1E696ABC0]);
              v60 = *MEMORY[0x1E698F240];
              v333 = *MEMORY[0x1E696A578];
              v61 = objc_alloc(MEMORY[0x1E696AEC0]);
              v219 = objc_opt_class();
              v62 = v61;
              v9 = v284;
              v275 = [v62 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v219, @"duration"];
              v334 = v275;
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
              v63 = v59;
              v11 = v58;
              v26 = 0;
              *errorCopy = [v63 initWithDomain:v60 code:2 userInfo:v27];
              v17 = 0;
              v16 = v280;
              v44 = v276;
              v48 = v277;
LABEL_229:

              goto LABEL_230;
            }

            v26 = 0;
            v16 = v280;
            v44 = v276;
            v48 = v277;
LABEL_230:

            goto LABEL_231;
          }

          if (errorCopy)
          {
            v272 = v11;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v50 = *MEMORY[0x1E698F240];
            v335 = *MEMORY[0x1E696A578];
            v51 = objc_alloc(MEMORY[0x1E696AEC0]);
            v218 = objc_opt_class();
            v52 = v51;
            v9 = v284;
            v53 = v6;
            v54 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v218, @"artist"];
            v336 = v54;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
            v56 = v49;
            v11 = v272;
            v44 = 0;
            *errorCopy = [v56 initWithDomain:v50 code:2 userInfo:v55];
            v16 = v280;
            v48 = v277;
            v17 = 0;
            v57 = v54;
            v6 = v53;
            v26 = v57;
            v25 = v55;
            goto LABEL_230;
          }

          v44 = 0;
          v16 = v280;
          v48 = v277;
          v17 = 0;
LABEL_231:

          goto LABEL_232;
        }

        if (errorCopy)
        {
          v39 = v11;
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v337 = *MEMORY[0x1E696A578];
          v42 = objc_alloc(MEMORY[0x1E696AEC0]);
          v217 = objc_opt_class();
          v43 = v42;
          v9 = v284;
          v44 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v217, @"album"];
          v338 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
          v46 = v40;
          v11 = v39;
          v278 = v45;
          v47 = [v46 initWithDomain:v41 code:2 userInfo:?];
          v48 = 0;
          v17 = 0;
          *errorCopy = v47;
          v16 = v280;
          goto LABEL_231;
        }

        v48 = 0;
        v17 = 0;
LABEL_96:
        v16 = v280;
LABEL_232:

        goto LABEL_233;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v286;
        v20 = v9;
        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingPlaybackStateFromString(v20)];

        goto LABEL_22;
      }

      if (error)
      {
        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v79 = *MEMORY[0x1E698F240];
        v339 = *MEMORY[0x1E696A578];
        v80 = objc_alloc(MEMORY[0x1E696AEC0]);
        v221 = objc_opt_class();
        v81 = v80;
        v9 = v284;
        v48 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v221, @"playbackState"];
        v340 = v48;
        v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
        v82 = [v78 initWithDomain:v79 code:2 userInfo:?];
        v11 = 0;
        v17 = 0;
        *error = v82;
        goto LABEL_96;
      }

      v11 = 0;
      v17 = 0;
      v16 = v280;
LABEL_233:

      goto LABEL_234;
    }

    if (error)
    {
      v119 = objc_alloc(MEMORY[0x1E696ABC0]);
      v120 = *MEMORY[0x1E698F240];
      v341 = *MEMORY[0x1E696A578];
      v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v342 = v121;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
      v122 = v119;
      v11 = v121;
      v16 = 0;
      *error = [v122 initWithDomain:v120 code:2 userInfo:v9];
      v17 = 0;
      goto LABEL_233;
    }

    v16 = 0;
    v17 = 0;
LABEL_234:

    goto LABEL_235;
  }

  if (error)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v343 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
    v344[0] = v16;
    v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v344 forKeys:&v343 count:1];
    v286 = 0;
    v17 = 0;
    *error = [v14 initWithDomain:v15 code:2 userInfo:?];
    goto LABEL_234;
  }

  v286 = 0;
  v17 = 0;
LABEL_235:

  v198 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaNowPlaying *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  playbackState = self->_playbackState;
  PBDataWriterWriteUint32Field();
  if (self->_album)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDuration)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
  }

  if (self->_genre)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasElapsed)
  {
    elapsed = self->_elapsed;
    PBDataWriterWriteUint32Field();
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesSubscriptionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAirPlayVideo)
  {
    isAirPlayVideo = self->_isAirPlayVideo;
    PBDataWriterWriteBOOLField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_outputDevices;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v15 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesArtistIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesAlbumIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsRemoteControl)
  {
    isRemoteControl = self->_isRemoteControl;
    PBDataWriterWriteBOOLField();
  }

  itemMediaType = self->_itemMediaType;
  PBDataWriterWriteUint32Field();
  itemMediaSubtype = self->_itemMediaSubtype;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsAirPlayActive)
  {
    isAirPlayActive = self->_isAirPlayActive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasParentGroupContainsDiscoverableGroupLeader)
  {
    parentGroupContainsDiscoverableGroupLeader = self->_parentGroupContainsDiscoverableGroupLeader;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasExcludeFromSuggestions)
  {
    excludeFromSuggestions = self->_excludeFromSuggestions;
    PBDataWriterWriteBOOLField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v94.receiver = self;
  v94.super_class = BMMediaNowPlaying;
  v5 = [(BMEventBase *)&v94 init];
  if (!v5)
  {
    goto LABEL_169;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v95[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v95[0] & 0x7F) << v8;
        if ((v95[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_91;
        case 2u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v95[0] = 0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          *&v5->_raw_absoluteTimestamp = v95[0];
          goto LABEL_163;
        case 3u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v25;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v31 = v26++ > 8;
            if (v31)
            {
              goto LABEL_134;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 5)
          {
LABEL_134:
            LODWORD(v27) = 0;
          }

          v85 = 48;
          goto LABEL_159;
        case 4u:
          v16 = PBReaderReadString();
          v17 = 80;
          goto LABEL_91;
        case 5u:
          v16 = PBReaderReadString();
          v17 = 88;
          goto LABEL_91;
        case 6u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasDuration = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 |= (v95[0] & 0x7F) << v39;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v14 = v40++ >= 9;
            if (v14)
            {
              v45 = 0;
              goto LABEL_143;
            }
          }

          if ([fromCopy hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_143:
          v86 = 52;
          goto LABEL_152;
        case 7u:
          v16 = PBReaderReadString();
          v17 = 96;
          goto LABEL_91;
        case 8u:
          v16 = PBReaderReadString();
          v17 = 104;
          goto LABEL_91;
        case 9u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v5->_hasElapsed = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v64 = [fromCopy position] + 1;
            if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v63 |= (v95[0] & 0x7F) << v61;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v14 = v62++ >= 9;
            if (v14)
            {
              v45 = 0;
              goto LABEL_151;
            }
          }

          if ([fromCopy hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v63;
          }

LABEL_151:
          v86 = 56;
LABEL_152:
          *(&v5->super.super.isa + v86) = v45;
          goto LABEL_163;
        case 0xAu:
          v16 = PBReaderReadString();
          v17 = 112;
          goto LABEL_91;
        case 0xBu:
          v16 = PBReaderReadString();
          v17 = 120;
          goto LABEL_91;
        case 0xCu:
          v16 = PBReaderReadString();
          v17 = 128;
          goto LABEL_91;
        case 0xDu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasIsAirPlayVideo = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v95[0] & 0x7F) << v18;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v14 = v19++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_131;
            }
          }

          v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_131:
          v84 = 34;
          goto LABEL_162;
        case 0xEu:
          v95[0] = 0;
          v95[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_171;
          }

          v52 = [[BMMediaNowPlayingOutputDevice alloc] initByReadFrom:fromCopy];
          if (!v52)
          {
            goto LABEL_171;
          }

          v53 = v52;
          [v6 addObject:v52];
          PBReaderRecallMark();

          goto LABEL_163;
        case 0xFu:
          v16 = PBReaderReadString();
          v17 = 144;
          goto LABEL_91;
        case 0x10u:
          v16 = PBReaderReadString();
          v17 = 152;
          goto LABEL_91;
        case 0x11u:
          v16 = PBReaderReadString();
          v17 = 160;
          goto LABEL_91;
        case 0x12u:
          v16 = PBReaderReadString();
          v17 = 168;
LABEL_91:
          v60 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_163;
        case 0x13u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasIsRemoteControl = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v57 = [fromCopy position] + 1;
            if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v56 |= (v95[0] & 0x7F) << v54;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v14 = v55++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_147;
            }
          }

          v24 = (v56 != 0) & ~[fromCopy hasError];
LABEL_147:
          v84 = 36;
          goto LABEL_162;
        case 0x14u:
          v73 = 0;
          v74 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v75 = [fromCopy position] + 1;
            if (v75 >= [fromCopy position] && (v76 = objc_msgSend(fromCopy, "position") + 1, v76 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v73;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v31 = v74++ > 8;
            if (v31)
            {
              goto LABEL_157;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 2)
          {
LABEL_157:
            LODWORD(v27) = 0;
          }

          v85 = 60;
          goto LABEL_159;
        case 0x15u:
          v34 = 0;
          v35 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v34;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v31 = v35++ > 8;
            if (v31)
            {
              goto LABEL_138;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 7)
          {
LABEL_138:
            LODWORD(v27) = 0;
          }

          v85 = 64;
LABEL_159:
          *(&v5->super.super.isa + v85) = v27;
          goto LABEL_163;
        case 0x16u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v5->_hasIsAirPlayActive = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v49 = [fromCopy position] + 1;
            if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v48 |= (v95[0] & 0x7F) << v46;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v14 = v47++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_145;
            }
          }

          v24 = (v48 != 0) & ~[fromCopy hasError];
LABEL_145:
          v84 = 38;
          goto LABEL_162;
        case 0x17u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasParentGroupContainsDiscoverableGroupLeader = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (v95[0] & 0x7F) << v67;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v14 = v68++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_154;
            }
          }

          v24 = (v69 != 0) & ~[fromCopy hasError];
LABEL_154:
          v84 = 40;
          goto LABEL_162;
        case 0x18u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v5->_hasExcludeFromSuggestions = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_163;
          }

LABEL_171:

          goto LABEL_168;
      }

      while (1)
      {
        LOBYTE(v95[0]) = 0;
        v81 = [fromCopy position] + 1;
        if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v80 |= (v95[0] & 0x7F) << v78;
        if ((v95[0] & 0x80) == 0)
        {
          break;
        }

        v78 += 7;
        v14 = v79++ >= 9;
        if (v14)
        {
          LOBYTE(v24) = 0;
          goto LABEL_161;
        }
      }

      v24 = (v80 != 0) & ~[fromCopy hasError];
LABEL_161:
      v84 = 42;
LABEL_162:
      *(&v5->super.super.isa + v84) = v24;
LABEL_163:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v89 = [v6 copy];
  outputDevices = v5->_outputDevices;
  v5->_outputDevices = v89;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_168:
    v92 = 0;
  }

  else
  {
LABEL_169:
    v92 = v5;
  }

  return v92;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMMediaNowPlaying *)self uniqueID];
  absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
  v27 = BMMediaNowPlayingPlaybackStateAsString([(BMMediaNowPlaying *)self playbackState]);
  album = [(BMMediaNowPlaying *)self album];
  artist = [(BMMediaNowPlaying *)self artist];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying duration](self, "duration")}];
  genre = [(BMMediaNowPlaying *)self genre];
  title = [(BMMediaNowPlaying *)self title];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying elapsed](self, "elapsed")}];
  mediaType = [(BMMediaNowPlaying *)self mediaType];
  iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
  iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayVideo](self, "isAirPlayVideo")}];
  outputDevices = [(BMMediaNowPlaying *)self outputDevices];
  bundleID = [(BMMediaNowPlaying *)self bundleID];
  iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
  iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
  groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl")}];
  v3 = BMMediaNowPlayingMediaTypeAsString([(BMMediaNowPlaying *)self itemMediaType]);
  v4 = BMMediaNowPlayingMediaSubtypeAsString([(BMMediaNowPlaying *)self itemMediaSubtype]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying excludeFromSuggestions](self, "excludeFromSuggestions")}];
  v19 = [v18 initWithFormat:@"BMMediaNowPlaying with uniqueID: %@, absoluteTimestamp: %@, playbackState: %@, album: %@, artist: %@, duration: %@, genre: %@, title: %@, elapsed: %@, mediaType: %@, iTunesStoreIdentifier: %@, iTunesSubscriptionIdentifier: %@, isAirPlayVideo: %@, outputDevices: %@, bundleID: %@, iTunesArtistIdentifier: %@, iTunesAlbumIdentifier: %@, groupIdentifier: %@, isRemoteControl: %@, itemMediaType: %@, itemMediaSubtype: %@, isAirPlayActive: %@, parentGroupContainsDiscoverableGroupLeader: %@, excludeFromSuggestions: %@", uniqueID, absoluteTimestamp, v27, album, artist, v23, genre, title, v22, mediaType, iTunesStoreIdentifier, iTunesSubscriptionIdentifier, v20, outputDevices, bundleID, iTunesArtistIdentifier, iTunesAlbumIdentifier, groupIdentifier, v9, v3, v4, v5, v6, v7];

  return v19;
}

- (BMMediaNowPlaying)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp playbackState:(int)state album:(id)album artist:(id)artist duration:(id)duration genre:(id)genre title:(id)self0 elapsed:(id)self1 mediaType:(id)self2 iTunesStoreIdentifier:(id)self3 iTunesSubscriptionIdentifier:(id)self4 isAirPlayVideo:(id)self5 outputDevices:(id)self6 bundleID:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isRemoteControl:(id)control itemMediaType:(int)mediaType itemMediaSubtype:(int)subtype isAirPlayActive:(id)active parentGroupContainsDiscoverableGroupLeader:(id)leader excludeFromSuggestions:(id)suggestions
{
  dCopy = d;
  timestampCopy = timestamp;
  albumCopy = album;
  albumCopy2 = album;
  artistCopy = artist;
  artistCopy2 = artist;
  durationCopy = duration;
  genreCopy = genre;
  titleCopy = title;
  elapsedCopy = elapsed;
  typeCopy = type;
  identifierCopy = identifier;
  subscriptionIdentifierCopy = subscriptionIdentifier;
  videoCopy = video;
  devicesCopy = devices;
  iDCopy = iD;
  artistIdentifierCopy = artistIdentifier;
  albumIdentifierCopy = albumIdentifier;
  groupIdentifierCopy = groupIdentifier;
  controlCopy = control;
  activeCopy = active;
  leaderCopy = leader;
  suggestionsCopy = suggestions;
  v61.receiver = self;
  v61.super_class = BMMediaNowPlaying;
  v37 = [(BMEventBase *)&v61 init];
  if (v37)
  {
    v37->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v37->_uniqueID, d);
    if (timestampCopy)
    {
      v37->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v37->_hasRaw_absoluteTimestamp = 0;
      v38 = -1.0;
    }

    v37->_raw_absoluteTimestamp = v38;
    v37->_playbackState = state;
    objc_storeStrong(&v37->_album, albumCopy);
    objc_storeStrong(&v37->_artist, artistCopy);
    if (durationCopy)
    {
      v37->_hasDuration = 1;
      unsignedIntValue = [durationCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v37->_hasDuration = 0;
    }

    v37->_duration = unsignedIntValue;
    objc_storeStrong(&v37->_genre, genre);
    objc_storeStrong(&v37->_title, title);
    if (elapsedCopy)
    {
      v37->_hasElapsed = 1;
      unsignedIntValue2 = [elapsedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v37->_hasElapsed = 0;
    }

    v37->_elapsed = unsignedIntValue2;
    objc_storeStrong(&v37->_mediaType, type);
    objc_storeStrong(&v37->_iTunesStoreIdentifier, identifier);
    objc_storeStrong(&v37->_iTunesSubscriptionIdentifier, subscriptionIdentifier);
    if (videoCopy)
    {
      v37->_hasIsAirPlayVideo = 1;
      v37->_isAirPlayVideo = [videoCopy BOOLValue];
    }

    else
    {
      v37->_hasIsAirPlayVideo = 0;
      v37->_isAirPlayVideo = 0;
    }

    objc_storeStrong(&v37->_outputDevices, devices);
    objc_storeStrong(&v37->_bundleID, iD);
    objc_storeStrong(&v37->_iTunesArtistIdentifier, artistIdentifier);
    objc_storeStrong(&v37->_iTunesAlbumIdentifier, albumIdentifier);
    objc_storeStrong(&v37->_groupIdentifier, groupIdentifier);
    if (controlCopy)
    {
      v37->_hasIsRemoteControl = 1;
      v37->_isRemoteControl = [controlCopy BOOLValue];
    }

    else
    {
      v37->_hasIsRemoteControl = 0;
      v37->_isRemoteControl = 0;
    }

    v37->_itemMediaType = mediaType;
    v37->_itemMediaSubtype = subtype;
    if (activeCopy)
    {
      v37->_hasIsAirPlayActive = 1;
      v37->_isAirPlayActive = [activeCopy BOOLValue];
    }

    else
    {
      v37->_hasIsAirPlayActive = 0;
      v37->_isAirPlayActive = 0;
    }

    if (leaderCopy)
    {
      v37->_hasParentGroupContainsDiscoverableGroupLeader = 1;
      v37->_parentGroupContainsDiscoverableGroupLeader = [leaderCopy BOOLValue];
    }

    else
    {
      v37->_hasParentGroupContainsDiscoverableGroupLeader = 0;
      v37->_parentGroupContainsDiscoverableGroupLeader = 0;
    }

    if (suggestionsCopy)
    {
      v37->_hasExcludeFromSuggestions = 1;
      v37->_excludeFromSuggestions = [suggestionsCopy BOOLValue];
    }

    else
    {
      v37->_hasExcludeFromSuggestions = 0;
      v37->_excludeFromSuggestions = 0;
    }
  }

  return v37;
}

+ (id)protoFields
{
  v29[24] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v29[0] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v29[1] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"playbackState" number:3 type:4 subMessageClass:0];
  v29[2] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"album" number:4 type:13 subMessageClass:0];
  v29[3] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artist" number:5 type:13 subMessageClass:0];
  v29[4] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:6 type:4 subMessageClass:0];
  v29[5] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"genre" number:7 type:13 subMessageClass:0];
  v29[6] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:8 type:13 subMessageClass:0];
  v29[7] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"elapsed" number:9 type:4 subMessageClass:0];
  v29[8] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:10 type:13 subMessageClass:0];
  v29[9] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesStoreIdentifier" number:11 type:13 subMessageClass:0];
  v29[10] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesSubscriptionIdentifier" number:12 type:13 subMessageClass:0];
  v29[11] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAirPlayVideo" number:13 type:12 subMessageClass:0];
  v29[12] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDevices" number:14 type:14 subMessageClass:objc_opt_class()];
  v29[13] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:15 type:13 subMessageClass:0];
  v29[14] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesArtistIdentifier" number:16 type:13 subMessageClass:0];
  v29[15] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesAlbumIdentifier" number:17 type:13 subMessageClass:0];
  v29[16] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:18 type:13 subMessageClass:0];
  v29[17] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRemoteControl" number:19 type:12 subMessageClass:0];
  v29[18] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemMediaType" number:20 type:4 subMessageClass:0];
  v29[19] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemMediaSubtype" number:21 type:4 subMessageClass:0];
  v29[20] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAirPlayActive" number:22 type:12 subMessageClass:0];
  v29[21] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentGroupContainsDiscoverableGroupLeader" number:23 type:12 subMessageClass:0];
  v29[22] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"excludeFromSuggestions" number:24 type:12 subMessageClass:0];
  v29[23] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:24];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __28__BMMediaNowPlaying_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _outputDevicesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMMediaNowPlaying alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[11] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end