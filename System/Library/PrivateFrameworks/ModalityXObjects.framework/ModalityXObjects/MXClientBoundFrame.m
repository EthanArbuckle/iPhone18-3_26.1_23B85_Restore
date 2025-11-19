@interface MXClientBoundFrame
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPayload:(id)a3;
- (int)payload;
- (unint64_t)hash;
- (void)clearOneofValuesForPayload;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAsrResult:(id)a3;
- (void)setProcessingError:(id)a3;
- (void)setRequestComplete:(id)a3;
- (void)setRequestMitigated:(id)a3;
- (void)setSpeechProfileRebuildNeeded:(id)a3;
- (void)setSpeechProfileResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXClientBoundFrame

- (void)setRequestComplete:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 1;
  requestComplete = self->_requestComplete;
  self->_requestComplete = v4;
}

- (void)setProcessingError:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 2;
  processingError = self->_processingError;
  self->_processingError = v4;
}

- (void)setAsrResult:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 3;
  asrResult = self->_asrResult;
  self->_asrResult = v4;
}

- (void)setSpeechProfileRebuildNeeded:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 4;
  speechProfileRebuildNeeded = self->_speechProfileRebuildNeeded;
  self->_speechProfileRebuildNeeded = v4;
}

- (void)setRequestMitigated:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 5;
  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = v4;
}

- (void)setSpeechProfileResponse:(id)a3
{
  v4 = a3;
  [(MXClientBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 6;
  speechProfileResponse = self->_speechProfileResponse;
  self->_speechProfileResponse = v4;
}

- (int)payload
{
  if (*&self->_has)
  {
    return self->_payload;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPayload:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"request_complete"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"processing_error"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"asr_result"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"speech_profile_rebuild_needed"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"request_mitigated"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"speech_profile_response"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForPayload
{
  *&self->_has &= ~1u;
  self->_payload = 0;
  requestComplete = self->_requestComplete;
  self->_requestComplete = 0;

  processingError = self->_processingError;
  self->_processingError = 0;

  asrResult = self->_asrResult;
  self->_asrResult = 0;

  speechProfileRebuildNeeded = self->_speechProfileRebuildNeeded;
  self->_speechProfileRebuildNeeded = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  speechProfileResponse = self->_speechProfileResponse;
  self->_speechProfileResponse = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXClientBoundFrame;
  v4 = [(MXClientBoundFrame *)&v8 description];
  v5 = [(MXClientBoundFrame *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestComplete = self->_requestComplete;
  if (requestComplete)
  {
    v5 = [(MXRequestComplete *)requestComplete dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_complete"];
  }

  processingError = self->_processingError;
  if (processingError)
  {
    v7 = [(MXProcessingError *)processingError dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"processing_error"];
  }

  asrResult = self->_asrResult;
  if (asrResult)
  {
    v9 = [(MXASRResult *)asrResult dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"asr_result"];
  }

  speechProfileRebuildNeeded = self->_speechProfileRebuildNeeded;
  if (speechProfileRebuildNeeded)
  {
    v11 = [(MXSpeechProfileRebuildNeeded *)speechProfileRebuildNeeded dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"speech_profile_rebuild_needed"];
  }

  requestMitigated = self->_requestMitigated;
  if (requestMitigated)
  {
    v13 = [(MXRequestMitigated *)requestMitigated dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"request_mitigated"];
  }

  speechProfileResponse = self->_speechProfileResponse;
  if (speechProfileResponse)
  {
    v15 = [(MXSpeechProfileBuildResponse *)speechProfileResponse dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"speech_profile_response"];
  }

  if (*&self->_has)
  {
    payload = self->_payload;
    if (payload >= 7)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_payload];
    }

    else
    {
      v17 = off_27991BD00[payload];
    }

    [v3 setObject:v17 forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestComplete)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_processingError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_asrResult)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_speechProfileRebuildNeeded)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_requestMitigated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_speechProfileResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_payload;
    *(v4 + 64) |= 1u;
  }

  v5 = v4;
  if (self->_requestComplete)
  {
    [v4 setRequestComplete:?];
    v4 = v5;
  }

  if (self->_processingError)
  {
    [v5 setProcessingError:?];
    v4 = v5;
  }

  if (self->_asrResult)
  {
    [v5 setAsrResult:?];
    v4 = v5;
  }

  if (self->_speechProfileRebuildNeeded)
  {
    [v5 setSpeechProfileRebuildNeeded:?];
    v4 = v5;
  }

  if (self->_requestMitigated)
  {
    [v5 setRequestMitigated:?];
    v4 = v5;
  }

  if (self->_speechProfileResponse)
  {
    [v5 setSpeechProfileResponse:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_payload;
    *(v5 + 64) |= 1u;
  }

  v7 = [(MXRequestComplete *)self->_requestComplete copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(MXProcessingError *)self->_processingError copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(MXASRResult *)self->_asrResult copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(MXSpeechProfileRebuildNeeded *)self->_speechProfileRebuildNeeded copyWithZone:a3];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(MXRequestMitigated *)self->_requestMitigated copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(MXSpeechProfileBuildResponse *)self->_speechProfileResponse copyWithZone:a3];
  v18 = v6[7];
  v6[7] = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_payload != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  requestComplete = self->_requestComplete;
  if (requestComplete | *(v4 + 4) && ![(MXRequestComplete *)requestComplete isEqual:?])
  {
    goto LABEL_19;
  }

  processingError = self->_processingError;
  if (processingError | *(v4 + 3))
  {
    if (![(MXProcessingError *)processingError isEqual:?])
    {
      goto LABEL_19;
    }
  }

  asrResult = self->_asrResult;
  if (asrResult | *(v4 + 1))
  {
    if (![(MXASRResult *)asrResult isEqual:?])
    {
      goto LABEL_19;
    }
  }

  speechProfileRebuildNeeded = self->_speechProfileRebuildNeeded;
  if (speechProfileRebuildNeeded | *(v4 + 6))
  {
    if (![(MXSpeechProfileRebuildNeeded *)speechProfileRebuildNeeded isEqual:?])
    {
      goto LABEL_19;
    }
  }

  requestMitigated = self->_requestMitigated;
  if (requestMitigated | *(v4 + 5))
  {
    if (![(MXRequestMitigated *)requestMitigated isEqual:?])
    {
      goto LABEL_19;
    }
  }

  speechProfileResponse = self->_speechProfileResponse;
  if (speechProfileResponse | *(v4 + 7))
  {
    v12 = [(MXSpeechProfileBuildResponse *)speechProfileResponse isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_payload;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MXRequestComplete *)self->_requestComplete hash]^ v3;
  v5 = [(MXProcessingError *)self->_processingError hash];
  v6 = v4 ^ v5 ^ [(MXASRResult *)self->_asrResult hash];
  v7 = [(MXSpeechProfileRebuildNeeded *)self->_speechProfileRebuildNeeded hash];
  v8 = v7 ^ [(MXRequestMitigated *)self->_requestMitigated hash];
  return v6 ^ v8 ^ [(MXSpeechProfileBuildResponse *)self->_speechProfileResponse hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 64))
  {
    self->_payload = *(v4 + 4);
    *&self->_has |= 1u;
  }

  requestComplete = self->_requestComplete;
  v7 = v5[4];
  v18 = v5;
  if (requestComplete)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MXRequestComplete *)requestComplete mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MXClientBoundFrame *)self setRequestComplete:?];
  }

  v5 = v18;
