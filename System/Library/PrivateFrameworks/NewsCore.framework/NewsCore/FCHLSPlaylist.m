@interface FCHLSPlaylist
+ (void)playlistParsingData:(void *)a3 error:;
- (BOOL)parserShouldCollectLine:(id)a3;
- (NSString)description;
- (void)parser:(id)a3 lineIsTag:(id)a4 value:(id)a5 attributeList:(id)a6;
- (void)parser:(id)a3 lineIsURL:(id)a4;
@end

@implementation FCHLSPlaylist

- (NSString)description
{
  if (self)
  {
    if (self->_independentSegments)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"{ independentSegments: %@\n", v3];
    groups = self->_groups;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"{ independentSegments: %@\n", @"NO"];
    groups = 0;
  }

  if ([(NSArray *)groups count])
  {
    if (self)
    {
      v6 = self->_groups;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(NSArray *)v6 debugDescription];
    [v4 appendFormat:@"Groups: %@\n", v7];
  }

  if (self)
  {
    streamInfs = self->_streamInfs;
  }

  else
  {
    streamInfs = 0;
  }

  if ([(NSArray *)streamInfs count])
  {
    if (self)
    {
      v9 = self->_streamInfs;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(NSArray *)v9 debugDescription];
    [v4 appendFormat:@"SegmentInfs: %@\n", v10];
  }

  if (self)
  {
    segments = self->_segments;
  }

  else
  {
    segments = 0;
  }

  if ([(NSArray *)segments count])
  {
    if (self)
    {
      v12 = self->_segments;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(NSArray *)v12 debugDescription];
    [v4 appendFormat:@"Segments: %@\n", v13];
  }

  [v4 appendFormat:@"}"];
  v14 = [v4 copy];

  return v14;
}

void __41__FCHLSPlaylist__parseUsingParser_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCHLSGroup alloc];
  v8 = v6;
  v9 = v5;
  if (v7 && (v15.receiver = v7, v15.super_class = FCHLSGroup, (v14 = objc_msgSendSuper2(&v15, sel_init)) != 0))
  {
    v10 = [v8 copy];
    v11 = v14[1];
    v14[1] = v10;

    v12 = [v9 copy];
    v13 = v14[2];
    v14[2] = v12;
  }

  else
  {
    v14 = 0;
  }

  [*(a1 + 32) addObject:v14];
}

+ (void)playlistParsingData:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [[FCM3U8Parser alloc] initWithData:v4];

  v6 = v5;
  objc_opt_self();
  v7 = [FCHLSPlaylist alloc];
  if (!v7 || (v46.receiver = v7, v46.super_class = FCHLSPlaylist, (v8 = objc_msgSendSuper2(&v46, sel_init)) == 0))
  {
    v9 = 0;
LABEL_17:
    v40 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = v8[2];
  v11 = MEMORY[0x1E695E0F0];
  v8[2] = MEMORY[0x1E695E0F0];

  v12 = *(v9 + 4);
  *(v9 + 4) = v11;

  objc_storeStrong(v9 + 8, 0);
  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = *(v9 + 7);
  *(v9 + 7) = v13;

  v15 = v6;
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(v15 + 2, v9);
  }

  v17 = objc_alloc_init(FCHLSPlaylistState);
  v18 = *(v9 + 6);
  *(v9 + 6) = v17;

  v50 = 0;
  v19 = [(FCM3U8Parser *)v16 parseWithError:?];

  v20 = v50;
  v21 = v20;
  if (!v19)
  {
    if (a3)
    {
      v41 = v20;
      *a3 = v21;
    }

    goto LABEL_17;
  }

  v22 = *(v9 + 6);
  v23 = [MEMORY[0x1E695DF70] array];
  if (v22)
  {
    v24 = *(v22 + 1);
  }

  else
  {
    v24 = 0;
  }

  v46.receiver = MEMORY[0x1E69E9820];
  v46.super_class = 3221225472;
  v47 = __41__FCHLSPlaylist__parseUsingParser_error___block_invoke;
  v48 = &unk_1E7C40868;
  v25 = v23;
  v49 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:&v46];
  v26 = [v25 copy];
  v27 = *(v9 + 2);
  *(v9 + 2) = v26;

  if (v22)
  {
    v28 = *(v22 + 6);
    v29 = [v28 copy];
    v30 = *(v9 + 3);
    *(v9 + 3) = v29;

    v31 = *(v22 + 4);
  }

  else
  {
    v44 = [0 copy];
    v45 = *(v9 + 3);
    *(v9 + 3) = v44;

    v31 = 0;
  }

  v32 = v31;
  v33 = [v32 copy];
  v34 = *(v9 + 4);
  *(v9 + 4) = v33;

  if (v22)
  {
    v35 = *(v22 + 8);
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  v37 = [v36 copy];
  v38 = *(v9 + 5);
  *(v9 + 5) = v37;

  v39 = *(v9 + 6);
  *(v9 + 6) = 0;

  v40 = v9;
LABEL_18:

  v42 = v40;
  return v40;
}

