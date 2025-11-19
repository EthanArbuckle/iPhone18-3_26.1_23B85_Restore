@interface MRContentItemMetadataAudioFormat
- (BOOL)isEqual:(id)a3;
- (MRContentItemMetadataAudioFormat)initWithProtobuf:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (_MRAudioFormatProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setGroupID:(id)a3;
- (void)setStableVariantID:(id)a3;
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
  v12 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  v13 = [v12 copy];
  [(_MRAudioFormatProtobuf *)v3 setAudioChannelLayoutDescription:v13];

  v14 = [(MRContentItemMetadataAudioFormat *)self groupID];
  v15 = [v14 copy];
  groupID = v3->_groupID;
  v3->_groupID = v15;

  v17 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  v18 = [v17 copy];
  stableVariantID = v3->_stableVariantID;
  v3->_stableVariantID = v18;

  return v3;
}

- (MRContentItemMetadataAudioFormat)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = MRContentItemMetadataAudioFormat;
    v5 = [(MRContentItemMetadataAudioFormat *)&v15 init];
    if (v5)
    {
      v5->_tier = [v4 tier];
      v5->_hasTier = [v4 hasTier];
      v5->_bitrate = [v4 bitrate];
      v5->_hasBitrate = [v4 hasBitrate];
      v5->_sampleRate = [v4 sampleRate];
      v5->_hasSampleRate = [v4 hasSampleRate];
      v5->_bitDepth = [v4 bitDepth];
      v5->_hasBitDepth = [v4 hasBitDepth];
      v5->_codec = [v4 codec];
      v5->_hasCodec = [v4 hasCodec];
      v5->_spatialized = [v4 spatialized];
      v5->_hasSpatialized = [v4 hasSpatialized];
      v5->_multiChannel = [v4 multiChannel];
      v5->_hasMultiChannel = [v4 hasMultiChannel];
      v5->_renderingMode = [v4 renderingMode];
      v5->_hasRenderingMode = [v4 hasRenderingMode];
      v5->_channelLayout = [v4 channelLayout];
      v5->_hasChannelLayout = [v4 hasChannelLayout];
      v6 = [v4 audioChannelLayoutDescription];
      v7 = [v6 copy];
      audioChannelLayoutDescription = v5->_audioChannelLayoutDescription;
      v5->_audioChannelLayoutDescription = v7;

      v9 = [v4 groupID];
      groupID = v5->_groupID;
      v5->_groupID = v9;

      v11 = [v4 stableVariantID];
      stableVariantID = v5->_stableVariantID;
      v5->_stableVariantID = v11;
    }

    self = v5;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setGroupID:(id)a3
{
  v4 = [a3 copy];
  groupID = self->_groupID;
  self->_groupID = v4;
}

