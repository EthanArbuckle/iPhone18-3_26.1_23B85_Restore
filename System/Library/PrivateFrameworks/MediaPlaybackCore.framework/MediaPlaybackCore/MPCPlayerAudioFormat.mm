@interface MPCPlayerAudioFormat
+ (id)lossyHighQualityStereoFormat;
+ (id)lossyLowQualityStereoFormat;
+ (id)payloadValueFromJSONValue:(id)a3;
- (BOOL)_isBinauralFormat:(id)a3;
- (BOOL)_isDerivedFromSpatialFormat:(id)a3;
- (BOOL)_isHLSVersion:(id)a3 greatherThanOrEqualTo:(id)a4;
- (BOOL)_isMultichannelFormat:(id)a3;
- (BOOL)_isSpatialFormat:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPCPlayerAudioFormat)audioFormatWithRenderingMode:(int64_t)a3;
- (MPCPlayerAudioFormat)initWithDictionaryRepresentation:(id)a3;
- (MPCPlayerAudioFormat)initWithJSONDictionaryRepresentation:(id)a3 stableVariantID:(id)a4;
- (MPCPlayerAudioFormat)initWithNowPlayingInfoAudioFormat:(id)a3;
- (MPCPlayerAudioFormat)initWithTier:(int64_t)a3 codec:(unsigned int)a4 spatialized:(BOOL)a5 multiChannel:(BOOL)a6 channelLayout:(unsigned int)a7 sampleRate:(int64_t)a8 stableVariantID:(id)a9;
- (MPNowPlayingInfoAudioFormat)nowPlayingAudioFormat;
- (NSDictionary)dictionaryRepresentation;
- (NSString)debugCodecDescription;
- (NSString)description;
- (NSString)humanDescription;
- (id)_descriptionForChannelLayoutTag:(unsigned int)a3;
- (id)analyticsFormatInfo;
- (int64_t)_computedTierFromHLSDataWithChannelCount:(int64_t)a3;
- (unsigned)_computedChannelLayoutTagFromHLSData:(id)a3 channelCount:(int64_t)a4;
@end

@implementation MPCPlayerAudioFormat

+ (id)payloadValueFromJSONValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionaryRepresentation:v4];

  return v5;
}

- (id)analyticsFormatInfo
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  if ([(MPCPlayerAudioFormat *)self bitrate])
  {
    v4 = [(MPCPlayerAudioFormat *)self debugBitRateDescription];
    [v3 setObject:v4 forKeyedSubscript:@"bitrate"];
  }

  if ([(MPCPlayerAudioFormat *)self codec])
  {
    v5 = [(MPCPlayerAudioFormat *)self debugCodecDescription];
    [v3 setObject:v5 forKeyedSubscript:@"codec"];
  }

  if ([(MPCPlayerAudioFormat *)self bitDepth])
  {
    v6 = [(MPCPlayerAudioFormat *)self debugBitDepthDescription];
    [v3 setObject:v6 forKeyedSubscript:@"bitDepth"];
  }

  if ([(MPCPlayerAudioFormat *)self channelLayout]!= -1 && [(MPCPlayerAudioFormat *)self channelLayout])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPCPlayerAudioFormat channelLayout](self, "channelLayout")}];
    [v3 setObject:v7 forKeyedSubscript:@"channelCount"];

    v8 = [(MPCPlayerAudioFormat *)self debugChannelLayoutDescription];
    [v3 setObject:v8 forKeyedSubscript:@"layout"];
  }

  if ([(MPCPlayerAudioFormat *)self sampleRate])
  {
    v9 = [(MPCPlayerAudioFormat *)self debugSampleRateDescription];
    [v3 setObject:v9 forKeyedSubscript:@"sampleRate"];
  }

  return v3;
}

