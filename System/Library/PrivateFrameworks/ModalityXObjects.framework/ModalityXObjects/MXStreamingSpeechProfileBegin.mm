@interface MXStreamingSpeechProfileBegin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXStreamingSpeechProfileBegin

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXStreamingSpeechProfileBegin;
  v4 = [(MXStreamingSpeechProfileBegin *)&v8 description];
  dictionaryRepresentation = [(MXStreamingSpeechProfileBegin *)self dictionaryRepresentation];
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

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneSetVersion)
  {
    PBDataWriterWriteStringField();
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

  if (self->_locale)
  {
    [v5 setLocale:?];
    toCopy = v5;
  }

  if (self->_phoneSetVersion)
  {
    [v5 setPhoneSetVersion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_phoneSetVersion copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[3])) || -[NSString isEqual:](requestId, "isEqual:")) && ((locale = self->_locale, !(locale | equalCopy[1])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    phoneSetVersion = self->_phoneSetVersion;
    if (phoneSetVersion | equalCopy[2])
    {
      v8 = [(NSString *)phoneSetVersion isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(NSString *)self->_locale hash]^ v3;
  return v4 ^ [(NSString *)self->_phoneSetVersion hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(MXStreamingSpeechProfileBegin *)self setRequestId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(MXStreamingSpeechProfileBegin *)self setLocale:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(MXStreamingSpeechProfileBegin *)self setPhoneSetVersion:?];
    fromCopy = v5;
  }
}

@end