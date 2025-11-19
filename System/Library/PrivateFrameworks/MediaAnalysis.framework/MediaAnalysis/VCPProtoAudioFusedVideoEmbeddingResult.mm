@interface VCPProtoAudioFusedVideoEmbeddingResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoAudioFusedVideoEmbeddingResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = v4;
  if ((v13.start.flags & 1) != 0 && (v13.duration.flags & 1) != 0 && !v13.duration.epoch && (v13.duration.value & 0x8000000000000000) == 0 && v4)
  {
    v8 = objc_alloc_init(VCPProtoAudioFusedVideoEmbeddingResult);
    v12 = v13;
    v9 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v12];
    [(VCPProtoAudioFusedVideoEmbeddingResult *)v8 setTimeRange:v9];

    v10 = [v5 objectForKeyedSubscript:@"embeddings"];
    if (v10)
    {
      [(VCPProtoAudioFusedVideoEmbeddingResult *)v8 setEmbeddingBlob:v10];
      v11 = [v5 objectForKeyedSubscript:@"embeddingVersion"];
      if (v11)
      {
        [(VCPProtoAudioFusedVideoEmbeddingResult *)v8 setHasVersion:1];
        -[VCPProtoAudioFusedVideoEmbeddingResult setVersion:](v8, "setVersion:", [v11 unsignedIntValue]);
      }

      v6 = v8;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoAudioFusedVideoEmbeddingResult] embeddingValue is missing", &v12, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoAudioFusedVideoEmbeddingResult] timerange is invalid or attribute is missing", &v12, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)exportToLegacyDictionary
{
  v3 = [(VCPProtoAudioFusedVideoEmbeddingResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  range = v11;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(VCPProtoAudioFusedVideoEmbeddingResult *)self embeddingBlob];
  [v7 setObject:v8 forKeyedSubscript:@"embeddings"];

  if ([(VCPProtoAudioFusedVideoEmbeddingResult *)self hasVersion])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoAudioFusedVideoEmbeddingResult version](self, "version")}];
    [v7 setObject:v9 forKeyedSubscript:@"embeddingVersion"];
  }

  [v6 setObject:v7 forKeyedSubscript:{@"attributes", *&v11.start.value, *&v11.start.epoch, *&v11.duration.timescale}];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoAudioFusedVideoEmbeddingResult;
  v4 = [(VCPProtoAudioFusedVideoEmbeddingResult *)&v8 description];
  v5 = [(VCPProtoAudioFusedVideoEmbeddingResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
  }

  embeddingBlob = self->_embeddingBlob;
  if (embeddingBlob)
  {
    [v3 setObject:embeddingBlob forKey:@"embeddingBlob"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [v3 setObject:v7 forKey:@"version"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setTimeRange:self->_timeRange];
  [v4 setEmbeddingBlob:self->_embeddingBlob];
  if (*&self->_has)
  {
    *(v4 + 6) = self->_version;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_embeddingBlob copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  timeRange = self->_timeRange;
  if (timeRange | *(v4 + 2))
  {
    if (![(VCPProtoTimeRange *)timeRange isEqual:?])
    {
      goto LABEL_10;
    }
  }

  embeddingBlob = self->_embeddingBlob;
  if (embeddingBlob | *(v4 + 1))
  {
    if (![(NSData *)embeddingBlob isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_version == *(v4 + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = [(NSData *)self->_embeddingBlob hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_version;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 2);
  v7 = v4;
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoAudioFusedVideoEmbeddingResult *)self setTimeRange:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 1))
  {
    [(VCPProtoAudioFusedVideoEmbeddingResult *)self setEmbeddingBlob:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
  }
}

@end