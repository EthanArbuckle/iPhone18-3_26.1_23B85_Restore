@interface MRContentItemMetadataAudioFormat
- (BOOL)isEqual:(id)equal;
- (MRContentItemMetadataAudioFormat)initWithProtobuf:(id)protobuf;
- (NSDictionary)dictionaryRepresentation;
- (_MRAudioFormatProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setGroupID:(id)d;
- (void)setStableVariantID:(id)d;
@end

@implementation MRContentItemMetadataAudioFormat

- (_MRAudioFormatProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRAudioFormatProtobuf);
  v3->_tier = [(MRContentItemMetadataAudioFormat *)self tier];
  if ([(MRContentItemMetadataAudioFormat *)self hasTier])
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFBF | v4;
  v3->_bitrate = [(MRContentItemMetadataAudioFormat *)self bitrate];
  if ([(MRContentItemMetadataAudioFormat *)self hasBitrate])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFFD | v5;
  v3->_sampleRate = [(MRContentItemMetadataAudioFormat *)self sampleRate];
  if ([(MRContentItemMetadataAudioFormat *)self hasSampleRate])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFFB | v6;
  v3->_bitDepth = [(MRContentItemMetadataAudioFormat *)self bitDepth];
  *&v3->_has = *&v3->_has & 0xFFFE | [(MRContentItemMetadataAudioFormat *)self hasBitDepth];
  v3->_codec = [(MRContentItemMetadataAudioFormat *)self codec];
  if ([(MRContentItemMetadataAudioFormat *)self hasCodec])
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFEF | v7;
  v3->_spatialized = [(MRContentItemMetadataAudioFormat *)self isSpatialized];
  if ([(MRContentItemMetadataAudioFormat *)self hasSpatialized])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFEFF | v8;
  v3->_multiChannel = [(MRContentItemMetadataAudioFormat *)self isMultiChannel];
  if ([(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFF7F | v9;
  v3->_renderingMode = [(MRContentItemMetadataAudioFormat *)self renderingMode];
  if ([(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFDF | v10;
  v3->_channelLayout = [(MRContentItemMetadataAudioFormat *)self channelLayout];
  if ([(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFFF7 | v11;
  audioChannelLayoutDescription = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  v13 = [audioChannelLayoutDescription copy];
  [(_MRAudioFormatProtobuf *)v3 setAudioChannelLayoutDescription:v13];

  groupID = [(MRContentItemMetadataAudioFormat *)self groupID];
  v15 = [groupID copy];
  groupID = v3->_groupID;
  v3->_groupID = v15;

  stableVariantID = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  v18 = [stableVariantID copy];
  stableVariantID = v3->_stableVariantID;
  v3->_stableVariantID = v18;

  return v3;
}

- (MRContentItemMetadataAudioFormat)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v15.receiver = self;
    v15.super_class = MRContentItemMetadataAudioFormat;
    v5 = [(MRContentItemMetadataAudioFormat *)&v15 init];
    if (v5)
    {
      v5->_tier = [protobufCopy tier];
      v5->_hasTier = [protobufCopy hasTier];
      v5->_bitrate = [protobufCopy bitrate];
      v5->_hasBitrate = [protobufCopy hasBitrate];
      v5->_sampleRate = [protobufCopy sampleRate];
      v5->_hasSampleRate = [protobufCopy hasSampleRate];
      v5->_bitDepth = [protobufCopy bitDepth];
      v5->_hasBitDepth = [protobufCopy hasBitDepth];
      v5->_codec = [protobufCopy codec];
      v5->_hasCodec = [protobufCopy hasCodec];
      v5->_spatialized = [protobufCopy spatialized];
      v5->_hasSpatialized = [protobufCopy hasSpatialized];
      v5->_multiChannel = [protobufCopy multiChannel];
      v5->_hasMultiChannel = [protobufCopy hasMultiChannel];
      v5->_renderingMode = [protobufCopy renderingMode];
      v5->_hasRenderingMode = [protobufCopy hasRenderingMode];
      v5->_channelLayout = [protobufCopy channelLayout];
      v5->_hasChannelLayout = [protobufCopy hasChannelLayout];
      audioChannelLayoutDescription = [protobufCopy audioChannelLayoutDescription];
      v7 = [audioChannelLayoutDescription copy];
      audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
      v5->_audioChannelLayoutDescription = v7;

      groupID = [protobufCopy groupID];
      groupID = v5->_groupID;
      v5->_groupID = groupID;

      stableVariantID = [protobufCopy stableVariantID];
      stableVariantID = v5->_stableVariantID;
      v5->_stableVariantID = stableVariantID;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setGroupID:(id)d
{
  v4 = [d copy];
  groupID = self->_groupID;
  self->_groupID = v4;
}

- (void)setStableVariantID:(id)d
{
  v4 = [d copy];
  stableVariantID = self->_stableVariantID;
  self->_stableVariantID = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if ([(MRContentItemMetadataAudioFormat *)self hasTier])
  {
    [v5 setTier:{-[MRContentItemMetadataAudioFormat tier](self, "tier")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasBitrate])
  {
    [v5 setBitrate:{-[MRContentItemMetadataAudioFormat bitrate](self, "bitrate")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasSampleRate])
  {
    [v5 setSampleRate:{-[MRContentItemMetadataAudioFormat sampleRate](self, "sampleRate")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasBitDepth])
  {
    [v5 setBitDepth:{-[MRContentItemMetadataAudioFormat bitDepth](self, "bitDepth")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasCodec])
  {
    [v5 setCodec:{-[MRContentItemMetadataAudioFormat codec](self, "codec")}];
  }

  groupID = [(MRContentItemMetadataAudioFormat *)self groupID];
  v7 = [groupID copyWithZone:zone];
  [v5 setGroupID:v7];

  stableVariantID = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  v9 = [stableVariantID copyWithZone:zone];
  [v5 setStableVariantID:v9];

  if ([(MRContentItemMetadataAudioFormat *)self hasSpatialized])
  {
    [v5 setSpatialized:{-[MRContentItemMetadataAudioFormat isSpatialized](self, "isSpatialized")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
  {
    [v5 setMultiChannel:{-[MRContentItemMetadataAudioFormat isMultiChannel](self, "isMultiChannel")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
  {
    [v5 setRenderingMode:{-[MRContentItemMetadataAudioFormat renderingMode](self, "renderingMode")}];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
  {
    [v5 setChannelLayout:{-[MRContentItemMetadataAudioFormat channelLayout](self, "channelLayout")}];
  }

  audioChannelLayoutDescription = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  v11 = [audioChannelLayoutDescription copyWithZone:zone];
  [v5 setAudioChannelLayoutDescription:v11];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_46;
    }

    hasTier = [(MRContentItemMetadataAudioFormat *)equalCopy hasTier];
    if (hasTier != [(MRContentItemMetadataAudioFormat *)self hasTier])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasTier])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasTier])
      {
        tier = [(MRContentItemMetadataAudioFormat *)equalCopy tier];
        if (tier != [(MRContentItemMetadataAudioFormat *)self tier])
        {
          goto LABEL_46;
        }
      }
    }

    hasBitrate = [(MRContentItemMetadataAudioFormat *)equalCopy hasBitrate];
    if (hasBitrate != [(MRContentItemMetadataAudioFormat *)self hasBitrate])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasBitrate])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasBitrate])
      {
        bitrate = [(MRContentItemMetadataAudioFormat *)equalCopy bitrate];
        if (bitrate != [(MRContentItemMetadataAudioFormat *)self bitrate])
        {
          goto LABEL_46;
        }
      }
    }

    hasSampleRate = [(MRContentItemMetadataAudioFormat *)equalCopy hasSampleRate];
    if (hasSampleRate != [(MRContentItemMetadataAudioFormat *)self hasSampleRate])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasSampleRate])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasSampleRate])
      {
        sampleRate = [(MRContentItemMetadataAudioFormat *)equalCopy sampleRate];
        if (sampleRate != [(MRContentItemMetadataAudioFormat *)self sampleRate])
        {
          goto LABEL_46;
        }
      }
    }

    hasBitDepth = [(MRContentItemMetadataAudioFormat *)equalCopy hasBitDepth];
    if (hasBitDepth != [(MRContentItemMetadataAudioFormat *)self hasBitDepth])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasBitDepth])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasBitDepth])
      {
        bitDepth = [(MRContentItemMetadataAudioFormat *)equalCopy bitDepth];
        if (bitDepth != [(MRContentItemMetadataAudioFormat *)self bitDepth])
        {
          goto LABEL_46;
        }
      }
    }

    hasCodec = [(MRContentItemMetadataAudioFormat *)equalCopy hasCodec];
    if (hasCodec != [(MRContentItemMetadataAudioFormat *)self hasCodec])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasCodec])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasCodec])
      {
        codec = [(MRContentItemMetadataAudioFormat *)equalCopy codec];
        if (codec != [(MRContentItemMetadataAudioFormat *)self codec])
        {
          goto LABEL_46;
        }
      }
    }

    hasSpatialized = [(MRContentItemMetadataAudioFormat *)equalCopy hasSpatialized];
    if (hasSpatialized != [(MRContentItemMetadataAudioFormat *)self hasSpatialized])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasSpatialized])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasSpatialized])
      {
        isSpatialized = [(MRContentItemMetadataAudioFormat *)equalCopy isSpatialized];
        if (isSpatialized != [(MRContentItemMetadataAudioFormat *)self isSpatialized])
        {
          goto LABEL_46;
        }
      }
    }

    hasMultiChannel = [(MRContentItemMetadataAudioFormat *)equalCopy hasMultiChannel];
    if (hasMultiChannel != [(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasMultiChannel])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
      {
        isMultiChannel = [(MRContentItemMetadataAudioFormat *)equalCopy isMultiChannel];
        if (isMultiChannel != [(MRContentItemMetadataAudioFormat *)self isMultiChannel])
        {
          goto LABEL_46;
        }
      }
    }

    hasRenderingMode = [(MRContentItemMetadataAudioFormat *)equalCopy hasRenderingMode];
    if (hasRenderingMode != [(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasRenderingMode])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
      {
        renderingMode = [(MRContentItemMetadataAudioFormat *)equalCopy renderingMode];
        if (renderingMode != [(MRContentItemMetadataAudioFormat *)self renderingMode])
        {
          goto LABEL_46;
        }
      }
    }

    hasChannelLayout = [(MRContentItemMetadataAudioFormat *)equalCopy hasChannelLayout];
    if (hasChannelLayout != [(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)equalCopy hasChannelLayout])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
      {
        channelLayout = [(MRContentItemMetadataAudioFormat *)equalCopy channelLayout];
        if (channelLayout != [(MRContentItemMetadataAudioFormat *)self channelLayout])
        {
          goto LABEL_46;
        }
      }
    }

    audioChannelLayoutDescription = [(MRContentItemMetadataAudioFormat *)equalCopy audioChannelLayoutDescription];
    audioChannelLayoutDescription2 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
    v25 = audioChannelLayoutDescription2;
    if (audioChannelLayoutDescription == audioChannelLayoutDescription2)
    {
    }

    else
    {
      audioChannelLayoutDescription3 = [(MRContentItemMetadataAudioFormat *)equalCopy audioChannelLayoutDescription];
      audioChannelLayoutDescription4 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
      v28 = [audioChannelLayoutDescription3 isEqualToString:audioChannelLayoutDescription4];

      if (!v28)
      {
        goto LABEL_46;
      }
    }

    groupID = [(MRContentItemMetadataAudioFormat *)equalCopy groupID];
    groupID2 = [(MRContentItemMetadataAudioFormat *)self groupID];
    v32 = groupID2;
    if (groupID == groupID2)
    {
    }

    else
    {
      groupID3 = [(MRContentItemMetadataAudioFormat *)equalCopy groupID];
      groupID4 = [(MRContentItemMetadataAudioFormat *)self groupID];
      v35 = [groupID3 isEqualToString:groupID4];

      if (!v35)
      {
LABEL_46:
        v29 = 0;
        goto LABEL_47;
      }
    }

    stableVariantID = [(MRContentItemMetadataAudioFormat *)equalCopy stableVariantID];
    stableVariantID2 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
    if (stableVariantID == stableVariantID2)
    {
      v29 = 1;
    }

    else
    {
      stableVariantID3 = [(MRContentItemMetadataAudioFormat *)equalCopy stableVariantID];
      stableVariantID4 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
      v29 = [stableVariantID3 isEqualToString:stableVariantID4];
    }
  }

