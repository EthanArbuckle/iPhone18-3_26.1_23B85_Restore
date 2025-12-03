@interface MXFinalSpeechRecognitionResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLangProfileRecreateCodes:(id)codes;
- (int)StringAsWatermarkDetection:(id)detection;
- (int)langProfileRecreateCodes;
- (int)watermarkDetection;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasResult:(BOOL)result;
- (void)setHasLangProfileRecreateCodes:(BOOL)codes;
- (void)setHasReturnCode:(BOOL)code;
- (void)setHasWatermarkDetection:(BOOL)detection;
- (void)writeTo:(id)to;
@end

@implementation MXFinalSpeechRecognitionResponse

- (void)setHasReturnCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)langProfileRecreateCodes
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_langProfileRecreateCodes;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLangProfileRecreateCodes:(BOOL)codes
{
  if (codes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsLangProfileRecreateCodes:(id)codes
{
  codesCopy = codes;
  if ([codesCopy isEqualToString:@"LANGUAGE_PROFILE_RECREATE_CODES_UNDEF"])
  {
    v4 = 0;
  }

  else if ([codesCopy isEqualToString:@"LANGUAGE_PROFILE_OK"])
  {
    v4 = 1;
  }

  else if ([codesCopy isEqualToString:@"LANGUAGE_PROFILE_REFRESH"])
  {
    v4 = 2;
  }

  else if ([codesCopy isEqualToString:@"LANGUAGE_PROFILE_INCOMPATIBLE"])
  {
    v4 = 3;
  }

  else if ([codesCopy isEqualToString:@"LANGUAGE_PROFILE_CORRUPT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)watermarkDetection
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (void)setHasHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXFinalSpeechRecognitionResponse;
  v4 = [(MXFinalSpeechRecognitionResponse *)&v8 description];
  dictionaryRepresentation = [(MXFinalSpeechRecognitionResponse *)self dictionaryRepresentation];
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

  if ((*&self->_has & 4) != 0)
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

  if ((*&self->_has & 2) != 0)
  {
    langProfileRecreateCodes = self->_langProfileRecreateCodes;
    if (langProfileRecreateCodes >= 5)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_langProfileRecreateCodes];
    }

    else
    {
      v12 = off_27991BA40[langProfileRecreateCodes];
    }

    [v4 setObject:v12 forKey:@"lang_profile_recreate_codes"];
  }

  audioAnalytics = self->_audioAnalytics;
  if (audioAnalytics)
  {
    dictionaryRepresentation2 = [(MXAudioAnalytics *)audioAnalytics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"audio_analytics"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    watermarkDetection = self->_watermarkDetection;
    if (watermarkDetection >= 4)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_watermarkDetection];
    }

    else
    {
      v17 = off_27991BA68[watermarkDetection];
    }

    [v4 setObject:v17 forKey:@"watermark_detection"];

    has = self->_has;
  }

  if (has)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_watermarkPeakAverage];
    [v4 setObject:v18 forKey:@"watermark_peak_average"];
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

  if ((*&self->_has & 0x10) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResult];
    [v4 setObject:v23 forKey:@"has_result"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_speechId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    returnCode = self->_returnCode;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

  if (self->_returnStr)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_recognitionResult)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if ((*&self->_has & 2) != 0)
  {
    langProfileRecreateCodes = self->_langProfileRecreateCodes;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

  if (self->_audioAnalytics)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    watermarkDetection = self->_watermarkDetection;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
  }

  if (has)
  {
    watermarkPeakAverage = self->_watermarkPeakAverage;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_latnnMitigatorResult)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_requestLocale)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    hasResult = self->_hasResult;
    PBDataWriterWriteBOOLField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_speechId)
  {
    [toCopy setSpeechId:?];
    toCopy = v6;
  }

  if (self->_sessionId)
  {
    [v6 setSessionId:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 16) = self->_returnCode;
    *(toCopy + 104) |= 4u;
  }

  if (self->_returnStr)
  {
    [v6 setReturnStr:?];
    toCopy = v6;
  }

  if (self->_recognitionResult)
  {
    [v6 setRecognitionResult:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_langProfileRecreateCodes;
    *(toCopy + 104) |= 2u;
  }

  if (self->_audioAnalytics)
  {
    [v6 setAudioAnalytics:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 24) = self->_watermarkDetection;
    *(toCopy + 104) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_watermarkPeakAverage;
    *(toCopy + 104) |= 1u;
  }

  if (self->_language)
  {
    [v6 setLanguage:?];
    toCopy = v6;
  }

  if (self->_latnnMitigatorResult)
  {
    [v6 setLatnnMitigatorResult:?];
    toCopy = v6;
  }

  if (self->_requestLocale)
  {
    [v6 setRequestLocale:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 100) = self->_hasResult;
    *(toCopy + 104) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_speechId copyWithZone:zone];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_returnCode;
    *(v5 + 104) |= 4u;
  }

  v10 = [(NSString *)self->_returnStr copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(MXRecognitionResult *)self->_recognitionResult copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_langProfileRecreateCodes;
    *(v5 + 104) |= 2u;
  }

  v14 = [(MXAudioAnalytics *)self->_audioAnalytics copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 96) = self->_watermarkDetection;
    *(v5 + 104) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_watermarkPeakAverage;
    *(v5 + 104) |= 1u;
  }

  v17 = [(NSString *)self->_language copyWithZone:zone];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(MXLatnnMitigatorResult *)self->_latnnMitigatorResult copyWithZone:zone];
  v20 = *(v5 + 40);
  *(v5 + 40) = v19;

  v21 = [(NSString *)self->_requestLocale copyWithZone:zone];
  v22 = *(v5 + 56);
  *(v5 + 56) = v21;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 100) = self->_hasResult;
    *(v5 + 104) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  speechId = self->_speechId;
  if (speechId | *(equalCopy + 11))
  {
    if (![(NSString *)speechId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 10))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v7 = *(equalCopy + 104);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 104) & 4) == 0 || self->_returnCode != *(equalCopy + 16))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 104) & 4) != 0)
  {
    goto LABEL_41;
  }

  returnStr = self->_returnStr;
  if (returnStr | *(equalCopy + 9) && ![(NSString *)returnStr isEqual:?])
  {
    goto LABEL_41;
  }

  recognitionResult = self->_recognitionResult;
  if (recognitionResult | *(equalCopy + 6))
  {
    if (![(MXRecognitionResult *)recognitionResult isEqual:?])
    {
      goto LABEL_41;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 104);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 104) & 2) == 0 || self->_langProfileRecreateCodes != *(equalCopy + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 104) & 2) != 0)
  {
    goto LABEL_41;
  }

  audioAnalytics = self->_audioAnalytics;
  if (audioAnalytics | *(equalCopy + 2))
  {
    if (![(MXAudioAnalytics *)audioAnalytics isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v13 = *(equalCopy + 104);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 104) & 8) == 0 || self->_watermarkDetection != *(equalCopy + 24))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 104) & 8) != 0)
  {
    goto LABEL_41;
  }

  if (has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_watermarkPeakAverage != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_41;
  }

  language = self->_language;
  if (language | *(equalCopy + 4) && ![(NSString *)language isEqual:?])
  {
    goto LABEL_41;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  if (latnnMitigatorResult | *(equalCopy + 5))
  {
    if (![(MXLatnnMitigatorResult *)latnnMitigatorResult isEqual:?])
    {
      goto LABEL_41;
    }
  }

  requestLocale = self->_requestLocale;
  if (requestLocale | *(equalCopy + 7))
  {
    if (![(NSString *)requestLocale isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v17 = (*(equalCopy + 104) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 104) & 0x10) != 0)
    {
      if (self->_hasResult)
      {
        if ((*(equalCopy + 100) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (*(equalCopy + 100))
      {
        goto LABEL_41;
      }

      v17 = 1;
      goto LABEL_42;
    }

LABEL_41:
    v17 = 0;
  }

LABEL_42:

  return v17;
}

- (unint64_t)hash
{
  v21 = [(NSString *)self->_speechId hash];
  v20 = [(NSString *)self->_sessionId hash];
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_returnCode;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSString *)self->_returnStr hash];
  v3 = [(MXRecognitionResult *)self->_recognitionResult hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_langProfileRecreateCodes;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MXAudioAnalytics *)self->_audioAnalytics hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_watermarkDetection;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  watermarkPeakAverage = self->_watermarkPeakAverage;
  if (watermarkPeakAverage < 0.0)
  {
    watermarkPeakAverage = -watermarkPeakAverage;
  }

  *v6.i64 = floor(watermarkPeakAverage + 0.5);
  v10 = (watermarkPeakAverage - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_15:
  v13 = [(NSString *)self->_language hash];
  v14 = [(MXLatnnMitigatorResult *)self->_latnnMitigatorResult hash];
  v15 = [(NSString *)self->_requestLocale hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_hasResult;
  }

  else
  {
    v16 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v3 ^ v4 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v12 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(MXFinalSpeechRecognitionResponse *)self setSpeechId:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 10))
  {
    [(MXFinalSpeechRecognitionResponse *)self setSessionId:?];
    fromCopy = v12;
  }

  if ((*(fromCopy + 104) & 4) != 0)
  {
    self->_returnCode = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 9))
  {
    [(MXFinalSpeechRecognitionResponse *)self setReturnStr:?];
    fromCopy = v12;
  }

  recognitionResult = self->_recognitionResult;
  v6 = *(fromCopy + 6);
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

    [(MXFinalSpeechRecognitionResponse *)self setRecognitionResult:?];
  }

  fromCopy = v12;
