@interface MXStreamingSpeechProfileAddData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXStreamingSpeechProfileAddData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXStreamingSpeechProfileAddData;
  v4 = [(MXStreamingSpeechProfileAddData *)&v8 description];
  v5 = [(MXStreamingSpeechProfileAddData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestId = self->_requestId;
  if (requestId)
  {
    [v3 setObject:requestId forKey:@"request_id"];
  }

  sourceData = self->_sourceData;
  if (sourceData)
  {
    v7 = [(MXSpeechProfileSourceData *)sourceData dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"source_data"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourceData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_existingLanguageProfile)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_existingPronunciationCache)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (self->_sourceData)
  {
    [v5 setSourceData:?];
    v4 = v5;
  }

  if (self->_existingLanguageProfile)
  {
    [v5 setExistingLanguageProfile:?];
    v4 = v5;
  }

  if (self->_existingPronunciationCache)
  {
    [v5 setExistingPronunciationCache:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(MXSpeechProfileSourceData *)self->_sourceData copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_existingLanguageProfile copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_existingPronunciationCache copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[3])) || -[NSString isEqual:](requestId, "isEqual:")) && ((sourceData = self->_sourceData, !(sourceData | v4[4])) || -[MXSpeechProfileSourceData isEqual:](sourceData, "isEqual:")) && ((existingLanguageProfile = self->_existingLanguageProfile, !(existingLanguageProfile | v4[1])) || -[NSData isEqual:](existingLanguageProfile, "isEqual:")))
  {
    existingPronunciationCache = self->_existingPronunciationCache;
    if (existingPronunciationCache | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[3])
  {
    [(MXStreamingSpeechProfileAddData *)self setRequestId:?];
  }

  sourceData = self->_sourceData;
  v5 = v6[4];
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

  if (v6[1])
  {
    [(MXStreamingSpeechProfileAddData *)self setExistingLanguageProfile:?];
  }

  if (v6[2])
  {
    [(MXStreamingSpeechProfileAddData *)self setExistingPronunciationCache:?];
  }
}

@end