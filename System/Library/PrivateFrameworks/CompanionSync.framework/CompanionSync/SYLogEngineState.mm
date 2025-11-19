@interface SYLogEngineState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInSession:(BOOL)a3;
- (void)setHasSuspended:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogEngineState

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Messaging"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FileTransfer"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DirectConnection"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSuspended:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInSession:(BOOL)a3
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
  v8.super_class = SYLogEngineState;
  v4 = [(SYLogEngineState *)&v8 description];
  v5 = [(SYLogEngineState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  if (dictionaryRepresentation_onceToken != -1)
  {
    [SYLogEngineState dictionaryRepresentation];
  }

  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_type - 1;
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E86CA368[v4];
  }

  [v3 setObject:v5 forKey:@"type"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_suspended];
    [v3 setObject:v19 forKey:@"suspended"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_inSession];
  [v3 setObject:v20 forKey:@"inSession"];

  if (*&self->_has)
  {
LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_buffersSessions];
    [v3 setObject:v7 forKey:@"buffersSessions"];
  }

LABEL_10:
  if (self->_queueSuspendedDate)
  {
    v8 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v8 forKey:@"queueSuspendedDate"];
  }

  if (self->_queueResumedDate)
  {
    v9 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v9 forKey:@"queueResumedDate"];
  }

  if (self->_handledRequestID >= 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithShort:?];
    [v3 setObject:v10 forKey:@"handledRequestID"];
  }

  if (self->_requestStartedDate)
  {
    v11 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v11 forKey:@"requestStarted"];
  }

  if (self->_requestEndedDate)
  {
    v12 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v12 forKey:@"requestEnded"];
  }

  if (self->_handledResponseID >= 1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithShort:?];
    [v3 setObject:v13 forKey:@"handledResponseID"];
  }

  if (self->_responseStartedDate)
  {
    v14 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v14 forKey:@"responseStarted"];
  }

  if (self->_responseEndedDate)
  {
    v15 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v15 forKey:@"responseEnded"];
  }

  if (self->_oobDataStartedDate)
  {
    v16 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v16 forKey:@"oobDataStartedDate"];
  }

  if (self->_oobDataEndedDate)
  {
    v17 = [dictionaryRepresentation___formatter stringFromDate:?];
    [v3 setObject:v17 forKey:@"oobDataEndedDate"];
  }

  return v3;
}

uint64_t __44__SYLogEngineState_dictionaryRepresentation__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dictionaryRepresentation___formatter;
  dictionaryRepresentation___formatter = v0;

  v2 = dictionaryRepresentation___formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS ZZZZZ"];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v10 = v4;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    suspended = self->_suspended;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  inSession = self->_inSession;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_4:
    buffersSessions = self->_buffersSessions;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_type;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 14) = self->_suspended;
    *(a3 + 96) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 13) = self->_inSession;
  *(a3 + 96) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(a3 + 12) = self->_buffersSessions;
    *(a3 + 96) |= 1u;
  }

LABEL_5:
  queueSuspendedDate = self->_queueSuspendedDate;
  v22 = a3;
  v6 = [(NSDate *)queueSuspendedDate copy];
  v7 = v22[2];
  v22[2] = v6;

  v8 = [(NSDate *)self->_queueResumedDate copy];
  v9 = v22[3];
  v22[3] = v8;

  *(v22 + 16) = self->_handledRequestID;
  v10 = [(NSDate *)self->_requestStartedDate copy];
  v11 = v22[5];
  v22[5] = v10;

  v12 = [(NSDate *)self->_requestEndedDate copy];
  v13 = v22[6];
  v22[6] = v12;

  *(v22 + 28) = self->_handledResponseID;
  v14 = [(NSDate *)self->_responseStartedDate copy];
  v15 = v22[8];
  v22[8] = v14;

  v16 = [(NSDate *)self->_responseEndedDate copy];
  v17 = v22[9];
  v22[9] = v16;

  v18 = [(NSDate *)self->_oobDataStartedDate copy];
  v19 = v22[10];
  v22[10] = v18;

  v20 = [(NSDate *)self->_oobDataEndedDate copy];
  v21 = v22[11];
  v22[11] = v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  *(v5 + 8) = self->_type;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 13) = self->_inSession;
    *(v5 + 96) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 14) = self->_suspended;
  *(v5 + 96) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 12) = self->_buffersSessions;
    *(v5 + 96) |= 1u;
  }

