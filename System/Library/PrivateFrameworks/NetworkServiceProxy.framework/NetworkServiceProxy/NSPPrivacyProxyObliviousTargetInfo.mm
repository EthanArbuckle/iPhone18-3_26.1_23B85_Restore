@interface NSPPrivacyProxyObliviousTargetInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addProcesses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWeight:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyObliviousTargetInfo

- (void)setHasWeight:(BOOL)a3
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

- (void)addProcesses:(id)a3
{
  v4 = a3;
  processes = self->_processes;
  v8 = v4;
  if (!processes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_processes;
    self->_processes = v6;

    v4 = v8;
    processes = self->_processes;
  }

  [(NSMutableArray *)processes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyObliviousTargetInfo;
  v4 = [(NSPPrivacyProxyObliviousTargetInfo *)&v8 description];
  v5 = [(NSPPrivacyProxyObliviousTargetInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  targetHost = self->_targetHost;
  if (targetHost)
  {
    [v3 setObject:targetHost forKey:@"targetHost"];
  }

  proxyURLPath = self->_proxyURLPath;
  if (proxyURLPath)
  {
    [v4 setObject:proxyURLPath forKey:@"proxyURLPath"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_proxyIndex];
    [v4 setObject:v8 forKey:@"proxyIndex"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weight];
    [v4 setObject:v9 forKey:@"weight"];
  }

  processes = self->_processes;
  if (processes)
  {
    [v4 setObject:processes forKey:@"processes"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_targetHost)
  {
    __assert_rtn("[NSPPrivacyProxyObliviousTargetInfo writeTo:]", "NSPPrivacyProxyObliviousTargetInfo.m", 183, "nil != self->_targetHost");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_proxyURLPath)
  {
    __assert_rtn("[NSPPrivacyProxyObliviousTargetInfo writeTo:]", "NSPPrivacyProxyObliviousTargetInfo.m", 188, "nil != self->_proxyURLPath");
  }

  PBDataWriterWriteStringField();
  has = self->_has;
  if (has)
  {
    proxyIndex = self->_proxyIndex;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    weight = self->_weight;
    PBDataWriterWriteUint32Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_processes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  [v9 setTargetHost:self->_targetHost];
  [v9 setProxyURLPath:self->_proxyURLPath];
  has = self->_has;
  if (has)
  {
    *(v9 + 4) = self->_proxyIndex;
    *(v9 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v9 + 10) = self->_weight;
    *(v9 + 44) |= 2u;
  }

  if ([(NSPPrivacyProxyObliviousTargetInfo *)self processesCount])
  {
    [v9 clearProcesses];
    v5 = [(NSPPrivacyProxyObliviousTargetInfo *)self processesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyObliviousTargetInfo *)self processesAtIndex:i];
        [v9 addProcesses:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_targetHost copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_proxyURLPath copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_proxyIndex;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_weight;
    *(v5 + 44) |= 2u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_processes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addProcesses:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  targetHost = self->_targetHost;
  if (targetHost | *(v4 + 4))
  {
    if (![(NSString *)targetHost isEqual:?])
    {
      goto LABEL_18;
    }
  }

  proxyURLPath = self->_proxyURLPath;
  if (proxyURLPath | *(v4 + 3))
  {
    if (![(NSString *)proxyURLPath isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_proxyIndex != *(v4 + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_weight != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  processes = self->_processes;
  if (processes | *(v4 + 1))
  {
    v9 = [(NSMutableArray *)processes isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_targetHost hash];
  v4 = [(NSString *)self->_proxyURLPath hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_proxyIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_processes hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_weight;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_processes hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(NSPPrivacyProxyObliviousTargetInfo *)self setTargetHost:?];
  }

  if (*(v4 + 3))
  {
    [(NSPPrivacyProxyObliviousTargetInfo *)self setProxyURLPath:?];
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_proxyIndex = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_weight = *(v4 + 10);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSPPrivacyProxyObliviousTargetInfo *)self addProcesses:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end