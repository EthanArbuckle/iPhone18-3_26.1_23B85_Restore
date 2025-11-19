@interface BMSiriVoiceTriggerStatistics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriVoiceTriggerStatistics)initWithAbsoluteTimestamp:(id)a3 firstPassPeakScoreHS:(id)a4 firstPassPeakScoreJS:(id)a5 firstPassTriggerSource:(id)a6 recognizerScoreHS:(id)a7 recognizerScoreJS:(id)a8 triggerScoreHS:(id)a9 triggerScoreJS:(id)a10 mitigationScore:(id)a11 invocationTypeID:(id)a12 repetitionSimilarityScore:(id)a13 tdSpeakerRecognizerCombinedScore:(id)a14 hwSampleRate:(id)a15 configVersion:(id)a16 keywordThresholdHS:(id)a17 keywordThresholdJS:(id)a18 tdSpeakerRecognizerCombinedThresholdHS:(id)a19 tdSpeakerRecognizerCombinedThresholdJS:(id)a20;
- (BMSiriVoiceTriggerStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriVoiceTriggerStatistics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassPeakScoreHS](self, "hasFirstPassPeakScoreHS") || [v5 hasFirstPassPeakScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassPeakScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
      v14 = v13;
      [v5 firstPassPeakScoreHS];
      if (v14 != v15)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassPeakScoreJS](self, "hasFirstPassPeakScoreJS") || [v5 hasFirstPassPeakScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassPeakScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
      v17 = v16;
      [v5 firstPassPeakScoreJS];
      if (v17 != v18)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassTriggerSource](self, "hasFirstPassTriggerSource") || [v5 hasFirstPassTriggerSource])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassTriggerSource])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassTriggerSource])
      {
        goto LABEL_91;
      }

      v19 = [(BMSiriVoiceTriggerStatistics *)self firstPassTriggerSource];
      if (v19 != [v5 firstPassTriggerSource])
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRecognizerScoreHS](self, "hasRecognizerScoreHS") || [v5 hasRecognizerScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasRecognizerScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
      v21 = v20;
      [v5 recognizerScoreHS];
      if (v21 != v22)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRecognizerScoreJS](self, "hasRecognizerScoreJS") || [v5 hasRecognizerScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasRecognizerScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
      v24 = v23;
      [v5 recognizerScoreJS];
      if (v24 != v25)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTriggerScoreHS](self, "hasTriggerScoreHS") || [v5 hasTriggerScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasTriggerScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
      v27 = v26;
      [v5 triggerScoreHS];
      if (v27 != v28)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTriggerScoreJS](self, "hasTriggerScoreJS") || [v5 hasTriggerScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasTriggerScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
      v30 = v29;
      [v5 triggerScoreJS];
      if (v30 != v31)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasMitigationScore](self, "hasMitigationScore") || [v5 hasMitigationScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasMitigationScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasMitigationScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
      v33 = v32;
      [v5 mitigationScore];
      if (v33 != v34)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasInvocationTypeID](self, "hasInvocationTypeID") || [v5 hasInvocationTypeID])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasInvocationTypeID])
      {
        goto LABEL_91;
      }

      if (![v5 hasInvocationTypeID])
      {
        goto LABEL_91;
      }

      v35 = [(BMSiriVoiceTriggerStatistics *)self invocationTypeID];
      if (v35 != [v5 invocationTypeID])
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRepetitionSimilarityScore](self, "hasRepetitionSimilarityScore") || [v5 hasRepetitionSimilarityScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRepetitionSimilarityScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasRepetitionSimilarityScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
      v37 = v36;
      [v5 repetitionSimilarityScore];
      if (v37 != v38)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedScore](self, "hasTdSpeakerRecognizerCombinedScore") || [v5 hasTdSpeakerRecognizerCombinedScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasTdSpeakerRecognizerCombinedScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
      v40 = v39;
      [v5 tdSpeakerRecognizerCombinedScore];
      if (v40 != v41)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasHwSampleRate](self, "hasHwSampleRate") || [v5 hasHwSampleRate])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasHwSampleRate])
      {
        goto LABEL_91;
      }

      if (![v5 hasHwSampleRate])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
      v43 = v42;
      [v5 hwSampleRate];
      if (v43 != v44)
      {
        goto LABEL_91;
      }
    }

    v45 = [(BMSiriVoiceTriggerStatistics *)self configVersion];
    v46 = [v5 configVersion];
    v47 = v46;
    if (v45 == v46)
    {
    }

    else
    {
      v48 = [(BMSiriVoiceTriggerStatistics *)self configVersion];
      v49 = [v5 configVersion];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_91;
      }
    }

    if (!-[BMSiriVoiceTriggerStatistics hasKeywordThresholdHS](self, "hasKeywordThresholdHS") && ![v5 hasKeywordThresholdHS] || -[BMSiriVoiceTriggerStatistics hasKeywordThresholdHS](self, "hasKeywordThresholdHS") && objc_msgSend(v5, "hasKeywordThresholdHS") && (-[BMSiriVoiceTriggerStatistics keywordThresholdHS](self, "keywordThresholdHS"), v52 = v51, objc_msgSend(v5, "keywordThresholdHS"), v52 == v53))
    {
      if (!-[BMSiriVoiceTriggerStatistics hasKeywordThresholdJS](self, "hasKeywordThresholdJS") && ![v5 hasKeywordThresholdJS] || -[BMSiriVoiceTriggerStatistics hasKeywordThresholdJS](self, "hasKeywordThresholdJS") && objc_msgSend(v5, "hasKeywordThresholdJS") && (-[BMSiriVoiceTriggerStatistics keywordThresholdJS](self, "keywordThresholdJS"), v55 = v54, objc_msgSend(v5, "keywordThresholdJS"), v55 == v56))
      {
        if (!-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdHS](self, "hasTdSpeakerRecognizerCombinedThresholdHS") && ![v5 hasTdSpeakerRecognizerCombinedThresholdHS] || -[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdHS](self, "hasTdSpeakerRecognizerCombinedThresholdHS") && objc_msgSend(v5, "hasTdSpeakerRecognizerCombinedThresholdHS") && (-[BMSiriVoiceTriggerStatistics tdSpeakerRecognizerCombinedThresholdHS](self, "tdSpeakerRecognizerCombinedThresholdHS"), v58 = v57, objc_msgSend(v5, "tdSpeakerRecognizerCombinedThresholdHS"), v58 == v59))
        {
          if (!-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdJS](self, "hasTdSpeakerRecognizerCombinedThresholdJS") && ![v5 hasTdSpeakerRecognizerCombinedThresholdJS])
          {
            v12 = 1;
            goto LABEL_92;
          }

          if (-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdJS](self, "hasTdSpeakerRecognizerCombinedThresholdJS") && [v5 hasTdSpeakerRecognizerCombinedThresholdJS])
          {
            [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
            v61 = v60;
            [v5 tdSpeakerRecognizerCombinedThresholdJS];
            v12 = v61 == v62;
LABEL_92:

            goto LABEL_93;
          }
        }
      }
    }

