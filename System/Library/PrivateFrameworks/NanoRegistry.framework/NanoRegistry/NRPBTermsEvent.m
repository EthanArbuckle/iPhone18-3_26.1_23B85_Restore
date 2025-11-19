@interface NRPBTermsEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasPresentationLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRPBTermsEvent

- (void)setHasEventType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPresentationLocation:(BOOL)a3
{
  if (a3)
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
  v5 = [(NRPBTermsEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventType];
    [v3 setObject:v4 forKey:@"eventType"];
  }

  termsText = self->_termsText;
  if (termsText)
  {
    [v3 setObject:termsText forKey:@"termsText"];
  }

  documentationID = self->_documentationID;
  if (documentationID)
  {
    [v3 setObject:documentationID forKey:@"documentationID"];
  }

  presentationReason = self->_presentationReason;
  if (presentationReason)
  {
    [v3 setObject:presentationReason forKey:@"presentationReason"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_presentationLocation];
    [v3 setObject:v8 forKey:@"presentationLocation"];
  }

  acknowledgedDeviceName = self->_acknowledgedDeviceName;
  if (acknowledgedDeviceName)
  {
    [v3 setObject:acknowledgedDeviceName forKey:@"acknowledgedDeviceName"];
  }

  acknowledgedDeviceSerialNumber = self->_acknowledgedDeviceSerialNumber;
  if (acknowledgedDeviceSerialNumber)
  {
    [v3 setObject:acknowledgedDeviceSerialNumber forKey:@"acknowledgedDeviceSerialNumber"];
  }

  displayDeviceName = self->_displayDeviceName;
  if (displayDeviceName)
  {
    [v3 setObject:displayDeviceName forKey:@"displayDeviceName"];
  }

  displayDeviceSerialNumber = self->_displayDeviceSerialNumber;
  if (displayDeviceSerialNumber)
  {
    [v3 setObject:displayDeviceSerialNumber forKey:@"displayDeviceSerialNumber"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventDate];
    [v3 setObject:v13 forKey:@"eventDate"];
  }

  loggingProcessName = self->_loggingProcessName;
  if (loggingProcessName)
  {
    [v3 setObject:loggingProcessName forKey:@"loggingProcessName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_termsText)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_documentationID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_presentationReason)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    presentationLocation = self->_presentationLocation;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_acknowledgedDeviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_acknowledgedDeviceSerialNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_displayDeviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_displayDeviceSerialNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (*&self->_has)
  {
    eventDate = self->_eventDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_loggingProcessName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[14] = self->_eventType;
    *(v4 + 96) |= 2u;
  }

  v5 = v4;
  if (self->_termsText)
  {
    [v4 setTermsText:?];
    v4 = v5;
  }

  if (self->_documentationID)
  {
    [v5 setDocumentationID:?];
    v4 = v5;
  }

  if (self->_presentationReason)
  {
    [v5 setPresentationReason:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[18] = self->_presentationLocation;
    *(v4 + 96) |= 4u;
  }

  if (self->_acknowledgedDeviceName)
  {
    [v5 setAcknowledgedDeviceName:?];
    v4 = v5;
  }

  if (self->_acknowledgedDeviceSerialNumber)
  {
    [v5 setAcknowledgedDeviceSerialNumber:?];
    v4 = v5;
  }

  if (self->_displayDeviceName)
  {
    [v5 setDisplayDeviceName:?];
    v4 = v5;
  }

  if (self->_displayDeviceSerialNumber)
  {
    [v5 setDisplayDeviceSerialNumber:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_eventDate;
    *(v4 + 96) |= 1u;
  }

  if (self->_loggingProcessName)
  {
    [v5 setLoggingProcessName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_eventType;
    *(v5 + 96) |= 2u;
  }

  v7 = [(NSData *)self->_termsText copyWithZone:a3];
  v8 = *(v6 + 88);
  *(v6 + 88) = v7;

  v9 = [(NSString *)self->_documentationID copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSString *)self->_presentationReason copyWithZone:a3];
  v12 = *(v6 + 80);
  *(v6 + 80) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_presentationLocation;
    *(v6 + 96) |= 4u;
  }

  v13 = [(NSString *)self->_acknowledgedDeviceName copyWithZone:a3];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(NSString *)self->_acknowledgedDeviceSerialNumber copyWithZone:a3];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  v17 = [(NSString *)self->_displayDeviceName copyWithZone:a3];
  v18 = *(v6 + 32);
  *(v6 + 32) = v17;

  v19 = [(NSString *)self->_displayDeviceSerialNumber copyWithZone:a3];
  v20 = *(v6 + 40);
  *(v6 + 40) = v19;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_eventDate;
    *(v6 + 96) |= 1u;
  }

  v21 = [(NSString *)self->_loggingProcessName copyWithZone:a3];
  v22 = *(v6 + 64);
  *(v6 + 64) = v21;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_eventType != *(v4 + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  termsText = self->_termsText;
  if (termsText | *(v4 + 11) && ![(NSData *)termsText isEqual:?])
  {
    goto LABEL_33;
  }

  documentationID = self->_documentationID;
  if (documentationID | *(v4 + 6))
  {
    if (![(NSString *)documentationID isEqual:?])
    {
      goto LABEL_33;
    }
  }

  presentationReason = self->_presentationReason;
  if (presentationReason | *(v4 + 10))
  {
    if (![(NSString *)presentationReason isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v9 = *(v4 + 96);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_presentationLocation != *(v4 + 18))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
    goto LABEL_33;
  }

  acknowledgedDeviceName = self->_acknowledgedDeviceName;
  if (acknowledgedDeviceName | *(v4 + 2) && ![(NSString *)acknowledgedDeviceName isEqual:?])
  {
    goto LABEL_33;
  }

  acknowledgedDeviceSerialNumber = self->_acknowledgedDeviceSerialNumber;
  if (acknowledgedDeviceSerialNumber | *(v4 + 3))
  {
    if (![(NSString *)acknowledgedDeviceSerialNumber isEqual:?])
    {
      goto LABEL_33;
    }
  }

  displayDeviceName = self->_displayDeviceName;
  if (displayDeviceName | *(v4 + 4))
  {
    if (![(NSString *)displayDeviceName isEqual:?])
    {
      goto LABEL_33;
    }
  }

  displayDeviceSerialNumber = self->_displayDeviceSerialNumber;
  if (displayDeviceSerialNumber | *(v4 + 5))
  {
    if (![(NSString *)displayDeviceSerialNumber isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v14 = *(v4 + 96);
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_eventDate != *(v4 + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_33;
  }

  loggingProcessName = self->_loggingProcessName;
  if (loggingProcessName | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 96) & 2) != 0)
  {
    self->_eventType = *(v4 + 14);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 11))
  {
    [(NRPBTermsEvent *)self setTermsText:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NRPBTermsEvent *)self setDocumentationID:?];
    v4 = v5;
  }

  if (*(v4 + 10))
  {
    [(NRPBTermsEvent *)self setPresentationReason:?];
    v4 = v5;
  }

  if ((*(v4 + 96) & 4) != 0)
  {
    self->_presentationLocation = *(v4 + 18);
    *&self->_has |= 4u;
  }

  if (*(v4 + 2))
  {
    [(NRPBTermsEvent *)self setAcknowledgedDeviceName:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NRPBTermsEvent *)self setAcknowledgedDeviceSerialNumber:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NRPBTermsEvent *)self setDisplayDeviceName:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NRPBTermsEvent *)self setDisplayDeviceSerialNumber:?];
    v4 = v5;
  }

  if (*(v4 + 96))
  {
    self->_eventDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(NRPBTermsEvent *)self setLoggingProcessName:?];
    v4 = v5;
  }
}

@end