@interface VCPProtoMovieTorsoResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieTorsoResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"humanBounds"];
  v6 = [v4 objectForKeyedSubscript:@"faceId"];
  if (v6 || ([v4 objectForKeyedSubscript:@"faceIdentifier"], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    if ((v14.start.flags & 1) != 0 && (v14.duration.flags & 1) != 0 && !v14.duration.epoch && v6 && (v14.duration.value & 0x8000000000000000) == 0 && v5)
    {
      v8 = objc_alloc_init(VCPProtoMovieTorsoResult);
      buf = v14;
      v9 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&buf];
      [(VCPProtoMovieTorsoResult *)v8 setTimeRange:v9];

      v18 = NSRectFromString(v5);
      v10 = [VCPProtoBounds boundsWithCGRect:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
      [(VCPProtoMovieTorsoResult *)v8 setBounds:v10];

      -[VCPProtoMovieTorsoResult setFaceId:](v8, "setFaceId:", [v6 unsignedIntValue]);
      goto LABEL_21;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (v14.start.flags)
      {
        LODWORD(v7) = 1;
        if ((v14.duration.flags & 1) != 0 && !v14.duration.epoch)
        {
          v7 = v14.duration.value >> 63;
        }
      }

      else
      {
        LODWORD(v7) = 1;
      }

      LODWORD(buf.start.value) = 67109632;
      HIDWORD(buf.start.value) = v7;
      LOWORD(buf.start.timescale) = 1024;
      *(&buf.start.timescale + 2) = v5 == 0;
      HIWORD(buf.start.flags) = 1024;
      LODWORD(buf.start.epoch) = v6 == 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoMovieTorsoResult] Invalid time range (%d) / boundsValue (%d) / faceIdValue (%d)", &buf, 0x14u);
    }
  }

  else
  {
    if (+[VCPProtoMovieTorsoResult(LegacyConversion) resultFromLegacyDictionary:]::onceToken == -1)
    {
      v8 = 0;
      goto LABEL_21;
    }

    +[VCPProtoMovieTorsoResult(LegacyConversion) resultFromLegacyDictionary:];
  }

  v8 = 0;
LABEL_21:

  return v8;
}

void __73__VCPProtoMovieTorsoResult_LegacyConversion__resultFromLegacyDictionary___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __73__VCPProtoMovieTorsoResult_LegacyConversion__resultFromLegacyDictionary___block_invoke_cold_1();
  }
}

- (id)exportToLegacyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(VCPProtoMovieTorsoResult *)self bounds];
  [v4 rectValue];
  v5 = NSStringFromRect(v15);
  [v3 setObject:v5 forKeyedSubscript:@"humanBounds"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieTorsoResult faceId](self, "faceId")}];
  [v3 setObject:v6 forKeyedSubscript:@"faceId"];

  v7 = [(VCPProtoMovieTorsoResult *)self timeRange];
  v8 = v7;
  if (v7)
  {
    [v7 timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v9 = CMTimeRangeCopyAsDictionary(&range, 0);
  v10 = [(__CFDictionary *)v9 mutableCopy];

  [v10 setObject:v3 forKeyedSubscript:@"attributes"];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieTorsoResult;
  v4 = [(VCPProtoMovieTorsoResult *)&v8 description];
  v5 = [(VCPProtoMovieTorsoResult *)self dictionaryRepresentation];
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

  bounds = self->_bounds;
  if (bounds)
  {
    v7 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"bounds"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceId];
  [v3 setObject:v8 forKey:@"faceId"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  [v5 setBounds:self->_bounds];
  v5[4] = self->_faceId;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 16) = self->_faceId;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((bounds = self->_bounds, !(bounds | *(v4 + 1))) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_faceId == *(v4 + 4);

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 3);
  v9 = v4;
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

    [(VCPProtoMovieTorsoResult *)self setTimeRange:?];
  }

  v4 = v9;
LABEL_7:
  bounds = self->_bounds;
  v8 = *(v4 + 1);
  if (bounds)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoMovieTorsoResult *)self setBounds:?];
  }

  v4 = v9;
LABEL_13:
  self->_faceId = *(v4 + 4);
}

@end