LABEL_91:
    v12 = 0;
    goto LABEL_92;
  }

  v12 = 0;
LABEL_93:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v94[18] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
    v11 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
    v12 = [v11 numberWithDouble:?];
  }

  if ([(BMSiriVoiceTriggerStatistics *)self hasFirstPassTriggerSource])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics firstPassTriggerSource](self, "firstPassTriggerSource")}];
  }

  else
  {
    v13 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS], fabs(v14) == INFINITY))
  {
    v16 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
    v15 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
    v16 = [v15 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS], fabs(v17) == INFINITY))
  {
    v19 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
    v18 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
    v19 = [v18 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self triggerScoreHS], fabs(v20) == INFINITY))
  {
    v22 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
    v21 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
    v22 = [v21 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self triggerScoreJS], fabs(v23) == INFINITY))
  {
    v92 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
    v24 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
    v92 = [v24 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasMitigationScore]|| ([(BMSiriVoiceTriggerStatistics *)self mitigationScore], fabs(v25) == INFINITY))
  {
    v91 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
    v26 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
    v91 = [v26 numberWithDouble:?];
  }

  if ([(BMSiriVoiceTriggerStatistics *)self hasInvocationTypeID])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics invocationTypeID](self, "invocationTypeID")}];
  }

  else
  {
    v90 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRepetitionSimilarityScore]|| ([(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore], fabs(v27) == INFINITY))
  {
    v89 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
    v89 = [v28 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedScore]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore], fabs(v29) == INFINITY))
  {
    v88 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
    v30 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
    v88 = [v30 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasHwSampleRate]|| ([(BMSiriVoiceTriggerStatistics *)self hwSampleRate], fabs(v31) == INFINITY))
  {
    v87 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
    v32 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
    v87 = [v32 numberWithDouble:?];
  }

  v86 = [(BMSiriVoiceTriggerStatistics *)self configVersion];
  if (![(BMSiriVoiceTriggerStatistics *)self hasKeywordThresholdHS]|| ([(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS], fabs(v33) == INFINITY))
  {
    v85 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
    v34 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
    v85 = [v34 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasKeywordThresholdJS]|| ([(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS], fabs(v35) == INFINITY))
  {
    v84 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
    v36 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
    v84 = [v36 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedThresholdHS]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS], fabs(v37) == INFINITY))
  {
    v83 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
    v38 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
    v83 = [v38 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedThresholdJS]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS], fabs(v39) == INFINITY))
  {
    v41 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
    v40 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
    v41 = [v40 numberWithDouble:?];
  }

  v93[0] = @"absoluteTimestamp";
  v42 = v6;
  if (!v6)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v42;
  v94[0] = v42;
  v93[1] = @"firstPassPeakScoreHS";
  v43 = v9;
  if (!v9)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v43;
  v94[1] = v43;
  v93[2] = @"firstPassPeakScoreJS";
  v44 = v12;
  if (!v12)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v44;
  v94[2] = v44;
  v93[3] = @"firstPassTriggerSource";
  v45 = v13;
  if (!v13)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v45;
  v94[3] = v45;
  v93[4] = @"recognizerScoreHS";
  v46 = v16;
  if (!v16)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v46;
  v94[4] = v46;
  v93[5] = @"recognizerScoreJS";
  v47 = v19;
  if (!v19)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v47;
  v94[5] = v47;
  v93[6] = @"triggerScoreHS";
  v48 = v22;
  if (!v22)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v48;
  v94[6] = v48;
  v93[7] = @"triggerScoreJS";
  v49 = v92;
  if (!v92)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v94[7] = v49;
  v93[8] = @"mitigationScore";
  v50 = v91;
  if (!v91)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v94[8] = v50;
  v93[9] = @"invocationTypeID";
  v51 = v90;
  if (!v90)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v22;
  v78 = v51;
  v94[9] = v51;
  v93[10] = @"repetitionSimilarityScore";
  v52 = v89;
  if (!v89)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v13;
  v94[10] = v52;
  v93[11] = @"tdSpeakerRecognizerCombinedScore";
  v53 = v88;
  if (!v88)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v6;
  v65 = v53;
  v94[11] = v53;
  v93[12] = @"hwSampleRate";
  v54 = v87;
  if (!v87)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v50;
  v68 = v49;
  v80 = v9;
  v94[12] = v54;
  v93[13] = @"configVersion";
  v55 = v86;
  if (!v86)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v19;
  v56 = v12;
  v94[13] = v55;
  v93[14] = @"keywordThresholdHS";
  v57 = v85;
  if (!v85)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v16;
  v94[14] = v57;
  v93[15] = @"keywordThresholdJS";
  v59 = v84;
  if (!v84)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v52;
  v94[15] = v59;
  v93[16] = @"tdSpeakerRecognizerCombinedThresholdHS";
  v61 = v83;
  if (!v83)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v94[16] = v61;
  v93[17] = @"tdSpeakerRecognizerCombinedThresholdJS";
  v62 = v41;
  if (!v41)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v94[17] = v62;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:{18, v65}];
  if (!v41)
  {
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (v92)
  {
    if (v79)
    {
      goto LABEL_124;
    }
  }

  else
  {

    if (v79)
    {
LABEL_124:
      if (v77)
      {
        goto LABEL_125;
      }

      goto LABEL_135;
    }
  }

  if (v77)
  {
LABEL_125:
    if (v58)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

LABEL_135:

  if (v58)
  {
LABEL_126:
    if (v81)
    {
      goto LABEL_127;
    }

    goto LABEL_137;
  }

LABEL_136:

  if (v81)
  {
LABEL_127:
    if (v56)
    {
      goto LABEL_128;
    }

    goto LABEL_138;
  }

LABEL_137:

  if (v56)
  {
LABEL_128:
    if (v80)
    {
      goto LABEL_129;
    }

LABEL_139:

    if (v82)
    {
      goto LABEL_130;
    }

    goto LABEL_140;
  }

LABEL_138:

  if (!v80)
  {
    goto LABEL_139;
  }

LABEL_129:
  if (v82)
  {
    goto LABEL_130;
  }

LABEL_140:

LABEL_130:
  v63 = *MEMORY[0x1E69E9840];

  return v76;
}

- (BMSiriVoiceTriggerStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v218[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v182 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v182 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = v182;
    v9 = [v7 alloc];
    [v8 doubleValue];
    v11 = v10;

    v12 = [v9 initWithTimeIntervalSince1970:v11];
LABEL_6:
    v6 = v12;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v6 = 0;
        v46 = 0;
        goto LABEL_144;
      }

      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v93 = *MEMORY[0x1E698F240];
      v217 = *MEMORY[0x1E696A578];
      v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v218[0] = v180;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v218 forKeys:&v217 count:1];
      v94 = [v92 initWithDomain:v93 code:2 userInfo:v14];
      v6 = 0;
      v46 = 0;
      *a4 = v94;
      goto LABEL_143;
    }

    v12 = v182;
    goto LABEL_6;
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v6 = [v13 dateFromString:v182];

