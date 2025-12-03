@interface NMReply
- (BOOL)decompressArguments;
- (BOOL)isEqual:(id)equal;
- (id)argumentForTag:(int)tag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArgument:(id)argument;
- (void)addCompressedArgument:(id)argument;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequestReceivedTimestamp:(BOOL)timestamp;
- (void)setHasResponseTime:(BOOL)time;
- (void)setHasSentTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation NMReply

- (void)addArgument:(id)argument
{
  argumentCopy = argument;
  arguments = self->_arguments;
  v8 = argumentCopy;
  if (!arguments)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_arguments;
    self->_arguments = v6;

    argumentCopy = v8;
    arguments = self->_arguments;
  }

  [(NSMutableArray *)arguments addObject:argumentCopy];
}

- (void)addCompressedArgument:(id)argument
{
  argumentCopy = argument;
  compressedArguments = self->_compressedArguments;
  v8 = argumentCopy;
  if (!compressedArguments)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_compressedArguments;
    self->_compressedArguments = v6;

    argumentCopy = v8;
    compressedArguments = self->_compressedArguments;
  }

  [(NSMutableArray *)compressedArguments addObject:argumentCopy];
}

- (void)setHasResponseTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRequestReceivedTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSentTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NMReply;
  v3 = [(NMReply *)&v7 description];
  dictionaryRepresentation = [(NMReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_arguments count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_arguments, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_arguments;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"argument"];
  }

  if ([(NSMutableArray *)self->_compressedArguments count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_compressedArguments, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = self->_compressedArguments;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"compressedArgument"];
  }

  senderUUID = self->_senderUUID;
  if (senderUUID)
  {
    [v3 setObject:senderUUID forKey:@"senderUUID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v22 = [NSNumber numberWithDouble:self->_responseTime];
    [v3 setObject:v22 forKey:@"responseTime"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_23:
      if ((has & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = [NSNumber numberWithDouble:self->_enqueuedTimeInterval, v25];
  [v3 setObject:v23 forKey:@"enqueuedTimeInterval"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_24:
    if ((has & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_31:
  v24 = [NSNumber numberWithDouble:self->_requestReceivedTimestamp, v25];
  [v3 setObject:v24 forKey:@"requestReceivedTimestamp"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_25:
    v20 = [NSNumber numberWithDouble:self->_sentTimestamp, v25];
    [v3 setObject:v20 forKey:@"sentTimestamp"];
  }

LABEL_26:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_arguments;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_compressedArguments;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  if (self->_senderUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    responseTime = self->_responseTime;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_19:
      if ((has & 2) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      requestReceivedTimestamp = self->_requestReceivedTimestamp;
      PBDataWriterWriteDoubleField();
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_19;
  }

  enqueuedTimeInterval = self->_enqueuedTimeInterval;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((has & 8) != 0)
  {
LABEL_21:
    sentTimestamp = self->_sentTimestamp;
    PBDataWriterWriteDoubleField();
  }

LABEL_22:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NMReply *)self argumentsCount])
  {
    [toCopy clearArguments];
    argumentsCount = [(NMReply *)self argumentsCount];
    if (argumentsCount)
    {
      v5 = argumentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NMReply *)self argumentAtIndex:i];
        [toCopy addArgument:v7];
      }
    }
  }

  if ([(NMReply *)self compressedArgumentsCount])
  {
    [toCopy clearCompressedArguments];
    compressedArgumentsCount = [(NMReply *)self compressedArgumentsCount];
    if (compressedArgumentsCount)
    {
      v9 = compressedArgumentsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NMReply *)self compressedArgumentAtIndex:j];
        [toCopy addCompressedArgument:v11];
      }
    }
  }

  if (self->_senderUUID)
  {
    [toCopy setSenderUUID:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_responseTime;
    *(toCopy + 64) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 1) = *&self->_enqueuedTimeInterval;
  *(toCopy + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  *(toCopy + 2) = *&self->_requestReceivedTimestamp;
  *(toCopy + 64) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(toCopy + 4) = *&self->_sentTimestamp;
    *(toCopy + 64) |= 8u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_arguments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * i) copyWithZone:zone];
        [v5 addArgument:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_compressedArguments;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * j) copyWithZone:{zone, v22}];
        [v5 addCompressedArgument:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_senderUUID copyWithZone:zone];
  v19 = *(v5 + 7);
  *(v5 + 7) = v18;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 3) = *&self->_responseTime;
    *(v5 + 64) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_17:
      if ((has & 2) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      *(v5 + 2) = *&self->_requestReceivedTimestamp;
      *(v5 + 64) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 1) = *&self->_enqueuedTimeInterval;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((has & 8) != 0)
  {
LABEL_19:
    *(v5 + 4) = *&self->_sentTimestamp;
    *(v5 + 64) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  arguments = self->_arguments;
  if (arguments | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)arguments isEqual:?])
    {
      goto LABEL_27;
    }
  }

  compressedArguments = self->_compressedArguments;
  if (compressedArguments | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)compressedArguments isEqual:?])
    {
      goto LABEL_27;
    }
  }

  senderUUID = self->_senderUUID;
  if (senderUUID | *(equalCopy + 7))
  {
    if (![(NSString *)senderUUID isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_responseTime != *(equalCopy + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_enqueuedTimeInterval != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_requestReceivedTimestamp != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_27;
  }

  v8 = (*(equalCopy + 64) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_sentTimestamp != *(equalCopy + 4))
    {
      goto LABEL_27;
    }

    v8 = 1;
  }

LABEL_28:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_arguments hash];
  v4 = [(NSMutableArray *)self->_compressedArguments hash];
  v5 = [(NSString *)self->_senderUUID hash];
  if ((*&self->_has & 4) != 0)
  {
    responseTime = self->_responseTime;
    if (responseTime < 0.0)
    {
      responseTime = -responseTime;
    }

    *v6.i64 = floor(responseTime + 0.5);
    v10 = (responseTime - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    enqueuedTimeInterval = self->_enqueuedTimeInterval;
    if (enqueuedTimeInterval < 0.0)
    {
      enqueuedTimeInterval = -enqueuedTimeInterval;
    }

    *v6.i64 = floor(enqueuedTimeInterval + 0.5);
    v14 = (enqueuedTimeInterval - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
    v12 = 2654435761u * *v6.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    requestReceivedTimestamp = self->_requestReceivedTimestamp;
    if (requestReceivedTimestamp < 0.0)
    {
      requestReceivedTimestamp = -requestReceivedTimestamp;
    }

    *v6.i64 = floor(requestReceivedTimestamp + 0.5);
    v18 = (requestReceivedTimestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v19), v7, v6);
    v16 = 2654435761u * *v6.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    sentTimestamp = self->_sentTimestamp;
    if (sentTimestamp < 0.0)
    {
      sentTimestamp = -sentTimestamp;
    }

    *v6.i64 = floor(sentTimestamp + 0.5);
    v22 = (sentTimestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v7, v6).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v16 ^ v20;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NMReply *)self addArgument:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 6);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NMReply *)self addCompressedArgument:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 7))
  {
    [(NMReply *)self setSenderUUID:?];
  }

  v15 = *(fromCopy + 64);
  if ((v15 & 4) != 0)
  {
    self->_responseTime = *(fromCopy + 3);
    *&self->_has |= 4u;
    v15 = *(fromCopy + 64);
    if ((v15 & 1) == 0)
    {
LABEL_19:
      if ((v15 & 2) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      self->_requestReceivedTimestamp = *(fromCopy + 2);
      *&self->_has |= 2u;
      if ((*(fromCopy + 64) & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 64) & 1) == 0)
  {
    goto LABEL_19;
  }

  self->_enqueuedTimeInterval = *(fromCopy + 1);
  *&self->_has |= 1u;
  v15 = *(fromCopy + 64);
  if ((v15 & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v15 & 8) != 0)
  {
LABEL_21:
    self->_sentTimestamp = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_22:
}

- (id)argumentForTag:(int)tag
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  arguments = [(NMReply *)self arguments];
  v5 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(arguments);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 tag] == tag)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)decompressArguments
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  compressedArguments = [(NMReply *)self compressedArguments];
  v4 = [compressedArguments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(compressedArguments);
        }

        _nm_uncompressedArgument = [*(*(&v11 + 1) + 8 * v7) _nm_uncompressedArgument];
        if (!_nm_uncompressedArgument)
        {

          return 0;
        }

        v9 = _nm_uncompressedArgument;
        [(NMReply *)self addArgument:_nm_uncompressedArgument];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [compressedArguments countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [(NMReply *)self clearCompressedArguments];
  return 1;
}

@end