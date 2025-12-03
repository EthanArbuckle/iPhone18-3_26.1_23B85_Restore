@interface BMPBUserProofingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserProofingEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserProofingEvent;
  v4 = [(BMPBUserProofingEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBUserProofingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  age = self->_age;
  if (age)
  {
    [dictionary setObject:age forKey:@"age"];
  }

  gender = self->_gender;
  if (gender)
  {
    [dictionary setObject:gender forKey:@"gender"];
  }

  skinTone = self->_skinTone;
  if (skinTone)
  {
    [dictionary setObject:skinTone forKey:@"skinTone"];
  }

  ethnicity = self->_ethnicity;
  if (ethnicity)
  {
    [dictionary setObject:ethnicity forKey:@"ethnicity"];
  }

  deviceLanguage = self->_deviceLanguage;
  if (deviceLanguage)
  {
    [dictionary setObject:deviceLanguage forKey:@"deviceLanguage"];
  }

  proofingDecision = self->_proofingDecision;
  if (proofingDecision)
  {
    [dictionary setObject:proofingDecision forKey:@"proofingDecision"];
  }

  issuer = self->_issuer;
  if (issuer)
  {
    [dictionary setObject:issuer forKey:@"issuer"];
  }

  livenessAssessment = self->_livenessAssessment;
  if (livenessAssessment)
  {
    [dictionary setObject:livenessAssessment forKey:@"livenessAssessment"];
  }

  gestureAssessment = self->_gestureAssessment;
  if (gestureAssessment)
  {
    [dictionary setObject:gestureAssessment forKey:@"gestureAssessment"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_age)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_gender)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_skinTone)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_ethnicity)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deviceLanguage)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_proofingDecision)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_livenessAssessment)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_gestureAssessment)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 88) |= 1u;
  }

  v5 = toCopy;
  if (self->_age)
  {
    [toCopy setAge:?];
    toCopy = v5;
  }

  if (self->_gender)
  {
    [v5 setGender:?];
    toCopy = v5;
  }

  if (self->_skinTone)
  {
    [v5 setSkinTone:?];
    toCopy = v5;
  }

  if (self->_ethnicity)
  {
    [v5 setEthnicity:?];
    toCopy = v5;
  }

  if (self->_deviceLanguage)
  {
    [v5 setDeviceLanguage:?];
    toCopy = v5;
  }

  if (self->_proofingDecision)
  {
    [v5 setProofingDecision:?];
    toCopy = v5;
  }

  if (self->_issuer)
  {
    [v5 setIssuer:?];
    toCopy = v5;
  }

  if (self->_livenessAssessment)
  {
    [v5 setLivenessAssessment:?];
    toCopy = v5;
  }

  if (self->_gestureAssessment)
  {
    [v5 setGestureAssessment:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 88) |= 1u;
  }

  v7 = [(NSString *)self->_age copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_gender copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_skinTone copyWithZone:zone];
  v12 = v6[10];
  v6[10] = v11;

  v13 = [(NSString *)self->_ethnicity copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_deviceLanguage copyWithZone:zone];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(NSString *)self->_proofingDecision copyWithZone:zone];
  v18 = v6[9];
  v6[9] = v17;

  v19 = [(NSString *)self->_issuer copyWithZone:zone];
  v20 = v6[7];
  v6[7] = v19;

  v21 = [(NSString *)self->_livenessAssessment copyWithZone:zone];
  v22 = v6[8];
  v6[8] = v21;

  v23 = [(NSString *)self->_gestureAssessment copyWithZone:zone];
  v24 = v6[6];
  v6[6] = v23;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(equalCopy + 88);
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  age = self->_age;
  if (age | *(equalCopy + 2) && ![(NSString *)age isEqual:?])
  {
    goto LABEL_25;
  }

  gender = self->_gender;
  if (gender | *(equalCopy + 5))
  {
    if (![(NSString *)gender isEqual:?])
    {
      goto LABEL_25;
    }
  }

  skinTone = self->_skinTone;
  if (skinTone | *(equalCopy + 10))
  {
    if (![(NSString *)skinTone isEqual:?])
    {
      goto LABEL_25;
    }
  }

  ethnicity = self->_ethnicity;
  if (ethnicity | *(equalCopy + 4))
  {
    if (![(NSString *)ethnicity isEqual:?])
    {
      goto LABEL_25;
    }
  }

  deviceLanguage = self->_deviceLanguage;
  if (deviceLanguage | *(equalCopy + 3))
  {
    if (![(NSString *)deviceLanguage isEqual:?])
    {
      goto LABEL_25;
    }
  }

  proofingDecision = self->_proofingDecision;
  if (proofingDecision | *(equalCopy + 9))
  {
    if (![(NSString *)proofingDecision isEqual:?])
    {
      goto LABEL_25;
    }
  }

  issuer = self->_issuer;
  if (issuer | *(equalCopy + 7))
  {
    if (![(NSString *)issuer isEqual:?])
    {
      goto LABEL_25;
    }
  }

  livenessAssessment = self->_livenessAssessment;
  if (livenessAssessment | *(equalCopy + 8))
  {
    if (![(NSString *)livenessAssessment isEqual:?])
    {
      goto LABEL_25;
    }
  }

  gestureAssessment = self->_gestureAssessment;
  if (gestureAssessment | *(equalCopy + 6))
  {
    v15 = [(NSString *)gestureAssessment isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_26:

  return v15;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_age hash]^ v5;
  v10 = [(NSString *)self->_gender hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_skinTone hash];
  v12 = [(NSString *)self->_ethnicity hash];
  v13 = v12 ^ [(NSString *)self->_deviceLanguage hash];
  v14 = v11 ^ v13 ^ [(NSString *)self->_proofingDecision hash];
  v15 = [(NSString *)self->_issuer hash];
  v16 = v15 ^ [(NSString *)self->_livenessAssessment hash];
  return v14 ^ v16 ^ [(NSString *)self->_gestureAssessment hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[11])
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BMPBUserProofingEvent *)self setAge:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBUserProofingEvent *)self setGender:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 10))
  {
    [(BMPBUserProofingEvent *)self setSkinTone:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBUserProofingEvent *)self setEthnicity:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBUserProofingEvent *)self setDeviceLanguage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(BMPBUserProofingEvent *)self setProofingDecision:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBUserProofingEvent *)self setIssuer:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(BMPBUserProofingEvent *)self setLivenessAssessment:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBUserProofingEvent *)self setGestureAssessment:?];
    fromCopy = v5;
  }
}

@end