LABEL_9:
  v14 = [v5 objectForKeyedSubscript:@"firstPassPeakScoreHS"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v180 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v180 = v14;
LABEL_12:
    v15 = [v5 objectForKeyedSubscript:@"firstPassPeakScoreJS"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v179 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v179 = v15;
LABEL_15:
      v16 = [v5 objectForKeyedSubscript:@"firstPassTriggerSource"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v176 = v16;
        v178 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v176 = v16;
        v178 = v16;
LABEL_18:
        v17 = [v5 objectForKeyedSubscript:@"recognizerScoreHS"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
LABEL_21:
          v19 = [v5 objectForKeyedSubscript:@"recognizerScoreJS"];
          if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v171 = v19;
            v175 = 0;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v171 = v19;
            v175 = v19;
LABEL_24:
            v20 = [v5 objectForKeyedSubscript:@"triggerScoreHS"];
            v173 = v20;
            if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v174 = 0;
              goto LABEL_27;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v174 = v21;
LABEL_27:
              v22 = [v5 objectForKeyedSubscript:@"triggerScoreJS"];
              v170 = v22;
              if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v172 = 0;
                goto LABEL_30;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v172 = v23;
LABEL_30:
                v24 = [v5 objectForKeyedSubscript:@"mitigationScore"];
                v168 = v24;
                if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v169 = 0;
                  goto LABEL_33;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v169 = v25;
LABEL_33:
                  v26 = [v5 objectForKeyedSubscript:@"invocationTypeID"];
                  v164 = v26;
                  if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v165 = 0;
                    goto LABEL_36;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v165 = v27;
LABEL_36:
                    v28 = [v5 objectForKeyedSubscript:@"repetitionSimilarityScore"];
                    v159 = v28;
                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v160 = 0;
                      goto LABEL_39;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v160 = v29;
LABEL_39:
                      v30 = [v5 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
                      v157 = v30;
                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v158 = 0;
                        goto LABEL_42;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v158 = v31;
LABEL_42:
                        v32 = [v5 objectForKeyedSubscript:@"hwSampleRate"];
                        v155 = v32;
                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v156 = 0;
                          goto LABEL_45;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v156 = v33;
LABEL_45:
                          v34 = [v5 objectForKeyedSubscript:@"configVersion"];
                          v152 = v34;
                          if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v153 = 0;
                            goto LABEL_48;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v153 = v35;
LABEL_48:
                            v36 = [v5 objectForKeyedSubscript:@"keywordThresholdHS"];
                            v166 = v17;
                            v149 = v36;
                            if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v151 = 0;
                              goto LABEL_51;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v151 = v37;
LABEL_51:
                              v38 = [v5 objectForKeyedSubscript:@"keywordThresholdJS"];
                              v148 = v38;
                              if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v150 = 0;
                                goto LABEL_54;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v150 = v39;
LABEL_54:
                                v40 = [v5 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdHS"];
                                v161 = v40;
                                if (v40)
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v41 = v6;
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!a4)
                                      {
                                        v40 = 0;
                                        v46 = 0;
                                        v62 = v171;
                                        goto LABEL_127;
                                      }

                                      v41 = v6;
                                      v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v141 = *MEMORY[0x1E698F240];
                                      v185 = *MEMORY[0x1E696A578];
                                      v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedThresholdHS"];
                                      v186 = v114;
                                      v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                                      v142 = [v140 initWithDomain:v141 code:2 userInfo:v113];
                                      v40 = 0;
                                      v46 = 0;
                                      *a4 = v142;
                                      goto LABEL_126;
                                    }

                                    v41 = v6;
                                    v40 = v40;
                                  }
                                }

                                else
                                {
                                  v41 = v6;
                                }

                                v113 = [v5 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdJS"];
                                if (v113 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (a4)
                                    {
                                      v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v146 = *MEMORY[0x1E698F240];
                                      v183 = *MEMORY[0x1E696A578];
                                      v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedThresholdJS"];
                                      v184 = v143;
                                      v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
                                      *a4 = [v147 initWithDomain:v146 code:2 userInfo:v144];
                                    }

                                    v114 = 0;
                                    v46 = 0;
                                    goto LABEL_126;
                                  }

                                  v114 = v113;
                                }

                                else
                                {
                                  v114 = 0;
                                }

                                v46 = [(BMSiriVoiceTriggerStatistics *)self initWithAbsoluteTimestamp:v41 firstPassPeakScoreHS:v180 firstPassPeakScoreJS:v179 firstPassTriggerSource:v178 recognizerScoreHS:v18 recognizerScoreJS:v175 triggerScoreHS:v174 triggerScoreJS:v172 mitigationScore:v169 invocationTypeID:v165 repetitionSimilarityScore:v160 tdSpeakerRecognizerCombinedScore:v158 hwSampleRate:v156 configVersion:v153 keywordThresholdHS:v151 keywordThresholdJS:v150 tdSpeakerRecognizerCombinedThresholdHS:v40 tdSpeakerRecognizerCombinedThresholdJS:v114];
                                self = v46;
LABEL_126:
                                v62 = v171;

                                v6 = v41;
                                v17 = v166;
LABEL_127:
                                v115 = v161;
LABEL_128:

                                v16 = v176;
LABEL_129:

LABEL_130:
LABEL_131:

LABEL_132:
LABEL_133:

LABEL_134:
LABEL_135:

LABEL_136:
LABEL_137:

                                goto LABEL_138;
                              }

                              if (a4)
                              {
                                v163 = v18;
                                v132 = v14;
                                v133 = v15;
                                v134 = v6;
                                v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v136 = *MEMORY[0x1E698F240];
                                v187 = *MEMORY[0x1E696A578];
                                v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"keywordThresholdJS"];
                                v188 = v137;
                                v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
                                v138 = v135;
                                v6 = v134;
                                v40 = v137;
                                v15 = v133;
                                v14 = v132;
                                v18 = v163;
                                v139 = [v138 initWithDomain:v136 code:2 userInfo:v115];
                                v150 = 0;
                                v46 = 0;
                                *a4 = v139;
                                v62 = v171;
                                goto LABEL_128;
                              }

                              v150 = 0;
                              v46 = 0;
