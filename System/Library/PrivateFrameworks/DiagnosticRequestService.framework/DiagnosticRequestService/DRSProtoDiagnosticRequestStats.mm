@interface DRSProtoDiagnosticRequestStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOutcomes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoDiagnosticRequestStats

- (void)addOutcomes:(id)a3
{
  v4 = a3;
  outcomes = self->_outcomes;
  v8 = v4;
  if (!outcomes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_outcomes;
    self->_outcomes = v6;

    v4 = v8;
    outcomes = self->_outcomes;
  }

  [(NSMutableArray *)outcomes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticRequestStats;
  v4 = [(DRSProtoDiagnosticRequestStats *)&v8 description];
  v5 = [(DRSProtoDiagnosticRequestStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  build = self->_build;
  if (build)
  {
    [v3 setObject:build forKey:@"build"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v4 setObject:teamId forKey:@"team_id"];
  }

  issueCategory = self->_issueCategory;
  if (issueCategory)
  {
    [v4 setObject:issueCategory forKey:@"issue_category"];
  }

  issueDescription = self->_issueDescription;
  if (issueDescription)
  {
    [v4 setObject:issueDescription forKey:@"issue_description"];
  }

  if ([(NSMutableArray *)self->_outcomes count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_outcomes, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_outcomes;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"outcomes"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issueCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issueDescription)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_outcomes;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_build)
  {
    [v8 setBuild:?];
  }

  if (self->_teamId)
  {
    [v8 setTeamId:?];
  }

  if (self->_issueCategory)
  {
    [v8 setIssueCategory:?];
  }

  if (self->_issueDescription)
  {
    [v8 setIssueDescription:?];
  }

  if ([(DRSProtoDiagnosticRequestStats *)self outcomesCount])
  {
    [v8 clearOutcomes];
    v4 = [(DRSProtoDiagnosticRequestStats *)self outcomesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(DRSProtoDiagnosticRequestStats *)self outcomesAtIndex:i];
        [v8 addOutcomes:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_build copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_teamId copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_issueCategory copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_issueDescription copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_outcomes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addOutcomes:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((build = self->_build, !(build | v4[1])) || -[NSString isEqual:](build, "isEqual:")) && ((teamId = self->_teamId, !(teamId | v4[5])) || -[NSString isEqual:](teamId, "isEqual:")) && ((issueCategory = self->_issueCategory, !(issueCategory | v4[2])) || -[NSString isEqual:](issueCategory, "isEqual:")) && ((issueDescription = self->_issueDescription, !(issueDescription | v4[3])) || -[NSString isEqual:](issueDescription, "isEqual:")))
  {
    outcomes = self->_outcomes;
    if (outcomes | v4[4])
    {
      v10 = [(NSMutableArray *)outcomes isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_build hash];
  v4 = [(NSString *)self->_teamId hash]^ v3;
  v5 = [(NSString *)self->_issueCategory hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_issueDescription hash];
  return v6 ^ [(NSMutableArray *)self->_outcomes hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(DRSProtoDiagnosticRequestStats *)self setBuild:?];
  }

  if (*(v4 + 5))
  {
    [(DRSProtoDiagnosticRequestStats *)self setTeamId:?];
  }

  if (*(v4 + 2))
  {
    [(DRSProtoDiagnosticRequestStats *)self setIssueCategory:?];
  }

  if (*(v4 + 3))
  {
    [(DRSProtoDiagnosticRequestStats *)self setIssueDescription:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 4);
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

        [(DRSProtoDiagnosticRequestStats *)self addOutcomes:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end