LABEL_5:
  v8 = [(NSDate *)self->_queueSuspendedDate copyWithZone:a3];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSDate *)self->_queueResumedDate copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  *(v6 + 32) = self->_handledRequestID;
  v12 = [(NSDate *)self->_requestStartedDate copyWithZone:a3];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  v14 = [(NSDate *)self->_requestEndedDate copyWithZone:a3];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  *(v6 + 56) = self->_handledResponseID;
  v16 = [(NSDate *)self->_responseStartedDate copyWithZone:a3];
  v17 = *(v6 + 64);
  *(v6 + 64) = v16;

  v18 = [(NSDate *)self->_responseEndedDate copyWithZone:a3];
  v19 = *(v6 + 72);
  *(v6 + 72) = v18;

  v20 = [(NSDate *)self->_oobDataStartedDate copyWithZone:a3];
  v21 = *(v6 + 80);
  *(v6 + 80) = v20;

  v22 = [(NSDate *)self->_oobDataEndedDate copyWithZone:a3];
  v23 = *(v6 + 88);
  *(v6 + 88) = v22;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_type != *(v4 + 2))
  {
    goto LABEL_42;
  }

  v5 = *(v4 + 96);
  if ((*&self->_has & 4) != 0)
  {
    if ((v4[48] & 4) == 0)
    {
      goto LABEL_42;
    }

    v15 = *(v4 + 14);
    if (self->_suspended)
    {
      if ((v4[7] & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v4[7])
    {
      goto LABEL_42;
    }
  }

  else if ((v4[48] & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[48] & 2) == 0)
    {
      goto LABEL_42;
    }

    v16 = *(v4 + 13);
    if (self->_inSession)
    {
      if ((*(v4 + 13) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (*(v4 + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[48] & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v4[48] & 1) == 0)
  {
    goto LABEL_42;
  }

  v5 = *(v4 + 12);
  if (!self->_buffersSessions)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    v14 = 0;
    goto LABEL_43;
  }

  if ((v4[6] & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  queueSuspendedDate = self->_queueSuspendedDate;
  if (queueSuspendedDate | *(v4 + 2) && ![(NSDate *)queueSuspendedDate isEqual:?])
  {
    goto LABEL_42;
  }

  queueResumedDate = self->_queueResumedDate;
  if (queueResumedDate | *(v4 + 3))
  {
    if (![(NSDate *)queueResumedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  if (self->_handledRequestID != v4[16])
  {
    goto LABEL_42;
  }

  requestStartedDate = self->_requestStartedDate;
  if (requestStartedDate | *(v4 + 5))
  {
    if (![(NSDate *)requestStartedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  requestEndedDate = self->_requestEndedDate;
  if (requestEndedDate | *(v4 + 6))
  {
    if (![(NSDate *)requestEndedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  if (self->_handledResponseID != v4[28])
  {
    goto LABEL_42;
  }

  responseStartedDate = self->_responseStartedDate;
  if (responseStartedDate | *(v4 + 8))
  {
    if (![(NSDate *)responseStartedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  responseEndedDate = self->_responseEndedDate;
  if (responseEndedDate | *(v4 + 9))
  {
    if (![(NSDate *)responseEndedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  oobDataStartedDate = self->_oobDataStartedDate;
  if (oobDataStartedDate | *(v4 + 10))
  {
    if (![(NSDate *)oobDataStartedDate isEqual:?])
    {
      goto LABEL_42;
    }
  }

  oobDataEndedDate = self->_oobDataEndedDate;
  if (oobDataEndedDate | *(v4 + 11))
  {
    v14 = [(NSDate *)oobDataEndedDate isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_43:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v75 = 2654435761 * self->_suspended;
  }

  else
  {
    v75 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v74 = 2654435761 * self->_inSession;
  }

  else
  {
    v74 = 0;
  }

  type = self->_type;
  if (*&self->_has)
  {
    v72 = 2654435761 * self->_buffersSessions;
  }

  else
  {
    v72 = 0;
  }

  [(NSDate *)self->_queueSuspendedDate timeIntervalSince1970];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  *v4.i64 = floor(v3 + 0.5);
  v6 = (v3 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v76 = vnegq_f64(v7);
  v4.i64[0] = vbslq_s8(v76, v5, v4).i64[0];
  v8 = 2654435761u * *v4.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v4.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 >= 0.0)
  {
    v10 = v9;
  }

  v71 = v10;
  [(NSDate *)self->_queueResumedDate timeIntervalSince1970];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  *v12.i64 = floor(v11 + 0.5);
  v14 = (v11 - *v12.i64) * 1.84467441e19;
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v15 = 2654435761u * *vbslq_s8(v76, v13, v12).i64;
  v16 = v15 + v14;
  v17 = fabs(v14);
  if (v14 <= 0.0)
  {
    v16 = v15;
  }

  v18 = v15 - v17;
  if (v14 < 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  handledRequestID = self->_handledRequestID;
  [(NSDate *)self->_requestStartedDate timeIntervalSince1970];
  if (v21 < 0.0)
  {
    v21 = -v21;
  }

  *v22.i64 = floor(v21 + 0.5);
  v24 = (v21 - *v22.i64) * 1.84467441e19;
  *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
  v22.i64[0] = vbslq_s8(v76, v23, v22).i64[0];
  v25 = 2654435761u * *v22.i64;
  v26 = v25 + v24;
  if (v24 <= 0.0)
  {
    v26 = 2654435761u * *v22.i64;
  }

  v27 = v25 - fabs(v24);
  if (v24 < 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  [(NSDate *)self->_requestEndedDate timeIntervalSince1970];
  if (v29 < 0.0)
  {
    v29 = -v29;
  }

  *v30.i64 = floor(v29 + 0.5);
  v32 = (v29 - *v30.i64) * 1.84467441e19;
  *v31.i64 = *v30.i64 - trunc(*v30.i64 * 5.42101086e-20) * 1.84467441e19;
  v33 = 2654435761u * *vbslq_s8(v76, v31, v30).i64;
  v34 = v33 + v32;
  v35 = fabs(v32);
  if (v32 <= 0.0)
  {
    v34 = v33;
  }

  v36 = v33 - v35;
  if (v32 < 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = v34;
  }

  handledResponseID = self->_handledResponseID;
  [(NSDate *)self->_responseStartedDate timeIntervalSince1970];
  if (v39 < 0.0)
  {
    v39 = -v39;
  }

  *v40.i64 = floor(v39 + 0.5);
  v42 = (v39 - *v40.i64) * 1.84467441e19;
  *v41.i64 = *v40.i64 - trunc(*v40.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.i64[0] = vbslq_s8(v76, v41, v40).i64[0];
  v43 = 2654435761u * *v40.i64;
  v44 = v43 + v42;
  if (v42 <= 0.0)
  {
    v44 = 2654435761u * *v40.i64;
  }

  v45 = v43 - fabs(v42);
  if (v42 < 0.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  [(NSDate *)self->_responseEndedDate timeIntervalSince1970];
  if (v47 < 0.0)
  {
    v47 = -v47;
  }

  *v48.i64 = floor(v47 + 0.5);
  v50 = (v47 - *v48.i64) * 1.84467441e19;
  *v49.i64 = *v48.i64 - trunc(*v48.i64 * 5.42101086e-20) * 1.84467441e19;
  v48.i64[0] = vbslq_s8(v76, v49, v48).i64[0];
  v51 = 2654435761u * *v48.i64;
  v52 = v51 + v50;
  if (v50 <= 0.0)
  {
    v52 = 2654435761u * *v48.i64;
  }

  v53 = v51 - fabs(v50);
  if (v50 < 0.0)
  {
    v54 = v53;
  }

  else
  {
    v54 = v52;
  }

  [(NSDate *)self->_oobDataStartedDate timeIntervalSince1970];
  if (v55 < 0.0)
  {
    v55 = -v55;
  }

  *v56.i64 = floor(v55 + 0.5);
  v58 = (v55 - *v56.i64) * 1.84467441e19;
  *v57.i64 = *v56.i64 - trunc(*v56.i64 * 5.42101086e-20) * 1.84467441e19;
  v56.i64[0] = vbslq_s8(v76, v57, v56).i64[0];
  v59 = 2654435761u * *v56.i64;
  v60 = v59 + v58;
  if (v58 <= 0.0)
  {
    v60 = 2654435761u * *v56.i64;
  }

  v61 = v59 - fabs(v58);
  if (v58 < 0.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = v60;
  }

  [(NSDate *)self->_oobDataEndedDate timeIntervalSince1970];
  if (v63 < 0.0)
  {
    v63 = -v63;
  }

  *v64.i64 = floor(v63 + 0.5);
  v66 = (v63 - *v64.i64) * 1.84467441e19;
  *v65.i64 = *v64.i64 - trunc(*v64.i64 * 5.42101086e-20) * 1.84467441e19;
  v64.i64[0] = vbslq_s8(v76, v65, v64).i64[0];
  v67 = 2654435761u * *v64.i64;
  v68 = v67 + v66;
  if (v66 <= 0.0)
  {
    v68 = 2654435761u * *v64.i64;
  }

  v69 = v67 - fabs(v66);
  if (v66 >= 0.0)
  {
    v69 = v68;
  }

  return v75 ^ v74 ^ v72 ^ (2654435761 * type) ^ v71 ^ v19 ^ (2654435761 * handledRequestID) ^ v28 ^ v37 ^ (2654435761 * handledResponseID) ^ v46 ^ v54 ^ v62 ^ v69;
}

- (void)mergeFrom:(id)a3
{
  self->_type = *(a3 + 2);
  v5 = *(a3 + 96);
  if ((v5 & 4) != 0)
  {
    self->_suspended = *(a3 + 14);
    *&self->_has |= 4u;
    v5 = *(a3 + 96);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 96) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_inSession = *(a3 + 13);
  *&self->_has |= 2u;
  if (*(a3 + 96))
  {
LABEL_4:
    self->_buffersSessions = *(a3 + 12);
    *&self->_has |= 1u;
  }

LABEL_5:
  v6 = *(a3 + 2);
  queueSuspendedDate = self->_queueSuspendedDate;
  self->_queueSuspendedDate = v6;
  v8 = a3;

  objc_storeStrong(&self->_queueResumedDate, *(v8 + 3));
  self->_handledRequestID = *(v8 + 16);
  objc_storeStrong(&self->_requestStartedDate, *(v8 + 5));
  objc_storeStrong(&self->_requestEndedDate, *(v8 + 6));
  self->_handledResponseID = *(v8 + 28);
  objc_storeStrong(&self->_responseStartedDate, *(v8 + 8));
  objc_storeStrong(&self->_responseEndedDate, *(v8 + 9));
  objc_storeStrong(&self->_oobDataStartedDate, *(v8 + 10));
  objc_storeStrong(&self->_oobDataEndedDate, *(v8 + 11));
}

@end