@interface NanoMessagesProtoChatMuteDidChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NanoMessagesProtoChatMuteDidChange

- (id)description
{
  v7.receiver = self;
  v7.super_class = NanoMessagesProtoChatMuteDidChange;
  v3 = [(NanoMessagesProtoChatMuteDidChange *)&v7 description];
  dictionaryRepresentation = [(NanoMessagesProtoChatMuteDidChange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  chatGUID = self->_chatGUID;
  if (chatGUID)
  {
    [v3 setObject:chatGUID forKey:@"chatGUID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_unmuteTime];
    [v4 setObject:v6 forKey:@"unmuteTime"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_chatGUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    unmuteTime = self->_unmuteTime;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_chatGUID)
  {
    v5 = toCopy;
    [toCopy setChatGUID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_unmuteTime;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_chatGUID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_unmuteTime;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  chatGUID = self->_chatGUID;
  if (chatGUID | *(equalCopy + 2))
  {
    if (![(NSString *)chatGUID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_unmuteTime == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_chatGUID hash];
  if (*&self->_has)
  {
    unmuteTime = self->_unmuteTime;
    if (unmuteTime < 0.0)
    {
      unmuteTime = -unmuteTime;
    }

    *v4.i64 = floor(unmuteTime + 0.5);
    v8 = (unmuteTime - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NanoMessagesProtoChatMuteDidChange *)self setChatGUID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_unmuteTime = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end