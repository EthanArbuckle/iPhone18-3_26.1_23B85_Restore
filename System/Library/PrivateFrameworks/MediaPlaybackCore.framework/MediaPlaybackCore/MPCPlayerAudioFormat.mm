@interface MPCPlayerAudioFormat
+ (id)lossyHighQualityStereoFormat;
+ (id)lossyLowQualityStereoFormat;
+ (id)payloadValueFromJSONValue:(id)value;
- (BOOL)_isBinauralFormat:(id)format;
- (BOOL)_isDerivedFromSpatialFormat:(id)format;
- (BOOL)_isHLSVersion:(id)version greatherThanOrEqualTo:(id)to;
- (BOOL)_isMultichannelFormat:(id)format;
- (BOOL)_isSpatialFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (MPCPlayerAudioFormat)audioFormatWithRenderingMode:(int64_t)mode;
- (MPCPlayerAudioFormat)initWithDictionaryRepresentation:(id)representation;
- (MPCPlayerAudioFormat)initWithJSONDictionaryRepresentation:(id)representation stableVariantID:(id)d;
- (MPCPlayerAudioFormat)initWithNowPlayingInfoAudioFormat:(id)format;
- (MPCPlayerAudioFormat)initWithTier:(int64_t)tier codec:(unsigned int)codec spatialized:(BOOL)spatialized multiChannel:(BOOL)channel channelLayout:(unsigned int)layout sampleRate:(int64_t)rate stableVariantID:(id)d;
- (MPNowPlayingInfoAudioFormat)nowPlayingAudioFormat;
- (NSDictionary)dictionaryRepresentation;
- (NSString)debugCodecDescription;
- (NSString)description;
- (NSString)humanDescription;
- (id)_descriptionForChannelLayoutTag:(unsigned int)tag;
- (id)analyticsFormatInfo;
- (int64_t)_computedTierFromHLSDataWithChannelCount:(int64_t)count;
- (unsigned)_computedChannelLayoutTagFromHLSData:(id)data channelCount:(int64_t)count;
@end

@implementation MPCPlayerAudioFormat

+ (id)payloadValueFromJSONValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithDictionaryRepresentation:valueCopy];

  return v5;
}

- (id)analyticsFormatInfo
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  if ([(MPCPlayerAudioFormat *)self bitrate])
  {
    debugBitRateDescription = [(MPCPlayerAudioFormat *)self debugBitRateDescription];
    [v3 setObject:debugBitRateDescription forKeyedSubscript:@"bitrate"];
  }

  if ([(MPCPlayerAudioFormat *)self codec])
  {
    debugCodecDescription = [(MPCPlayerAudioFormat *)self debugCodecDescription];
    [v3 setObject:debugCodecDescription forKeyedSubscript:@"codec"];
  }

  if ([(MPCPlayerAudioFormat *)self bitDepth])
  {
    debugBitDepthDescription = [(MPCPlayerAudioFormat *)self debugBitDepthDescription];
    [v3 setObject:debugBitDepthDescription forKeyedSubscript:@"bitDepth"];
  }

  if ([(MPCPlayerAudioFormat *)self channelLayout]!= -1 && [(MPCPlayerAudioFormat *)self channelLayout])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPCPlayerAudioFormat channelLayout](self, "channelLayout")}];
    [v3 setObject:v7 forKeyedSubscript:@"channelCount"];

    debugChannelLayoutDescription = [(MPCPlayerAudioFormat *)self debugChannelLayoutDescription];
    [v3 setObject:debugChannelLayoutDescription forKeyedSubscript:@"layout"];
  }

  if ([(MPCPlayerAudioFormat *)self sampleRate])
  {
    debugSampleRateDescription = [(MPCPlayerAudioFormat *)self debugSampleRateDescription];
    [v3 setObject:debugSampleRateDescription forKeyedSubscript:@"sampleRate"];
  }

  return v3;
}

