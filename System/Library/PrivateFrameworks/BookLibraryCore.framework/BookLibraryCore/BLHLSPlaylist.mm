@interface BLHLSPlaylist
+ (BOOL)_rewritePlaylistWithParser:(id)parser toURL:(id)l requestedBitrates:(id)bitrates error:(id *)error;
+ (BOOL)rewritePlaylistData:(id)data toURL:(id)l requestedBitrates:(id)bitrates error:(id *)error;
+ (BOOL)rewritePlaylistURL:(id)l toURL:(id)rL requestedBitrates:(id)bitrates error:(id *)error;
+ (id)playlistParsingData:(id)data error:(id *)error;
- (BLHLSPlaylist)initWithRequestedBitrates:(id)bitrates;
- (BOOL)_parseUsingParser:(id)parser error:(id *)error;
- (BOOL)parserShouldCollectLine:(id)line;
- (NSSet)keys;
- (NSString)description;
- (void)parser:(id)parser lineIsTag:(id)tag value:(id)value attributeList:(id)list;
- (void)parser:(id)parser lineIsURL:(id)l;
@end

@implementation BLHLSPlaylist

- (BLHLSPlaylist)initWithRequestedBitrates:(id)bitrates
{
  bitratesCopy = bitrates;
  v14.receiver = self;
  v14.super_class = BLHLSPlaylist;
  v6 = [(BLHLSPlaylist *)&v14 init];
  v7 = v6;
  if (v6)
  {
    groups = v6->_groups;
    v9 = MEMORY[0x277CBEBF8];
    v6->_groups = MEMORY[0x277CBEBF8];

    segments = v7->_segments;
    v7->_segments = v9;

    objc_storeStrong(&v7->_requestedBitrates, bitrates);
    v11 = [MEMORY[0x277CBEB58] set];
    uniqueKeys = v7->_uniqueKeys;
    v7->_uniqueKeys = v11;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  independentSegments = [(BLHLSPlaylist *)self independentSegments];
  v5 = @"NO";
  if (independentSegments)
  {
    v5 = @"YES";
  }

  v6 = [v3 stringWithFormat:@"{ independentSegments: %@\n", v5];
  groups = [(BLHLSPlaylist *)self groups];
  v8 = [groups count];

  if (v8)
  {
    groups2 = [(BLHLSPlaylist *)self groups];
    v10 = [groups2 debugDescription];
    [v6 appendFormat:@"Groups: %@\n", v10];
  }

  streamInfs = [(BLHLSPlaylist *)self streamInfs];
  v12 = [streamInfs count];

  if (v12)
  {
    streamInfs2 = [(BLHLSPlaylist *)self streamInfs];
    v14 = [streamInfs2 debugDescription];
    [v6 appendFormat:@"SegmentInfs: %@\n", v14];
  }

  segments = [(BLHLSPlaylist *)self segments];
  v16 = [segments count];

  if (v16)
  {
    segments2 = [(BLHLSPlaylist *)self segments];
    v18 = [segments2 debugDescription];
    [v6 appendFormat:@"Segments: %@\n", v18];
  }

  [v6 appendFormat:@"}"];
  v19 = [v6 copy];

  return v19;
}

- (NSSet)keys
{
  v2 = [(NSMutableSet *)self->_uniqueKeys copy];

  return v2;
}

+ (BOOL)rewritePlaylistData:(id)data toURL:(id)l requestedBitrates:(id)bitrates error:(id *)error
{
  bitratesCopy = bitrates;
  lCopy = l;
  dataCopy = data;
  v13 = [[BLM3U8Parser alloc] initWithData:dataCopy];

  LOBYTE(error) = [self _rewritePlaylistWithParser:v13 toURL:lCopy requestedBitrates:bitratesCopy error:error];
  return error;
}

+ (BOOL)rewritePlaylistURL:(id)l toURL:(id)rL requestedBitrates:(id)bitrates error:(id *)error
{
  bitratesCopy = bitrates;
  rLCopy = rL;
  lCopy = l;
  v13 = [[BLM3U8Parser alloc] initWithURL:lCopy];

  LOBYTE(error) = [self _rewritePlaylistWithParser:v13 toURL:rLCopy requestedBitrates:bitratesCopy error:error];
  return error;
}

+ (BOOL)_rewritePlaylistWithParser:(id)parser toURL:(id)l requestedBitrates:(id)bitrates error:(id *)error
{
  parserCopy = parser;
  lCopy = l;
  bitratesCopy = bitrates;
  [parserCopy setCollectForRewrite:1];
  v13 = [[self alloc] initWithRequestedBitrates:bitratesCopy];

  if ([v13 _parseUsingParser:parserCopy error:error])
  {
    v14 = [parserCopy rewriteWithURL:lCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_parseUsingParser:(id)parser error:(id *)error
{
  parserCopy = parser;
  [parserCopy setDelegate:self];
  v7 = objc_alloc_init(BLHLSPlaylistState);
  [(BLHLSPlaylist *)self setState:v7];

  v27 = 0;
  v8 = [parserCopy parseWithError:&v27];

  v9 = v27;
  v10 = v9;
  if (v8)
  {
    state = [(BLHLSPlaylist *)self state];
    array = [MEMORY[0x277CBEB18] array];
    mutableGroups = [state mutableGroups];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_241D2FA28;
    v25 = &unk_278D174E0;
    v26 = array;
    v14 = array;
    [mutableGroups enumerateKeysAndObjectsUsingBlock:&v22];

    v15 = [v14 copy];
    [(BLHLSPlaylist *)self setGroups:v15];

    mutableStreamInfs = [state mutableStreamInfs];
    v17 = [mutableStreamInfs copy];
    [(BLHLSPlaylist *)self setStreamInfs:v17];

    mutableSegments = [state mutableSegments];
    v19 = [mutableSegments copy];
    [(BLHLSPlaylist *)self setSegments:v19];

    [(BLHLSPlaylist *)self setState:0];
  }

  else if (error)
  {
    v20 = v9;
    *error = v10;
  }

  return v8;
}

+ (id)playlistParsingData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[BLM3U8Parser alloc] initWithData:dataCopy];

  v8 = [self _playlistUsingParser:v7 ignoreSegments:0 error:error];

  return v8;
}

- (void)parser:(id)parser lineIsURL:(id)l
{
  lCopy = l;
  state = [(BLHLSPlaylist *)self state];
  currentStreamInf = [state currentStreamInf];

  if (currentStreamInf)
  {
    currentStreamInf2 = [state currentStreamInf];
    [state setCurrentStreamInf:0];
    [(BLHLSSegment *)currentStreamInf2 setUrl:lCopy];
    mutableStreamInfs = [state mutableStreamInfs];
LABEL_3:
    v9 = mutableStreamInfs;
    [mutableStreamInfs addObject:currentStreamInf2];

    goto LABEL_7;
  }

  if (![(BLHLSPlaylist *)self ignoreSegments])
  {
    [state currentDuration];
    if (v10 != -1.0)
    {
      v11 = [BLHLSSegment alloc];
      [state currentDuration];
      v13 = v12;
      currentMap = [state currentMap];
      currentKey = [state currentKey];
      currentStreamInf2 = [(BLHLSSegment *)v11 initWithURL:lCopy duration:currentMap map:currentKey key:v13];

      [state setCurrentDuration:-1.0];
      mutableStreamInfs = [state mutableSegments];
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (void)parser:(id)parser lineIsTag:(id)tag value:(id)value attributeList:(id)list
{
  v30 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  valueCopy = value;
  listCopy = list;
  state = [(BLHLSPlaylist *)self state];
  if ([tagCopy isEqualToString:@"#EXT-X-MEDIA"])
  {
    v13 = [listCopy objectForKeyedSubscript:@"GROUP-ID"];
    v14 = objc_alloc_init(BLHLSMedia);
    [(BLHLSMedia *)v14 setPropertiesFromAttributeList:listCopy];
    mutableGroups = [state mutableGroups];
    array = [mutableGroups objectForKeyedSubscript:v13];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      mutableGroups2 = [state mutableGroups];
      [mutableGroups2 setObject:array forKeyedSubscript:v13];
    }

    [array addObject:v14];

    goto LABEL_9;
  }

  if (![tagCopy isEqualToString:@"#EXT-X-MAP"])
  {
    if ([tagCopy isEqualToString:@"#EXTINF"])
    {
      v13 = [valueCopy componentsSeparatedByString:{@", "}];
      v18 = [(BLHLSStreamInf *)v13 objectAtIndexedSubscript:0];
      [v18 doubleValue];
      v20 = v19;

      [state setCurrentDuration:v20];
      goto LABEL_9;
    }

    if ([tagCopy isEqualToString:@"#EXT-X-INDEPENDENT-SEGMENTS"])
    {
      [(BLHLSPlaylist *)self setIndependentSegments:1];
      goto LABEL_10;
    }

    if ([tagCopy isEqualToString:@"#EXT-X-KEY"])
    {
      v22 = objc_alloc_init(BLHLSKey);
      [(BLHLSKey *)v22 setPropertiesFromAttributeList:listCopy];
      if ([(BLHLSKey *)v22 isFormatSupported])
      {
        [state setCurrentKey:v22];
        [(NSMutableSet *)self->_uniqueKeys addObject:v22];
LABEL_21:

        goto LABEL_10;
      }

      v23 = BLDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        keyFormat = [(BLHLSKey *)v22 keyFormat];
        v28 = 138543362;
        v29 = keyFormat;
        _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_DEBUG, "Dropping unsupported key format %{public}@", &v28, 0xCu);
      }
    }

    else
    {
      if ([tagCopy isEqualToString:@"#EXT-X-STREAM-INF"])
      {
        v13 = objc_alloc_init(BLHLSStreamInf);
        [(BLHLSStreamInf *)v13 setPropertiesFromAttributeList:listCopy];
        [state setCurrentStreamInf:v13];
        goto LABEL_9;
      }

      if (![tagCopy isEqualToString:@"#EXT-X-SESSION-DATA"] || (objc_msgSend(listCopy, "objectForKeyedSubscript:", @"DATA-ID"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"com.apple.audiobook.rapguid"), v25, !v26))
      {
        if ([tagCopy isEqualToString:@"#EXT-X-BITRATE"])
        {
          goto LABEL_10;
        }

        v13 = BLDefaultLog();
        if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEBUG))
        {
          v28 = 138412290;
          v29 = tagCopy;
          _os_log_impl(&dword_241D1F000, &v13->super, OS_LOG_TYPE_DEBUG, "Ignoring tag %@", &v28, 0xCu);
        }

        goto LABEL_9;
      }

      v22 = [listCopy objectForKeyedSubscript:@"VALUE"];
      if ([(BLHLSKey *)v22 length])
      {
        v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v22];
        [(BLHLSPlaylist *)self setRacGUID:v27];
      }

      v23 = BLDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = listCopy;
        _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_DEFAULT, "Found rapguid attribute: %@", &v28, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v13 = objc_alloc_init(BLHLSMap);
  [(BLHLSStreamInf *)v13 setPropertiesFromAttributeList:listCopy];
  [state setCurrentMap:v13];
LABEL_9:

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)parserShouldCollectLine:(id)line
{
  state = [(BLHLSPlaylist *)self state];
  currentStreamInf = [state currentStreamInf];

  if (!currentStreamInf)
  {
    return 1;
  }

  requestedBitrates = [(BLHLSPlaylist *)self requestedBitrates];
  v7 = MEMORY[0x277CCABB0];
  state2 = [(BLHLSPlaylist *)self state];
  currentStreamInf2 = [state2 currentStreamInf];
  v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(currentStreamInf2, "averageBandwidthFallbackToPeak")}];
  v11 = [requestedBitrates containsObject:v10];

  return v11;
}

@end