@interface PersonLinkingPersonPair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGrade:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersonLinkingPersonPair

- (void)setHasGrade:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PersonLinkingPersonPair;
  v4 = [(PersonLinkingPersonPair *)&v8 description];
  v5 = [(PersonLinkingPersonPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  sourcePerson = self->_sourcePerson;
  if (sourcePerson)
  {
    v6 = [(PersonLinkingPerson *)sourcePerson dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"sourcePerson"];
  }

  targetPerson = self->_targetPerson;
  if (targetPerson)
  {
    v8 = [(PersonLinkingPerson *)targetPerson dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"targetPerson"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_grade];
    [v3 setObject:v10 forKey:@"grade"];

    has = self->_has;
  }

  if (has)
  {
    *&v4 = self->_confidence;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v11 forKey:@"confidence"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v3 setObject:reason forKey:@"reason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sourcePerson)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_targetPerson)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    grade = self->_grade;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sourcePerson)
  {
    [v4 setSourcePerson:?];
    v4 = v6;
  }

  if (self->_targetPerson)
  {
    [v6 setTargetPerson:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_grade;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = LODWORD(self->_confidence);
    *(v4 + 44) |= 1u;
  }

  if (self->_reason)
  {
    [v6 setReason:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PersonLinkingPerson *)self->_sourcePerson copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(PersonLinkingPerson *)self->_targetPerson copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_grade;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 44) |= 1u;
  }

  v11 = [(NSString *)self->_reason copyWithZone:a3];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  sourcePerson = self->_sourcePerson;
  if (sourcePerson | *(v4 + 3))
  {
    if (![(PersonLinkingPerson *)sourcePerson isEqual:?])
    {
      goto LABEL_20;
    }
  }

  targetPerson = self->_targetPerson;
  if (targetPerson | *(v4 + 4))
  {
    if (![(PersonLinkingPerson *)targetPerson isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v7 = *(v4 + 44);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_20;
  }

  v8 = *(v4 + 40);
  if (self->_grade)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_confidence != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_20;
  }

  reason = self->_reason;
  if (reason | *(v4 + 2))
  {
    v10 = [(NSString *)reason isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PersonLinkingPerson *)self->_sourcePerson hash];
  v4 = [(PersonLinkingPerson *)self->_targetPerson hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_grade;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ [(NSString *)self->_reason hash];
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v5.i32 = floorf(confidence + 0.5);
  v9 = (confidence - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v11 = 2654435761u * *vbslq_s8(v10, v6, v5).i32;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabsf(v9);
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ [(NSString *)self->_reason hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sourcePerson = self->_sourcePerson;
  v6 = *(v4 + 3);
  v10 = v4;
  if (sourcePerson)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PersonLinkingPerson *)sourcePerson mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PersonLinkingPersonPair *)self setSourcePerson:?];
  }

  v4 = v10;
LABEL_7:
  targetPerson = self->_targetPerson;
  v8 = *(v4 + 4);
  if (targetPerson)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    targetPerson = [(PersonLinkingPerson *)targetPerson mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    targetPerson = [(PersonLinkingPersonPair *)self setTargetPerson:?];
  }

  v4 = v10;
LABEL_13:
  v9 = *(v4 + 44);
  if ((v9 & 2) != 0)
  {
    self->_grade = *(v4 + 40);
    *&self->_has |= 2u;
    v9 = *(v4 + 44);
  }

  if (v9)
  {
    self->_confidence = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    targetPerson = [(PersonLinkingPersonPair *)self setReason:?];
    v4 = v10;
  }

  MEMORY[0x1EEE66BB8](targetPerson, v4);
}

@end