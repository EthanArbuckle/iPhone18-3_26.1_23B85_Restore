@interface BMPBScreenTimeRequestEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApprovalTime:(id)time;
- (int)StringAsKind:(id)kind;
- (int)StringAsStatus:(id)status;
- (int)approvalTime;
- (int)kind;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasApprovalTime:(BOOL)time;
- (void)setHasIsActionUserDevice:(BOOL)device;
- (void)setHasKind:(BOOL)kind;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation BMPBScreenTimeRequestEvent

- (int)kind
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_kind;
  }

  else
  {
    return 0;
  }
}

- (void)setHasKind:(BOOL)kind
{
  if (kind)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([kindCopy isEqualToString:@"website"])
  {
    v4 = 1;
  }

  else if ([kindCopy isEqualToString:@"app"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)status
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"pending"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"declined"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"approved"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)approvalTime
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_approvalTime;
  }

  else
  {
    return 0;
  }
}

- (void)setHasApprovalTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsApprovalTime:(id)time
{
  timeCopy = time;
  if ([timeCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([timeCopy isEqualToString:@"time15"])
  {
    v4 = 1;
  }

  else if ([timeCopy isEqualToString:@"time60"])
  {
    v4 = 2;
  }

  else if ([timeCopy isEqualToString:@"allDay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsActionUserDevice:(BOOL)device
{
  if (device)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBScreenTimeRequestEvent;
  v4 = [(BMPBScreenTimeRequestEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBScreenTimeRequestEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  requestID = self->_requestID;
  if (requestID)
  {
    [dictionary setObject:requestID forKey:@"requestID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
    [v4 setObject:v6 forKey:@"eventTime"];
  }

  requesterDSID = self->_requesterDSID;
  if (requesterDSID)
  {
    [v4 setObject:requesterDSID forKey:@"requesterDSID"];
  }

  responderDSID = self->_responderDSID;
  if (responderDSID)
  {
    [v4 setObject:responderDSID forKey:@"responderDSID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    kind = self->_kind;
    if (kind >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_kind];
    }

    else
    {
      v11 = *(&off_1E6E53238 + kind);
    }

    [v4 setObject:v11 forKey:@"kind"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  status = self->_status;
  if (status >= 4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
  }

  else
  {
    v13 = *(&off_1E6E53250 + status);
  }

  [v4 setObject:v13 forKey:@"status"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    approvalTime = self->_approvalTime;
    if (approvalTime >= 4)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_approvalTime];
    }

    else
    {
      v15 = *(&off_1E6E53270 + approvalTime);
    }

    [v4 setObject:v15 forKey:@"approvalTime"];
  }

LABEL_25:
  websitePath = self->_websitePath;
  if (websitePath)
  {
    [v4 setObject:websitePath forKey:@"websitePath"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
    [v4 setObject:v18 forKey:@"isActionUserDevice"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (*&self->_has)
  {
    eventTime = self->_eventTime;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

  if (self->_requesterDSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_responderDSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    kind = self->_kind;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  status = self->_status;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    approvalTime = self->_approvalTime;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

LABEL_13:
  if (self->_websitePath)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isActionUserDevice = self->_isActionUserDevice;
    PBDataWriterWriteBOOLField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestID)
  {
    [toCopy setRequestID:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_eventTime;
    *(toCopy + 84) |= 1u;
  }

  if (self->_requesterDSID)
  {
    [v6 setRequesterDSID:?];
    toCopy = v6;
  }

  if (self->_responderDSID)
  {
    [v6 setResponderDSID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 8) = self->_kind;
    *(toCopy + 84) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 16) = self->_status;
  *(toCopy + 84) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    *(toCopy + 4) = self->_approvalTime;
    *(toCopy + 84) |= 2u;
  }

LABEL_13:
  if (self->_websitePath)
  {
    [v6 setWebsitePath:?];
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 80) = self->_isActionUserDevice;
    *(toCopy + 84) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_eventTime;
    *(v5 + 84) |= 1u;
  }

  v8 = [(NSString *)self->_requesterDSID copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_responderDSID copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_kind;
    *(v5 + 84) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 64) = self->_status;
  *(v5 + 84) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v5 + 16) = self->_approvalTime;
    *(v5 + 84) |= 2u;
  }

LABEL_7:
  v13 = [(NSString *)self->_websitePath copyWithZone:zone];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_bundleID copyWithZone:zone];
  v16 = *(v5 + 24);
  *(v5 + 24) = v15;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 80) = self->_isActionUserDevice;
    *(v5 + 84) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 5))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v6 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_eventTime != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_34;
  }

  requesterDSID = self->_requesterDSID;
  if (requesterDSID | *(equalCopy + 6) && ![(NSString *)requesterDSID isEqual:?])
  {
    goto LABEL_34;
  }

  responderDSID = self->_responderDSID;
  if (responderDSID | *(equalCopy + 7))
  {
    if (![(NSString *)responderDSID isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v9 = *(equalCopy + 84);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 84) & 4) == 0 || self->_kind != *(equalCopy + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 84) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 84) & 8) == 0 || self->_status != *(equalCopy + 16))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 84) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 84) & 2) == 0 || self->_approvalTime != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 84) & 2) != 0)
  {
    goto LABEL_34;
  }

  websitePath = self->_websitePath;
  if (websitePath | *(equalCopy + 9) && ![(NSString *)websitePath isEqual:?])
  {
    goto LABEL_34;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 3))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v12 = (*(equalCopy + 84) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 84) & 0x10) == 0)
    {
LABEL_34:
      v12 = 0;
      goto LABEL_35;
    }

    if (self->_isActionUserDevice)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_34;
    }

    v12 = 1;
  }

LABEL_35:

  return v12;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_requestID hash];
  if (*&self->_has)
  {
    eventTime = self->_eventTime;
    if (eventTime < 0.0)
    {
      eventTime = -eventTime;
    }

    *v3.i64 = floor(eventTime + 0.5);
    v7 = (eventTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_requesterDSID hash];
  v10 = [(NSString *)self->_responderDSID hash];
  if ((*&self->_has & 4) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11 = 2654435761 * self->_kind;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_status;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_approvalTime;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = [(NSString *)self->_websitePath hash];
  v15 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_isActionUserDevice;
  }

  else
  {
    v16 = 0;
  }

  return v5 ^ v18 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(BMPBScreenTimeRequestEvent *)self setRequestID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 84))
  {
    self->_eventTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBScreenTimeRequestEvent *)self setRequesterDSID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBScreenTimeRequestEvent *)self setResponderDSID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 84);
  if ((v5 & 4) != 0)
  {
    self->_kind = *(fromCopy + 8);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 84);
    if ((v5 & 8) == 0)
    {
LABEL_11:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 84) & 8) == 0)
  {
    goto LABEL_11;
  }

  self->_status = *(fromCopy + 16);
  *&self->_has |= 8u;
  if ((*(fromCopy + 84) & 2) != 0)
  {
LABEL_12:
    self->_approvalTime = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_13:
  if (*(fromCopy + 9))
  {
    [(BMPBScreenTimeRequestEvent *)self setWebsitePath:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBScreenTimeRequestEvent *)self setBundleID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 84) & 0x10) != 0)
  {
    self->_isActionUserDevice = *(fromCopy + 80);
    *&self->_has |= 0x10u;
  }
}

@end