- (void)parser:(id)a3 lineIsURL:(id)a4
{
  v19 = a4;
  if (!self || (v6 = self->_state) == 0)
  {
    v9 = [FCHLSSegment alloc];
    v7 = 0;
    v12 = 0;
    v14 = 0;
    v11 = 0.0;
    v13 = 1;
LABEL_7:
    v15 = v19;
    v16 = v12;
    v17 = v14;
    if (v9)
    {
      v20.receiver = v9;
      v20.super_class = FCHLSSegment;
      v18 = [(FCHLSPlaylist *)&v20 init];
      v9 = v18;
      if (v18)
      {
        objc_storeStrong(&v18->_groups, a4);
        v9->_duration = v11;
        objc_storeStrong(&v9->_map, v12);
        objc_storeStrong(&v9->_key, v14);
      }
    }

    if (v13)
    {
      v10 = 0;
    }

    else
    {
      *(v7 + 24) = 0xBFF0000000000000;
      v10 = *(v7 + 32);
    }

    goto LABEL_12;
  }

  v7 = v6;
  currentStreamInf = v6->_currentStreamInf;
  if (!currentStreamInf)
  {
    if (v6->_currentDuration == -1.0)
    {
      goto LABEL_13;
    }

    v9 = [FCHLSSegment alloc];
    v11 = *(v7 + 24);
    v12 = *(v7 + 16);
    v13 = 0;
    v14 = *(v7 + 56);
    goto LABEL_7;
  }

  v9 = currentStreamInf;
  [(FCHLSPlaylistState *)v7 setCurrentStreamInf:?];
  objc_storeStrong(&v9->_map, a4);
  v10 = *(v7 + 48);
LABEL_12:
  [v10 addObject:v9];

LABEL_13:
}

