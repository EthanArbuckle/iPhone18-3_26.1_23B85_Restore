@interface HDCodableScoredAssessment
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableScoredAssessment

- (void)setHasScore:(BOOL)a3
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableScoredAssessment;
  v4 = [(HDCodableScoredAssessment *)&v8 description];
  v5 = [(HDCodableScoredAssessment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_score];
    [v3 setObject:v6 forKey:@"score"];
  }

  answers = self->_answers;
  if (answers)
  {
    [v3 setObject:answers forKey:@"answers"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_risk];
    [v3 setObject:v8 forKey:@"risk"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    score = self->_score;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_answers)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    risk = self->_risk;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_score;
    *(v4 + 40) |= 2u;
  }

  if (self->_answers)
  {
    [v5 setAnswers:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_risk;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_score;
    *(v5 + 40) |= 2u;
  }

  v8 = [(NSData *)self->_answers copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_risk;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  sample = self->_sample;
  if (sample | *(v4 + 4))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_score != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  answers = self->_answers;
  if (answers | *(v4 + 3))
  {
    if (![(NSData *)answers isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(v4 + 40);
  }

  v9 = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) == 0 || self->_risk != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_score;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSData *)self->_answers hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_risk;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = v4[4];
  v7 = v4;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableScoredAssessment *)self setSample:?];
  }

  v4 = v7;
LABEL_7:
  if ((v4[5] & 2) != 0)
  {
    self->_score = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[3])
  {
    [(HDCodableScoredAssessment *)self setAnswers:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_risk = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)applyToObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283D45200] && (-[HDCodableScoredAssessment sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "applyToObject:", v4), v5, v6))
  {
    [v4 _setScore:{-[HDCodableScoredAssessment score](self, "score")}];
    v7 = MEMORY[0x277CCAAC8];
    v8 = objc_opt_class();
    v9 = [(HDCodableScoredAssessment *)self answers];
    v16 = 0;
    v10 = [v7 unarchivedArrayOfObjectsOfClass:v8 fromData:v9 error:&v16];
    v11 = v16;

    v12 = v10 != 0;
    if (v10)
    {
      [v4 _setAnswers:v10];
      [v4 _setRisk:{-[HDCodableScoredAssessment risk](self, "risk")}];
    }

    else if (v11)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Error unarchiving answers: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end