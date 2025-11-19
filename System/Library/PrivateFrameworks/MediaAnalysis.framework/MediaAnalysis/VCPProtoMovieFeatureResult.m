@interface VCPProtoMovieFeatureResult
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

@implementation VCPProtoMovieFeatureResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v12, 0, sizeof(v12));
  v4 = [v3 objectForKeyedSubscript:@"start"];
  CMTimeMakeFromDictionary(&v12, v4);

  v5 = [v3 objectForKeyedSubscript:@"attributes"];
  v6 = [v5 objectForKeyedSubscript:@"featureVector"];
  v7 = v6;
  v8 = 0;
  if ((v12.flags & 1) != 0 && v6)
  {
    v8 = objc_alloc_init(VCPProtoMovieFeatureResult);
    v11 = v12;
    v9 = [VCPProtoTime timeWithCMTime:&v11];
    [(VCPProtoMovieFeatureResult *)v8 setTimestamp:v9];

    [(VCPProtoMovieFeatureResult *)v8 setFeatureBlob:v7];
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"start";
  v3 = [(VCPProtoMovieFeatureResult *)self timestamp];
  v4 = v3;
  if (v3)
  {
    [v3 timeValue];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  time = v10;
  v5 = CMTimeCopyAsDictionary(&time, 0);
  v15[0] = v5;
  v14[1] = @"attributes";
  v12 = @"featureVector";
  v6 = [(VCPProtoMovieFeatureResult *)self featureBlob];
  v13 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieFeatureResult;
  v4 = [(VCPProtoMovieFeatureResult *)&v8 description];
  v5 = [(VCPProtoMovieFeatureResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v5 = [(VCPProtoTime *)timestamp dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timestamp"];
  }

  featureBlob = self->_featureBlob;
  if (featureBlob)
  {
    [v3 setObject:featureBlob forKey:@"featureBlob"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 setTimestamp:timestamp];
  [v5 setFeatureBlob:self->_featureBlob];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTime *)self->_timestamp copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_featureBlob copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timestamp = self->_timestamp, !(timestamp | v4[2])) || -[VCPProtoTime isEqual:](timestamp, "isEqual:")))
  {
    featureBlob = self->_featureBlob;
    if (featureBlob | v4[1])
    {
      v7 = [(NSData *)featureBlob isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v6 = v4[2];
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

    [(VCPProtoMovieFeatureResult *)self setTimestamp:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(VCPProtoMovieFeatureResult *)self setFeatureBlob:?];
    v4 = v7;
  }
}

@end