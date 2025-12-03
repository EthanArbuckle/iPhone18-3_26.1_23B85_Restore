@interface _MRPlaybackSessionMigrateRequestEventProtobuf
- (BOOL)isEqual:(id)equal;
- (NSError)mr_error;
- (double)calculatedDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reportName;
- (int)StringAsRole:(id)role;
- (int)role;
- (unint64_t)hash;
- (void)addEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasIdentifier:(BOOL)identifier;
- (void)setHasRole:(BOOL)role;
- (void)setHasStartTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionMigrateRequestEventProtobuf

- (NSError)mr_error
{
  error = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self error];

  if (error)
  {
    errorDescription = objc_alloc(MEMORY[0x1E696ABC0]);
    error2 = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self error];
    ErrorWithDescription = [errorDescription mr_initWithProtobuf:error2];

LABEL_5:
    goto LABEL_6;
  }

  if ([(_MRPlaybackSessionMigrateRequestEventProtobuf *)self errorCode])
  {
    errorCode = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self errorCode];
    errorDescription = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self errorDescription];
    ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription(errorCode, errorDescription);
    goto LABEL_5;
  }

  ErrorWithDescription = 0;
LABEL_6:

  return ErrorWithDescription;
}

- (double)calculatedDuration
{
  [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self endTimestamp];
  v4 = v3;
  [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self startTimestamp];
  return v4 - v5;
}

- (id)reportName
{
  role = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self role];
  if (role <= 6)
  {
    v5 = off_1E769DDF8[role];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    name = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self name];
    v2 = [v6 initWithFormat:v5, name];
  }

  return v2;
}

- (void)setHasStartTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)role
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_role;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRole:(BOOL)role
{
  if (role)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsRole:(id)role
{
  roleCopy = role;
  if ([roleCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([roleCopy isEqualToString:@"Receptionist"])
  {
    v4 = 1;
  }

  else if ([roleCopy isEqualToString:@"Source"])
  {
    v4 = 2;
  }

  else if ([roleCopy isEqualToString:@"Destination"])
  {
    v4 = 3;
  }

  else if ([roleCopy isEqualToString:@"InApp"])
  {
    v4 = 4;
  }

  else if ([roleCopy isEqualToString:@"Hijacked"])
  {
    v4 = 5;
  }

  else if ([roleCopy isEqualToString:@"Group"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  events = self->_events;
  v8 = eventsCopy;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_events;
    self->_events = v6;

    eventsCopy = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:eventsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateRequestEventProtobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimestamp];
    [v4 setObject:v15 forKey:@"startTimestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTimestamp];
  [v4 setObject:v16 forKey:@"endTimestamp"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_errorCode];
    [v4 setObject:v7 forKey:@"errorCode"];
  }

LABEL_7:
  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"errorDescription"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"error"];
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_identifier];
    [v4 setObject:v12 forKey:@"identifier"];

    v11 = self->_has;
  }

  if ((v11 & 0x10) != 0)
  {
    role = self->_role;
    if (role >= 7)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v14 = off_1E76A4830[role];
    }

    [v4 setObject:v14 forKey:@"role"];
  }

  input = self->_input;
  if (input)
  {
    dictionaryRepresentation2 = [(_MRDictionaryProtobuf *)input dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"input"];
  }

  output = self->_output;
  if (output)
  {
    dictionaryRepresentation3 = [(_MRDictionaryProtobuf *)output dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"output"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = self->_events;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation4];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"events"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startTimestamp = self->_startTimestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  endTimestamp = self->_endTimestamp;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    role = self->_role;
    PBDataWriterWriteInt32Field();
  }

  if (self->_input)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_output)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 8) != 0)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint32Field();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_startTimestamp;
    *(toCopy + 92) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = *&self->_endTimestamp;
  *(toCopy + 92) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = self->_errorCode;
    *(toCopy + 92) |= 2u;
  }

LABEL_7:
  if (self->_errorDescription)
  {
    [v10 setErrorDescription:?];
    toCopy = v10;
  }

  if (self->_error)
  {
    [v10 setError:?];
    toCopy = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 22) = self->_role;
    *(toCopy + 92) |= 0x10u;
  }

  if (self->_input)
  {
    [v10 setInput:?];
  }

  if (self->_output)
  {
    [v10 setOutput:?];
  }

  if ([(_MRPlaybackSessionMigrateRequestEventProtobuf *)self eventsCount])
  {
    [v10 clearEvents];
    eventsCount = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self eventsCount];
    if (eventsCount)
    {
      v7 = eventsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self eventsAtIndex:i];
        [v10 addEvents:v9];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 14) = self->_identifier;
    *(v10 + 92) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_startTimestamp;
    *(v5 + 92) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_endTimestamp;
  *(v5 + 92) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_errorCode;
    *(v5 + 92) |= 2u;
  }