- (id)_descriptionForChannelLayoutTag:(unsigned int)a3
{
  result = @"unknown";
  if (a3 > 8323079)
  {
    if (a3 > 12648463)
    {
      v4 = 12779529;
      v12 = @"7.1.2";
      if (a3 != 12845066)
      {
        v12 = @"unknown";
      }

      if (a3 == 12779530)
      {
        v6 = @"5.1.4";
      }

      else
      {
        v6 = v12;
      }

      v7 = @"9.1.6";
      v8 = a3 == 12713992;
      v9 = @"5.1.2";
      v10 = 12648464;
    }

    else
    {
      v4 = 11796488;
      v5 = @"7.1.4";
      if (a3 != 12582924)
      {
        v5 = @"unknown";
      }

      if (a3 == 11796489)
      {
        v6 = @"8.1";
      }

      else
      {
        v6 = v5;
      }

      v7 = @"7.1";
      v8 = a3 == 9306119;
      v9 = @"6.1";
      v10 = 8323080;
    }

    goto LABEL_26;
  }

  if (a3 > 7471106)
  {
    v4 = 7864324;
    v11 = @"5.1";
    if (a3 != 8126470)
    {
      v11 = @"unknown";
    }

    if (a3 == 7864325)
    {
      v6 = @"5.0";
    }

    else
    {
      v6 = v11;
    }

    v7 = @"3.0";
    v8 = a3 == 7602180;
    v9 = @"4.0";
    v10 = 7471107;
LABEL_26:
    if (!v8)
    {
      v9 = @"unknown";
    }

    if (a3 != v10)
    {
      v7 = v9;
    }

    if (a3 <= v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  if (a3 > 6684673)
  {
    if (a3 != 6684674)
    {
      if (a3 == 6946818)
      {
        return @"Binaural";
      }

      return result;
    }

    return @"Stereo";
  }

  if (a3 == 6553601)
  {
    return @"Mono";
  }

  if (a3 == 6619138)
  {
    return @"Stereo";
  }

  return result;
}

- (BOOL)_isHLSVersion:(id)a3 greatherThanOrEqualTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 compare:v6])
  {
    v7 = [v5 compare:v6] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (unsigned)_computedChannelLayoutTagFromHLSData:(id)a3 channelCount:(int64_t)a4
{
  v6 = a3;
  if ([(MPCPlayerAudioFormat *)self _isSpatialFormat:v6])
  {
    if (a4 < 3)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((a4 - 3) >= 0xE)
    {
      goto LABEL_24;
    }

    v8 = dword_1C6045500[a4 - 3];
    goto LABEL_25;
  }

  v7 = [(MPCPlayerAudioFormat *)self _isDerivedFromSpatialFormat:v6];
  if (a4 >= 3 && v7)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v8 = 7471107;
      }

      else
      {
        v8 = 7602180;
      }
    }

    else
    {
      if (a4 == 1)
      {
        v8 = 6553601;
        goto LABEL_25;
      }

      if (a4 != 2)
      {
        goto LABEL_24;
      }

      if ([(MPCPlayerAudioFormat *)self _isBinauralFormat:v6])
      {
        v8 = 6946818;
      }

      else
      {
        v8 = 6619138;
      }
    }
  }

  else
  {
    if (a4 > 6)
    {
      switch(a4)
      {
        case 7:
          v8 = 9306119;
          goto LABEL_25;
        case 8:
          v8 = 8323080;
          goto LABEL_25;
        case 9:
          v8 = 11796489;
          goto LABEL_25;
      }

LABEL_24:
      v8 = 6619138;
      goto LABEL_25;
    }

    if (a4 == 5)
    {
      v8 = 7864325;
    }

    else
    {
      v8 = 8126470;
    }
  }

LABEL_25:

  return v8;
}

- (int64_t)_computedTierFromHLSDataWithChannelCount:(int64_t)a3
{
  if (self->_codec == 1634492771)
  {
    if (self->_sampleRate < 48001)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (a3 > 2 || self->_spatialized)
  {
    return 4;
  }

  else
  {
    return self->_bitrate > 128000;
  }
}

- (BOOL)_isBinauralFormat:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"CHANNEL-USAGE"];
  v4 = [v3 isEqualToString:@"BINAURAL"];

  return v4;
}

- (BOOL)_isDerivedFromSpatialFormat:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ORIGIN-IS-ATMOS"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)_isMultichannelFormat:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CHANNEL-COUNT"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"ORIGIN-CHANNEL-COUNT"];

  v7 = [v6 integerValue];
  v8 = v5 == 2;
  if (v7 <= 2)
  {
    v8 = 0;
  }

  v9 = v5 > 2 || v8;

  return v9;
}

