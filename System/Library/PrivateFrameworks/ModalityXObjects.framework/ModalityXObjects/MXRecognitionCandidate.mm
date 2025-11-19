@interface MXRecognitionCandidate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFingerprintDetection:(id)a3;
- (int)StringAsWatermarkDetection:(id)a3;
- (int)fingerprintDetection;
- (int)watermarkDetection;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFingerprintDetection:(BOOL)a3;
- (void)setHasReturnCode:(BOOL)a3;
- (void)setHasWatermarkDetection:(BOOL)a3;
- (void)setHasWatermarkPeakAverage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXRecognitionCandidate

- (void)setHasReturnCode:(BOOL)a3
{
  if (a3)
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

- (void)setHasFingerprintDetection:(BOOL)a3
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

- (int)StringAsFingerprintDetection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FP_UNKNOWN_ENUM_VALUE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FP_NOT_CHECKED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FP_NOT_DETECTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FP_DETECTED"])
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

- (void)setHasWatermarkDetection:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsWatermarkDetection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WM_UNKNOWN_ENUM_VALUE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WM_NOT_CHECKED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WM_NOT_DETECTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WM_DETECTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWatermarkPeakAverage:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionCandidate;
  v4 = [(MXRecognitionCandidate *)&v8 description];
  v5 = [(MXRecognitionCandidate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  speechId = self->_speechId;
  if (speechId)
  {
    [v3 setObject:speechId forKey:@"speech_id"];
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
    v10 = [(MXRecognitionResult *)recognitionResult dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"recognition_result"];
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
    v17 = [(MXAudioAnalytics *)audioAnalytics dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"audio_analytics"];
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
    v24 = [(MXLatnnMitigatorResult *)latnnMitigatorResult dictionaryRepresentation];
    [v4 setObject:v24 forKey:@"latnn_mitigator_result"];
  }

  requestLocale = self->_requestLocale;
  if (requestLocale)
  {
    [v4 setObject:requestLocale forKey:@"request_locale"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_speechId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    returnCode = self->_returnCode;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_returnStr)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_recognitionResult)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_resultId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    snr = self->_snr;
    PBDataWriterWriteDoubleField();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    fingerprintDetection = self->_fingerprintDetection;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_audioAnalytics)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    watermarkDetection = self->_watermarkDetection;
    PBDataWriterWriteInt32Field();
    v4 = v12;
    v9 = self->_has;
  }

  if ((v9 & 2) != 0)
  {
    watermarkPeakAverage = self->_watermarkPeakAverage;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_latnnMitigatorResult)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_requestLocale)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_speechId)
  {
    [v4 setSpeechId:?];
    v4 = v7;
  }

  if (self->_sessionId)
  {
    [v7 setSessionId:?];
    v4 = v7;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 20) = self->_returnCode;
    *(v4 + 116) |= 8u;
  }

  if (self->_returnStr)
  {
    [v7 setReturnStr:?];
    v4 = v7;
  }

  if (self->_recognitionResult)
  {
    [v7 setRecognitionResult:?];
    v4 = v7;
  }

  if (self->_resultId)
  {
    [v7 setResultId:?];
    v4 = v7;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_snr;
    *(v4 + 116) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_fingerprintDetection;
    *(v4 + 116) |= 4u;
  }

  if (self->_audioAnalytics)
  {
    [v7 setAudioAnalytics:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 28) = self->_watermarkDetection;
    *(v4 + 116) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    *(v4 + 2) = *&self->_watermarkPeakAverage;
    *(v4 + 116) |= 2u;
  }

  if (self->_language)
  {
    [v7 setLanguage:?];
    v4 = v7;
  }

  if (self->_latnnMitigatorResult)
  {
    [v7 setLatnnMitigatorResult:?];
    v4 = v7;
  }

  if (self->_requestLocale)
  {
    [v7 setRequestLocale:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_speechId copyWithZone:a3];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:a3];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 80) = self->_returnCode;
    *(v5 + 116) |= 8u;
  }

  v10 = [(NSString *)self->_returnStr copyWithZone:a3];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(MXRecognitionResult *)self->_recognitionResult copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_resultId copyWithZone:a3];
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

  v17 = [(MXAudioAnalytics *)self->_audioAnalytics copyWithZone:a3];
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

  v20 = [(NSString *)self->_language copyWithZone:a3];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(MXLatnnMitigatorResult *)self->_latnnMitigatorResult copyWithZone:a3];
  v23 = *(v5 + 48);
  *(v5 + 48) = v22;

  v24 = [(NSString *)self->_requestLocale copyWithZone:a3];
  v25 = *(v5 + 64);
  *(v5 + 64) = v24;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  speechId = self->_speechId;
  if (speechId | *(v4 + 13))
  {
    if (![(NSString *)speechId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(v4 + 12))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v7 = *(v4 + 116);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 116) & 8) == 0 || self->_returnCode != *(v4 + 20))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 116) & 8) != 0)
  {
    goto LABEL_46;
  }

  returnStr = self->_returnStr;
  if (returnStr | *(v4 + 11) && ![(NSString *)returnStr isEqual:?])
  {
    goto LABEL_46;
  }

  recognitionResult = self->_recognitionResult;
  if (recognitionResult | *(v4 + 7))
  {
    if (![(MXRecognitionResult *)recognitionResult isEqual:?])
    {
      goto LABEL_46;
    }
  }

  resultId = self->_resultId;
  if (resultId | *(v4 + 9))
  {
    if (![(NSString *)resultId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v12 = *(v4 + 116);
  if (has)
  {
    if ((*(v4 + 116) & 1) == 0 || self->_snr != *(v4 + 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 116))
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 116) & 4) == 0 || self->_fingerprintDetection != *(v4 + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 116) & 4) != 0)
  {
    goto LABEL_46;
  }

  audioAnalytics = self->_audioAnalytics;
  if (audioAnalytics | *(v4 + 3))
  {
    if (![(MXAudioAnalytics *)audioAnalytics isEqual:?])
    {
LABEL_46:
      v18 = 0;
      goto LABEL_47;
    }

    has = self->_has;
  }

  v14 = *(v4 + 116);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 116) & 0x10) == 0 || self->_watermarkDetection != *(v4 + 28))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 116) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 116) & 2) == 0 || self->_watermarkPeakAverage != *(v4 + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 116) & 2) != 0)
  {
    goto LABEL_46;
  }

  language = self->_language;
  if (language | *(v4 + 5) && ![(NSString *)language isEqual:?])
  {
    goto LABEL_46;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  if (latnnMitigatorResult | *(v4 + 6))
  {
    if (![(MXLatnnMitigatorResult *)latnnMitigatorResult isEqual:?])
    {
      goto LABEL_46;
    }
  }

  requestLocale = self->_requestLocale;
  if (requestLocale | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (*(v4 + 13))
  {
    [(MXRecognitionCandidate *)self setSpeechId:?];
    v4 = v13;
  }

  if (*(v4 + 12))
  {
    [(MXRecognitionCandidate *)self setSessionId:?];
    v4 = v13;
  }

  if ((*(v4 + 116) & 8) != 0)
  {
    self->_returnCode = *(v4 + 20);
    *&self->_has |= 8u;
  }

  if (*(v4 + 11))
  {
    [(MXRecognitionCandidate *)self setReturnStr:?];
    v4 = v13;
  }

  recognitionResult = self->_recognitionResult;
  v6 = *(v4 + 7);
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

  v4 = v13;
LABEL_15:
  if (*(v4 + 9))
  {
    [(MXRecognitionCandidate *)self setResultId:?];
    v4 = v13;
  }

  v7 = *(v4 + 116);
  if (v7)
  {
    self->_snr = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 116);
  }

  if ((v7 & 4) != 0)
  {
    self->_fingerprintDetection = *(v4 + 8);
    *&self->_has |= 4u;
  }

  audioAnalytics = self->_audioAnalytics;
  v9 = *(v4 + 3);
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

  v4 = v13;
LABEL_27:
  v10 = *(v4 + 116);
  if ((v10 & 0x10) != 0)
  {
    self->_watermarkDetection = *(v4 + 28);
    *&self->_has |= 0x10u;
    v10 = *(v4 + 116);
  }

  if ((v10 & 2) != 0)
  {
    self->_watermarkPeakAverage = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(MXRecognitionCandidate *)self setLanguage:?];
    v4 = v13;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  v12 = *(v4 + 6);
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

  v4 = v13;
LABEL_39:
  if (*(v4 + 8))
  {
    [(MXRecognitionCandidate *)self setRequestLocale:?];
  }

  MEMORY[0x2821F96F8]();
}

@end