LABEL_5:
  v9 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v11 = [(_MRErrorProtobuf *)self->_error copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 88) = self->_role;
    *(v5 + 92) |= 0x10u;
  }

  v13 = [(_MRDictionaryProtobuf *)self->_input copyWithZone:zone];
  v14 = *(v5 + 64);
  *(v5 + 64) = v13;

  v15 = [(_MRDictionaryProtobuf *)self->_output copyWithZone:zone];
  v16 = *(v5 + 80);
  *(v5 + 80) = v15;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_events;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * i) copyWithZone:{zone, v25}];
        [v5 addEvents:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 56) = self->_identifier;
    *(v5 + 92) |= 8u;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  name = self->_name;
  if (name | *(equalCopy + 9))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_38;
    }
  }

  v6 = *(equalCopy + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_startTimestamp != *(equalCopy + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
LABEL_38:
    v13 = 0;
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_endTimestamp != *(equalCopy + 1))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_38;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 5) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_38;
  }

  error = self->_error;
  if (error | *(equalCopy + 4))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_38;
    }
  }

  v9 = *(equalCopy + 92);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0 || self->_role != *(equalCopy + 22))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 92) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  input = self->_input;
  if (input | *(equalCopy + 8) && ![(_MRDictionaryProtobuf *)input isEqual:?])
  {
    goto LABEL_38;
  }

  output = self->_output;
  if (output | *(equalCopy + 10))
  {
    if (![(_MRDictionaryProtobuf *)output isEqual:?])
    {
      goto LABEL_38;
    }
  }

  events = self->_events;
  if (events | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
      goto LABEL_38;
    }
  }

  v13 = (*(equalCopy + 92) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0 || self->_identifier != *(equalCopy + 14))
    {
      goto LABEL_38;
    }

    v13 = 1;
  }

LABEL_39:

  return v13;
}

- (unint64_t)hash
{
  v23 = [(NSString *)self->_name hash];
  if ((*&self->_has & 4) != 0)
  {
    startTimestamp = self->_startTimestamp;
    if (startTimestamp < 0.0)
    {
      startTimestamp = -startTimestamp;
    }

    *v3.i64 = floor(startTimestamp + 0.5);
    v7 = (startTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
    v5 = 2654435761u * *v3.i64;
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

  if (*&self->_has)
  {
    endTimestamp = self->_endTimestamp;
    if (endTimestamp < 0.0)
    {
      endTimestamp = -endTimestamp;
    }

    *v3.i64 = floor(endTimestamp + 0.5);
    v11 = (endTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_errorCode;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSString *)self->_errorDescription hash];
  v15 = [(_MRErrorProtobuf *)self->_error hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_role;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(_MRDictionaryProtobuf *)self->_input hash];
  v18 = [(_MRDictionaryProtobuf *)self->_output hash];
  v19 = [(NSMutableArray *)self->_events hash];
  if ((*&self->_has & 8) != 0)
  {
    v20 = 2654435761 * self->_identifier;
  }

  else
  {
    v20 = 0;
  }

  return v22 ^ v23 ^ v9 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 9))
  {
    [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self setName:?];
  }

  v5 = *(fromCopy + 92);
  if ((v5 & 4) != 0)
  {
    self->_startTimestamp = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 92);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 92) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_endTimestamp = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 92) & 2) != 0)
  {
LABEL_6:
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_7:
  if (*(fromCopy + 5))
  {
    [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self setErrorDescription:?];
  }

  error = self->_error;
  v7 = *(fromCopy + 4);
  if (error)
  {
    if (v7)
    {
      [(_MRErrorProtobuf *)error mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self setError:?];
  }

  if ((*(fromCopy + 92) & 0x10) != 0)
  {
    self->_role = *(fromCopy + 22);
    *&self->_has |= 0x10u;
  }

  input = self->_input;
  v9 = *(fromCopy + 8);
  if (input)
  {
    if (v9)
    {
      [(_MRDictionaryProtobuf *)input mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self setInput:?];
  }

  output = self->_output;
  v11 = *(fromCopy + 10);
  if (output)
  {
    if (v11)
    {
      [(_MRDictionaryProtobuf *)output mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self setOutput:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 6);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_MRPlaybackSessionMigrateRequestEventProtobuf *)self addEvents:*(*(&v18 + 1) + 8 * i), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  if ((*(fromCopy + 92) & 8) != 0)
  {
    self->_identifier = *(fromCopy + 14);
    *&self->_has |= 8u;
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end