- (BOOL)_isSpatialFormat:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IS-ATMOS"];
  v6 = [v5 BOOLValue];

  LOBYTE(self) = [(MPCPlayerAudioFormat *)self _isDerivedFromSpatialFormat:v4];
  return (v6 | self) & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MPCPlayerAudioFormat *)v5 tier];
      if (v6 == [(MPCPlayerAudioFormat *)self tier]&& (v7 = [(MPCPlayerAudioFormat *)v5 bitrate], v7 == [(MPCPlayerAudioFormat *)self bitrate]) && (v8 = [(MPCPlayerAudioFormat *)v5 sampleRate], v8 == [(MPCPlayerAudioFormat *)self sampleRate]) && (v9 = [(MPCPlayerAudioFormat *)v5 bitDepth], v9 == [(MPCPlayerAudioFormat *)self bitDepth]) && (v10 = [(MPCPlayerAudioFormat *)v5 codec], v10 == [(MPCPlayerAudioFormat *)self codec]) && (v11 = [(MPCPlayerAudioFormat *)v5 isSpatialized], v11 == [(MPCPlayerAudioFormat *)self isSpatialized]) && (v12 = [(MPCPlayerAudioFormat *)v5 isMultiChannel], v12 == [(MPCPlayerAudioFormat *)self isMultiChannel]) && (v13 = [(MPCPlayerAudioFormat *)v5 channelLayout], v13 == [(MPCPlayerAudioFormat *)self channelLayout]))
      {
        v14 = [(MPCPlayerAudioFormat *)v5 renderingMode];
        v15 = v14 == [(MPCPlayerAudioFormat *)self renderingMode];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (NSString)debugCodecDescription
{
  v6 = bswap32(self->_codec);
  v7 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v6 encoding:1];
  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (NSString)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MPCPlayerAudioFormat *)self debugTierDescription];
  v6 = [v4 stringWithFormat:@"tier: %@", v5];
  [v3 addObject:v6];

  if (self->_bitrate)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPCPlayerAudioFormat *)self debugBitRateDescription];
    v9 = [v7 stringWithFormat:@"bitrate: %@", v8];
    [v3 addObject:v9];
  }

  if (self->_groupID)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"groupID: %@", self->_groupID];
    [v3 addObject:v10];
  }

  if (self->_bitDepth)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(MPCPlayerAudioFormat *)self debugBitDepthDescription];
    v13 = [v11 stringWithFormat:@"bitDepth: %@", v12];
    [v3 addObject:v13];
  }

  if (self->_sampleRate)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(MPCPlayerAudioFormat *)self debugSampleRateDescription];
    v16 = [v14 stringWithFormat:@"sampleRate: %@", v15];
    [v3 addObject:v16];
  }

  if (self->_codec)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(MPCPlayerAudioFormat *)self debugCodecDescription];
    v19 = [v17 stringWithFormat:@"codec: %@", v18];
    [v3 addObject:v19];
  }

  channelLayout = self->_channelLayout;
  if (channelLayout != -65536 && channelLayout)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [(MPCPlayerAudioFormat *)self debugChannelCountDescription];
    v23 = [v21 stringWithFormat:@"channels: %@", v22];
    [v3 addObject:v23];
  }

  if (self->_audioChannelLayoutDescription)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [(MPCPlayerAudioFormat *)self debugChannelLayoutDescription];
    v26 = [v24 stringWithFormat:@"layout: %@", v25];
    [v3 addObject:v26];
  }

  if (self->_originChannelLayout)
  {
    v27 = [(MPCPlayerAudioFormat *)self debugOriginChannelLayoutDescription];
    v28 = MEMORY[0x1E696AEC0];
    v29 = [(MPCPlayerAudioFormat *)self debugOriginChannelCountDescription];
    v30 = v29;
    if (v27)
    {
      [v28 stringWithFormat:@"origin channels: %@ [%@]", v29, v27];
    }

    else
    {
      [v28 stringWithFormat:@"origin channels: %@", v29, v38];
    }
    v31 = ;
    [v3 addObject:v31];
  }

  if (self->_spatialized)
  {
    [v3 addObject:@"spatialized"];
  }

  if (self->_multiChannel)
  {
    [v3 addObject:@"multichannel"];
  }

  if (self->_stableVariantID)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stableVariantID: %@", self->_stableVariantID];
    [v3 addObject:v32];
  }

  renderingMode = self->_renderingMode;
  if (renderingMode)
  {
    if (renderingMode > 5)
    {
      v34 = @"Unknown";
    }

    else
    {
      v34 = off_1E8238FD0[renderingMode - 1];
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rendering: %@", v34];
    [v3 addObject:v35];
  }

  v36 = [v3 componentsJoinedByString:@" "];;

  return v36;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCPlayerAudioFormat *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v16[0] = @"tier";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_tier];
  v17[0] = v15;
  v16[1] = @"br";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bitrate];
  v17[1] = v3;
  v16[2] = @"sr";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sampleRate];
  v17[2] = v4;
  v16[3] = @"bd";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bitDepth];
  v17[3] = v5;
  v16[4] = @"codec";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_codec];
  v17[4] = v6;
  v16[5] = @"chlay";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelLayout];
  v17[5] = v7;
  v16[6] = @"ochlay";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_originChannelLayout];
  v17[6] = v8;
  v16[7] = @"grp";
  v16[8] = @"var";
  audioChannelLayoutDescription = &stru_1F454A698;
  v18 = vbslq_s8(vceqzq_s64(*&self->_groupID), vdupq_n_s64(&stru_1F454A698), *&self->_groupID);
  if (self->_audioChannelLayoutDescription)
  {
    audioChannelLayoutDescription = self->_audioChannelLayoutDescription;
  }

  v19 = audioChannelLayoutDescription;
  v16[9] = @"chlayd";
  v16[10] = @"spz";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_spatialized];
  v20 = v10;
  v16[11] = @"mul";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_multiChannel];
  v21 = v11;
  v16[12] = @"rdm";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_renderingMode];
  v22 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:13];

  return v13;
}

