@interface DRSProtoRequestDescription
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoRequestDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRequestDescription;
  v4 = [(DRSProtoRequestDescription *)&v8 description];
  v5 = [(DRSProtoRequestDescription *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  teamId = self->_teamId;
  if (teamId)
  {
    [v3 setObject:teamId forKey:@"team_id"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_issueCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_contextDictionaryData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    requestTime = self->_requestTime;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_teamId)
  {
    [v4 setTeamId:?];
    v4 = v5;
  }

  if (self->_issueCategory)
  {
    [v5 setIssueCategory:?];
    v4 = v5;
  }

  if (self->_contextDictionaryData)
  {
    [v5 setContextDictionaryData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_requestTime;
    *(v4 + 48) |= 1u;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_teamId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_issueCategory copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_contextDictionaryData copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_requestTime;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_build copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  teamId = self->_teamId;
  if (teamId | *(v4 + 5))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  issueCategory = self->_issueCategory;
  if (issueCategory | *(v4 + 4))
  {
    if (![(NSString *)issueCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  contextDictionaryData = self->_contextDictionaryData;
  if (contextDictionaryData | *(v4 + 3))
  {
    if (![(NSData *)contextDictionaryData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_requestTime != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  build = self->_build;
  if (build | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    [(DRSProtoRequestDescription *)self setTeamId:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(DRSProtoRequestDescription *)self setIssueCategory:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(DRSProtoRequestDescription *)self setContextDictionaryData:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_requestTime = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(DRSProtoRequestDescription *)self setBuild:?];
    v4 = v5;
  }
}

@end