- (void)setStableVariantID:(id)a3
{
  v4 = [a3 copy];
  stableVariantID = self->_stableVariantID;
  self->_stableVariantID = v4;
}

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(MRContentItemMetadataAudioFormat *)self groupID];
  v7 = [v6 copyWithZone:a3];
  [v5 setGroupID:v7];

  v8 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  v9 = [v8 copyWithZone:a3];
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

  v10 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  v11 = [v10 copyWithZone:a3];
  [v5 setAudioChannelLayoutDescription:v11];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

    v5 = [(MRContentItemMetadataAudioFormat *)v4 hasTier];
    if (v5 != [(MRContentItemMetadataAudioFormat *)self hasTier])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasTier])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasTier])
      {
        v6 = [(MRContentItemMetadataAudioFormat *)v4 tier];
        if (v6 != [(MRContentItemMetadataAudioFormat *)self tier])
        {
          goto LABEL_46;
        }
      }
    }

    v7 = [(MRContentItemMetadataAudioFormat *)v4 hasBitrate];
    if (v7 != [(MRContentItemMetadataAudioFormat *)self hasBitrate])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasBitrate])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasBitrate])
      {
        v8 = [(MRContentItemMetadataAudioFormat *)v4 bitrate];
        if (v8 != [(MRContentItemMetadataAudioFormat *)self bitrate])
        {
          goto LABEL_46;
        }
      }
    }

    v9 = [(MRContentItemMetadataAudioFormat *)v4 hasSampleRate];
    if (v9 != [(MRContentItemMetadataAudioFormat *)self hasSampleRate])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasSampleRate])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasSampleRate])
      {
        v10 = [(MRContentItemMetadataAudioFormat *)v4 sampleRate];
        if (v10 != [(MRContentItemMetadataAudioFormat *)self sampleRate])
        {
          goto LABEL_46;
        }
      }
    }

    v11 = [(MRContentItemMetadataAudioFormat *)v4 hasBitDepth];
    if (v11 != [(MRContentItemMetadataAudioFormat *)self hasBitDepth])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasBitDepth])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasBitDepth])
      {
        v12 = [(MRContentItemMetadataAudioFormat *)v4 bitDepth];
        if (v12 != [(MRContentItemMetadataAudioFormat *)self bitDepth])
        {
          goto LABEL_46;
        }
      }
    }

    v13 = [(MRContentItemMetadataAudioFormat *)v4 hasCodec];
    if (v13 != [(MRContentItemMetadataAudioFormat *)self hasCodec])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasCodec])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasCodec])
      {
        v14 = [(MRContentItemMetadataAudioFormat *)v4 codec];
        if (v14 != [(MRContentItemMetadataAudioFormat *)self codec])
        {
          goto LABEL_46;
        }
      }
    }

    v15 = [(MRContentItemMetadataAudioFormat *)v4 hasSpatialized];
    if (v15 != [(MRContentItemMetadataAudioFormat *)self hasSpatialized])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasSpatialized])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasSpatialized])
      {
        v16 = [(MRContentItemMetadataAudioFormat *)v4 isSpatialized];
        if (v16 != [(MRContentItemMetadataAudioFormat *)self isSpatialized])
        {
          goto LABEL_46;
        }
      }
    }

    v17 = [(MRContentItemMetadataAudioFormat *)v4 hasMultiChannel];
    if (v17 != [(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasMultiChannel])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasMultiChannel])
      {
        v18 = [(MRContentItemMetadataAudioFormat *)v4 isMultiChannel];
        if (v18 != [(MRContentItemMetadataAudioFormat *)self isMultiChannel])
        {
          goto LABEL_46;
        }
      }
    }

    v19 = [(MRContentItemMetadataAudioFormat *)v4 hasRenderingMode];
    if (v19 != [(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasRenderingMode])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasRenderingMode])
      {
        v20 = [(MRContentItemMetadataAudioFormat *)v4 renderingMode];
        if (v20 != [(MRContentItemMetadataAudioFormat *)self renderingMode])
        {
          goto LABEL_46;
        }
      }
    }

    v21 = [(MRContentItemMetadataAudioFormat *)v4 hasChannelLayout];
    if (v21 != [(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
    {
      goto LABEL_46;
    }

    if ([(MRContentItemMetadataAudioFormat *)v4 hasChannelLayout])
    {
      if ([(MRContentItemMetadataAudioFormat *)self hasChannelLayout])
      {
        v22 = [(MRContentItemMetadataAudioFormat *)v4 channelLayout];
        if (v22 != [(MRContentItemMetadataAudioFormat *)self channelLayout])
        {
          goto LABEL_46;
        }
      }
    }

    v23 = [(MRContentItemMetadataAudioFormat *)v4 audioChannelLayoutDescription];
    v24 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
    v25 = v24;
    if (v23 == v24)
    {
    }

    else
    {
      v26 = [(MRContentItemMetadataAudioFormat *)v4 audioChannelLayoutDescription];
      v27 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
      v28 = [v26 isEqualToString:v27];

      if (!v28)
      {
        goto LABEL_46;
      }
    }

    v30 = [(MRContentItemMetadataAudioFormat *)v4 groupID];
    v31 = [(MRContentItemMetadataAudioFormat *)self groupID];
    v32 = v31;
    if (v30 == v31)
    {
    }

    else
    {
      v33 = [(MRContentItemMetadataAudioFormat *)v4 groupID];
      v34 = [(MRContentItemMetadataAudioFormat *)self groupID];
      v35 = [v33 isEqualToString:v34];

      if (!v35)
      {
LABEL_46:
        v29 = 0;
        goto LABEL_47;
      }
    }

    v37 = [(MRContentItemMetadataAudioFormat *)v4 stableVariantID];
    v38 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
    if (v37 == v38)
    {
      v29 = 1;
    }

    else
    {
      v39 = [(MRContentItemMetadataAudioFormat *)v4 stableVariantID];
      v40 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
      v29 = [v39 isEqualToString:v40];
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

  v13 = [(MRContentItemMetadataAudioFormat *)self audioChannelLayoutDescription];
  [v3 setObject:v13 forKeyedSubscript:@"audioChannelLayoutDescription"];

  v14 = [(MRContentItemMetadataAudioFormat *)self groupID];
  [v3 setObject:v14 forKeyedSubscript:@"groupID"];

  v15 = [(MRContentItemMetadataAudioFormat *)self stableVariantID];
  [v3 setObject:v15 forKeyedSubscript:@"stableVariantID"];

  return v3;
}

@end