- (id)_descriptionForChannelLayoutTag:(unsigned int)tag
{
  result = @"unknown";
  if (tag > 8323079)
  {
    if (tag > 12648463)
    {
      v4 = 12779529;
      v12 = @"7.1.2";
      if (tag != 12845066)
      {
        v12 = @"unknown";
      }

      if (tag == 12779530)
      {
        v6 = @"5.1.4";
      }

      else
      {
        v6 = v12;
      }

      v7 = @"9.1.6";
      v8 = tag == 12713992;
      v9 = @"5.1.2";
      v10 = 12648464;
    }

    else
    {
      v4 = 11796488;
      v5 = @"7.1.4";
      if (tag != 12582924)
      {
        v5 = @"unknown";
      }

      if (tag == 11796489)
      {
        v6 = @"8.1";
      }

      else
      {
        v6 = v5;
      }

      v7 = @"7.1";
      v8 = tag == 9306119;
      v9 = @"6.1";
      v10 = 8323080;
    }

    goto LABEL_26;
  }

  if (tag > 7471106)
  {
    v4 = 7864324;
    v11 = @"5.1";
    if (tag != 8126470)
    {
      v11 = @"unknown";
    }

    if (tag == 7864325)
    {
      v6 = @"5.0";
    }

    else
    {
      v6 = v11;
    }

    v7 = @"3.0";
    v8 = tag == 7602180;
    v9 = @"4.0";
    v10 = 7471107;
LABEL_26:
    if (!v8)
    {
      v9 = @"unknown";
    }

    if (tag != v10)
    {
      v7 = v9;
    }

    if (tag <= v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  if (tag > 6684673)
  {
    if (tag != 6684674)
    {
      if (tag == 6946818)
      {
        return @"Binaural";
      }

      return result;
    }

    return @"Stereo";
  }

  if (tag == 6553601)
  {
    return @"Mono";
  }

  if (tag == 6619138)
  {
    return @"Stereo";
  }

  return result;
}

- (BOOL)_isHLSVersion:(id)version greatherThanOrEqualTo:(id)to
{
  versionCopy = version;
  toCopy = to;
  if ([versionCopy compare:toCopy])
  {
    v7 = [versionCopy compare:toCopy] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (unsigned)_computedChannelLayoutTagFromHLSData:(id)data channelCount:(int64_t)count
{
  dataCopy = data;
  if ([(MPCPlayerAudioFormat *)self _isSpatialFormat:dataCopy])
  {
    if (count < 3)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((count - 3) >= 0xE)
    {
      goto LABEL_24;
    }

    v8 = dword_1C6045500[count - 3];
    goto LABEL_25;
  }

  v7 = [(MPCPlayerAudioFormat *)self _isDerivedFromSpatialFormat:dataCopy];
  if (count >= 3 && v7)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (count <= 4)
  {
    if (count > 2)
    {
      if (count == 3)
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
      if (count == 1)
      {
        v8 = 6553601;
        goto LABEL_25;
      }

      if (count != 2)
      {
        goto LABEL_24;
      }

      if ([(MPCPlayerAudioFormat *)self _isBinauralFormat:dataCopy])
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
    if (count > 6)
    {
      switch(count)
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

    if (count == 5)
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

- (int64_t)_computedTierFromHLSDataWithChannelCount:(int64_t)count
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

  else if (count > 2 || self->_spatialized)
  {
    return 4;
  }

  else
  {
    return self->_bitrate > 128000;
  }
}

- (BOOL)_isBinauralFormat:(id)format
{
  v3 = [format objectForKeyedSubscript:@"CHANNEL-USAGE"];
  v4 = [v3 isEqualToString:@"BINAURAL"];

  return v4;
}

- (BOOL)_isDerivedFromSpatialFormat:(id)format
{
  v3 = [format objectForKeyedSubscript:@"ORIGIN-IS-ATMOS"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isMultichannelFormat:(id)format
{
  formatCopy = format;
  v4 = [formatCopy objectForKeyedSubscript:@"CHANNEL-COUNT"];
  integerValue = [v4 integerValue];

  v6 = [formatCopy objectForKeyedSubscript:@"ORIGIN-CHANNEL-COUNT"];

  integerValue2 = [v6 integerValue];
  v8 = integerValue == 2;
  if (integerValue2 <= 2)
  {
    v8 = 0;
  }

  v9 = integerValue > 2 || v8;

  return v9;
}

- (BOOL)_isSpatialFormat:(id)format
{
  formatCopy = format;
  v5 = [formatCopy objectForKeyedSubscript:@"IS-ATMOS"];
  bOOLValue = [v5 BOOLValue];

  LOBYTE(self) = [(MPCPlayerAudioFormat *)self _isDerivedFromSpatialFormat:formatCopy];
  return (bOOLValue | self) & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      tier = [(MPCPlayerAudioFormat *)v5 tier];
      if (tier == [(MPCPlayerAudioFormat *)self tier]&& (v7 = [(MPCPlayerAudioFormat *)v5 bitrate], v7 == [(MPCPlayerAudioFormat *)self bitrate]) && (v8 = [(MPCPlayerAudioFormat *)v5 sampleRate], v8 == [(MPCPlayerAudioFormat *)self sampleRate]) && (v9 = [(MPCPlayerAudioFormat *)v5 bitDepth], v9 == [(MPCPlayerAudioFormat *)self bitDepth]) && (v10 = [(MPCPlayerAudioFormat *)v5 codec], v10 == [(MPCPlayerAudioFormat *)self codec]) && (v11 = [(MPCPlayerAudioFormat *)v5 isSpatialized], v11 == [(MPCPlayerAudioFormat *)self isSpatialized]) && (v12 = [(MPCPlayerAudioFormat *)v5 isMultiChannel], v12 == [(MPCPlayerAudioFormat *)self isMultiChannel]) && (v13 = [(MPCPlayerAudioFormat *)v5 channelLayout], v13 == [(MPCPlayerAudioFormat *)self channelLayout]))
      {
        renderingMode = [(MPCPlayerAudioFormat *)v5 renderingMode];
        v15 = renderingMode == [(MPCPlayerAudioFormat *)self renderingMode];
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
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (NSString)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = MEMORY[0x1E696AEC0];
  debugTierDescription = [(MPCPlayerAudioFormat *)self debugTierDescription];
  v6 = [v4 stringWithFormat:@"tier: %@", debugTierDescription];
  [v3 addObject:v6];

  if (self->_bitrate)
  {
    v7 = MEMORY[0x1E696AEC0];
    debugBitRateDescription = [(MPCPlayerAudioFormat *)self debugBitRateDescription];
    v9 = [v7 stringWithFormat:@"bitrate: %@", debugBitRateDescription];
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
    debugBitDepthDescription = [(MPCPlayerAudioFormat *)self debugBitDepthDescription];
    v13 = [v11 stringWithFormat:@"bitDepth: %@", debugBitDepthDescription];
    [v3 addObject:v13];
  }

  if (self->_sampleRate)
  {
    v14 = MEMORY[0x1E696AEC0];
    debugSampleRateDescription = [(MPCPlayerAudioFormat *)self debugSampleRateDescription];
    v16 = [v14 stringWithFormat:@"sampleRate: %@", debugSampleRateDescription];
    [v3 addObject:v16];
  }

  if (self->_codec)
  {
    v17 = MEMORY[0x1E696AEC0];
    debugCodecDescription = [(MPCPlayerAudioFormat *)self debugCodecDescription];
    v19 = [v17 stringWithFormat:@"codec: %@", debugCodecDescription];
    [v3 addObject:v19];
  }

  channelLayout = self->_channelLayout;
  if (channelLayout != -65536 && channelLayout)
  {
    v21 = MEMORY[0x1E696AEC0];
    debugChannelCountDescription = [(MPCPlayerAudioFormat *)self debugChannelCountDescription];
    v23 = [v21 stringWithFormat:@"channels: %@", debugChannelCountDescription];
    [v3 addObject:v23];
  }

  if (self->_audioChannelLayoutDescription)
  {
    v24 = MEMORY[0x1E696AEC0];
    debugChannelLayoutDescription = [(MPCPlayerAudioFormat *)self debugChannelLayoutDescription];
    v26 = [v24 stringWithFormat:@"layout: %@", debugChannelLayoutDescription];
    [v3 addObject:v26];
  }

  if (self->_originChannelLayout)
  {
    debugOriginChannelLayoutDescription = [(MPCPlayerAudioFormat *)self debugOriginChannelLayoutDescription];
    v28 = MEMORY[0x1E696AEC0];
    debugOriginChannelCountDescription = [(MPCPlayerAudioFormat *)self debugOriginChannelCountDescription];
    v30 = debugOriginChannelCountDescription;
    if (debugOriginChannelLayoutDescription)
    {
      [v28 stringWithFormat:@"origin channels: %@ [%@]", debugOriginChannelCountDescription, debugOriginChannelLayoutDescription];
    }

    else
    {
      [v28 stringWithFormat:@"origin channels: %@", debugOriginChannelCountDescription, v38];
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
  humanDescription = [(MPCPlayerAudioFormat *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, humanDescription];

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

- (MPCPlayerAudioFormat)audioFormatWithRenderingMode:(int64_t)mode
{
  if ([(MPCPlayerAudioFormat *)self renderingMode]== mode)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_opt_new();
    selfCopy->_tier = [(MPCPlayerAudioFormat *)self tier];
    groupID = [(MPCPlayerAudioFormat *)self groupID];
    groupID = selfCopy->_groupID;
    selfCopy->_groupID = groupID;

    selfCopy->_bitrate = [(MPCPlayerAudioFormat *)self bitrate];
    selfCopy->_sampleRate = [(MPCPlayerAudioFormat *)self sampleRate];
    selfCopy->_bitDepth = [(MPCPlayerAudioFormat *)self bitDepth];
    selfCopy->_codec = [(MPCPlayerAudioFormat *)self codec];
    selfCopy->_channelLayout = [(MPCPlayerAudioFormat *)self channelLayout];
    stableVariantID = [(MPCPlayerAudioFormat *)self stableVariantID];
    stableVariantID = selfCopy->_stableVariantID;
    selfCopy->_stableVariantID = stableVariantID;

    audioChannelLayoutDescription = [(MPCPlayerAudioFormat *)self audioChannelLayoutDescription];
    audioChannelLayoutDescription = selfCopy->_audioChannelLayoutDescription;
    selfCopy->_audioChannelLayoutDescription = audioChannelLayoutDescription;

    selfCopy->_spatialized = [(MPCPlayerAudioFormat *)self isSpatialized];
    selfCopy->_multiChannel = [(MPCPlayerAudioFormat *)self isMultiChannel];
    selfCopy->_renderingMode = mode;
  }

  return selfCopy;
}

- (MPCPlayerAudioFormat)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v24.receiver = self;
  v24.super_class = MPCPlayerAudioFormat;
  v5 = [(MPCPlayerAudioFormat *)&v24 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [representationCopy objectForKeyedSubscript:@"tier"];

  if (v6)
  {
    v7 = [representationCopy objectForKeyedSubscript:@"tier"];
    v5->_tier = [v7 integerValue];

    v8 = [representationCopy objectForKeyedSubscript:@"grp"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"br"];
    v5->_bitrate = [v10 integerValue];

    v11 = [representationCopy objectForKeyedSubscript:@"sr"];
    v5->_sampleRate = [v11 integerValue];

    v12 = [representationCopy objectForKeyedSubscript:@"bd"];
    v5->_bitDepth = [v12 integerValue];

    v13 = [representationCopy objectForKeyedSubscript:@"codec"];
    v5->_codec = [v13 unsignedIntValue];

    v14 = [representationCopy objectForKeyedSubscript:@"chlay"];
    v5->_channelLayout = [v14 unsignedIntValue];

    v15 = [representationCopy objectForKeyedSubscript:@"ochlay"];
    v5->_originChannelLayout = [v15 unsignedIntValue];

    v16 = [representationCopy objectForKeyedSubscript:@"var"];
    stableVariantID = v5->_stableVariantID;
    v5->_stableVariantID = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"chlayd"];
    audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
    v5->_audioChannelLayoutDescription = v18;

    v20 = [representationCopy objectForKeyedSubscript:@"spz"];
    v5->_spatialized = [v20 BOOLValue];

    v21 = [representationCopy objectForKeyedSubscript:@"mul"];
    v5->_multiChannel = [v21 BOOLValue];

    v22 = [representationCopy objectForKeyedSubscript:@"rdm"];
    v5->_renderingMode = [v22 integerValue];

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (MPCPlayerAudioFormat)initWithTier:(int64_t)tier codec:(unsigned int)codec spatialized:(BOOL)spatialized multiChannel:(BOOL)channel channelLayout:(unsigned int)layout sampleRate:(int64_t)rate stableVariantID:(id)d
{
  v10 = *&layout;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = MPCPlayerAudioFormat;
  v17 = [(MPCPlayerAudioFormat *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_tier = tier;
    v17->_spatialized = spatialized;
    v17->_multiChannel = channel;
    v17->_codec = codec;
    v17->_channelLayout = v10;
    v19 = [(MPCPlayerAudioFormat *)v17 _descriptionForChannelLayoutTag:v10];
    v20 = [v19 copy];
    audioChannelLayoutDescription = v18->_audioChannelLayoutDescription;
    v18->_audioChannelLayoutDescription = v20;

    v18->_sampleRate = rate;
    objc_storeStrong(&v18->_stableVariantID, d);
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
  audioChannelLayoutDescription = [(MPCPlayerAudioFormat *)self audioChannelLayoutDescription];
  [v3 setAudioChannelLayoutDescription:audioChannelLayoutDescription];

  groupID = [(MPCPlayerAudioFormat *)self groupID];
  [v3 setGroupID:groupID];

  stableVariantID = [(MPCPlayerAudioFormat *)self stableVariantID];
  [v3 setStableVariantID:stableVariantID];

  [v3 setRenderingMode:{-[MPCPlayerAudioFormat renderingMode](self, "renderingMode")}];

  return v3;
}

- (MPCPlayerAudioFormat)initWithNowPlayingInfoAudioFormat:(id)format
{
  formatCopy = format;
  v13.receiver = self;
  v13.super_class = MPCPlayerAudioFormat;
  v5 = [(MPCPlayerAudioFormat *)&v13 init];
  if (v5)
  {
    v5->_tier = [formatCopy tier];
    groupID = [formatCopy groupID];
    groupID = v5->_groupID;
    v5->_groupID = groupID;

    v5->_bitrate = [formatCopy bitrate];
    v5->_sampleRate = [formatCopy sampleRate];
    v5->_bitDepth = [formatCopy bitDepth];
    v5->_codec = [formatCopy codec];
    v5->_channelLayout = [formatCopy channelLayout];
    stableVariantID = [formatCopy stableVariantID];
    stableVariantID = v5->_stableVariantID;
    v5->_stableVariantID = stableVariantID;

    audioChannelLayoutDescription = [formatCopy audioChannelLayoutDescription];
    audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
    v5->_audioChannelLayoutDescription = audioChannelLayoutDescription;

    v5->_spatialized = [formatCopy isSpatialized];
    v5->_multiChannel = [formatCopy isMultiChannel];
    v5->_renderingMode = [formatCopy renderingMode];
  }

  return v5;
}

- (MPCPlayerAudioFormat)initWithJSONDictionaryRepresentation:(id)representation stableVariantID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  v33.receiver = self;
  v33.super_class = MPCPlayerAudioFormat;
  v8 = [(MPCPlayerAudioFormat *)&v33 init];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [representationCopy objectForKeyedSubscript:@"VERSION"];
  if (v9)
  {
    v10 = [representationCopy objectForKeyedSubscript:@"AUDIO-FORMAT-ID"];

    if (v10)
    {
      v11 = [dCopy copy];
      stableVariantID = v8->_stableVariantID;
      v8->_stableVariantID = v11;

      v13 = [representationCopy objectForKeyedSubscript:@"VERSION"];
      if (![(MPCPlayerAudioFormat *)v8 _isHLSVersion:v13 greatherThanOrEqualTo:&unk_1F4599730])
      {
LABEL_17:

LABEL_18:
        v9 = v8;
        goto LABEL_19;
      }

      v14 = [representationCopy objectForKeyedSubscript:@"AUDIO-FORMAT-ID"];
      if ([v14 length] == 4)
      {
        uTF8String = [v14 UTF8String];
        v8->_codec = (uTF8String[1] << 16) | (*uTF8String << 24) | (uTF8String[2] << 8) | uTF8String[3];
        v16 = [representationCopy objectForKeyedSubscript:@"GROUP-ID"];
        v17 = [v16 copy];
        groupID = v8->_groupID;
        v8->_groupID = v17;

        if (v8->_codec == 1634492771)
        {
          v19 = [representationCopy objectForKeyedSubscript:@"SAMPLE-RATE"];
          v8->_sampleRate = [v19 integerValue];

          v20 = @"BIT-DEPTH";
          v21 = 48;
        }

        else
        {
          v20 = @"BIT-RATE";
          v21 = 32;
        }

        v22 = [representationCopy objectForKeyedSubscript:v20];
        *(&v8->super.isa + v21) = [v22 integerValue];

        v8->_spatialized = [(MPCPlayerAudioFormat *)v8 _isSpatialFormat:representationCopy];
        v23 = [representationCopy objectForKeyedSubscript:@"CHANNEL-COUNT"];
        integerValue = [v23 integerValue];

        v8->_tier = [(MPCPlayerAudioFormat *)v8 _computedTierFromHLSDataWithChannelCount:integerValue];
        v25 = [(MPCPlayerAudioFormat *)v8 _computedChannelLayoutTagFromHLSData:representationCopy channelCount:integerValue];
        v8->_channelLayout = v25;
        v26 = [(MPCPlayerAudioFormat *)v8 _descriptionForChannelLayoutTag:v25];
        v27 = [v26 copy];
        audioChannelLayoutDescription = v8->_audioChannelLayoutDescription;
        v8->_audioChannelLayoutDescription = v27;

        v29 = [representationCopy objectForKeyedSubscript:@"ORIGIN-CHANNEL-COUNT"];
        integerValue2 = [v29 integerValue];

        if (integerValue2)
        {
          v8->_originChannelLayout = [(MPCPlayerAudioFormat *)v8 _computedChannelLayoutTagFromHLSData:representationCopy channelCount:integerValue2];
        }

        if (v8->_spatialized)
        {
          v31 = 1;
        }

        else
        {
          v31 = [(MPCPlayerAudioFormat *)v8 _isMultichannelFormat:representationCopy];
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