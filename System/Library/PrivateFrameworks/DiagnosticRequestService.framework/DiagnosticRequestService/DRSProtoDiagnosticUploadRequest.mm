@interface DRSProtoDiagnosticUploadRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLogs:(id)logs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoDiagnosticUploadRequest

- (void)addLogs:(id)logs
{
  logsCopy = logs;
  logs = self->_logs;
  v8 = logsCopy;
  if (!logs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_logs;
    self->_logs = v6;

    logsCopy = v8;
    logs = self->_logs;
  }

  [(NSMutableArray *)logs addObject:logsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticUploadRequest;
  v4 = [(DRSProtoDiagnosticUploadRequest *)&v8 description];
  dictionaryRepresentation = [(DRSProtoDiagnosticUploadRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestDescription = self->_requestDescription;
  if (requestDescription)
  {
    dictionaryRepresentation = [(DRSProtoRequestDescription *)requestDescription dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_description"];
  }

  issueDescription = self->_issueDescription;
  if (issueDescription)
  {
    [dictionary setObject:issueDescription forKey:@"issue_description"];
  }

  if ([(NSMutableArray *)self->_logs count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_logs, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_logs;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"logs"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_requestDescription)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_issueDescription)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_logs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestDescription)
  {
    [toCopy setRequestDescription:?];
  }

  if (self->_issueDescription)
  {
    [toCopy setIssueDescription:?];
  }

  if ([(DRSProtoDiagnosticUploadRequest *)self logsCount])
  {
    [toCopy clearLogs];
    logsCount = [(DRSProtoDiagnosticUploadRequest *)self logsCount];
    if (logsCount)
    {
      v5 = logsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(DRSProtoDiagnosticUploadRequest *)self logsAtIndex:i];
        [toCopy addLogs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoRequestDescription *)self->_requestDescription copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_issueDescription copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_logs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addLogs:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestDescription = self->_requestDescription, !(requestDescription | equalCopy[3])) || -[DRSProtoRequestDescription isEqual:](requestDescription, "isEqual:")) && ((issueDescription = self->_issueDescription, !(issueDescription | equalCopy[1])) || -[NSString isEqual:](issueDescription, "isEqual:")))
  {
    logs = self->_logs;
    if (logs | equalCopy[2])
    {
      v8 = [(NSMutableArray *)logs isEqual:?];
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
  v3 = [(DRSProtoRequestDescription *)self->_requestDescription hash];
  v4 = [(NSString *)self->_issueDescription hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_logs hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  requestDescription = self->_requestDescription;
  v6 = *(fromCopy + 3);
  if (requestDescription)
  {
    if (v6)
    {
      [(DRSProtoRequestDescription *)requestDescription mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(DRSProtoDiagnosticUploadRequest *)self setRequestDescription:?];
  }

  if (*(fromCopy + 1))
  {
    [(DRSProtoDiagnosticUploadRequest *)self setIssueDescription:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(DRSProtoDiagnosticUploadRequest *)self addLogs:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end