- (void)parser:(id)a3 lineIsTag:(id)a4 value:(id)a5 attributeList:(id)a6
{
  v46 = a4;
  v9 = a5;
  v10 = a6;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v12 = state;
  if ([v46 isEqualToString:@"#EXT-X-MEDIA"])
  {
    v13 = [v10 objectForKeyedSubscript:@"GROUP-ID"];
    v14 = objc_alloc_init(FCHLSMedia);
    if (v14)
    {
      v15 = v10;
      v16 = [v15 objectForKeyedSubscript:@"TYPE"];
      type = v14->_type;
      v14->_type = v16;

      v18 = [v15 objectForKeyedSubscript:@"URI"];
      url = v14->_url;
      v14->_url = v18;

      v20 = [v15 objectForKeyedSubscript:@"NAME"];

      name = v14->_name;
      v14->_name = v20;
    }

    if (v12)
    {
      mutableGroups = v12->_mutableGroups;
    }

    else
    {
      mutableGroups = 0;
    }

    v23 = [(NSMutableDictionary *)mutableGroups objectForKeyedSubscript:v13];
    if (!v23)
    {
      v23 = [MEMORY[0x1E695DF70] array];
      if (v12)
      {
        v24 = v12->_mutableGroups;
      }

      else
      {
        v24 = 0;
      }

      [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v13];
    }

    [v23 addObject:v14];

LABEL_13:
LABEL_22:

    goto LABEL_23;
  }

  if ([v46 isEqualToString:@"#EXT-X-MAP"])
  {
    v13 = objc_alloc_init(FCHLSMap);
    if (v13)
    {
      v25 = [v10 objectForKeyedSubscript:@"URI"];
      v26 = [MEMORY[0x1E695DFF8] URLWithString:v25];
      v27 = v13->_url;
      v13->_url = v26;
    }

    if (v12)
    {
      objc_storeStrong(&v12->_currentMap, v13);
    }

    goto LABEL_22;
  }

  if ([v46 isEqualToString:@"#EXTINF"])
  {
    v13 = [v9 componentsSeparatedByString:{@", "}];
    v28 = [(FCHLSMap *)v13 objectAtIndexedSubscript:0];
    [v28 doubleValue];
    v30 = v29;

    if (v12)
    {
      v12->_currentDuration = v30;
    }

    goto LABEL_22;
  }

  if ([v46 isEqualToString:@"#EXT-X-INDEPENDENT-SEGMENTS"])
  {
    if (self)
    {
      self->_independentSegments = 1;
    }

    goto LABEL_23;
  }

  if ([v46 isEqualToString:@"#EXT-X-KEY"])
  {
    v31 = objc_alloc_init(FCHLSKey);
    if (!v31)
    {
LABEL_49:

      goto LABEL_23;
    }

    v32 = v10;
    v33 = [v32 objectForKeyedSubscript:@"METHOD"];
    if ([@"NONE" isEqualToString:v33])
    {
      v34 = 1;
    }

    else if ([@"AES-128" isEqualToString:v33])
    {
      v34 = 2;
    }

    else
    {
      if (![@"SAMPLE-AES" isEqualToString:v33])
      {
        v31->_method = 0;
LABEL_47:
        v37 = [v32 objectForKeyedSubscript:@"URI"];
        v38 = [MEMORY[0x1E695DFF8] URLWithString:v37];
        v39 = v31->_url;
        v31->_url = v38;

        v40 = [v32 objectForKeyedSubscript:@"KEYFORMAT"];
        keyFormat = v31->_keyFormat;
        v31->_keyFormat = v40;

        v42 = [v32 objectForKeyedSubscript:@"KEYFORMATVERSIONS"];
        keyFormatVersions = v31->_keyFormatVersions;
        v31->_keyFormatVersions = v42;

        v44 = [v32 objectForKeyedSubscript:@"IV"];

        iv = v31->_iv;
        v31->_iv = v44;

        if ([(NSString *)v31->_keyFormat isEqualToString:@"com.apple.streamingkeydelivery"])
        {
          [(FCPurchaseLookupResult *)v12 setIntroOffer:v31];
          [(NSMutableSet *)self->_uniqueKeys addObject:v31];
        }

        goto LABEL_49;
      }

      v34 = 3;
    }

    v31->_method = v34;
    goto LABEL_47;
  }

  if ([v46 isEqualToString:@"#EXT-X-STREAM-INF"])
  {
    v13 = objc_alloc_init(FCHLSStreamInf);
    [(FCHLSStreamInf *)v13 setPropertiesFromAttributeList:v10];
    [(FCHLSPlaylistState *)v12 setCurrentStreamInf:v13];
    goto LABEL_22;
  }

  if (([v46 isEqualToString:@"#EXT-X-BITRATE"] & 1) == 0 && objc_msgSend(v46, "isEqualToString:", @"#EXT-X-SESSION-DATA"))
  {
    v13 = [v10 objectForKeyedSubscript:@"DATA-ID"];
    v35 = [v10 objectForKeyedSubscript:@"VALUE"];
    v14 = v35;
    if (v13 && v35)
    {
      if (v12)
      {
        mutableSessionData = v12->_mutableSessionData;
      }

      else
      {
        mutableSessionData = 0;
      }

      [(NSMutableDictionary *)mutableSessionData setObject:v14 forKey:v13];
    }

    goto LABEL_13;
  }

LABEL_23:
}

- (BOOL)parserShouldCollectLine:(id)a3
{
  if (!self || (v4 = self->_state) == 0)
  {
    v6 = 0;
    v14 = 1;
    goto LABEL_9;
  }

  currentStreamInf = v4->_currentStreamInf;

  if (!currentStreamInf)
  {
    return 1;
  }

  v6 = self->_requestedBitrates;
  v7 = MEMORY[0x1E696AD98];
  v8 = self->_state;
  v9 = v8;
  if (v8)
  {
    v10 = v8->_currentStreamInf;
    v11 = v10;
    if (v10)
    {
      averageBandwidth = v10->_averageBandwidth;
      if (!averageBandwidth)
      {
        averageBandwidth = v10->_bandwidth;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
  }

  averageBandwidth = 0;
LABEL_8:
  v13 = [v7 numberWithUnsignedLongLong:averageBandwidth];
  v14 = [(NSArray *)v6 containsObject:v13];

LABEL_9:
  return v14;
}

@end