LABEL_15:
  if ((*(fromCopy + 104) & 2) != 0)
  {
    self->_langProfileRecreateCodes = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  audioAnalytics = self->_audioAnalytics;
  v8 = *(fromCopy + 2);
  if (audioAnalytics)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(MXAudioAnalytics *)audioAnalytics mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(MXFinalSpeechRecognitionResponse *)self setAudioAnalytics:?];
  }

  fromCopy = v12;
LABEL_23:
  v9 = *(fromCopy + 104);
  if ((v9 & 8) != 0)
  {
    self->_watermarkDetection = *(fromCopy + 24);
    *&self->_has |= 8u;
    v9 = *(fromCopy + 104);
  }

  if (v9)
  {
    self->_watermarkPeakAverage = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(MXFinalSpeechRecognitionResponse *)self setLanguage:?];
    fromCopy = v12;
  }

  latnnMitigatorResult = self->_latnnMitigatorResult;
  v11 = *(fromCopy + 5);
  if (latnnMitigatorResult)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    [(MXLatnnMitigatorResult *)latnnMitigatorResult mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    [(MXFinalSpeechRecognitionResponse *)self setLatnnMitigatorResult:?];
  }

  fromCopy = v12;
LABEL_35:
  if (*(fromCopy + 7))
  {
    [(MXFinalSpeechRecognitionResponse *)self setRequestLocale:?];
    fromCopy = v12;
  }

  if ((*(fromCopy + 104) & 0x10) != 0)
  {
    self->_hasResult = *(fromCopy + 100);
    *&self->_has |= 0x10u;
  }

  MEMORY[0x2821F96F8]();
}

@end