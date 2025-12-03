@interface MXServerBoundFrame
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
- (void)setAudioFrame:(id)frame;
- (void)setBeginDictation:(id)dictation;
- (void)setBeginRequest:(id)request;
- (void)setCancelRequest:(id)request;
- (void)setSessionMetadata:(id)metadata;
- (void)setSpeechProfile:(id)profile;
- (void)setSpeechProfileRequest:(id)request;
- (void)setStreamingSpeechProfileCommit:(id)commit;
- (void)setStreamingSpeechProfileData:(id)data;
- (void)setStreamingSpeechProfileRequest:(id)request;
- (void)writeTo:(id)to;
@end

@implementation MXServerBoundFrame

- (void)setSessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 1;
  sessionMetadata = self->_sessionMetadata;
  self->_sessionMetadata = metadataCopy;
}

- (void)setBeginRequest:(id)request
{
  requestCopy = request;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 2;
  beginRequest = self->_beginRequest;
  self->_beginRequest = requestCopy;
}

- (void)setAudioFrame:(id)frame
{
  frameCopy = frame;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 3;
  audioFrame = self->_audioFrame;
  self->_audioFrame = frameCopy;
}

- (void)setSpeechProfile:(id)profile
{
  profileCopy = profile;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 4;
  speechProfile = self->_speechProfile;
  self->_speechProfile = profileCopy;
}

- (void)setCancelRequest:(id)request
{
  requestCopy = request;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 5;
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = requestCopy;
}

- (void)setBeginDictation:(id)dictation
{
  dictationCopy = dictation;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 6;
  beginDictation = self->_beginDictation;
  self->_beginDictation = dictationCopy;
}

- (void)setSpeechProfileRequest:(id)request
{
  requestCopy = request;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 7;
  speechProfileRequest = self->_speechProfileRequest;
  self->_speechProfileRequest = requestCopy;
}

- (void)setStreamingSpeechProfileRequest:(id)request
{
  requestCopy = request;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 8;
  streamingSpeechProfileRequest = self->_streamingSpeechProfileRequest;
  self->_streamingSpeechProfileRequest = requestCopy;
}

- (void)setStreamingSpeechProfileData:(id)data
{
  dataCopy = data;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 9;
  streamingSpeechProfileData = self->_streamingSpeechProfileData;
  self->_streamingSpeechProfileData = dataCopy;
}

