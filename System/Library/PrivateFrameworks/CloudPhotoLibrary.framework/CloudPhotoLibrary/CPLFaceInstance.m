@interface CPLFaceInstance
- (BOOL)isEqual:(id)a3;
- (BOOL)isTorsoOnly;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pointerDescription;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)_setFaceStateBit:(unsigned int)a3 fromBoolValue:(BOOL)a4;
- (void)addRejectedPersonIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBodyCenterY:(BOOL)a3;
- (void)setHasBodyHeight:(BOOL)a3;
- (void)setHasBodyWidth:(BOOL)a3;
- (void)setHasCenterX:(BOOL)a3;
- (void)setHasCenterY:(BOOL)a3;
- (void)setHasDetectionType:(BOOL)a3;
- (void)setHasFaceState:(BOOL)a3;
- (void)setHasNameSource:(BOOL)a3;
- (void)setHasSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLFaceInstance

- (BOOL)isTorsoOnly
{
  [(CPLFaceInstance *)self centerX];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(CPLFaceInstance *)self bodyCenterX];
  return v4 != 0.0;
}

- (void)_setFaceStateBit:(unsigned int)a3 fromBoolValue:(BOOL)a4
{
  v4 = a4;
  v7 = [(CPLFaceInstance *)self faceState];
  if (v4)
  {
    v8 = v7 | a3;
  }

  else
  {
    v8 = v7 & ~a3;
  }

  [(CPLFaceInstance *)self setFaceState:v8];
}

- (id)pointerDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = objc_opt_class();
        v15 = v19;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unexpected class type: %@", buf, 0xCu);
      }
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFaceAnalysisReference.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:31 description:{@"Unexpected class type: %@", objc_opt_class()}];

    abort();
  }

  if (![(CPLFaceInstance *)self isEqual:v5])
  {
    personIdentifier = self->_personIdentifier;
    if (!personIdentifier)
    {
      v11 = [v5 personIdentifier];

      if (!v11)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size];
        v12 = MEMORY[0x1E696AD98];
        [v5 size];
        v13 = [v12 numberWithDouble:?];
        v6 = [v8 compare:v13];

        goto LABEL_6;
      }

      personIdentifier = self->_personIdentifier;
      if (!personIdentifier)
      {
        v6 = -1;
        goto LABEL_7;
      }
    }

    v8 = [v5 personIdentifier];
    v6 = [(NSString *)personIdentifier compare:v8];
