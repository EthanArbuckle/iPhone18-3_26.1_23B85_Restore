@interface MXAudioFrame
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudio:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXAudioFrame

- (void)addAudio:(id)a3
{
  v4 = a3;
  audios = self->_audios;
  v8 = v4;
  if (!audios)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_audios;
    self->_audios = v6;

    v4 = v8;
    audios = self->_audios;
  }

  [(NSMutableArray *)audios addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXAudioFrame;
  v4 = [(MXAudioFrame *)&v8 description];
  v5 = [(MXAudioFrame *)self dictionaryRepresentation];
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

  audios = self->_audios;
  if (audios)
  {
    [v4 setObject:audios forKey:@"audio"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastFrame];
    [v4 setObject:v7 forKey:@"last_frame"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_audios;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    lastFrame = self->_lastFrame;
    PBDataWriterWriteBOOLField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_requestId)
  {
    [v8 setRequestId:?];
  }

  if ([(MXAudioFrame *)self audiosCount])
  {
    [v8 clearAudios];
    v4 = [(MXAudioFrame *)self audiosCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MXAudioFrame *)self audioAtIndex:i];
        [v8 addAudio:v7];
      }
    }
  }

  if (*&self->_has)
  {
    v8[24] = self->_lastFrame;
    v8[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_audios;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addAudio:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_lastFrame;
    *(v5 + 28) |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 2))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  audios = self->_audios;
  if (audios | *(v4 + 1))
  {
    if (![(NSMutableArray *)audios isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_lastFrame)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_audios hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_lastFrame;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(MXAudioFrame *)self setRequestId:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MXAudioFrame *)self addAudio:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 28))
  {
    self->_lastFrame = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end