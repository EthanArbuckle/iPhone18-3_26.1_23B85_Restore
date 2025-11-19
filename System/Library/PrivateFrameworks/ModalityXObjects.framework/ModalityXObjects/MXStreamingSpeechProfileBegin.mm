@interface MXStreamingSpeechProfileBegin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXStreamingSpeechProfileBegin

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXStreamingSpeechProfileBegin;
  v4 = [(MXStreamingSpeechProfileBegin *)&v8 description];
  v5 = [(MXStreamingSpeechProfileBegin *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_phoneSetVersion copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[3])) || -[NSString isEqual:](requestId, "isEqual:")) && ((locale = self->_locale, !(locale | v4[1])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    phoneSetVersion = self->_phoneSetVersion;
    if (phoneSetVersion | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(MXStreamingSpeechProfileBegin *)self setRequestId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(MXStreamingSpeechProfileBegin *)self setLocale:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(MXStreamingSpeechProfileBegin *)self setPhoneSetVersion:?];
    v4 = v5;
  }
}

@end