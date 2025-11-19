@interface VCPProtoVideoThumbnailResult
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

@implementation VCPProtoVideoThumbnailResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"start"];
  v5 = v4;
  if (v4)
  {
    memset(&v15, 0, sizeof(v15));
    CMTimeMakeFromDictionary(&v15, v4);
    v6 = [v3 objectForKeyedSubscript:@"attributes"];
    v7 = [v3 objectForKeyedSubscript:@"quality"];
    v8 = [v6 objectForKeyedSubscript:@"thumbnailID"];
    v9 = v8;
    v10 = 0;
    if ((v15.flags & 1) != 0 && v7 && v8 != 0)
    {
      v10 = objc_alloc_init(VCPProtoVideoThumbnailResult);
      v14 = v15;
      v12 = [VCPProtoTime timeWithCMTime:&v14];
      [(VCPProtoVideoThumbnailResult *)v10 setTimestamp:v12];

      [v7 floatValue];
      [(VCPProtoVideoThumbnailResult *)v10 setQuality:?];
      [(VCPProtoVideoThumbnailResult *)v10 setThumbnailID:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)exportToLegacyDictionary
{
  v3 = [(VCPProtoVideoThumbnailResult *)self timestamp];
  v4 = v3;
  if (v3)
  {
    [v3 timeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  time = v12;
  v5 = CMTimeCopyAsDictionary(&time, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(VCPProtoVideoThumbnailResult *)self thumbnailID];
  [v7 setObject:v8 forKeyedSubscript:@"thumbnailID"];

  v9 = MEMORY[0x1E696AD98];
  [(VCPProtoVideoThumbnailResult *)self quality];
  v10 = [v9 numberWithFloat:?];
  [v6 setObject:v10 forKeyedSubscript:@"quality"];

  [v6 setObject:v7 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoThumbnailResult;
  v4 = [(VCPProtoVideoThumbnailResult *)&v8 description];
  v5 = [(VCPProtoVideoThumbnailResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v6 = [(VCPProtoTime *)timestamp dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"timestamp"];
  }

  *&v4 = self->_quality;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"quality"];

  thumbnailID = self->_thumbnailID;
  if (thumbnailID)
  {
    [v3 setObject:thumbnailID forKey:@"thumbnailID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 setTimestamp:timestamp];
  v5[2] = self->_quality;
  [v5 setThumbnailID:self->_thumbnailID];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTime *)self->_timestamp copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_quality;
  v8 = [(NSString *)self->_thumbnailID copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timestamp = self->_timestamp, !(timestamp | v4[3])) || -[VCPProtoTime isEqual:](timestamp, "isEqual:")) && self->_quality == *(v4 + 2))
  {
    thumbnailID = self->_thumbnailID;
    if (thumbnailID | v4[2])
    {
      v7 = [(NSString *)thumbnailID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTime *)self->_timestamp hash];
  quality = self->_quality;
  if (quality < 0.0)
  {
    quality = -quality;
  }

  *v4.i32 = floorf(quality + 0.5);
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v5.i32[0] = vbslq_s8(v7, v5, v4).i32[0];
  v8 = (quality - *v4.i32) * 1.8447e19;
  v9 = 2654435761u * *v5.i32;
  v10 = v9 + v8;
  if (v8 <= 0.0)
  {
    v10 = 2654435761u * *v5.i32;
  }

  v11 = v9 - fabsf(v8);
  if (v8 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  return v12 ^ v3 ^ [(NSString *)self->_thumbnailID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v6 = *(v4 + 3);
  v7 = v4;
  if (timestamp)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTime *)timestamp mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoVideoThumbnailResult *)self setTimestamp:?];
  }

  v4 = v7;
LABEL_7:
  self->_quality = *(v4 + 2);
  if (*(v4 + 2))
  {
    [(VCPProtoVideoThumbnailResult *)self setThumbnailID:?];
    v4 = v7;
  }
}

@end