LABEL_47:

  return v29 & 1;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRContentItemMetadataAudioFormat *)self hasTier])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioFormat tier](self, "tier")}];
    [v3 setObject:v4 forKeyedSubscript:@"tier"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasBitrate])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioFormat bitrate](self, "bitrate")}];
    [v3 setObject:v5 forKeyedSubscript:@"bitrate"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasSampleRate])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioFormat sampleRate](self, "sampleRate")}];
    [v3 setObject:v6 forKeyedSubscript:@"sampleRate"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasBitDepth])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioFormat bitDepth](self, "bitDepth")}];
    [v3 setObject:v7 forKeyedSubscript:@"bitDepth"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasCodec])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MRContentItemMetadataAudioFormat codec](self, "codec")}];
    [v3 setObject:v8 forKeyedSubscript:@"codec"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasSpatialized])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadataAudioFormat isSpatialized](self, "isSpatialized")}];
    [v3 setObject:v9 forKeyedSubscript:@"spatialized"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadataAudioFormat isMultiChannel](self, "isMultiChannel")}];
    [v3 setObject:v10 forKeyedSubscript:@"multiChannel"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioFormat renderingMode](self, "renderingMode")}];
    [v3 setObject:v11 forKeyedSubscript:@"renderingMode"];
  }

  if ([(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MRContentItemMetadataAudioFormat channelLayout](self, "channelLayout")}];
    [v3 setObject:v12 forKeyedSubscript:@"channelLayout"];
  }

  audioChannelLayoutDescription = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  [v3 setObject:audioChannelLayoutDescription forKeyedSubscript:@"audioChannelLayoutDescription"];

  groupID = [(MRContentItemMetadataAudioFormat *)self groupID];
  [v3 setObject:groupID forKeyedSubscript:@"groupID"];

  stableVariantID = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  [v3 setObject:stableVariantID forKeyedSubscript:@"stableVariantID"];

  return v3;
}

@end