- (void)setStreamingSpeechProfileCommit:(id)commit
{
  commitCopy = commit;
  [(MXServerBoundFrame *)self clearOneofValuesForPayload];
  *&self->_has |= 1u;
  self->_payload = 10;
  streamingSpeechProfileCommit = self->_streamingSpeechProfileCommit;
  self->_streamingSpeechProfileCommit = commitCopy;
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

  else if ([payloadCopy isEqualToString:@"session_metadata"])
  {
    v4 = 1;
  }

  else if ([payloadCopy isEqualToString:@"begin_request"])
  {
    v4 = 2;
  }

  else if ([payloadCopy isEqualToString:@"audio_frame"])
  {
    v4 = 3;
  }

  else if ([payloadCopy isEqualToString:@"speech_profile"])
  {
    v4 = 4;
  }

  else if ([payloadCopy isEqualToString:@"cancel_request"])
  {
    v4 = 5;
  }

  else if ([payloadCopy isEqualToString:@"begin_dictation"])
  {
    v4 = 6;
  }

  else if ([payloadCopy isEqualToString:@"speech_profile_request"])
  {
    v4 = 7;
  }

  else if ([payloadCopy isEqualToString:@"streaming_speech_profile_request"])
  {
    v4 = 8;
  }

  else if ([payloadCopy isEqualToString:@"streaming_speech_profile_data"])
  {
    v4 = 9;
  }

  else if ([payloadCopy isEqualToString:@"streaming_speech_profile_commit"])
  {
    v4 = 10;
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
  sessionMetadata = self->_sessionMetadata;
  self->_sessionMetadata = 0;

  beginRequest = self->_beginRequest;
  self->_beginRequest = 0;

  audioFrame = self->_audioFrame;
  self->_audioFrame = 0;

  speechProfile = self->_speechProfile;
  self->_speechProfile = 0;

  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = 0;

  beginDictation = self->_beginDictation;
  self->_beginDictation = 0;

  speechProfileRequest = self->_speechProfileRequest;
  self->_speechProfileRequest = 0;

  streamingSpeechProfileRequest = self->_streamingSpeechProfileRequest;
  self->_streamingSpeechProfileRequest = 0;

  streamingSpeechProfileData = self->_streamingSpeechProfileData;
  self->_streamingSpeechProfileData = 0;

  streamingSpeechProfileCommit = self->_streamingSpeechProfileCommit;
  self->_streamingSpeechProfileCommit = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXServerBoundFrame;
  v4 = [(MXServerBoundFrame *)&v8 description];
  dictionaryRepresentation = [(MXServerBoundFrame *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionMetadata = self->_sessionMetadata;
  if (sessionMetadata)
  {
    dictionaryRepresentation = [(MXSessionMetadata *)sessionMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"session_metadata"];
  }

  beginRequest = self->_beginRequest;
  if (beginRequest)
  {
    dictionaryRepresentation2 = [(MXBeginRequest *)beginRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"begin_request"];
  }

  audioFrame = self->_audioFrame;
  if (audioFrame)
  {
    dictionaryRepresentation3 = [(MXAudioFrame *)audioFrame dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"audio_frame"];
  }

  speechProfile = self->_speechProfile;
  if (speechProfile)
  {
    dictionaryRepresentation4 = [(MXSpeechProfile *)speechProfile dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"speech_profile"];
  }

  cancelRequest = self->_cancelRequest;
  if (cancelRequest)
  {
    dictionaryRepresentation5 = [(MXCancelRequest *)cancelRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"cancel_request"];
  }

  beginDictation = self->_beginDictation;
  if (beginDictation)
  {
    dictionaryRepresentation6 = [(MXBeginDictation *)beginDictation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"begin_dictation"];
  }

  speechProfileRequest = self->_speechProfileRequest;
  if (speechProfileRequest)
  {
    dictionaryRepresentation7 = [(MXSpeechProfileBuildRequest *)speechProfileRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"speech_profile_request"];
  }

  streamingSpeechProfileRequest = self->_streamingSpeechProfileRequest;
  if (streamingSpeechProfileRequest)
  {
    dictionaryRepresentation8 = [(MXStreamingSpeechProfileBegin *)streamingSpeechProfileRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"streaming_speech_profile_request"];
  }

  streamingSpeechProfileData = self->_streamingSpeechProfileData;
  if (streamingSpeechProfileData)
  {
    dictionaryRepresentation9 = [(MXStreamingSpeechProfileAddData *)streamingSpeechProfileData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"streaming_speech_profile_data"];
  }

  streamingSpeechProfileCommit = self->_streamingSpeechProfileCommit;
  if (streamingSpeechProfileCommit)
  {
    dictionaryRepresentation10 = [(MXStreamingSpeechProfileCommit *)streamingSpeechProfileCommit dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"streaming_speech_profile_commit"];
  }

  if (*&self->_has)
  {
    payload = self->_payload;
    if (payload >= 0xB)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_payload];
    }

    else
    {
      v25 = off_27991BDB8[payload];
    }

    [dictionary setObject:v25 forKey:@"payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_beginRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_audioFrame)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_speechProfile)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_cancelRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_beginDictation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_speechProfileRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileCommit)
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
    toCopy[10] = self->_payload;
    *(toCopy + 96) |= 1u;
  }

  v5 = toCopy;
  if (self->_sessionMetadata)
  {
    [toCopy setSessionMetadata:?];
    toCopy = v5;
  }

  if (self->_beginRequest)
  {
    [v5 setBeginRequest:?];
    toCopy = v5;
  }

  if (self->_audioFrame)
  {
    [v5 setAudioFrame:?];
    toCopy = v5;
  }

  if (self->_speechProfile)
  {
    [v5 setSpeechProfile:?];
    toCopy = v5;
  }

  if (self->_cancelRequest)
  {
    [v5 setCancelRequest:?];
    toCopy = v5;
  }

  if (self->_beginDictation)
  {
    [v5 setBeginDictation:?];
    toCopy = v5;
  }

  if (self->_speechProfileRequest)
  {
    [v5 setSpeechProfileRequest:?];
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileRequest)
  {
    [v5 setStreamingSpeechProfileRequest:?];
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileData)
  {
    [v5 setStreamingSpeechProfileData:?];
    toCopy = v5;
  }

  if (self->_streamingSpeechProfileCommit)
  {
    [v5 setStreamingSpeechProfileCommit:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_payload;
    *(v5 + 96) |= 1u;
  }

  v7 = [(MXSessionMetadata *)self->_sessionMetadata copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(MXBeginRequest *)self->_beginRequest copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(MXAudioFrame *)self->_audioFrame copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(MXSpeechProfile *)self->_speechProfile copyWithZone:zone];
  v14 = v6[7];
  v6[7] = v13;

  v15 = [(MXCancelRequest *)self->_cancelRequest copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(MXBeginDictation *)self->_beginDictation copyWithZone:zone];
  v18 = v6[2];
  v6[2] = v17;

  v19 = [(MXSpeechProfileBuildRequest *)self->_speechProfileRequest copyWithZone:zone];
  v20 = v6[8];
  v6[8] = v19;

  v21 = [(MXStreamingSpeechProfileBegin *)self->_streamingSpeechProfileRequest copyWithZone:zone];
  v22 = v6[11];
  v6[11] = v21;

  v23 = [(MXStreamingSpeechProfileAddData *)self->_streamingSpeechProfileData copyWithZone:zone];
  v24 = v6[10];
  v6[10] = v23;

  v25 = [(MXStreamingSpeechProfileCommit *)self->_streamingSpeechProfileCommit copyWithZone:zone];
  v26 = v6[9];
  v6[9] = v25;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_payload != *(equalCopy + 10))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 96))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  sessionMetadata = self->_sessionMetadata;
  if (sessionMetadata | *(equalCopy + 6) && ![(MXSessionMetadata *)sessionMetadata isEqual:?])
  {
    goto LABEL_27;
  }

  beginRequest = self->_beginRequest;
  if (beginRequest | *(equalCopy + 3))
  {
    if (![(MXBeginRequest *)beginRequest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  audioFrame = self->_audioFrame;
  if (audioFrame | *(equalCopy + 1))
  {
    if (![(MXAudioFrame *)audioFrame isEqual:?])
    {
      goto LABEL_27;
    }
  }

  speechProfile = self->_speechProfile;
  if (speechProfile | *(equalCopy + 7))
  {
    if (![(MXSpeechProfile *)speechProfile isEqual:?])
    {
      goto LABEL_27;
    }
  }

  cancelRequest = self->_cancelRequest;
  if (cancelRequest | *(equalCopy + 4))
  {
    if (![(MXCancelRequest *)cancelRequest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  beginDictation = self->_beginDictation;
  if (beginDictation | *(equalCopy + 2))
  {
    if (![(MXBeginDictation *)beginDictation isEqual:?])
    {
      goto LABEL_27;
    }
  }

  speechProfileRequest = self->_speechProfileRequest;
  if (speechProfileRequest | *(equalCopy + 8))
  {
    if (![(MXSpeechProfileBuildRequest *)speechProfileRequest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  streamingSpeechProfileRequest = self->_streamingSpeechProfileRequest;
  if (streamingSpeechProfileRequest | *(equalCopy + 11))
  {
    if (![(MXStreamingSpeechProfileBegin *)streamingSpeechProfileRequest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  streamingSpeechProfileData = self->_streamingSpeechProfileData;
  if (streamingSpeechProfileData | *(equalCopy + 10))
  {
    if (![(MXStreamingSpeechProfileAddData *)streamingSpeechProfileData isEqual:?])
    {
      goto LABEL_27;
    }
  }

  streamingSpeechProfileCommit = self->_streamingSpeechProfileCommit;
  if (streamingSpeechProfileCommit | *(equalCopy + 9))
  {
    v16 = [(MXStreamingSpeechProfileCommit *)streamingSpeechProfileCommit isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
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

  v4 = [(MXSessionMetadata *)self->_sessionMetadata hash]^ v3;
  v5 = [(MXBeginRequest *)self->_beginRequest hash];
  v6 = v4 ^ v5 ^ [(MXAudioFrame *)self->_audioFrame hash];
  v7 = [(MXSpeechProfile *)self->_speechProfile hash];
  v8 = v7 ^ [(MXCancelRequest *)self->_cancelRequest hash];
  v9 = v6 ^ v8 ^ [(MXBeginDictation *)self->_beginDictation hash];
  v10 = [(MXSpeechProfileBuildRequest *)self->_speechProfileRequest hash];
  v11 = v10 ^ [(MXStreamingSpeechProfileBegin *)self->_streamingSpeechProfileRequest hash];
  v12 = v11 ^ [(MXStreamingSpeechProfileAddData *)self->_streamingSpeechProfileData hash];
  return v9 ^ v12 ^ [(MXStreamingSpeechProfileCommit *)self->_streamingSpeechProfileCommit hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 96))
  {
    self->_payload = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  sessionMetadata = self->_sessionMetadata;
  v7 = v5[6];
  v26 = v5;
  if (sessionMetadata)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MXSessionMetadata *)sessionMetadata mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MXServerBoundFrame *)self setSessionMetadata:?];
  }

  v5 = v26;
LABEL_9:
  beginRequest = self->_beginRequest;
  v9 = v5[3];
  if (beginRequest)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MXBeginRequest *)beginRequest mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MXServerBoundFrame *)self setBeginRequest:?];
  }

  v5 = v26;
LABEL_15:
  audioFrame = self->_audioFrame;
  v11 = v5[1];
  if (audioFrame)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MXAudioFrame *)audioFrame mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MXServerBoundFrame *)self setAudioFrame:?];
  }

  v5 = v26;
LABEL_21:
  speechProfile = self->_speechProfile;
  v13 = v5[7];
  if (speechProfile)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MXSpeechProfile *)speechProfile mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MXServerBoundFrame *)self setSpeechProfile:?];
  }

  v5 = v26;
