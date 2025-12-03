@interface VCPProtoMovieTorsoResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieTorsoResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bounds = [(VCPProtoMovieTorsoResult *)self bounds];
  [bounds rectValue];
  v5 = NSStringFromRect(v15);
  [dictionary setObject:v5 forKeyedSubscript:@"humanBounds"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieTorsoResult faceId](self, "faceId")}];
  [dictionary setObject:v6 forKeyedSubscript:@"faceId"];

  timeRange = [(VCPProtoMovieTorsoResult *)self timeRange];
  v8 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v9 = CMTimeRangeCopyAsDictionary(&range, 0);
  v10 = [(__CFDictionary *)v9 mutableCopy];

  [v10 setObject:dictionary forKeyedSubscript:@"attributes"];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieTorsoResult;
  v4 = [(VCPProtoMovieTorsoResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieTorsoResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  bounds = self->_bounds;
  if (bounds)
  {
    dictionaryRepresentation2 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"bounds"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceId];
  [dictionary setObject:v8 forKey:@"faceId"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  [toCopy setBounds:self->_bounds];
  toCopy[4] = self->_faceId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 16) = self->_faceId;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((bounds = self->_bounds, !(bounds | *(equalCopy + 1))) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_faceId == *(equalCopy + 4);

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  bounds = self->_bounds;
  v8 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_13:
  self->_faceId = *(fromCopy + 4);
}

@end