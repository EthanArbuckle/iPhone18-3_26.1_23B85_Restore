@interface BLHLSPlaylist
+ (BOOL)_rewritePlaylistWithParser:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6;
+ (BOOL)rewritePlaylistData:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6;
+ (BOOL)rewritePlaylistURL:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6;
+ (id)playlistParsingData:(id)a3 error:(id *)a4;
- (BLHLSPlaylist)initWithRequestedBitrates:(id)a3;
- (BOOL)_parseUsingParser:(id)a3 error:(id *)a4;
- (BOOL)parserShouldCollectLine:(id)a3;
- (NSSet)keys;
- (NSString)description;
- (void)parser:(id)a3 lineIsTag:(id)a4 value:(id)a5 attributeList:(id)a6;
- (void)parser:(id)a3 lineIsURL:(id)a4;
@end

@implementation BLHLSPlaylist

- (BLHLSPlaylist)initWithRequestedBitrates:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_requestedBitrates, a3);
    v11 = [MEMORY[0x277CBEB58] set];
    uniqueKeys = v7->_uniqueKeys;
    v7->_uniqueKeys = v11;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(BLHLSPlaylist *)self independentSegments];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  v6 = [v3 stringWithFormat:@"{ independentSegments: %@\n", v5];
  v7 = [(BLHLSPlaylist *)self groups];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(BLHLSPlaylist *)self groups];
    v10 = [v9 debugDescription];
    [v6 appendFormat:@"Groups: %@\n", v10];
  }

  v11 = [(BLHLSPlaylist *)self streamInfs];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(BLHLSPlaylist *)self streamInfs];
    v14 = [v13 debugDescription];
    [v6 appendFormat:@"SegmentInfs: %@\n", v14];
  }

  v15 = [(BLHLSPlaylist *)self segments];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(BLHLSPlaylist *)self segments];
    v18 = [v17 debugDescription];
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

+ (BOOL)rewritePlaylistData:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[BLM3U8Parser alloc] initWithData:v12];

  LOBYTE(a6) = [a1 _rewritePlaylistWithParser:v13 toURL:v11 requestedBitrates:v10 error:a6];
  return a6;
}

+ (BOOL)rewritePlaylistURL:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[BLM3U8Parser alloc] initWithURL:v12];

  LOBYTE(a6) = [a1 _rewritePlaylistWithParser:v13 toURL:v11 requestedBitrates:v10 error:a6];
  return a6;
}

+ (BOOL)_rewritePlaylistWithParser:(id)a3 toURL:(id)a4 requestedBitrates:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v10 setCollectForRewrite:1];
  v13 = [[a1 alloc] initWithRequestedBitrates:v12];

  if ([v13 _parseUsingParser:v10 error:a6])
  {
    v14 = [v10 rewriteWithURL:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_parseUsingParser:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setDelegate:self];
  v7 = objc_alloc_init(BLHLSPlaylistState);
  [(BLHLSPlaylist *)self setState:v7];

  v27 = 0;
  v8 = [v6 parseWithError:&v27];

  v9 = v27;
  v10 = v9;
  if (v8)
  {
    v11 = [(BLHLSPlaylist *)self state];
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [v11 mutableGroups];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_241D2FA28;
    v25 = &unk_278D174E0;
    v26 = v12;
    v14 = v12;
    [v13 enumerateKeysAndObjectsUsingBlock:&v22];

    v15 = [v14 copy];
    [(BLHLSPlaylist *)self setGroups:v15];

    v16 = [v11 mutableStreamInfs];
    v17 = [v16 copy];
    [(BLHLSPlaylist *)self setStreamInfs:v17];

    v18 = [v11 mutableSegments];
    v19 = [v18 copy];
    [(BLHLSPlaylist *)self setSegments:v19];

    [(BLHLSPlaylist *)self setState:0];
  }

  else if (a4)
  {
    v20 = v9;
    *a4 = v10;
  }

  return v8;
}

+ (id)playlistParsingData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[BLM3U8Parser alloc] initWithData:v6];

  v8 = [a1 _playlistUsingParser:v7 ignoreSegments:0 error:a4];

  return v8;
}