LABEL_27:
  cancelRequest = self->_cancelRequest;
  v15 = v5[4];
  if (cancelRequest)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MXCancelRequest *)cancelRequest mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MXServerBoundFrame *)self setCancelRequest:?];
  }

  v5 = v26;
LABEL_33:
  beginDictation = self->_beginDictation;
  v17 = v5[2];
  if (beginDictation)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(MXBeginDictation *)beginDictation mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(MXServerBoundFrame *)self setBeginDictation:?];
  }

  v5 = v26;
LABEL_39:
  speechProfileRequest = self->_speechProfileRequest;
  v19 = v5[8];
  if (speechProfileRequest)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(MXSpeechProfileBuildRequest *)speechProfileRequest mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(MXServerBoundFrame *)self setSpeechProfileRequest:?];
  }

  v5 = v26;
LABEL_45:
  streamingSpeechProfileRequest = self->_streamingSpeechProfileRequest;
  v21 = v5[11];
  if (streamingSpeechProfileRequest)
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(MXStreamingSpeechProfileBegin *)streamingSpeechProfileRequest mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(MXServerBoundFrame *)self setStreamingSpeechProfileRequest:?];
  }

  v5 = v26;
LABEL_51:
  streamingSpeechProfileData = self->_streamingSpeechProfileData;
  v23 = v5[10];
  if (streamingSpeechProfileData)
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    [(MXStreamingSpeechProfileAddData *)streamingSpeechProfileData mergeFrom:?];
  }

  else
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    [(MXServerBoundFrame *)self setStreamingSpeechProfileData:?];
  }

  v5 = v26;
LABEL_57:
  streamingSpeechProfileCommit = self->_streamingSpeechProfileCommit;
  v25 = v5[9];
  if (streamingSpeechProfileCommit)
  {
    if (v25)
    {
      [(MXStreamingSpeechProfileCommit *)streamingSpeechProfileCommit mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(MXServerBoundFrame *)self setStreamingSpeechProfileCommit:?];
  }

  MEMORY[0x2821F96F8]();
}

@end