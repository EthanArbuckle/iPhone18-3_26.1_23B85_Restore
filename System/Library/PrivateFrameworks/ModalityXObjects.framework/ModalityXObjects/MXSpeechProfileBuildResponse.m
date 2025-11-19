@interface MXSpeechProfileBuildResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXSpeechProfileBuildResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXSpeechProfileBuildResponse;
  v4 = [(MXSpeechProfileBuildResponse *)&v8 description];
  v5 = [(MXSpeechProfileBuildResponse *)self dictionaryRepresentation];
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

  error = self->_error;
  if (error)
  {
    v7 = [(MXProcessingError *)error dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"error"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_incompleteProfile];
    [v4 setObject:v8 forKey:@"incomplete_profile"];
  }

  languageProfile = self->_languageProfile;
  if (languageProfile)
  {
    [v4 setObject:languageProfile forKey:@"language_profile"];
  }

  pronunciationCache = self->_pronunciationCache;
  if (pronunciationCache)
  {
    [v4 setObject:pronunciationCache forKey:@"pronunciation_cache"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    incompleteProfile = self->_incompleteProfile;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_languageProfile)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_pronunciationCache)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
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

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_incompleteProfile;
    v4[44] |= 1u;
  }

  if (self->_languageProfile)
  {
    [v5 setLanguageProfile:?];
    v4 = v5;
  }

  if (self->_pronunciationCache)
  {
    [v5 setPronunciationCache:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(MXProcessingError *)self->_error copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_incompleteProfile;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSData *)self->_languageProfile copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSData *)self->_pronunciationCache copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 4))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    if (![(MXProcessingError *)error isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 40);
    if (self->_incompleteProfile)
    {
      if (*(v4 + 40))
      {
        goto LABEL_8;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  languageProfile = self->_languageProfile;
  if (languageProfile | *(v4 + 2) && ![(NSData *)languageProfile isEqual:?])
  {
    goto LABEL_13;
  }

  pronunciationCache = self->_pronunciationCache;
  if (pronunciationCache | *(v4 + 3))
  {
    v10 = [(NSData *)pronunciationCache isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(MXProcessingError *)self->_error hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_incompleteProfile;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_languageProfile hash];
  return v6 ^ [(NSData *)self->_pronunciationCache hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 4))
  {
    [(MXSpeechProfileBuildResponse *)self setRequestId:?];
    v4 = v7;
  }

  error = self->_error;
  v6 = *(v4 + 1);
  if (error)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(MXProcessingError *)error mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(MXSpeechProfileBuildResponse *)self setError:?];
  }

  v4 = v7;
LABEL_9:
  if (v4[44])
  {
    self->_incompleteProfile = v4[40];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(MXSpeechProfileBuildResponse *)self setLanguageProfile:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(MXSpeechProfileBuildResponse *)self setPronunciationCache:?];
  }

  MEMORY[0x2821F96F8]();
}

@end