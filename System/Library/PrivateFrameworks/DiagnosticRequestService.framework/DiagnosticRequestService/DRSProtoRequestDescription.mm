@interface DRSProtoRequestDescription
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoRequestDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRequestDescription;
  v4 = [(DRSProtoRequestDescription *)&v8 description];
  dictionaryRepresentation = [(DRSProtoRequestDescription *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  teamId = self->_teamId;
  if (teamId)
  {
    [dictionary setObject:teamId forKey:@"team_id"];
  }

  issueCategory = self->_issueCategory;
  if (issueCategory)
  {
    [v4 setObject:issueCategory forKey:@"issue_category"];
  }

  contextDictionaryData = self->_contextDictionaryData;
  if (contextDictionaryData)
  {
    [v4 setObject:contextDictionaryData forKey:@"context_dictionary_data"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_requestTime];
    [v4 setObject:v8 forKey:@"request_time"];
  }

  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_issueCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_contextDictionaryData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    requestTime = self->_requestTime;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_teamId)
  {
    [toCopy setTeamId:?];
    toCopy = v5;
  }

  if (self->_issueCategory)
  {
    [v5 setIssueCategory:?];
    toCopy = v5;
  }

  if (self->_contextDictionaryData)
  {
    [v5 setContextDictionaryData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_requestTime;
    *(toCopy + 48) |= 1u;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_teamId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_issueCategory copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_contextDictionaryData copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_requestTime;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_build copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  teamId = self->_teamId;
  if (teamId | *(equalCopy + 5))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  issueCategory = self->_issueCategory;
  if (issueCategory | *(equalCopy + 4))
  {
    if (![(NSString *)issueCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  contextDictionaryData = self->_contextDictionaryData;
  if (contextDictionaryData | *(equalCopy + 3))
  {
    if (![(NSData *)contextDictionaryData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_requestTime != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  build = self->_build;
  if (build | *(equalCopy + 2))
  {
    v10 = [(NSString *)build isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_teamId hash];
  v4 = [(NSString *)self->_issueCategory hash];
  v5 = [(NSData *)self->_contextDictionaryData hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_requestTime;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_build hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(DRSProtoRequestDescription *)self setTeamId:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(DRSProtoRequestDescription *)self setIssueCategory:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(DRSProtoRequestDescription *)self setContextDictionaryData:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_requestTime = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(DRSProtoRequestDescription *)self setBuild:?];
    fromCopy = v5;
  }
}

@end