LABEL_9:
  processingError = self->_processingError;
  v9 = v5[3];
  if (processingError)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MXProcessingError *)processingError mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MXClientBoundFrame *)self setProcessingError:?];
  }

  v5 = v18;
LABEL_15:
  asrResult = self->_asrResult;
  v11 = v5[1];
  if (asrResult)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MXASRResult *)asrResult mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MXClientBoundFrame *)self setAsrResult:?];
  }

  v5 = v18;
LABEL_21:
  speechProfileRebuildNeeded = self->_speechProfileRebuildNeeded;
  v13 = v5[6];
  if (speechProfileRebuildNeeded)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MXSpeechProfileRebuildNeeded *)speechProfileRebuildNeeded mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MXClientBoundFrame *)self setSpeechProfileRebuildNeeded:?];
  }

  v5 = v18;
LABEL_27:
  requestMitigated = self->_requestMitigated;
  v15 = v5[5];
  if (requestMitigated)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MXRequestMitigated *)requestMitigated mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MXClientBoundFrame *)self setRequestMitigated:?];
  }

  v5 = v18;
LABEL_33:
  speechProfileResponse = self->_speechProfileResponse;
  v17 = v5[7];
  if (speechProfileResponse)
  {
    if (v17)
    {
      [(MXSpeechProfileBuildResponse *)speechProfileResponse mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(MXClientBoundFrame *)self setSpeechProfileResponse:?];
  }

  MEMORY[0x2821F96F8]();
}

@end