- (MPCPlayerAudioFormat)audioFormatWithRenderingMode:(int64_t)a3
{
  if ([(MPCPlayerAudioFormat *)self renderingMode]== a3)
  {
    v5 = self;
  }

  else
  {
    v5 = objc_opt_new();
    v5->_tier = [(MPCPlayerAudioFormat *)self tier];
    v6 = [(MPCPlayerAudioFormat *)self groupID];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v5->_bitrate = [(MPCPlayerAudioFormat *)self bitrate];
    v5->_sampleRate = [(MPCPlayerAudioFormat *)self sampleRate];
    v5->_bitDepth = [(MPCPlayerAudioFormat *)self bitDepth];
    v5->_codec = [(MPCPlayerAudioFormat *)self codec];
    v5->_channelLayout = [(MPCPlayerAudioFormat *)self channelLayout];
    v8 = [(MPCPlayerAudioFormat *)self stableVariantID];
    stableVariantID = v5->_stableVariantID;
    v5->_stableVariantID = v8;

    v10 = [(MPCPlayerAudioFormat *)self audioChannelLayoutDescription];
    audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
    v5->_audioChannelLayoutDescription = v10;

    v5->_spatialized = [(MPCPlayerAudioFormat *)self isSpatialized];
    v5->_multiChannel = [(MPCPlayerAudioFormat *)self isMultiChannel];
    v5->_renderingMode = a3;
  }

  return v5;
}

