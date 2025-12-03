@interface MXSpeechProfile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXSpeechProfile

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXSpeechProfile;
  v4 = [(MXSpeechProfile *)&v8 description];
  dictionaryRepresentation = [(MXSpeechProfile *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_moreDataFollows];
    [dictionary setObject:v4 forKey:@"more_data_follows"];
  }

  languageProfile = self->_languageProfile;
  if (languageProfile)
  {
    [dictionary setObject:languageProfile forKey:@"language_profile"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    moreDataFollows = self->_moreDataFollows;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_languageProfile)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_moreDataFollows;
    toCopy[20] |= 1u;
  }

  if (self->_languageProfile)
  {
    v5 = toCopy;
    [toCopy setLanguageProfile:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_moreDataFollows;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_languageProfile copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 16);
  if (!self->_moreDataFollows)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  languageProfile = self->_languageProfile;
  if (languageProfile | *(equalCopy + 1))
  {
    v7 = [(NSData *)languageProfile isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_moreDataFollows;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_languageProfile hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[20])
  {
    self->_moreDataFollows = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(MXSpeechProfile *)self setLanguageProfile:?];
    fromCopy = v5;
  }
}

@end