LABEL_178:
                              v16 = v176;
                              v62 = v171;
                              goto LABEL_129;
                            }

                            if (a4)
                            {
                              v126 = v6;
                              v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v128 = *MEMORY[0x1E698F240];
                              v189 = *MEMORY[0x1E696A578];
                              v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"keywordThresholdHS"];
                              v190 = v150;
                              v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                              v130 = v127;
                              v6 = v126;
                              v148 = v129;
                              v131 = [v130 initWithDomain:v128 code:2 userInfo:?];
                              v151 = 0;
                              v46 = 0;
                              *a4 = v131;
                              goto LABEL_178;
                            }

                            v151 = 0;
                            v46 = 0;
                            v16 = v176;
LABEL_176:
                            v62 = v171;
                            goto LABEL_130;
                          }

                          if (a4)
                          {
                            v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v124 = *MEMORY[0x1E698F240];
                            v191 = *MEMORY[0x1E696A578];
                            v151 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"configVersion"];
                            v192 = v151;
                            v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
                            v125 = [v154 initWithDomain:v124 code:2 userInfo:?];
                            v153 = 0;
                            v46 = 0;
                            *a4 = v125;
                            v16 = v176;
                            goto LABEL_176;
                          }

                          v153 = 0;
                          v46 = 0;
                          v16 = v176;
LABEL_174:
                          v62 = v171;
                          goto LABEL_131;
                        }

                        if (a4)
                        {
                          v118 = v6;
                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v193 = *MEMORY[0x1E696A578];
                          v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hwSampleRate"];
                          v194 = v153;
                          v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                          v122 = v119;
                          v6 = v118;
                          v152 = v121;
                          v123 = [v122 initWithDomain:v120 code:2 userInfo:?];
                          v156 = 0;
                          v46 = 0;
                          *a4 = v123;
                          v16 = v176;
                          goto LABEL_174;
                        }

                        v156 = 0;
                        v46 = 0;
LABEL_172:
                        v16 = v176;
                        v62 = v171;
                        goto LABEL_132;
                      }

                      if (a4)
                      {
                        v107 = v6;
                        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v109 = *MEMORY[0x1E698F240];
                        v195 = *MEMORY[0x1E696A578];
                        v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedScore"];
                        v196 = v156;
                        v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                        v111 = v108;
                        v6 = v107;
                        v155 = v110;
                        v112 = [v111 initWithDomain:v109 code:2 userInfo:?];
                        v158 = 0;
                        v46 = 0;
                        *a4 = v112;
                        goto LABEL_172;
                      }

                      v158 = 0;
                      v46 = 0;
LABEL_167:
                      v16 = v176;
                      v62 = v171;
                      goto LABEL_133;
                    }

                    if (a4)
                    {
                      v101 = v6;
                      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v103 = *MEMORY[0x1E698F240];
                      v197 = *MEMORY[0x1E696A578];
                      v158 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"repetitionSimilarityScore"];
                      v198 = v158;
                      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                      v105 = v102;
                      v6 = v101;
                      v157 = v104;
                      v106 = [v105 initWithDomain:v103 code:2 userInfo:?];
                      v160 = 0;
                      v46 = 0;
                      *a4 = v106;
                      goto LABEL_167;
                    }

                    v160 = 0;
                    v46 = 0;