- (void)parser:(id)a3 lineIsURL:(id)a4
{
  v16 = a4;
  v5 = [(BLHLSPlaylist *)self state];
  v6 = [v5 currentStreamInf];

  if (v6)
  {
    v7 = [v5 currentStreamInf];
    [v5 setCurrentStreamInf:0];
    [(BLHLSSegment *)v7 setUrl:v16];
    v8 = [v5 mutableStreamInfs];
LABEL_3:
    v9 = v8;
    [v8 addObject:v7];

    goto LABEL_7;
  }

  if (![(BLHLSPlaylist *)self ignoreSegments])
  {
    [v5 currentDuration];
    if (v10 != -1.0)
    {
      v11 = [BLHLSSegment alloc];
      [v5 currentDuration];
      v13 = v12;
      v14 = [v5 currentMap];
      v15 = [v5 currentKey];
      v7 = [(BLHLSSegment *)v11 initWithURL:v16 duration:v14 map:v15 key:v13];

      [v5 setCurrentDuration:-1.0];
      v8 = [v5 mutableSegments];
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (void)parser:(id)a3 lineIsTag:(id)a4 value:(id)a5 attributeList:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(BLHLSPlaylist *)self state];
  if ([v9 isEqualToString:@"#EXT-X-MEDIA"])
  {
    v13 = [v11 objectForKeyedSubscript:@"GROUP-ID"];
    v14 = objc_alloc_init(BLHLSMedia);
    [(BLHLSMedia *)v14 setPropertiesFromAttributeList:v11];
    v15 = [v12 mutableGroups];
    v16 = [v15 objectForKeyedSubscript:v13];

    if (!v16)
    {
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = [v12 mutableGroups];
      [v17 setObject:v16 forKeyedSubscript:v13];
    }

    [v16 addObject:v14];

    goto LABEL_9;
  }

  if (![v9 isEqualToString:@"#EXT-X-MAP"])
  {
    if ([v9 isEqualToString:@"#EXTINF"])
    {
      v13 = [v10 componentsSeparatedByString:{@", "}];
      v18 = [(BLHLSStreamInf *)v13 objectAtIndexedSubscript:0];
      [v18 doubleValue];
      v20 = v19;

      [v12 setCurrentDuration:v20];
      goto LABEL_9;
    }

    if ([v9 isEqualToString:@"#EXT-X-INDEPENDENT-SEGMENTS"])
    {
      [(BLHLSPlaylist *)self setIndependentSegments:1];
      goto LABEL_10;
    }

    if ([v9 isEqualToString:@"#EXT-X-KEY"])
    {
      v22 = objc_alloc_init(BLHLSKey);
      [(BLHLSKey *)v22 setPropertiesFromAttributeList:v11];
      if ([(BLHLSKey *)v22 isFormatSupported])
      {
        [v12 setCurrentKey:v22];
        [(NSMutableSet *)self->_uniqueKeys addObject:v22];
LABEL_21:

        goto LABEL_10;
      }

      v23 = BLDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [(BLHLSKey *)v22 keyFormat];
        v28 = 138543362;
        v29 = v24;
        _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_DEBUG, "Dropping unsupported key format %{public}@", &v28, 0xCu);
      }
    }

    else
    {
      if ([v9 isEqualToString:@"#EXT-X-STREAM-INF"])
      {
        v13 = objc_alloc_init(BLHLSStreamInf);
        [(BLHLSStreamInf *)v13 setPropertiesFromAttributeList:v11];
        [v12 setCurrentStreamInf:v13];
        goto LABEL_9;
      }

      if (![v9 isEqualToString:@"#EXT-X-SESSION-DATA"] || (objc_msgSend(v11, "objectForKeyedSubscript:", @"DATA-ID"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"com.apple.audiobook.rapguid"), v25, !v26))
      {
        if ([v9 isEqualToString:@"#EXT-X-BITRATE"])
        {
          goto LABEL_10;
        }

        v13 = BLDefaultLog();
        if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEBUG))
        {
          v28 = 138412290;
          v29 = v9;
          _os_log_impl(&dword_241D1F000, &v13->super, OS_LOG_TYPE_DEBUG, "Ignoring tag %@", &v28, 0xCu);
        }

        goto LABEL_9;
      }

      v22 = [v11 objectForKeyedSubscript:@"VALUE"];
      if ([(BLHLSKey *)v22 length])
      {
        v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v22];
        [(BLHLSPlaylist *)self setRacGUID:v27];
      }

      v23 = BLDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = v11;
        _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_DEFAULT, "Found rapguid attribute: %@", &v28, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v13 = objc_alloc_init(BLHLSMap);
  [(BLHLSStreamInf *)v13 setPropertiesFromAttributeList:v11];
  [v12 setCurrentMap:v13];
LABEL_9:

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)parserShouldCollectLine:(id)a3
{
  v4 = [(BLHLSPlaylist *)self state];
  v5 = [v4 currentStreamInf];

  if (!v5)
  {
    return 1;
  }

  v6 = [(BLHLSPlaylist *)self requestedBitrates];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(BLHLSPlaylist *)self state];
  v9 = [v8 currentStreamInf];
  v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v9, "averageBandwidthFallbackToPeak")}];
  v11 = [v6 containsObject:v10];

  return v11;
}

@end