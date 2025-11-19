@interface BMPBUserProofingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBUserProofingEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserProofingEvent;
  v4 = [(BMPBUserProofingEvent *)&v8 description];
  v5 = [(BMPBUserProofingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  age = self->_age;
  if (age)
  {
    [v3 setObject:age forKey:@"age"];
  }

  gender = self->_gender;
  if (gender)
  {
    [v3 setObject:gender forKey:@"gender"];
  }

  skinTone = self->_skinTone;
  if (skinTone)
  {
    [v3 setObject:skinTone forKey:@"skinTone"];
  }

  ethnicity = self->_ethnicity;
  if (ethnicity)
  {
    [v3 setObject:ethnicity forKey:@"ethnicity"];
  }

  deviceLanguage = self->_deviceLanguage;
  if (deviceLanguage)
  {
    [v3 setObject:deviceLanguage forKey:@"deviceLanguage"];
  }

  proofingDecision = self->_proofingDecision;
  if (proofingDecision)
  {
    [v3 setObject:proofingDecision forKey:@"proofingDecision"];
  }

  issuer = self->_issuer;
  if (issuer)
  {
    [v3 setObject:issuer forKey:@"issuer"];
  }

  livenessAssessment = self->_livenessAssessment;
  if (livenessAssessment)
  {
    [v3 setObject:livenessAssessment forKey:@"livenessAssessment"];
  }

  gestureAssessment = self->_gestureAssessment;
  if (gestureAssessment)
  {
    [v3 setObject:gestureAssessment forKey:@"gestureAssessment"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_age)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_gender)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_skinTone)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_ethnicity)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceLanguage)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_proofingDecision)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_livenessAssessment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_gestureAssessment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 88) |= 1u;
  }

  v5 = v4;
  if (self->_age)
  {
    [v4 setAge:?];
    v4 = v5;
  }

  if (self->_gender)
  {
    [v5 setGender:?];
    v4 = v5;
  }

  if (self->_skinTone)
  {
    [v5 setSkinTone:?];
    v4 = v5;
  }

  if (self->_ethnicity)
  {
    [v5 setEthnicity:?];
    v4 = v5;
  }

  if (self->_deviceLanguage)
  {
    [v5 setDeviceLanguage:?];
    v4 = v5;
  }

  if (self->_proofingDecision)
  {
    [v5 setProofingDecision:?];
    v4 = v5;
  }

  if (self->_issuer)
  {
    [v5 setIssuer:?];
    v4 = v5;
  }

  if (self->_livenessAssessment)
  {
    [v5 setLivenessAssessment:?];
    v4 = v5;
  }

  if (self->_gestureAssessment)
  {
    [v5 setGestureAssessment:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 88) |= 1u;
  }

  v7 = [(NSString *)self->_age copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_gender copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_skinTone copyWithZone:a3];
  v12 = v6[10];
  v6[10] = v11;

  v13 = [(NSString *)self->_ethnicity copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_deviceLanguage copyWithZone:a3];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(NSString *)self->_proofingDecision copyWithZone:a3];
  v18 = v6[9];
  v6[9] = v17;

  v19 = [(NSString *)self->_issuer copyWithZone:a3];
  v20 = v6[7];
  v6[7] = v19;

  v21 = [(NSString *)self->_livenessAssessment copyWithZone:a3];
  v22 = v6[8];
  v6[8] = v21;

  v23 = [(NSString *)self->_gestureAssessment copyWithZone:a3];
  v24 = v6[6];
  v6[6] = v23;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 88);
  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  age = self->_age;
  if (age | *(v4 + 2) && ![(NSString *)age isEqual:?])
  {
    goto LABEL_25;
  }

  gender = self->_gender;
  if (gender | *(v4 + 5))
  {
    if (![(NSString *)gender isEqual:?])
    {
      goto LABEL_25;
    }
  }

  skinTone = self->_skinTone;
  if (skinTone | *(v4 + 10))
  {
    if (![(NSString *)skinTone isEqual:?])
    {
      goto LABEL_25;
    }
  }

  ethnicity = self->_ethnicity;
  if (ethnicity | *(v4 + 4))
  {
    if (![(NSString *)ethnicity isEqual:?])
    {
      goto LABEL_25;
    }
  }

  deviceLanguage = self->_deviceLanguage;
  if (deviceLanguage | *(v4 + 3))
  {
    if (![(NSString *)deviceLanguage isEqual:?])
    {
      goto LABEL_25;
    }
  }

  proofingDecision = self->_proofingDecision;
  if (proofingDecision | *(v4 + 9))
  {
    if (![(NSString *)proofingDecision isEqual:?])
    {
      goto LABEL_25;
    }
  }

  issuer = self->_issuer;
  if (issuer | *(v4 + 7))
  {
    if (![(NSString *)issuer isEqual:?])
    {
      goto LABEL_25;
    }
  }

  livenessAssessment = self->_livenessAssessment;
  if (livenessAssessment | *(v4 + 8))
  {
    if (![(NSString *)livenessAssessment isEqual:?])
    {
      goto LABEL_25;
    }
  }

  gestureAssessment = self->_gestureAssessment;
  if (gestureAssessment | *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[11])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(BMPBUserProofingEvent *)self setAge:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(BMPBUserProofingEvent *)self setGender:?];
    v4 = v5;
  }

  if (*(v4 + 10))
  {
    [(BMPBUserProofingEvent *)self setSkinTone:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BMPBUserProofingEvent *)self setEthnicity:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BMPBUserProofingEvent *)self setDeviceLanguage:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(BMPBUserProofingEvent *)self setProofingDecision:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(BMPBUserProofingEvent *)self setIssuer:?];
    v4 = v5;
  }

  if (*(v4 + 8))
  {
    [(BMPBUserProofingEvent *)self setLivenessAssessment:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(BMPBUserProofingEvent *)self setGestureAssessment:?];
    v4 = v5;
  }
}

@end