LABEL_163:
                    v16 = v176;
                    v62 = v171;
                    goto LABEL_134;
                  }

                  if (a4)
                  {
                    v95 = v6;
                    v96 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v97 = *MEMORY[0x1E698F240];
                    v199 = *MEMORY[0x1E696A578];
                    v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationTypeID"];
                    v200 = v160;
                    v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                    v99 = v96;
                    v6 = v95;
                    v159 = v98;
                    v100 = [v99 initWithDomain:v97 code:2 userInfo:?];
                    v165 = 0;
                    v46 = 0;
                    *a4 = v100;
                    goto LABEL_163;
                  }

                  v165 = 0;
                  v46 = 0;
LABEL_159:
                  v16 = v176;
                  v62 = v171;
                  goto LABEL_135;
                }

                if (a4)
                {
                  v86 = v6;
                  v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v88 = *MEMORY[0x1E698F240];
                  v201 = *MEMORY[0x1E696A578];
                  v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mitigationScore"];
                  v202 = v165;
                  v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                  v90 = v87;
                  v6 = v86;
                  v164 = v89;
                  v91 = [v90 initWithDomain:v88 code:2 userInfo:?];
                  v169 = 0;
                  v46 = 0;
                  *a4 = v91;
                  goto LABEL_159;
                }

                v169 = 0;
                v46 = 0;
LABEL_154:
                v16 = v176;
                v62 = v171;
                goto LABEL_136;
              }

              if (a4)
              {
                v80 = v6;
                v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                v82 = *MEMORY[0x1E698F240];
                v203 = *MEMORY[0x1E696A578];
                v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"triggerScoreJS"];
                v204 = v169;
                v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                v84 = v81;
                v6 = v80;
                v168 = v83;
                v85 = [v84 initWithDomain:v82 code:2 userInfo:?];
                v172 = 0;
                v46 = 0;
                *a4 = v85;
                goto LABEL_154;
              }

              v172 = 0;
              v46 = 0;
LABEL_148:
              v16 = v176;
              v62 = v171;
              goto LABEL_137;
            }

            if (a4)
            {
              v74 = v6;
              v75 = objc_alloc(MEMORY[0x1E696ABC0]);
              v76 = *MEMORY[0x1E698F240];
              v205 = *MEMORY[0x1E696A578];
              v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"triggerScoreHS"];
              v206 = v172;
              v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
              v78 = v75;
              v6 = v74;
              v170 = v77;
              v79 = [v78 initWithDomain:v76 code:2 userInfo:?];
              v174 = 0;
              v46 = 0;
              *a4 = v79;
              goto LABEL_148;
            }

            v174 = 0;
            v46 = 0;
            v16 = v176;
            v62 = v171;
LABEL_138:

            goto LABEL_139;
          }

          if (a4)
          {
            v162 = v18;
            v65 = v6;
            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v207 = *MEMORY[0x1E696A578];
            v167 = v17;
            v68 = a4;
            v69 = objc_alloc(MEMORY[0x1E696AEC0]);
            v145 = objc_opt_class();
            v70 = v69;
            v62 = v19;
            v174 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v145, @"recognizerScoreJS"];
            v208 = v174;
            v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
            v72 = v66;
            v6 = v65;
            v18 = v162;
            v173 = v71;
            v73 = [v72 initWithDomain:v67 code:2 userInfo:?];
            v175 = 0;
            v46 = 0;
            *v68 = v73;
            v17 = v167;
            v16 = v176;
            goto LABEL_138;
          }

          v175 = 0;
          v46 = 0;
          v16 = v176;
          v62 = v19;
LABEL_139:

          goto LABEL_140;
        }

        if (a4)
        {
          v58 = v6;
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E698F240];
          v209 = *MEMORY[0x1E696A578];
          v61 = a4;
          v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"recognizerScoreHS"];
          v210 = v175;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
          v63 = v59;
          v6 = v58;
          v64 = [v63 initWithDomain:v60 code:2 userInfo:v62];
          v46 = 0;
          *v61 = v64;
          v18 = 0;
          v16 = v176;
          goto LABEL_139;
        }

        v18 = 0;
        v46 = 0;
        v16 = v176;
LABEL_140:

        v50 = v178;
        goto LABEL_141;
      }

      if (a4)
      {
        v177 = a4;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = v6;
        v56 = *MEMORY[0x1E698F240];
        v211 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassTriggerSource"];
        v212 = v18;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
        v57 = v56;
        v6 = v55;
        v178 = 0;
        v46 = 0;
        *v177 = [v54 initWithDomain:v57 code:2 userInfo:v17];
        goto LABEL_140;
      }

      v50 = 0;
      v46 = 0;
LABEL_141:

      goto LABEL_142;
    }

    if (a4)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = v6;
      v49 = *MEMORY[0x1E698F240];
      v213 = *MEMORY[0x1E696A578];
      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassPeakScoreJS"];
      v214 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
      v52 = v47;
      v16 = v51;
      v53 = v49;
      v6 = v48;
      v179 = 0;
      v46 = 0;
      *a4 = [v52 initWithDomain:v53 code:2 userInfo:v51];
      goto LABEL_141;
    }

    v179 = 0;
    v46 = 0;
LABEL_142:

    goto LABEL_143;
  }

  if (a4)
  {
    v42 = objc_alloc(MEMORY[0x1E696ABC0]);
    v43 = v6;
    v44 = *MEMORY[0x1E698F240];
    v215 = *MEMORY[0x1E696A578];
    v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassPeakScoreHS"];
    v216 = v179;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
    v45 = v44;
    v6 = v43;
    v180 = 0;
    v46 = 0;
    *a4 = [v42 initWithDomain:v45 code:2 userInfo:v15];
    goto LABEL_142;
  }

  v180 = 0;
  v46 = 0;
LABEL_143:

LABEL_144:
  v116 = *MEMORY[0x1E69E9840];
  return v46;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriVoiceTriggerStatistics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasFirstPassPeakScoreHS)
  {
    firstPassPeakScoreHS = self->_firstPassPeakScoreHS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFirstPassPeakScoreJS)
  {
    firstPassPeakScoreJS = self->_firstPassPeakScoreJS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFirstPassTriggerSource)
  {
    firstPassTriggerSource = self->_firstPassTriggerSource;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRecognizerScoreHS)
  {
    recognizerScoreHS = self->_recognizerScoreHS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasRecognizerScoreJS)
  {
    recognizerScoreJS = self->_recognizerScoreJS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTriggerScoreHS)
  {
    triggerScoreHS = self->_triggerScoreHS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTriggerScoreJS)
  {
    triggerScoreJS = self->_triggerScoreJS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMitigationScore)
  {
    mitigationScore = self->_mitigationScore;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasInvocationTypeID)
  {
    invocationTypeID = self->_invocationTypeID;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRepetitionSimilarityScore)
  {
    repetitionSimilarityScore = self->_repetitionSimilarityScore;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedScore)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasHwSampleRate)
  {
    hwSampleRate = self->_hwSampleRate;
    PBDataWriterWriteFloatField();
  }

  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasKeywordThresholdHS)
  {
    keywordThresholdHS = self->_keywordThresholdHS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasKeywordThresholdJS)
  {
    keywordThresholdJS = self->_keywordThresholdJS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedThresholdHS)
  {
    tdSpeakerRecognizerCombinedThresholdHS = self->_tdSpeakerRecognizerCombinedThresholdHS;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedThresholdJS)
  {
    tdSpeakerRecognizerCombinedThresholdJS = self->_tdSpeakerRecognizerCombinedThresholdJS;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v81.receiver = self;
  v81.super_class = BMSiriVoiceTriggerStatistics;
  v5 = [(BMEventBase *)&v81 init];
  if (!v5)
  {
    goto LABEL_128;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v82) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v82) & 0x7F) << v7;
        if ((LOBYTE(v82) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v82 = 0.0;
          v15 = [v4 position] + 8;
          if (v15 >= [v4 position] && (v16 = objc_msgSend(v4, "position") + 8, v16 <= objc_msgSend(v4, "length")))
          {
            v71 = [v4 data];
            [v71 getBytes:&v82 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = v82;
          v63 = 24;
          goto LABEL_124;
        case 2u:
          v5->_hasFirstPassPeakScoreHS = 1;
          LODWORD(v82) = 0;
          v46 = [v4 position] + 4;
          if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 4, v47 <= objc_msgSend(v4, "length")))
          {
            v72 = [v4 data];
            [v72 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 64;
          goto LABEL_124;
        case 3u:
          v5->_hasFirstPassPeakScoreJS = 1;
          LODWORD(v82) = 0;
          v34 = [v4 position] + 4;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 4, v35 <= objc_msgSend(v4, "length")))
          {
            v68 = [v4 data];
            [v68 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 72;
          goto LABEL_124;
        case 4u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v5->_hasFirstPassTriggerSource = 1;
          while (1)
          {
            LOBYTE(v82) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v40 |= (LOBYTE(v82) & 0x7F) << v38;
            if ((LOBYTE(v82) & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v13 = v39++ >= 9;
            if (v13)
            {
              v33 = 0;
              goto LABEL_92;
            }
          }

          if ([v4 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v40;
          }

LABEL_92:
          v60 = 52;
          goto LABEL_93;
        case 5u:
          v5->_hasRecognizerScoreHS = 1;
          LODWORD(v82) = 0;
          v23 = [v4 position] + 4;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 4, v24 <= objc_msgSend(v4, "length")))
          {
            v66 = [v4 data];
            [v66 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 80;
          goto LABEL_124;
        case 6u:
          v5->_hasRecognizerScoreJS = 1;
          LODWORD(v82) = 0;
          v50 = [v4 position] + 4;
          if (v50 >= [v4 position] && (v51 = objc_msgSend(v4, "position") + 4, v51 <= objc_msgSend(v4, "length")))
          {
            v74 = [v4 data];
            [v74 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 88;
          goto LABEL_124;
        case 7u:
          v5->_hasTriggerScoreHS = 1;
          LODWORD(v82) = 0;
          v54 = [v4 position] + 4;
          if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 4, v55 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 96;
          goto LABEL_124;
        case 8u:
          v5->_hasTriggerScoreJS = 1;
          LODWORD(v82) = 0;
          v44 = [v4 position] + 4;
          if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 4, v45 <= objc_msgSend(v4, "length")))
          {
            v70 = [v4 data];
            [v70 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 104;
          goto LABEL_124;
        case 9u:
          v5->_hasMitigationScore = 1;
          LODWORD(v82) = 0;
          v58 = [v4 position] + 4;
          if (v58 >= [v4 position] && (v59 = objc_msgSend(v4, "position") + 4, v59 <= objc_msgSend(v4, "length")))
          {
            v77 = [v4 data];
            [v77 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 112;
          goto LABEL_124;
        case 0xAu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasInvocationTypeID = 1;
          break;
        case 0xBu:
          v5->_hasRepetitionSimilarityScore = 1;
          LODWORD(v82) = 0;
          v56 = [v4 position] + 4;
          if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 4, v57 <= objc_msgSend(v4, "length")))
          {
            v76 = [v4 data];
            [v76 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 120;
          goto LABEL_124;
        case 0xCu:
          v5->_hasTdSpeakerRecognizerCombinedScore = 1;
          LODWORD(v82) = 0;
          v21 = [v4 position] + 4;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 4, v22 <= objc_msgSend(v4, "length")))
          {
            v65 = [v4 data];
            [v65 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 128;
          goto LABEL_124;
        case 0xDu:
          v5->_hasHwSampleRate = 1;
          LODWORD(v82) = 0;
          v25 = [v4 position] + 4;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 4, v26 <= objc_msgSend(v4, "length")))
          {
            v67 = [v4 data];
            [v67 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 136;
          goto LABEL_124;
        case 0xEu:
          v52 = PBReaderReadString();
          configVersion = v5->_configVersion;
          v5->_configVersion = v52;

          goto LABEL_125;
        case 0xFu:
          v5->_hasKeywordThresholdHS = 1;
          LODWORD(v82) = 0;
          v19 = [v4 position] + 4;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 4, v20 <= objc_msgSend(v4, "length")))
          {
            v64 = [v4 data];
            [v64 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 152;
          goto LABEL_124;
        case 0x10u:
          v5->_hasKeywordThresholdJS = 1;
          LODWORD(v82) = 0;
          v36 = [v4 position] + 4;
          if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 4, v37 <= objc_msgSend(v4, "length")))
          {
            v69 = [v4 data];
            [v69 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 160;
          goto LABEL_124;
        case 0x11u:
          v5->_hasTdSpeakerRecognizerCombinedThresholdHS = 1;
          LODWORD(v82) = 0;
          v17 = [v4 position] + 4;
          if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 4, v18 <= objc_msgSend(v4, "length")))
          {
            v61 = [v4 data];
            [v61 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 168;
          goto LABEL_124;
        case 0x12u:
          v5->_hasTdSpeakerRecognizerCombinedThresholdJS = 1;
          LODWORD(v82) = 0;
          v48 = [v4 position] + 4;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 4, v49 <= objc_msgSend(v4, "length")))
          {
            v73 = [v4 data];
            [v73 getBytes:&v82 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v62 = *&v82;
          v63 = 176;
LABEL_124:
          *(&v5->super.super.isa + v63) = v62;
          goto LABEL_125;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_127;
          }

          goto LABEL_125;
      }

      while (1)
      {
        LOBYTE(v82) = 0;
        v30 = [v4 position] + 1;
        if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
        {
          v32 = [v4 data];
          [v32 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v29 |= (LOBYTE(v82) & 0x7F) << v27;
        if ((LOBYTE(v82) & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v13 = v28++ >= 9;
        if (v13)
        {
          v33 = 0;
          goto LABEL_88;
        }
      }

      v33 = [v4 hasError] ? 0 : v29;
LABEL_88:
      v60 = 56;
LABEL_93:
      *(&v5->super.super.isa + v60) = v33;
LABEL_125:
      v78 = [v4 position];
    }

    while (v78 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_127:
    v79 = 0;
  }

  else
  {
LABEL_128:
    v79 = v5;
  }

  return v79;
}

- (NSString)description
{
  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
  v36 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
  v35 = [v4 numberWithDouble:?];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics firstPassTriggerSource](self, "firstPassTriggerSource")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
  v29 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
  v28 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
  v34 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
  v27 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
  v26 = [v9 numberWithDouble:?];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics invocationTypeID](self, "invocationTypeID")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
  v25 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
  v24 = [v11 numberWithDouble:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
  v23 = [v12 numberWithDouble:?];
  v13 = [(BMSiriVoiceTriggerStatistics *)self configVersion];
  v14 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
  v17 = [v16 numberWithDouble:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
  v19 = [v18 numberWithDouble:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
  v21 = [v20 numberWithDouble:?];
  v32 = [v31 initWithFormat:@"BMSiriVoiceTriggerStatistics with absoluteTimestamp: %@, firstPassPeakScoreHS: %@, firstPassPeakScoreJS: %@, firstPassTriggerSource: %@, recognizerScoreHS: %@, recognizerScoreJS: %@, triggerScoreHS: %@, triggerScoreJS: %@, mitigationScore: %@, invocationTypeID: %@, repetitionSimilarityScore: %@, tdSpeakerRecognizerCombinedScore: %@, hwSampleRate: %@, configVersion: %@, keywordThresholdHS: %@, keywordThresholdJS: %@, tdSpeakerRecognizerCombinedThresholdHS: %@, tdSpeakerRecognizerCombinedThresholdJS: %@", v37, v36, v35, v30, v29, v28, v34, v27, v26, v33, v25, v24, v23, v13, v15, v17, v19, v21];

  return v32;
}

- (BMSiriVoiceTriggerStatistics)initWithAbsoluteTimestamp:(id)a3 firstPassPeakScoreHS:(id)a4 firstPassPeakScoreJS:(id)a5 firstPassTriggerSource:(id)a6 recognizerScoreHS:(id)a7 recognizerScoreJS:(id)a8 triggerScoreHS:(id)a9 triggerScoreJS:(id)a10 mitigationScore:(id)a11 invocationTypeID:(id)a12 repetitionSimilarityScore:(id)a13 tdSpeakerRecognizerCombinedScore:(id)a14 hwSampleRate:(id)a15 configVersion:(id)a16 keywordThresholdHS:(id)a17 keywordThresholdJS:(id)a18 tdSpeakerRecognizerCombinedThresholdHS:(id)a19 tdSpeakerRecognizerCombinedThresholdJS:(id)a20
{
  v25 = a3;
  v26 = a4;
  v77 = a5;
  v76 = a6;
  v75 = a7;
  v74 = a8;
  v73 = a9;
  v72 = a10;
  v27 = v26;
  v71 = a11;
  v70 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v69 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v34 = a20;
  v78.receiver = self;
  v78.super_class = BMSiriVoiceTriggerStatistics;
  v35 = [(BMEventBase *)&v78 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v25)
    {
      v35->_hasRaw_absoluteTimestamp = 1;
      [v25 timeIntervalSince1970];
    }

    else
    {
      v35->_hasRaw_absoluteTimestamp = 0;
      v36 = -1.0;
    }

    v35->_raw_absoluteTimestamp = v36;
    if (v27)
    {
      v35->_hasFirstPassPeakScoreHS = 1;
      [v27 floatValue];
      v38 = v37;
    }

    else
    {
      v35->_hasFirstPassPeakScoreHS = 0;
      v38 = -1.0;
    }

    v35->_firstPassPeakScoreHS = v38;
    if (v77)
    {
      v35->_hasFirstPassPeakScoreJS = 1;
      [v77 floatValue];
      v40 = v39;
    }

    else
    {
      v35->_hasFirstPassPeakScoreJS = 0;
      v40 = -1.0;
    }

    v35->_firstPassPeakScoreJS = v40;
    if (v76)
    {
      v35->_hasFirstPassTriggerSource = 1;
      v41 = [v76 intValue];
    }

    else
    {
      v35->_hasFirstPassTriggerSource = 0;
      v41 = -1;
    }

    v35->_firstPassTriggerSource = v41;
    if (v75)
    {
      v35->_hasRecognizerScoreHS = 1;
      [v75 floatValue];
      v43 = v42;
    }

    else
    {
      v35->_hasRecognizerScoreHS = 0;
      v43 = -1.0;
    }

    v35->_recognizerScoreHS = v43;
    if (v74)
    {
      v35->_hasRecognizerScoreJS = 1;
      [v74 floatValue];
      v45 = v44;
    }

    else
    {
      v35->_hasRecognizerScoreJS = 0;
      v45 = -1.0;
    }

    v35->_recognizerScoreJS = v45;
    if (v73)
    {
      v35->_hasTriggerScoreHS = 1;
      [v73 floatValue];
      v47 = v46;
    }

    else
    {
      v35->_hasTriggerScoreHS = 0;
      v47 = -1.0;
    }

    v35->_triggerScoreHS = v47;
    if (v72)
    {
      v35->_hasTriggerScoreJS = 1;
      [v72 floatValue];
      v49 = v48;
    }

    else
    {
      v35->_hasTriggerScoreJS = 0;
      v49 = -1.0;
    }

    v35->_triggerScoreJS = v49;
    if (v71)
    {
      v35->_hasMitigationScore = 1;
      [v71 floatValue];
      v51 = v50;
    }

    else
    {
      v35->_hasMitigationScore = 0;
      v51 = -1.0;
    }

    v35->_mitigationScore = v51;
    if (v70)
    {
      v35->_hasInvocationTypeID = 1;
      v52 = [v70 intValue];
    }

    else
    {
      v35->_hasInvocationTypeID = 0;
      v52 = -1;
    }

    v35->_invocationTypeID = v52;
    if (v28)
    {
      v35->_hasRepetitionSimilarityScore = 1;
      [v28 floatValue];
      v54 = v53;
    }

    else
    {
      v35->_hasRepetitionSimilarityScore = 0;
      v54 = -1.0;
    }

    v35->_repetitionSimilarityScore = v54;
    if (v29)
    {
      v35->_hasTdSpeakerRecognizerCombinedScore = 1;
      [v29 floatValue];
      v56 = v55;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedScore = 0;
      v56 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedScore = v56;
    if (v30)
    {
      v35->_hasHwSampleRate = 1;
      [v30 floatValue];
      v58 = v57;
    }

    else
    {
      v35->_hasHwSampleRate = 0;
      v58 = -1.0;
    }

    v35->_hwSampleRate = v58;
    objc_storeStrong(&v35->_configVersion, a16);
    if (v31)
    {
      v35->_hasKeywordThresholdHS = 1;
      [v31 floatValue];
      v60 = v59;
    }

    else
    {
      v35->_hasKeywordThresholdHS = 0;
      v60 = -1.0;
    }

    v35->_keywordThresholdHS = v60;
    if (v32)
    {
      v35->_hasKeywordThresholdJS = 1;
      [v32 floatValue];
      v62 = v61;
    }

    else
    {
      v35->_hasKeywordThresholdJS = 0;
      v62 = -1.0;
    }

    v35->_keywordThresholdJS = v62;
    if (v33)
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdHS = 1;
      [v33 floatValue];
      v64 = v63;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdHS = 0;
      v64 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedThresholdHS = v64;
    if (v34)
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdJS = 1;
      [v34 floatValue];
      v66 = v65;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdJS = 0;
      v66 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedThresholdJS = v66;
  }

  return v35;
}

+ (id)protoFields
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v23[0] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassPeakScoreHS" number:2 type:1 subMessageClass:0];
  v23[1] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassPeakScoreJS" number:3 type:1 subMessageClass:0];
  v23[2] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassTriggerSource" number:4 type:2 subMessageClass:0];
  v23[3] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizerScoreHS" number:5 type:1 subMessageClass:0];
  v23[4] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizerScoreJS" number:6 type:1 subMessageClass:0];
  v23[5] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggerScoreHS" number:7 type:1 subMessageClass:0];
  v23[6] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggerScoreJS" number:8 type:1 subMessageClass:0];
  v23[7] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mitigationScore" number:9 type:1 subMessageClass:0];
  v23[8] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationTypeID" number:10 type:2 subMessageClass:0];
  v23[9] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"repetitionSimilarityScore" number:11 type:1 subMessageClass:0];
  v23[10] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedScore" number:12 type:1 subMessageClass:0];
  v23[11] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hwSampleRate" number:13 type:1 subMessageClass:0];
  v23[12] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"configVersion" number:14 type:13 subMessageClass:0];
  v23[13] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"keywordThresholdHS" number:15 type:1 subMessageClass:0];
  v23[14] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"keywordThresholdJS" number:16 type:1 subMessageClass:0];
  v23[15] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdHS" number:17 type:1 subMessageClass:0];
  v23[16] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdJS" number:18 type:1 subMessageClass:0];
  v23[17] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassPeakScoreHS" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassPeakScoreJS" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassTriggerSource" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizerScoreHS" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizerScoreJS" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggerScoreHS" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggerScoreJS" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mitigationScore" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationTypeID" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"repetitionSimilarityScore" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedScore" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hwSampleRate" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"configVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"keywordThresholdHS" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:1 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"keywordThresholdJS" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdHS" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:1 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdJS" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:1 convertedType:0];
  v23[0] = v22;
  v23[1] = v21;
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v18;
  v23[5] = v17;
  v23[6] = v16;
  v23[7] = v15;
  v23[8] = v2;
  v23[9] = v3;
  v23[10] = v4;
  v23[11] = v14;
  v23[12] = v5;
  v23[13] = v6;
  v23[14] = v7;
  v23[15] = v13;
  v23[16] = v8;
  v23[17] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMSiriVoiceTriggerStatistics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end