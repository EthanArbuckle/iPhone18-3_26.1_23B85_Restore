@interface NRPBTermsEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventType:(BOOL)type;
- (void)setHasPresentationLocation:(BOOL)location;
- (void)writeTo:(id)to;
@end

@implementation NRPBTermsEvent

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPresentationLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBTermsEvent;
  v4 = [(NRPBTermsEvent *)&v8 description];
  dictionaryRepresentation = [(NRPBTermsEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventType];
    [dictionary setObject:v4 forKey:@"eventType"];
  }

  termsText = self->_termsText;
  if (termsText)
  {
    [dictionary setObject:termsText forKey:@"termsText"];
  }

  documentationID = self->_documentationID;
  if (documentationID)
  {
    [dictionary setObject:documentationID forKey:@"documentationID"];
  }

  presentationReason = self->_presentationReason;
  if (presentationReason)
  {
    [dictionary setObject:presentationReason forKey:@"presentationReason"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_presentationLocation];
    [dictionary setObject:v8 forKey:@"presentationLocation"];
  }

  acknowledgedDeviceName = self->_acknowledgedDeviceName;
  if (acknowledgedDeviceName)
  {
    [dictionary setObject:acknowledgedDeviceName forKey:@"acknowledgedDeviceName"];
  }

  acknowledgedDeviceSerialNumber = self->_acknowledgedDeviceSerialNumber;
  if (acknowledgedDeviceSerialNumber)
  {
    [dictionary setObject:acknowledgedDeviceSerialNumber forKey:@"acknowledgedDeviceSerialNumber"];
  }

  displayDeviceName = self->_displayDeviceName;
  if (displayDeviceName)
  {
    [dictionary setObject:displayDeviceName forKey:@"displayDeviceName"];
  }

  displayDeviceSerialNumber = self->_displayDeviceSerialNumber;
  if (displayDeviceSerialNumber)
  {
    [dictionary setObject:displayDeviceSerialNumber forKey:@"displayDeviceSerialNumber"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventDate];
    [dictionary setObject:v13 forKey:@"eventDate"];
  }

  loggingProcessName = self->_loggingProcessName;
  if (loggingProcessName)
  {
    [dictionary setObject:loggingProcessName forKey:@"loggingProcessName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_termsText)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_documentationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_presentationReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    presentationLocation = self->_presentationLocation;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_acknowledgedDeviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_acknowledgedDeviceSerialNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_displayDeviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_displayDeviceSerialNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (*&self->_has)
  {
    eventDate = self->_eventDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_loggingProcessName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[14] = self->_eventType;
    *(toCopy + 96) |= 2u;
  }

  v5 = toCopy;
  if (self->_termsText)
  {
    [toCopy setTermsText:?];
    toCopy = v5;
  }

  if (self->_documentationID)
  {
    [v5 setDocumentationID:?];
    toCopy = v5;
  }

  if (self->_presentationReason)
  {
    [v5 setPresentationReason:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[18] = self->_presentationLocation;
    *(toCopy + 96) |= 4u;
  }

  if (self->_acknowledgedDeviceName)
  {
    [v5 setAcknowledgedDeviceName:?];
    toCopy = v5;
  }

  if (self->_acknowledgedDeviceSerialNumber)
  {
    [v5 setAcknowledgedDeviceSerialNumber:?];
    toCopy = v5;
  }

  if (self->_displayDeviceName)
  {
    [v5 setDisplayDeviceName:?];
    toCopy = v5;
  }

  if (self->_displayDeviceSerialNumber)
  {
    [v5 setDisplayDeviceSerialNumber:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_eventDate;
    *(toCopy + 96) |= 1u;
  }

  if (self->_loggingProcessName)
  {
    [v5 setLoggingProcessName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_eventType;
    *(v5 + 96) |= 2u;
  }

  v7 = [(NSData *)self->_termsText copyWithZone:zone];
  v8 = *(v6 + 88);
  *(v6 + 88) = v7;

  v9 = [(NSString *)self->_documentationID copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSString *)self->_presentationReason copyWithZone:zone];
  v12 = *(v6 + 80);
  *(v6 + 80) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_presentationLocation;
    *(v6 + 96) |= 4u;
  }

  v13 = [(NSString *)self->_acknowledgedDeviceName copyWithZone:zone];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(NSString *)self->_acknowledgedDeviceSerialNumber copyWithZone:zone];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  v17 = [(NSString *)self->_displayDeviceName copyWithZone:zone];
  v18 = *(v6 + 32);
  *(v6 + 32) = v17;

  v19 = [(NSString *)self->_displayDeviceSerialNumber copyWithZone:zone];
  v20 = *(v6 + 40);
  *(v6 + 40) = v19;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_eventDate;
    *(v6 + 96) |= 1u;
  }

  v21 = [(NSString *)self->_loggingProcessName copyWithZone:zone];
  v22 = *(v6 + 64);
  *(v6 + 64) = v21;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(equalCopy + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_eventType != *(equalCopy + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  termsText = self->_termsText;
  if (termsText | *(equalCopy + 11) && ![(NSData *)termsText isEqual:?])
  {
    goto LABEL_33;
  }

  documentationID = self->_documentationID;
  if (documentationID | *(equalCopy + 6))
  {
    if (![(NSString *)documentationID isEqual:?])
    {
      goto LABEL_33;
    }
  }

  presentationReason = self->_presentationReason;
  if (presentationReason | *(equalCopy + 10))
  {
    if (![(NSString *)presentationReason isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v9 = *(equalCopy + 96);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 96) & 4) == 0 || self->_presentationLocation != *(equalCopy + 18))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 96) & 4) != 0)
  {
    goto LABEL_33;
  }

  acknowledgedDeviceName = self->_acknowledgedDeviceName;
  if (acknowledgedDeviceName | *(equalCopy + 2) && ![(NSString *)acknowledgedDeviceName isEqual:?])
  {
    goto LABEL_33;
  }

  acknowledgedDeviceSerialNumber = self->_acknowledgedDeviceSerialNumber;
  if (acknowledgedDeviceSerialNumber | *(equalCopy + 3))
  {
    if (![(NSString *)acknowledgedDeviceSerialNumber isEqual:?])
    {
      goto LABEL_33;
    }
  }

  displayDeviceName = self->_displayDeviceName;
  if (displayDeviceName | *(equalCopy + 4))
  {
    if (![(NSString *)displayDeviceName isEqual:?])
    {
      goto LABEL_33;
    }
  }

  displayDeviceSerialNumber = self->_displayDeviceSerialNumber;
  if (displayDeviceSerialNumber | *(equalCopy + 5))
  {
    if (![(NSString *)displayDeviceSerialNumber isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v14 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_eventDate != *(equalCopy + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_33;
  }

  loggingProcessName = self->_loggingProcessName;
  if (loggingProcessName | *(equalCopy + 8))
  {
    v16 = [(NSString *)loggingProcessName isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_34:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761 * self->_eventType;
  }

  else
  {
    v18 = 0;
  }

  v3 = [(NSData *)self->_termsText hash];
  v4 = [(NSString *)self->_documentationID hash];
  v5 = [(NSString *)self->_presentationReason hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_presentationLocation;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_acknowledgedDeviceName hash];
  v8 = [(NSString *)self->_acknowledgedDeviceSerialNumber hash];
  v9 = [(NSString *)self->_displayDeviceName hash];
  v10 = [(NSString *)self->_displayDeviceSerialNumber hash];
  if (*&self->_has)
  {
    eventDate = self->_eventDate;
    if (eventDate < 0.0)
    {
      eventDate = -eventDate;
    }

    *v11.i64 = floor(eventDate + 0.5);
    v15 = (eventDate - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  return v3 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ [(NSString *)self->_loggingProcessName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 96) & 2) != 0)
  {
    self->_eventType = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(NRPBTermsEvent *)self setTermsText:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NRPBTermsEvent *)self setDocumentationID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 10))
  {
    [(NRPBTermsEvent *)self setPresentationReason:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 96) & 4) != 0)
  {
    self->_presentationLocation = *(fromCopy + 18);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 2))
  {
    [(NRPBTermsEvent *)self setAcknowledgedDeviceName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NRPBTermsEvent *)self setAcknowledgedDeviceSerialNumber:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NRPBTermsEvent *)self setDisplayDeviceName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NRPBTermsEvent *)self setDisplayDeviceSerialNumber:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 96))
  {
    self->_eventDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(NRPBTermsEvent *)self setLoggingProcessName:?];
    fromCopy = v5;
  }
}

@end