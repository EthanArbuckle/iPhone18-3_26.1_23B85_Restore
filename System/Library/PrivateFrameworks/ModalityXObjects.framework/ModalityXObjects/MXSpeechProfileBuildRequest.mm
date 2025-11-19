@interface MXSpeechProfileBuildRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXSpeechProfileBuildRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXSpeechProfileBuildRequest;
  v4 = [(MXSpeechProfileBuildRequest *)&v8 description];
  v5 = [(MXSpeechProfileBuildRequest *)self dictionaryRepresentation];
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

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  phoneSetVersion = self->_phoneSetVersion;
  if (phoneSetVersion)
  {
    [v4 setObject:phoneSetVersion forKey:@"phone_set_version"];
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

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneSetVersion)
  {
    PBDataWriterWriteStringField();
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

  if (self->_locale)
  {
    [v5 setLocale:?];
    v4 = v5;
  }

  if (self->_phoneSetVersion)
  {
    [v5 setPhoneSetVersion:?];
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
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(MXSpeechProfileSourceData *)self->_sourceData copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_locale copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_phoneSetVersion copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_existingLanguageProfile copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSData *)self->_existingPronunciationCache copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[5])) || -[NSString isEqual:](requestId, "isEqual:")) && ((sourceData = self->_sourceData, !(sourceData | v4[6])) || -[MXSpeechProfileSourceData isEqual:](sourceData, "isEqual:")) && ((locale = self->_locale, !(locale | v4[3])) || -[NSString isEqual:](locale, "isEqual:")) && ((phoneSetVersion = self->_phoneSetVersion, !(phoneSetVersion | v4[4])) || -[NSString isEqual:](phoneSetVersion, "isEqual:")) && ((existingLanguageProfile = self->_existingLanguageProfile, !(existingLanguageProfile | v4[1])) || -[NSData isEqual:](existingLanguageProfile, "isEqual:")))
  {
    existingPronunciationCache = self->_existingPronunciationCache;
    if (existingPronunciationCache | v4[2])
    {
      v11 = [(NSData *)existingPronunciationCache isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(MXSpeechProfileSourceData *)self->_sourceData hash]^ v3;
  v5 = [(NSString *)self->_locale hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_phoneSetVersion hash];
  v7 = [(NSData *)self->_existingLanguageProfile hash];
  return v6 ^ v7 ^ [(NSData *)self->_existingPronunciationCache hash];
}

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[5])
  {
    [(MXSpeechProfileBuildRequest *)self setRequestId:?];
  }

  sourceData = self->_sourceData;
  v5 = v6[6];
  if (sourceData)
  {
    if (v5)
    {
      [(MXSpeechProfileSourceData *)sourceData mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(MXSpeechProfileBuildRequest *)self setSourceData:?];
  }

  if (v6[3])
  {
    [(MXSpeechProfileBuildRequest *)self setLocale:?];
  }

  if (v6[4])
  {
    [(MXSpeechProfileBuildRequest *)self setPhoneSetVersion:?];
  }

  if (v6[1])
  {
    [(MXSpeechProfileBuildRequest *)self setExistingLanguageProfile:?];
  }

  if (v6[2])
  {
    [(MXSpeechProfileBuildRequest *)self setExistingPronunciationCache:?];
  }
}

@end