LABEL_6:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 10))
  {
    [(CPLFaceInstance *)self setPersonIdentifier:?];
  }

  v5 = *(v4 + 48);
  if ((v5 & 0x10) != 0)
  {
    self->_centerX = *(v4 + 5);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 48);
    if ((v5 & 0x20) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  self->_centerY = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  self->_size = *(v4 + 7);
  *&self->_has |= 0x40u;
  if ((*(v4 + 48) & 0x100) != 0)
  {
LABEL_7:
    self->_faceState = *(v4 + 17);
    *&self->_has |= 0x100u;
  }

LABEL_8:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 11);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CPLFaceInstance *)self addRejectedPersonIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v4 + 48);
  if ((v11 & 0x200) != 0)
  {
    self->_nameSource = *(v4 + 18);
    *&self->_has |= 0x200u;
    v11 = *(v4 + 48);
    if ((v11 & 0x80) == 0)
    {
LABEL_17:
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  self->_detectionType = *(v4 + 16);
  *&self->_has |= 0x80u;
  v11 = *(v4 + 48);
  if ((v11 & 1) == 0)
  {
LABEL_18:
    if ((v11 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_bodyCenterX = *(v4 + 1);
  *&self->_has |= 1u;
  v11 = *(v4 + 48);
  if ((v11 & 2) == 0)
  {
LABEL_19:
    if ((v11 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    self->_bodyWidth = *(v4 + 4);
    *&self->_has |= 8u;
    if ((*(v4 + 48) & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  self->_bodyCenterY = *(v4 + 2);
  *&self->_has |= 2u;
  v11 = *(v4 + 48);
  if ((v11 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v11 & 4) != 0)
  {
LABEL_21:
    self->_bodyHeight = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_22:

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_personIdentifier hash];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    centerX = self->_centerX;
    if (centerX < 0.0)
    {
      centerX = -centerX;
    }

    *v4.i64 = floor(centerX + 0.5);
    v9 = (centerX - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v7 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((has & 0x20) != 0)
  {
    centerY = self->_centerY;
    if (centerY < 0.0)
    {
      centerY = -centerY;
    }

    *v4.i64 = floor(centerY + 0.5);
    v13 = (centerY - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v14), v5, v4);
    v11 = 2654435761u * *v4.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((has & 0x40) != 0)
  {
    size = self->_size;
    if (size < 0.0)
    {
      size = -size;
    }

    *v4.i64 = floor(size + 0.5);
    v17 = (size - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v5, v4).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v19 = 2654435761 * self->_faceState;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSMutableArray *)self->_rejectedPersonIdentifiers hash];
  v23 = self->_has;
  if ((v23 & 0x200) == 0)
  {
    v24 = 0;
    if ((v23 & 0x80) != 0)
    {
      goto LABEL_30;
    }

LABEL_36:
    v25 = 0;
    if (v23)
    {
      goto LABEL_31;
    }

LABEL_37:
    v29 = 0;
    goto LABEL_38;
  }

  v24 = 2654435761 * self->_nameSource;
  if ((v23 & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  v25 = 2654435761 * self->_detectionType;
  if ((v23 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  bodyCenterX = self->_bodyCenterX;
  if (bodyCenterX < 0.0)
  {
    bodyCenterX = -bodyCenterX;
  }

  *v21.i64 = floor(bodyCenterX + 0.5);
  v27 = (bodyCenterX - *v21.i64) * 1.84467441e19;
  *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v21 = vbslq_s8(vnegq_f64(v28), v22, v21);
  v29 = 2654435761u * *v21.i64;
  if (v27 >= 0.0)
  {
    if (v27 > 0.0)
    {
      v29 += v27;
    }
  }

  else
  {
    v29 -= fabs(v27);
  }

LABEL_38:
  if ((v23 & 2) != 0)
  {
    bodyCenterY = self->_bodyCenterY;
    if (bodyCenterY < 0.0)
    {
      bodyCenterY = -bodyCenterY;
    }

    *v21.i64 = floor(bodyCenterY + 0.5);
    v32 = (bodyCenterY - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v21 = vbslq_s8(vnegq_f64(v33), v22, v21);
    v30 = 2654435761u * *v21.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((v23 & 8) != 0)
  {
    bodyWidth = self->_bodyWidth;
    if (bodyWidth < 0.0)
    {
      bodyWidth = -bodyWidth;
    }

    *v21.i64 = floor(bodyWidth + 0.5);
    v36 = (bodyWidth - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v21 = vbslq_s8(vnegq_f64(v37), v22, v21);
    v34 = 2654435761u * *v21.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if ((v23 & 4) != 0)
  {
    bodyHeight = self->_bodyHeight;
    if (bodyHeight < 0.0)
    {
      bodyHeight = -bodyHeight;
    }

    *v21.i64 = floor(bodyHeight + 0.5);
    v40 = (bodyHeight - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v38 = 2654435761u * *vbslq_s8(vnegq_f64(v41), v22, v21).i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  return v7 ^ v3 ^ v11 ^ v15 ^ v19 ^ v20 ^ v24 ^ v25 ^ v29 ^ v30 ^ v34 ^ v38;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  personIdentifier = self->_personIdentifier;
  if (personIdentifier | *(v4 + 10))
  {
    if (![(NSString *)personIdentifier isEqual:?])
    {
      goto LABEL_57;
    }
  }

  has = self->_has;
  v7 = *(v4 + 48);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_centerX != *(v4 + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_centerY != *(v4 + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_size != *(v4 + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 48) & 0x100) == 0 || self->_faceState != *(v4 + 17))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 48) & 0x100) != 0)
  {
    goto LABEL_57;
  }

  rejectedPersonIdentifiers = self->_rejectedPersonIdentifiers;
  if (rejectedPersonIdentifiers | *(v4 + 11))
  {
    if (![(NSMutableArray *)rejectedPersonIdentifiers isEqual:?])
    {
LABEL_57:
      v9 = 0;
      goto LABEL_58;
    }

    has = self->_has;
    v7 = *(v4 + 48);
  }

  if ((has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_nameSource != *(v4 + 18))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_detectionType != *(v4 + 16))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_bodyCenterX != *(v4 + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v7)
  {
    goto LABEL_57;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_bodyCenterY != *(v4 + 2))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_bodyWidth != *(v4 + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_bodyHeight != *(v4 + 3))
    {
      goto LABEL_57;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v7 & 4) == 0;
  }

LABEL_58:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_personIdentifier copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_centerX;
    *(v5 + 96) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_centerY;
  *(v5 + 96) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(v5 + 56) = self->_size;
  *(v5 + 96) |= 0x40u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    *(v5 + 68) = self->_faceState;
    *(v5 + 96) |= 0x100u;
  }

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_rejectedPersonIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v5 addRejectedPersonIdentifiers:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 0x200) != 0)
  {
    *(v5 + 72) = self->_nameSource;
    *(v5 + 96) |= 0x200u;
    v15 = self->_has;
    if ((v15 & 0x80) == 0)
    {
LABEL_15:
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 64) = self->_detectionType;
  *(v5 + 96) |= 0x80u;
  v15 = self->_has;
  if ((v15 & 1) == 0)
  {
LABEL_16:
    if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 8) = self->_bodyCenterX;
  *(v5 + 96) |= 1u;
  v15 = self->_has;
  if ((v15 & 2) == 0)
  {
LABEL_17:
    if ((v15 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    *(v5 + 32) = self->_bodyWidth;
    *(v5 + 96) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v5 + 16) = self->_bodyCenterY;
  *(v5 + 96) |= 2u;
  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v15 & 4) != 0)
  {
LABEL_19:
    *(v5 + 24) = self->_bodyHeight;
    *(v5 + 96) |= 4u;
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_personIdentifier)
  {
    [v4 setPersonIdentifier:?];
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 5) = *&self->_centerX;
    *(v4 + 48) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

LABEL_24:
      *(v4 + 7) = *&self->_size;
      *(v4 + 48) |= 0x40u;
      if ((*&self->_has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 6) = *&self->_centerY;
  *(v4 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  if ((has & 0x100) != 0)
  {
LABEL_7:
    *(v4 + 17) = self->_faceState;
    *(v4 + 48) |= 0x100u;
  }

LABEL_8:
  if ([(CPLFaceInstance *)self rejectedPersonIdentifiersCount])
  {
    [v11 clearRejectedPersonIdentifiers];
    v6 = [(CPLFaceInstance *)self rejectedPersonIdentifiersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CPLFaceInstance *)self rejectedPersonIdentifiersAtIndex:i];
        [v11 addRejectedPersonIdentifiers:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    *(v11 + 18) = self->_nameSource;
    *(v11 + 48) |= 0x200u;
    v10 = self->_has;
    if ((v10 & 0x80) == 0)
    {
LABEL_14:
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  *(v11 + 16) = self->_detectionType;
  *(v11 + 48) |= 0x80u;
  v10 = self->_has;
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ((v10 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v11 + 1) = *&self->_bodyCenterX;
  *(v11 + 48) |= 1u;
  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v11 + 2) = *&self->_bodyCenterY;
  *(v11 + 48) |= 2u;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_17:
    if ((v10 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_30:
  *(v11 + 4) = *&self->_bodyWidth;
  *(v11 + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(v11 + 3) = *&self->_bodyHeight;
    *(v11 + 48) |= 4u;
  }

LABEL_19:
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_personIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    centerX = self->_centerX;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  centerY = self->_centerY;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  size = self->_size;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    faceState = self->_faceState;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_rejectedPersonIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 0x200) != 0)
  {
    nameSource = self->_nameSource;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_17:
      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  detectionType = self->_detectionType;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_18:
    if ((v13 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  bodyCenterX = self->_bodyCenterX;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((v13 & 2) == 0)
  {
LABEL_19:
    if ((v13 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    bodyWidth = self->_bodyWidth;
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  bodyCenterY = self->_bodyCenterY;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v13 & 4) != 0)
  {
LABEL_21:
    bodyHeight = self->_bodyHeight;
    PBDataWriterWriteDoubleField();
  }

LABEL_22:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  personIdentifier = self->_personIdentifier;
  if (personIdentifier)
  {
    [v3 setObject:personIdentifier forKey:@"personIdentifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centerX];
    [v4 setObject:v12 forKey:@"centerX"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centerY];
  [v4 setObject:v13 forKey:@"centerY"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size];
  [v4 setObject:v14 forKey:@"size"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceState];
    [v4 setObject:v7 forKey:@"faceState"];
  }

LABEL_8:
  rejectedPersonIdentifiers = self->_rejectedPersonIdentifiers;
  if (rejectedPersonIdentifiers)
  {
    [v4 setObject:rejectedPersonIdentifiers forKey:@"rejectedPersonIdentifiers"];
  }

  v9 = self->_has;
  if ((v9 & 0x200) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nameSource];
    [v4 setObject:v15 forKey:@"nameSource"];

    v9 = self->_has;
    if ((v9 & 0x80) == 0)
    {
LABEL_12:
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_detectionType];
  [v4 setObject:v16 forKey:@"detectionType"];

  v9 = self->_has;
  if ((v9 & 1) == 0)
  {
LABEL_13:
    if ((v9 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyCenterX];
  [v4 setObject:v17 forKey:@"bodyCenterX"];

  v9 = self->_has;
  if ((v9 & 2) == 0)
  {
LABEL_14:
    if ((v9 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyCenterY];
  [v4 setObject:v18 forKey:@"bodyCenterY"];

  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_15:
    if ((v9 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyWidth];
  [v4 setObject:v19 forKey:@"bodyWidth"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyHeight];
    [v4 setObject:v10 forKey:@"bodyHeight"];
  }

LABEL_17:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLFaceInstance;
  v4 = [(CPLFaceInstance *)&v8 description];
  v5 = [(CPLFaceInstance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasBodyHeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasBodyWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBodyCenterY:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDetectionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNameSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)addRejectedPersonIdentifiers:(id)a3
{
  v4 = a3;
  rejectedPersonIdentifiers = self->_rejectedPersonIdentifiers;
  v8 = v4;
  if (!rejectedPersonIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rejectedPersonIdentifiers;
    self->_rejectedPersonIdentifiers = v6;

    v4 = v8;
    rejectedPersonIdentifiers = self->_rejectedPersonIdentifiers;
  }

  [(NSMutableArray *)rejectedPersonIdentifiers addObject:v4];
}

- (void)setHasFaceState:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCenterY:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCenterX:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

@end