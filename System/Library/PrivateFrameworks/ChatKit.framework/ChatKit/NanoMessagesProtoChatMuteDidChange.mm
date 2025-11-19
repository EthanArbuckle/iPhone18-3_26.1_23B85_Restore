@interface NanoMessagesProtoChatMuteDidChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NanoMessagesProtoChatMuteDidChange

- (id)description
{
  v7.receiver = self;
  v7.super_class = NanoMessagesProtoChatMuteDidChange;
  v3 = [(NanoMessagesProtoChatMuteDidChange *)&v7 description];
  v4 = [(NanoMessagesProtoChatMuteDidChange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_chatGUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    unmuteTime = self->_unmuteTime;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_chatGUID)
  {
    v5 = v4;
    [v4 setChatGUID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_unmuteTime;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_chatGUID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_unmuteTime;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  chatGUID = self->_chatGUID;
  if (chatGUID | *(v4 + 2))
  {
    if (![(NSString *)chatGUID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_unmuteTime == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(NanoMessagesProtoChatMuteDidChange *)self setChatGUID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_unmuteTime = v4[1];
    *&self->_has |= 1u;
  }
}

@end