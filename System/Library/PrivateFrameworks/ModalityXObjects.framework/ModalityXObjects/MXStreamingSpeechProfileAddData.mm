@interface MXStreamingSpeechProfileAddData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXStreamingSpeechProfileAddData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXStreamingSpeechProfileAddData;
  v4 = [(MXStreamingSpeechProfileAddData *)&v8 description];
  dictionaryRepresentation = [(MXStreamingSpeechProfileAddData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  sourceData = self->_sourceData;
  if (sourceData)
  {
    dictionaryRepresentation = [(MXSpeechProfileSourceData *)sourceData dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"source_data"];
  }

  existingLanguageProfile = self->_existingLanguageProfile;
  if (existingLanguageProfile)
  {
    [v4 setObject:existingLanguageProfile forKey:@"existing_language_profile"];
  }

  existingPronunciationCache = self->_existingPronunciationCache;
  if (existingPronunciationCache)
  {
    [v4 setObject:existingPronunciationCache forKey:@"existing_pronunciation_cache"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_existingLanguageProfile)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_existingPronunciationCache)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (self->_sourceData)
  {
    [v5 setSourceData:?];
    toCopy = v5;
  }

  if (self->_existingLanguageProfile)
  {
    [v5 setExistingLanguageProfile:?];
    toCopy = v5;
  }

  if (self->_existingPronunciationCache)
  {
    [v5 setExistingPronunciationCache:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(MXSpeechProfileSourceData *)self->_sourceData copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_existingLanguageProfile copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_existingPronunciationCache copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[3])) || -[NSString isEqual:](requestId, "isEqual:")) && ((sourceData = self->_sourceData, !(sourceData | equalCopy[4])) || -[MXSpeechProfileSourceData isEqual:](sourceData, "isEqual:")) && ((existingLanguageProfile = self->_existingLanguageProfile, !(existingLanguageProfile | equalCopy[1])) || -[NSData isEqual:](existingLanguageProfile, "isEqual:")))
  {
    existingPronunciationCache = self->_existingPronunciationCache;
    if (existingPronunciationCache | equalCopy[2])
    {
      v9 = [(NSData *)existingPronunciationCache isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(MXSpeechProfileSourceData *)self->_sourceData hash]^ v3;
  v5 = [(NSData *)self->_existingLanguageProfile hash];
  return v4 ^ v5 ^ [(NSData *)self->_existingPronunciationCache hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(MXStreamingSpeechProfileAddData *)self setRequestId:?];
  }

  sourceData = self->_sourceData;
  v5 = fromCopy[4];
  if (sourceData)
  {
    if (v5)
    {
      [(MXSpeechProfileSourceData *)sourceData mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(MXStreamingSpeechProfileAddData *)self setSourceData:?];
  }

  if (fromCopy[1])
  {
    [(MXStreamingSpeechProfileAddData *)self setExistingLanguageProfile:?];
  }

  if (fromCopy[2])
  {
    [(MXStreamingSpeechProfileAddData *)self setExistingPronunciationCache:?];
  }
}

@end