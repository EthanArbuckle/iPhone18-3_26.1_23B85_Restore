@interface MXASRResult
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
- (void)setFinalSpeechRecognitionResponse:(id)a3;
- (void)setRecognitionCandidate:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXASRResult

- (void)setRecognitionCandidate:(id)a3
{
  v4 = a3;
  [(MXASRResult *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 1;
  recognitionCandidate = self->_recognitionCandidate;
  self->_recognitionCandidate = v4;
}

- (void)setFinalSpeechRecognitionResponse:(id)a3
{
  v4 = a3;
  [(MXASRResult *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 2;
  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  self->_finalSpeechRecognitionResponse = v4;
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

  else if ([v3 isEqualToString:@"recognition_candidate"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"final_speech_recognition_response"])
  {
    v4 = 2;
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
  recognitionCandidate = self->_recognitionCandidate;
  self->_recognitionCandidate = 0;

  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  self->_finalSpeechRecognitionResponse = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXASRResult;
  v4 = [(MXASRResult *)&v8 description];
  v5 = [(MXASRResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestId = self->_requestId;
  if (requestId)
  {
    [v3 setObject:requestId forKey:@"request_id"];
  }

  recognitionCandidate = self->_recognitionCandidate;
  if (recognitionCandidate)
  {
    v7 = [(MXRecognitionCandidate *)recognitionCandidate dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"recognition_candidate"];
  }

  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  if (finalSpeechRecognitionResponse)
  {
    v9 = [(MXFinalSpeechRecognitionResponse *)finalSpeechRecognitionResponse dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"final_speech_recognition_response"];
  }

  if (*&self->_has)
  {
    payload = self->_payload;
    if (payload >= 3)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_payload];
    }

    else
    {
      v11 = off_27991BE10[payload];
    }

    [v4 setObject:v11 forKey:@"payload"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recognitionCandidate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_finalSpeechRecognitionResponse)
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
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (self->_recognitionCandidate)
  {
    [v5 setRecognitionCandidate:?];
    v4 = v5;
  }

  if (self->_finalSpeechRecognitionResponse)
  {
    [v5 setFinalSpeechRecognitionResponse:?];
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
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_requestId copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(MXRecognitionCandidate *)self->_recognitionCandidate copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(MXFinalSpeechRecognitionResponse *)self->_finalSpeechRecognitionResponse copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_payload != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 4) && ![(NSString *)requestId isEqual:?])
  {
    goto LABEL_13;
  }

  recognitionCandidate = self->_recognitionCandidate;
  if (recognitionCandidate | *(v4 + 3))
  {
    if (![(MXRecognitionCandidate *)recognitionCandidate isEqual:?])
    {
      goto LABEL_13;
    }
  }

  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  if (finalSpeechRecognitionResponse | *(v4 + 1))
  {
    v9 = [(MXFinalSpeechRecognitionResponse *)finalSpeechRecognitionResponse isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
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

  v4 = [(NSString *)self->_requestId hash]^ v3;
  v5 = [(MXRecognitionCandidate *)self->_recognitionCandidate hash];
  return v4 ^ v5 ^ [(MXFinalSpeechRecognitionResponse *)self->_finalSpeechRecognitionResponse hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[10])
  {
    self->_payload = v4[4];
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (*(v4 + 4))
  {
    [(MXASRResult *)self setRequestId:?];
    v5 = v10;
  }

  recognitionCandidate = self->_recognitionCandidate;
  v7 = *(v5 + 3);
  if (recognitionCandidate)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(MXRecognitionCandidate *)recognitionCandidate mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(MXASRResult *)self setRecognitionCandidate:?];
  }

  v5 = v10;
LABEL_11:
  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  v9 = *(v5 + 1);
  if (finalSpeechRecognitionResponse)
  {
    if (v9)
    {
      [(MXFinalSpeechRecognitionResponse *)finalSpeechRecognitionResponse mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(MXASRResult *)self setFinalSpeechRecognitionResponse:?];
  }

  MEMORY[0x2821F96F8]();
}

@end