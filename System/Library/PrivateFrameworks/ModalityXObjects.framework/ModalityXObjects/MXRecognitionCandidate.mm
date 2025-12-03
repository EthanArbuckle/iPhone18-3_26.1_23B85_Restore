@interface MXRecognitionCandidate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFingerprintDetection:(id)detection;
- (int)StringAsWatermarkDetection:(id)detection;
- (int)fingerprintDetection;
- (int)watermarkDetection;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFingerprintDetection:(BOOL)detection;
- (void)setHasReturnCode:(BOOL)code;
- (void)setHasWatermarkDetection:(BOOL)detection;
- (void)setHasWatermarkPeakAverage:(BOOL)average;
- (void)writeTo:(id)to;
@end

@implementation MXRecognitionCandidate

- (void)setHasReturnCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)fingerprintDetection
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fingerprintDetection;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFingerprintDetection:(BOOL)detection
{
  if (detection)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsFingerprintDetection:(id)detection
{
  detectionCopy = detection;
  if ([detectionCopy isEqualToString:@"FP_UNKNOWN_ENUM_VALUE"])
  {
    v4 = 0;
  }

  else if ([detectionCopy isEqualToString:@"FP_NOT_CHECKED"])
  {
    v4 = 1;
  }

  else if ([detectionCopy isEqualToString:@"FP_NOT_DETECTED"])
  {
    v4 = 2;
  }

  else if ([detectionCopy isEqualToString:@"FP_DETECTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)watermarkDetection
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_watermarkDetection;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWatermarkDetection:(BOOL)detection
{
  if (detection)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsWatermarkDetection:(id)detection
{
  detectionCopy = detection;
  if ([detectionCopy isEqualToString:@"WM_UNKNOWN_ENUM_VALUE"])
  {
    v4 = 0;
  }

  else if ([detectionCopy isEqualToString:@"WM_NOT_CHECKED"])
  {
    v4 = 1;
  }

  else if ([detectionCopy isEqualToString:@"WM_NOT_DETECTED"])
  {
    v4 = 2;
  }

  else if ([detectionCopy isEqualToString:@"WM_DETECTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWatermarkPeakAverage:(BOOL)average
{
  if (average)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionCandidate;
  v4 = [(MXRecognitionCandidate *)&v8 description];
  dictionaryRepresentation = [(MXRecognitionCandidate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  speechId = self->_speechId;
  if (speechId)
  {
    [dictionary setObject:speechId forKey:@"speech_id"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v4 setObject:sessionId forKey:@"session_id"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_returnCode];
    [v4 setObject:v7 forKey:@"return_code"];
  }

  returnStr = self->_returnStr;
  if (returnStr)
  {
    [v4 setObject:returnStr forKey:@"return_str"];
  }

  recognitionResult = self->_recognitionResult;
  if (recognitionResult)
  {
    dictionaryRepresentation = [(MXRecognitionResult *)recognitionResult dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"recognition_result"];
  }

  resultId = self->_resultId;
  if (resultId)
  {
    [v4 setObject:resultId forKey:@"result_id"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_snr];
    [v4 setObject:v13 forKey:@"snr"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    fingerprintDetection = self->_fingerprintDetection;
    if (fingerprintDetection >= 4)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fingerprintDetection];
    }

    else
    {
      v15 = off_27991BA88[fingerprintDetection];
    }

    [v4 setObject:v15 forKey:@"fingerprint_detection"];
  }

  audioAnalytics = self->_audioAnalytics;
  if (audioAnalytics)
  {
    dictionaryRepresentation2 = [(MXAudioAnalytics *)audioAnalytics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"audio_analytics"];
  }

  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    watermarkDetection = self->_watermarkDetection;
    if (watermarkDetection >= 4)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_watermarkDetection];
    }

    else
    {
      v20 = off_27991BAA8[watermarkDetection];
    }

    [v4 setObject:v20 forKey:@"watermark_detection"];

    v18 = self->_has;
  }

  if ((v18 & 2) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_watermarkPeakAverage];
    [v4 setObject:v21 forKey:@"watermark_peak_average"];
  }

  language = self->_language;
  if (language)
  {
    [v4 setObject:language forKey:@"language"];
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  if (latnnMitigatorResult)
  {
    dictionaryRepresentation3 = [(MXLatnnMitigatorResult *)latnnMitigatorResult dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"latnn_mitigator_result"];
  }

  requestLocale = self->_requestLocale;
  if (requestLocale)
  {
    [v4 setObject:requestLocale forKey:@"request_locale"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_speechId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    returnCode = self->_returnCode;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_returnStr)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_recognitionResult)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_resultId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    snr = self->_snr;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    fingerprintDetection = self->_fingerprintDetection;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_audioAnalytics)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    watermarkDetection = self->_watermarkDetection;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
    v9 = self->_has;
  }

  if ((v9 & 2) != 0)
  {
    watermarkPeakAverage = self->_watermarkPeakAverage;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_latnnMitigatorResult)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_requestLocale)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_speechId)
  {
    [toCopy setSpeechId:?];
    toCopy = v7;
  }

  if (self->_sessionId)
  {
    [v7 setSessionId:?];
    toCopy = v7;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 20) = self->_returnCode;
    *(toCopy + 116) |= 8u;
  }

  if (self->_returnStr)
  {
    [v7 setReturnStr:?];
    toCopy = v7;
  }

  if (self->_recognitionResult)
  {
    [v7 setRecognitionResult:?];
    toCopy = v7;
  }

  if (self->_resultId)
  {
    [v7 setResultId:?];
    toCopy = v7;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_snr;
    *(toCopy + 116) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 8) = self->_fingerprintDetection;
    *(toCopy + 116) |= 4u;
  }

  if (self->_audioAnalytics)
  {
    [v7 setAudioAnalytics:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 28) = self->_watermarkDetection;
    *(toCopy + 116) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    *(toCopy + 2) = *&self->_watermarkPeakAverage;
    *(toCopy + 116) |= 2u;
  }

  if (self->_language)
  {
    [v7 setLanguage:?];
    toCopy = v7;
  }

  if (self->_latnnMitigatorResult)
  {
    [v7 setLatnnMitigatorResult:?];
    toCopy = v7;
  }

  if (self->_requestLocale)
  {
    [v7 setRequestLocale:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_speechId copyWithZone:zone];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 80) = self->_returnCode;
    *(v5 + 116) |= 8u;
  }

  v10 = [(NSString *)self->_returnStr copyWithZone:zone];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(MXRecognitionResult *)self->_recognitionResult copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_resultId copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_snr;
    *(v5 + 116) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_fingerprintDetection;
    *(v5 + 116) |= 4u;
  }

  v17 = [(MXAudioAnalytics *)self->_audioAnalytics copyWithZone:zone];
  v18 = *(v5 + 24);
  *(v5 + 24) = v17;

  v19 = self->_has;
  if ((v19 & 0x10) != 0)
  {
    *(v5 + 112) = self->_watermarkDetection;
    *(v5 + 116) |= 0x10u;
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    *(v5 + 16) = self->_watermarkPeakAverage;
    *(v5 + 116) |= 2u;
  }

  v20 = [(NSString *)self->_language copyWithZone:zone];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(MXLatnnMitigatorResult *)self->_latnnMitigatorResult copyWithZone:zone];
  v23 = *(v5 + 48);
  *(v5 + 48) = v22;

  v24 = [(NSString *)self->_requestLocale copyWithZone:zone];
  v25 = *(v5 + 64);
  *(v5 + 64) = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  speechId = self->_speechId;
  if (speechId | *(equalCopy + 13))
  {
    if (![(NSString *)speechId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 12))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v7 = *(equalCopy + 116);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 116) & 8) == 0 || self->_returnCode != *(equalCopy + 20))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 116) & 8) != 0)
  {
    goto LABEL_46;
  }

  returnStr = self->_returnStr;
  if (returnStr | *(equalCopy + 11) && ![(NSString *)returnStr isEqual:?])
  {
    goto LABEL_46;
  }

  recognitionResult = self->_recognitionResult;
  if (recognitionResult | *(equalCopy + 7))
  {
    if (![(MXRecognitionResult *)recognitionResult isEqual:?])
    {
      goto LABEL_46;
    }
  }

  resultId = self->_resultId;
  if (resultId | *(equalCopy + 9))
  {
    if (![(NSString *)resultId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v12 = *(equalCopy + 116);
  if (has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_snr != *(equalCopy + 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 116) & 4) == 0 || self->_fingerprintDetection != *(equalCopy + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 116) & 4) != 0)
  {
    goto LABEL_46;
  }

  audioAnalytics = self->_audioAnalytics;
  if (audioAnalytics | *(equalCopy + 3))
  {
    if (![(MXAudioAnalytics *)audioAnalytics isEqual:?])
    {
LABEL_46:
      v18 = 0;
      goto LABEL_47;
    }

    has = self->_has;
  }

  v14 = *(equalCopy + 116);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 116) & 0x10) == 0 || self->_watermarkDetection != *(equalCopy + 28))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 116) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 116) & 2) == 0 || self->_watermarkPeakAverage != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 116) & 2) != 0)
  {
    goto LABEL_46;
  }

  language = self->_language;
  if (language | *(equalCopy + 5) && ![(NSString *)language isEqual:?])
  {
    goto LABEL_46;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  if (latnnMitigatorResult | *(equalCopy + 6))
  {
    if (![(MXLatnnMitigatorResult *)latnnMitigatorResult isEqual:?])
    {
      goto LABEL_46;
    }
  }

  requestLocale = self->_requestLocale;
  if (requestLocale | *(equalCopy + 8))
  {
    v18 = [(NSString *)requestLocale isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_47:

  return v18;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_speechId hash];
  v3 = [(NSString *)self->_sessionId hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_returnCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_returnStr hash];
  v6 = [(MXRecognitionResult *)self->_recognitionResult hash];
  v7 = [(NSString *)self->_resultId hash];
  if (*&self->_has)
  {
    snr = self->_snr;
    if (snr < 0.0)
    {
      snr = -snr;
    }

    *v8.i64 = floor(snr + 0.5);
    v12 = (snr - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_fingerprintDetection;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MXAudioAnalytics *)self->_audioAnalytics hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v18 = 2654435761 * self->_watermarkDetection;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v18 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  watermarkPeakAverage = self->_watermarkPeakAverage;
  if (watermarkPeakAverage < 0.0)
  {
    watermarkPeakAverage = -watermarkPeakAverage;
  }

  *v16.i64 = floor(watermarkPeakAverage + 0.5);
  v20 = (watermarkPeakAverage - *v16.i64) * 1.84467441e19;
  *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v22 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
  if (v20 >= 0.0)
  {
    if (v20 > 0.0)
    {
      v22 += v20;
    }
  }

  else
  {
    v22 -= fabs(v20);
  }

LABEL_23:
  v23 = v3 ^ v27 ^ v4 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15 ^ v18 ^ v22;
  v24 = [(NSString *)self->_language hash];
  v25 = v24 ^ [(MXLatnnMitigatorResult *)self->_latnnMitigatorResult hash];
  return v23 ^ v25 ^ [(NSString *)self->_requestLocale hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v13 = fromCopy;
  if (*(fromCopy + 13))
  {
    [(MXRecognitionCandidate *)self setSpeechId:?];
    fromCopy = v13;
  }

  if (*(fromCopy + 12))
  {
    [(MXRecognitionCandidate *)self setSessionId:?];
    fromCopy = v13;
  }

  if ((*(fromCopy + 116) & 8) != 0)
  {
    self->_returnCode = *(fromCopy + 20);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 11))
  {
    [(MXRecognitionCandidate *)self setReturnStr:?];
    fromCopy = v13;
  }

  recognitionResult = self->_recognitionResult;
  v6 = *(fromCopy + 7);
  if (recognitionResult)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    [(MXRecognitionResult *)recognitionResult mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    [(MXRecognitionCandidate *)self setRecognitionResult:?];
  }

  fromCopy = v13;
LABEL_15:
  if (*(fromCopy + 9))
  {
    [(MXRecognitionCandidate *)self setResultId:?];
    fromCopy = v13;
  }

  v7 = *(fromCopy + 116);
  if (v7)
  {
    self->_snr = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 116);
  }

  if ((v7 & 4) != 0)
  {
    self->_fingerprintDetection = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  audioAnalytics = self->_audioAnalytics;
  v9 = *(fromCopy + 3);
  if (audioAnalytics)
  {
    if (!v9)
    {
      goto LABEL_27;
    }

    [(MXAudioAnalytics *)audioAnalytics mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_27;
    }

    [(MXRecognitionCandidate *)self setAudioAnalytics:?];
  }

  fromCopy = v13;
LABEL_27:
  v10 = *(fromCopy + 116);
  if ((v10 & 0x10) != 0)
  {
    self->_watermarkDetection = *(fromCopy + 28);
    *&self->_has |= 0x10u;
    v10 = *(fromCopy + 116);
  }

  if ((v10 & 2) != 0)
  {
    self->_watermarkPeakAverage = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 5))
  {
    [(MXRecognitionCandidate *)self setLanguage:?];
    fromCopy = v13;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  v12 = *(fromCopy + 6);
  if (latnnMitigatorResult)
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    [(MXLatnnMitigatorResult *)latnnMitigatorResult mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    [(MXRecognitionCandidate *)self setLatnnMitigatorResult:?];
  }

  fromCopy = v13;
LABEL_39:
  if (*(fromCopy + 8))
  {
    [(MXRecognitionCandidate *)self setRequestLocale:?];
  }

  MEMORY[0x2821F96F8]();
}

@end