- (MPCPlayerAudioFormat)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MPCPlayerAudioFormat;
  v5 = [(MPCPlayerAudioFormat *)&v24 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 objectForKeyedSubscript:@"tier"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"tier"];
    v5->_tier = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:@"grp"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [v4 objectForKeyedSubscript:@"br"];
    v5->_bitrate = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:@"sr"];
    v5->_sampleRate = [v11 integerValue];

    v12 = [v4 objectForKeyedSubscript:@"bd"];
    v5->_bitDepth = [v12 integerValue];

    v13 = [v4 objectForKeyedSubscript:@"codec"];
    v5->_codec = [v13 unsignedIntValue];

    v14 = [v4 objectForKeyedSubscript:@"chlay"];
    v5->_channelLayout = [v14 unsignedIntValue];

    v15 = [v4 objectForKeyedSubscript:@"ochlay"];
    v5->_originChannelLayout = [v15 unsignedIntValue];

    v16 = [v4 objectForKeyedSubscript:@"var"];
    stableVariantID = v5->_stableVariantID;
    v5->_stableVariantID = v16;

    v18 = [v4 objectForKeyedSubscript:@"chlayd"];
    audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
    v5->_audioChannelLayoutDescription = v18;

    v20 = [v4 objectForKeyedSubscript:@"spz"];
    v5->_spatialized = [v20 BOOLValue];

    v21 = [v4 objectForKeyedSubscript:@"mul"];
    v5->_multiChannel = [v21 BOOLValue];

    v22 = [v4 objectForKeyedSubscript:@"rdm"];
    v5->_renderingMode = [v22 integerValue];

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (MPCPlayerAudioFormat)initWithTier:(int64_t)a3 codec:(unsigned int)a4 spatialized:(BOOL)a5 multiChannel:(BOOL)a6 channelLayout:(unsigned int)a7 sampleRate:(int64_t)a8 stableVariantID:(id)a9
{
  v10 = *&a7;
  v16 = a9;
  v23.receiver = self;
  v23.super_class = MPCPlayerAudioFormat;
  v17 = [(MPCPlayerAudioFormat *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_tier = a3;
    v17->_spatialized = a5;
    v17->_multiChannel = a6;
    v17->_codec = a4;
    v17->_channelLayout = v10;
    v19 = [(MPCPlayerAudioFormat *)v17 _descriptionForChannelLayoutTag:v10];
    v20 = [v19 copy];
    audioChannelLayoutDescription = v18->_audioChannelLayoutDescription;
    v18->_audioChannelLayoutDescription = v20;

    v18->_sampleRate = a8;
    objc_storeStrong(&v18->_stableVariantID, a9);
    v18->_renderingMode = 0;
  }

  return v18;
}

- (MPNowPlayingInfoAudioFormat)nowPlayingAudioFormat
{
  v3 = objc_alloc_init(MEMORY[0x1E6970840]);
  [v3 setTier:{-[MPCPlayerAudioFormat tier](self, "tier")}];
  [v3 setBitrate:{-[MPCPlayerAudioFormat bitrate](self, "bitrate")}];
  [v3 setSampleRate:{-[MPCPlayerAudioFormat sampleRate](self, "sampleRate")}];
  [v3 setBitDepth:{-[MPCPlayerAudioFormat bitDepth](self, "bitDepth")}];
  [v3 setCodec:{-[MPCPlayerAudioFormat codec](self, "codec")}];
  if (![(MPCPlayerAudioFormat *)self renderingMode]|| [(MPCPlayerAudioFormat *)self renderingMode]== 5)
  {
    [v3 setSpatialized:{-[MPCPlayerAudioFormat isSpatialized](self, "isSpatialized")}];
  }

  [v3 setMultiChannel:{-[MPCPlayerAudioFormat isMultiChannel](self, "isMultiChannel")}];
  [v3 setChannelLayout:{-[MPCPlayerAudioFormat channelLayout](self, "channelLayout")}];
  v4 = [(MPCPlayerAudioFormat *)self audioChannelLayoutDescription];
  [v3 setAudioChannelLayoutDescription:v4];

  v5 = [(MPCPlayerAudioFormat *)self groupID];
  [v3 setGroupID:v5];

  v6 = [(MPCPlayerAudioFormat *)self stableVariantID];
  [v3 setStableVariantID:v6];

  [v3 setRenderingMode:{-[MPCPlayerAudioFormat renderingMode](self, "renderingMode")}];

  return v3;
}

- (MPCPlayerAudioFormat)initWithNowPlayingInfoAudioFormat:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPCPlayerAudioFormat;
  v5 = [(MPCPlayerAudioFormat *)&v13 init];
  if (v5)
  {
    v5->_tier = [v4 tier];
    v6 = [v4 groupID];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v5->_bitrate = [v4 bitrate];
    v5->_sampleRate = [v4 sampleRate];
    v5->_bitDepth = [v4 bitDepth];
    v5->_codec = [v4 codec];
    v5->_channelLayout = [v4 channelLayout];
    v8 = [v4 stableVariantID];
    stableVariantID = v5->_stableVariantID;
    v5->_stableVariantID = v8;

    v10 = [v4 audioChannelLayoutDescription];
    audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
    v5->_audioChannelLayoutDescription = v10;

    v5->_spatialized = [v4 isSpatialized];
    v5->_multiChannel = [v4 isMultiChannel];
    v5->_renderingMode = [v4 renderingMode];
  }

  return v5;
}

