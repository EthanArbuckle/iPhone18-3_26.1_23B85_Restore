@interface VCPProtoMovieSceneprintResult
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

@implementation VCPProtoMovieSceneprintResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieSceneprintResult;
  v4 = [(VCPProtoMovieSceneprintResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieSceneprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timestamp = self->_timestamp;
  if (timestamp)
  {
    dictionaryRepresentation = [(VCPProtoTime *)timestamp dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timestamp"];
  }

  sceneprintBlob = self->_sceneprintBlob;
  if (sceneprintBlob)
  {
    [dictionary setObject:sceneprintBlob forKey:@"sceneprintBlob"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  timestamp = self->_timestamp;
  toCopy = to;
  [toCopy setTimestamp:timestamp];
  [toCopy setSceneprintBlob:self->_sceneprintBlob];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTime *)self->_timestamp copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_sceneprintBlob copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timestamp = self->_timestamp, !(timestamp | equalCopy[2])) || -[VCPProtoTime isEqual:](timestamp, "isEqual:")))
  {
    sceneprintBlob = self->_sceneprintBlob;
    if (sceneprintBlob | equalCopy[1])
    {
      v7 = [(NSData *)sceneprintBlob isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timestamp = self->_timestamp;
  v6 = fromCopy[2];
  v7 = fromCopy;
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

    [(VCPProtoMovieSceneprintResult *)self setTimestamp:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(VCPProtoMovieSceneprintResult *)self setSceneprintBlob:?];
    fromCopy = v7;
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v12, 0, sizeof(v12));
  v4 = [dictionaryCopy objectForKeyedSubscript:@"start"];
  CMTimeMakeFromDictionary(&v12, v4);

  v5 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v6 = [v5 objectForKeyedSubscript:@"sceneprint"];
  v7 = v6;
  v8 = 0;
  if ((v12.flags & 1) != 0 && v6)
  {
    v8 = objc_alloc_init(VCPProtoMovieSceneprintResult);
    v11 = v12;
    v9 = [VCPProtoTime timeWithCMTime:&v11];
    [(VCPProtoMovieSceneprintResult *)v8 setTimestamp:v9];

    [(VCPProtoMovieSceneprintResult *)v8 setSceneprintBlob:v7];
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"start";
  timestamp = [(VCPProtoMovieSceneprintResult *)self timestamp];
  v4 = timestamp;
  if (timestamp)
  {
    [timestamp timeValue];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  time = v10;
  v5 = CMTimeCopyAsDictionary(&time, 0);
  v15[0] = v5;
  v14[1] = @"attributes";
  v12 = @"sceneprint";
  sceneprintBlob = [(VCPProtoMovieSceneprintResult *)self sceneprintBlob];
  v13 = sceneprintBlob;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

@end