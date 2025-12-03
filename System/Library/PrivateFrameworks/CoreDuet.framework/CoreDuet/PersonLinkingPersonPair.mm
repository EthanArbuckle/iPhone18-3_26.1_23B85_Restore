@interface PersonLinkingPersonPair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGrade:(BOOL)grade;
- (void)writeTo:(id)to;
@end

@implementation PersonLinkingPersonPair

- (void)setHasGrade:(BOOL)grade
{
  if (grade)
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
  dictionaryRepresentation = [(PersonLinkingPersonPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sourcePerson = self->_sourcePerson;
  if (sourcePerson)
  {
    dictionaryRepresentation = [(PersonLinkingPerson *)sourcePerson dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sourcePerson"];
  }

  targetPerson = self->_targetPerson;
  if (targetPerson)
  {
    dictionaryRepresentation2 = [(PersonLinkingPerson *)targetPerson dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"targetPerson"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_grade];
    [dictionary setObject:v10 forKey:@"grade"];

    has = self->_has;
  }

  if (has)
  {
    *&v4 = self->_confidence;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v11 forKey:@"confidence"];
  }

  reason = self->_reason;
  if (reason)
  {
    [dictionary setObject:reason forKey:@"reason"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sourcePerson)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_targetPerson)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    grade = self->_grade;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sourcePerson)
  {
    [toCopy setSourcePerson:?];
    toCopy = v6;
  }

  if (self->_targetPerson)
  {
    [v6 setTargetPerson:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_grade;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = LODWORD(self->_confidence);
    *(toCopy + 44) |= 1u;
  }

  if (self->_reason)
  {
    [v6 setReason:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PersonLinkingPerson *)self->_sourcePerson copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(PersonLinkingPerson *)self->_targetPerson copyWithZone:zone];
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

  v11 = [(NSString *)self->_reason copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  sourcePerson = self->_sourcePerson;
  if (sourcePerson | *(equalCopy + 3))
  {
    if (![(PersonLinkingPerson *)sourcePerson isEqual:?])
    {
      goto LABEL_20;
    }
  }

  targetPerson = self->_targetPerson;
  if (targetPerson | *(equalCopy + 4))
  {
    if (![(PersonLinkingPerson *)targetPerson isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v7 = *(equalCopy + 44);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 44) & 2) == 0)
  {
    goto LABEL_20;
  }

  v8 = *(equalCopy + 40);
  if (self->_grade)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_confidence != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_20;
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sourcePerson = self->_sourcePerson;
  v6 = *(fromCopy + 3);
  v10 = fromCopy;
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

  fromCopy = v10;
LABEL_7:
  targetPerson = self->_targetPerson;
  v8 = *(fromCopy + 4);
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

  fromCopy = v10;
LABEL_13:
  v9 = *(fromCopy + 44);
  if ((v9 & 2) != 0)
  {
    self->_grade = *(fromCopy + 40);
    *&self->_has |= 2u;
    v9 = *(fromCopy + 44);
  }

  if (v9)
  {
    self->_confidence = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    targetPerson = [(PersonLinkingPersonPair *)self setReason:?];
    fromCopy = v10;
  }

  MEMORY[0x1EEE66BB8](targetPerson, fromCopy);
}

@end