- (MPCPlayerAudioFormat)initWithJSONDictionaryRepresentation:(id)a3 stableVariantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = MPCPlayerAudioFormat;
  v8 = [(MPCPlayerAudioFormat *)&v33 init];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v6 objectForKeyedSubscript:@"VERSION"];
  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"AUDIO-FORMAT-ID"];

    if (v10)
    {
      v11 = [v7 copy];
      stableVariantID = v8->_stableVariantID;
      v8->_stableVariantID = v11;

      v13 = [v6 objectForKeyedSubscript:@"VERSION"];
      if (![(MPCPlayerAudioFormat *)v8 _isHLSVersion:v13 greatherThanOrEqualTo:&unk_1F4599730])
      {
LABEL_17:

LABEL_18:
        v9 = v8;
        goto LABEL_19;
      }

      v14 = [v6 objectForKeyedSubscript:@"AUDIO-FORMAT-ID"];
      if ([v14 length] == 4)
      {
        v15 = [v14 UTF8String];
        v8->_codec = (v15[1] << 16) | (*v15 << 24) | (v15[2] << 8) | v15[3];
        v16 = [v6 objectForKeyedSubscript:@"GROUP-ID"];
        v17 = [v16 copy];
        groupID = v8->_groupID;
        v8->_groupID = v17;

        if (v8->_codec == 1634492771)
        {
          v19 = [v6 objectForKeyedSubscript:@"SAMPLE-RATE"];
          v8->_sampleRate = [v19 integerValue];

          v20 = @"BIT-DEPTH";
          v21 = 48;
        }

        else
        {
          v20 = @"BIT-RATE";
          v21 = 32;
        }

        v22 = [v6 objectForKeyedSubscript:v20];
        *(&v8->super.isa + v21) = [v22 integerValue];

        v8->_spatialized = [(MPCPlayerAudioFormat *)v8 _isSpatialFormat:v6];
        v23 = [v6 objectForKeyedSubscript:@"CHANNEL-COUNT"];
        v24 = [v23 integerValue];

        v8->_tier = [(MPCPlayerAudioFormat *)v8 _computedTierFromHLSDataWithChannelCount:v24];
        v25 = [(MPCPlayerAudioFormat *)v8 _computedChannelLayoutTagFromHLSData:v6 channelCount:v24];
        v8->_channelLayout = v25;
        v26 = [(MPCPlayerAudioFormat *)v8 _descriptionForChannelLayoutTag:v25];
        v27 = [v26 copy];
        audioChannelLayoutDescription = v8->_audioChannelLayoutDescription;
        v8->_audioChannelLayoutDescription = v27;

        v29 = [v6 objectForKeyedSubscript:@"ORIGIN-CHANNEL-COUNT"];
        v30 = [v29 integerValue];

        if (v30)
        {
          v8->_originChannelLayout = [(MPCPlayerAudioFormat *)v8 _computedChannelLayoutTagFromHLSData:v6 channelCount:v30];
        }

        if (v8->_spatialized)
        {
          v31 = 1;
        }

        else
        {
          v31 = [(MPCPlayerAudioFormat *)v8 _isMultichannelFormat:v6];
        }

        v8->_multiChannel = v31;

        goto LABEL_17;
      }
    }

    v9 = 0;
  }

LABEL_19:

  return v9;
}

+ (id)lossyHighQualityStereoFormat
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = [MPCPlayerAudioFormat alloc];
  v6[0] = @"tier";
  v6[1] = @"chlay";
  v7[0] = &unk_1F4599778;
  v7[1] = &unk_1F4599760;
  v6[2] = @"chlayd";
  v6[3] = @"spz";
  v7[2] = @"Stereo";
  v7[3] = MEMORY[0x1E695E110];
  v6[4] = @"mul";
  v6[5] = @"var";
  v7[4] = MEMORY[0x1E695E110];
  v7[5] = @"HQ-Stereo";
  v6[6] = @"grp";
  v7[6] = @"Synthesized format";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v4 = [(MPCPlayerAudioFormat *)v2 initWithDictionaryRepresentation:v3];

  return v4;
}

+ (id)lossyLowQualityStereoFormat
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = [MPCPlayerAudioFormat alloc];
  v6[0] = @"tier";
  v6[1] = @"chlay";
  v7[0] = &unk_1F4599748;
  v7[1] = &unk_1F4599760;
  v6[2] = @"chlayd";
  v6[3] = @"spz";
  v7[2] = @"Stereo";
  v7[3] = MEMORY[0x1E695E110];
  v6[4] = @"mul";
  v6[5] = @"var";
  v7[4] = MEMORY[0x1E695E110];
  v7[5] = @"LQ-Stereo";
  v6[6] = @"grp";
  v7[6] = @"Synthesized format";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v4 = [(MPCPlayerAudioFormat *)v2 initWithDictionaryRepresentation:v3];

  return v4;
}

@end