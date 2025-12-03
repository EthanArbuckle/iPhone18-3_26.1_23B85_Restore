@interface MXASRResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPayload:(id)payload;
- (int)payload;
- (unint64_t)hash;
- (void)clearOneofValuesForPayload;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setFinalSpeechRecognitionResponse:(id)response;
- (void)setRecognitionCandidate:(id)candidate;
- (void)writeTo:(id)to;
@end

@implementation MXASRResult

- (void)setRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(MXASRResult *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 1;
  recognitionCandidate = self->_recognitionCandidate;
  self->_recognitionCandidate = candidateCopy;
}

- (void)setFinalSpeechRecognitionResponse:(id)response
{
  responseCopy = response;
  [(MXASRResult *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 2;
  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  self->_finalSpeechRecognitionResponse = responseCopy;
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

- (int)StringAsPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([payloadCopy isEqualToString:@"recognition_candidate"])
  {
    v4 = 1;
  }

  else if ([payloadCopy isEqualToString:@"final_speech_recognition_response"])
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
  dictionaryRepresentation = [(MXASRResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  recognitionCandidate = self->_recognitionCandidate;
  if (recognitionCandidate)
  {
    dictionaryRepresentation = [(MXRecognitionCandidate *)recognitionCandidate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"recognition_candidate"];
  }

  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  if (finalSpeechRecognitionResponse)
  {
    dictionaryRepresentation2 = [(MXFinalSpeechRecognitionResponse *)finalSpeechRecognitionResponse dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"final_speech_recognition_response"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_recognitionCandidate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_finalSpeechRecognitionResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_payload;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (self->_recognitionCandidate)
  {
    [v5 setRecognitionCandidate:?];
    toCopy = v5;
  }

  if (self->_finalSpeechRecognitionResponse)
  {
    [v5 setFinalSpeechRecognitionResponse:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_payload;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_requestId copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(MXRecognitionCandidate *)self->_recognitionCandidate copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(MXFinalSpeechRecognitionResponse *)self->_finalSpeechRecognitionResponse copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_payload != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 4) && ![(NSString *)requestId isEqual:?])
  {
    goto LABEL_13;
  }

  recognitionCandidate = self->_recognitionCandidate;
  if (recognitionCandidate | *(equalCopy + 3))
  {
    if (![(MXRecognitionCandidate *)recognitionCandidate isEqual:?])
    {
      goto LABEL_13;
    }
  }

  finalSpeechRecognitionResponse = self->_finalSpeechRecognitionResponse;
  if (finalSpeechRecognitionResponse | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[10])
  {
    self->_payload = fromCopy[4];
    *&self->_has |= 1u;
  }

  v10 = fromCopy;
  if (*(fromCopy + 4))
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