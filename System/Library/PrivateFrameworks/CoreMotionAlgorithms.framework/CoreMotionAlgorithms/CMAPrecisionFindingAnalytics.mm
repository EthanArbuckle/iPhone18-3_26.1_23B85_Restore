@interface CMAPrecisionFindingAnalytics
- (CMAPrecisionFindingAnalytics)init;
- (id)analyticsDictionary;
- (void)dealloc;
- (void)feedAcceptedRange:(CMARangeType *)range;
- (void)feedDeviceMotion:(CMADeviceMotionType *)motion;
- (void)feedEstimatedHeight:(double)maxEstimatedHeight;
- (void)feedFractionAboveThreshold:(double)threshold;
- (void)feedRange:(CMARangeType *)range;
- (void)feedRevokeReason:(int)reason;
@end

@implementation CMAPrecisionFindingAnalytics

- (CMAPrecisionFindingAnalytics)init
{
  v8.receiver = self;
  v8.super_class = CMAPrecisionFindingAnalytics;
  result = [(CMAPrecisionFindingAnalytics *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_timestampOfFirstRawRange = _Q0;
    *&result->_timestampOfPreviousDMSample = _Q0;
    *&result->_totalTimeDuringRevoke = 0u;
    *&result->_countWristDown = 0u;
    *&result->_countAcceptedRange = 0u;
    *(&result->_countRawRangeDuringRevoke + 2) = 0;
    *&result->_minEstimatedHeight = 0u;
    *&result->_percentOfSessionInWristUp = 0u;
    *&result->_timeFromFirstRangeToFirstAcceptedRange = 0u;
    *&result->_meanRawRangeFrequencyThroughoutSession = 0u;
    *&result->_meanRawRangeFrequencyWhileConverging = 0u;
    *&result->_meanRawRangeFrequencyDuringRevoke = 0u;
    *&result->_maxEstimatedDeltaHeightOverSession = 0u;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAPrecisionFindingAnalytics;
  [(CMAPrecisionFindingAnalytics *)&v3 dealloc];
}

- (void)feedDeviceMotion:(CMADeviceMotionType *)motion
{
  var0 = motion->var0;
  if (self->_timestampOfFirstDMSample == -1.0)
  {
    self->_timestampOfFirstDMSample = var0;
  }

  self->_timestampOfRecentDMSample = var0;
  if (self->_crown && self->_wrist)
  {
    ++self->_countDM;
    v6 = *&motion->var1.var2;
    v31 = vcvt_hight_f32_f64(vcvt_f32_f64(*&motion->var1.var0), v6);
    sub_245F24EC0(&v31, v6);
    v7 = sub_245F24C20(v31.f32);
    v9 = v8;
    v11 = v10 * v10;
    v12 = sqrtf((v10 * v10) + (v8 * v8));
    v13 = atan2f(v12, v7);
    if (self->_wrist == self->_crown)
    {
      v13 = atan2f(v12, -v7);
    }

    v14 = v13;
    v18 = atan2f(sqrtf((v7 * v7) + v11), v9);
    if (v14 < 1.9199 && v14 > 1.309 && v18 > 1.5708)
    {
      ++self->_countWristUp;
    }

    if (v14 < 1.0472)
    {
      ++self->_countWristDown;
    }

    countDM = self->_countDM;
    if (countDM >= 1)
    {
      v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v15, v16, v17, self->_countWristUp / countDM * 100.0);
      objc_msgSend_setPercentOfSessionInWristUp_(self, v21, v20, v22);
      v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v23, v24, v25, self->_countWristDown / self->_countDM * 100.0);
      objc_msgSend_setPercentOfSessionInWristDown_(self, v27, v26, v28);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      timestampOfPreviousDMSample = self->_timestampOfPreviousDMSample;
      if (timestampOfPreviousDMSample > 0.0)
      {
        v30 = motion->var0 - timestampOfPreviousDMSample;
        if (v30 > 0.0)
        {
          self->_totalTimeDuringRevoke = v30 + self->_totalTimeDuringRevoke;
        }
      }
    }

    self->_timestampOfPreviousDMSample = motion->var0;
  }
}

- (void)feedRange:(CMARangeType *)range
{
  timestampOfFirstRawRange = self->_timestampOfFirstRawRange;
  if (timestampOfFirstRawRange == -1.0)
  {
    timestampOfFirstRawRange = range->timestamp;
    self->_timestampOfFirstRawRange = range->timestamp;
  }

  v6 = self->_countRawRange + 1;
  self->_countRawRange = v6;
  if (self->_timestampOfFirstDMSample > 0.0)
  {
    v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, v3, v6 / (self->_timestampOfRecentDMSample - timestampOfFirstRawRange));
    objc_msgSend_setMeanRawRangeFrequencyThroughoutSession_(self, v8, v7, v9);
    if (self->_wasFirstRangeAccepted && !self->_wasFirstArcShown)
    {
      v13 = self->_countRawRangeWhileConverging + 1;
      self->_countRawRangeWhileConverging = v13;
      v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, v12, v13 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
      objc_msgSend_setMeanRawRangeFrequencyWhileConverging_(self, v15, v14, v16);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      v17 = self->_countRawRangeDuringRevoke + 1;
      self->_countRawRangeDuringRevoke = v17;
      totalTimeDuringRevoke = self->_totalTimeDuringRevoke;
      if (totalTimeDuringRevoke > 0.0)
      {
        v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, v12, v17 / totalTimeDuringRevoke);

        MEMORY[0x2821F9670](self, sel_setMeanRawRangeFrequencyDuringRevoke_, v19, v20);
      }
    }
  }
}

- (void)feedAcceptedRange:(CMARangeType *)range
{
  if (self->_timestampOfFirstAcceptedRange == -1.0)
  {
    timestamp = range->timestamp;
    self->_timestampOfFirstAcceptedRange = range->timestamp;
    v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, v3, timestamp - self->_timestampOfFirstRawRange);
    objc_msgSend_setTimeFromFirstRangeToFirstAcceptedRange_(self, v8, v7, v9);
    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, v12, range->range);
    objc_msgSend_setFirstAcceptedRange_(self, v14, v13, v15);
    self->_wasFirstRangeAccepted = 1;
  }

  v16 = self->_countAcceptedRange + 1;
  self->_countAcceptedRange = v16;
  if (self->_timestampOfFirstDMSample > 0.0)
  {
    v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, v3, v16 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
    objc_msgSend_setMeanAcceptedRangeFrequencyThroughoutSession_(self, v18, v17, v19);
    if (self->_wasFirstRangeAccepted && !self->_wasFirstArcShown)
    {
      v23 = self->_countAcceptedRangeWhileConverging + 1;
      self->_countAcceptedRangeWhileConverging = v23;
      v24 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v20, v21, v22, v23 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
      objc_msgSend_setMeanAcceptedRangeFrequencyWhileConverging_(self, v25, v24, v26);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      v27 = self->_countAcceptedRangeDuringRevoke + 1;
      self->_countAcceptedRangeDuringRevoke = v27;
      totalTimeDuringRevoke = self->_totalTimeDuringRevoke;
      if (totalTimeDuringRevoke > 0.0)
      {
        v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v20, v21, v22, v27 / totalTimeDuringRevoke);

        MEMORY[0x2821F9670](self, sel_setMeanAcceptedFrequencyQualityDuringRevoke_, v29, v30);
      }
    }
  }
}

- (void)feedRevokeReason:(int)reason
{
  self->_revokeReason = reason;
  if (!reason)
  {
    self->_wasFirstArcShown = 1;
  }
}

- (void)feedEstimatedHeight:(double)maxEstimatedHeight
{
  minEstimatedHeight = self->_minEstimatedHeight;
  if (minEstimatedHeight > maxEstimatedHeight)
  {
    minEstimatedHeight = maxEstimatedHeight;
  }

  if (self->_maxEstimatedHeight >= maxEstimatedHeight)
  {
    maxEstimatedHeight = self->_maxEstimatedHeight;
  }

  self->_minEstimatedHeight = minEstimatedHeight;
  self->_maxEstimatedHeight = maxEstimatedHeight;
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, vabdd_f64(maxEstimatedHeight, minEstimatedHeight));

  MEMORY[0x2821F9670](self, sel_setMaxEstimatedDeltaHeightOverSession_, v7, v8);
}

- (void)feedFractionAboveThreshold:(double)threshold
{
  v7 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, a2, v3, v4);
  v11 = MEMORY[0x277CCABB0];
  if (v7)
  {
    v12 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v8, v9, v10);
    objc_msgSend_doubleValue(v12, v13, v14, v15);
    if (v16 >= threshold)
    {
      threshold = v16;
    }
  }

  v17 = objc_msgSend_numberWithDouble_(v11, v8, v9, v10, threshold);

  MEMORY[0x2821F9670](self, sel_setMaxPercentParticlesAboveHeightThreshold_, v17, v18);
}

- (id)analyticsDictionary
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  if (objc_msgSend_percentOfSessionInWristUp(self, v6, v7, v8))
  {
    v12 = objc_msgSend_percentOfSessionInWristUp(self, v9, v10, v11);
    objc_msgSend_setObject_forKey_(v5, v13, v12, @"PercentOfSessionInWristUp");
  }

  if (objc_msgSend_percentOfSessionInWristDown(self, v9, v10, v11))
  {
    v17 = objc_msgSend_percentOfSessionInWristDown(self, v14, v15, v16);
    objc_msgSend_setObject_forKey_(v5, v18, v17, @"PercentOfSessionInWristDown");
  }

  if (objc_msgSend_timeFromFirstRangeToFirstAcceptedRange(self, v14, v15, v16))
  {
    RangeToFirstAcceptedRange = objc_msgSend_timeFromFirstRangeToFirstAcceptedRange(self, v19, v20, v21);
    objc_msgSend_setObject_forKey_(v5, v23, RangeToFirstAcceptedRange, @"TimeFromFirstRangeToFirstAcceptedRange");
  }

  if (objc_msgSend_firstAcceptedRange(self, v19, v20, v21))
  {
    AcceptedRange = objc_msgSend_firstAcceptedRange(self, v24, v25, v26);
    objc_msgSend_setObject_forKey_(v5, v28, AcceptedRange, @"FirstAcceptedRange");
  }

  if (objc_msgSend_meanRawRangeFrequencyThroughoutSession(self, v24, v25, v26))
  {
    v32 = objc_msgSend_meanRawRangeFrequencyThroughoutSession(self, v29, v30, v31);
    objc_msgSend_setObject_forKey_(v5, v33, v32, @"MeanRawRangeFrequencyThroughoutSession");
  }

  if (objc_msgSend_meanAcceptedRangeFrequencyThroughoutSession(self, v29, v30, v31))
  {
    v37 = objc_msgSend_meanAcceptedRangeFrequencyThroughoutSession(self, v34, v35, v36);
    objc_msgSend_setObject_forKey_(v5, v38, v37, @"MeanAcceptedRangeFrequencyThroughoutSession");
  }

  if (objc_msgSend_meanRawRangeFrequencyWhileConverging(self, v34, v35, v36))
  {
    v42 = objc_msgSend_meanRawRangeFrequencyWhileConverging(self, v39, v40, v41);
    objc_msgSend_setObject_forKey_(v5, v43, v42, @"MeanRawRangeFrequencyWhileConverging");
  }

  if (objc_msgSend_meanAcceptedRangeFrequencyWhileConverging(self, v39, v40, v41))
  {
    v47 = objc_msgSend_meanAcceptedRangeFrequencyWhileConverging(self, v44, v45, v46);
    objc_msgSend_setObject_forKey_(v5, v48, v47, @"MeanAcceptedRangeFrequencyWhileConverging");
  }

  if (objc_msgSend_meanRawRangeFrequencyDuringRevoke(self, v44, v45, v46))
  {
    v52 = objc_msgSend_meanRawRangeFrequencyDuringRevoke(self, v49, v50, v51);
    objc_msgSend_setObject_forKey_(v5, v53, v52, @"MeanRawRangeFrequencyDuringRevoke");
  }

  if (objc_msgSend_meanAcceptedFrequencyQualityDuringRevoke(self, v49, v50, v51))
  {
    v57 = objc_msgSend_meanAcceptedFrequencyQualityDuringRevoke(self, v54, v55, v56);
    objc_msgSend_setObject_forKey_(v5, v58, v57, @"MeanAcceptedFrequencyQualityDuringRevoke");
  }

  if (objc_msgSend_maxEstimatedDeltaHeightOverSession(self, v54, v55, v56))
  {
    v62 = objc_msgSend_maxEstimatedDeltaHeightOverSession(self, v59, v60, v61);
    objc_msgSend_setObject_forKey_(v5, v63, v62, @"MaxEstimatedDeltaHeightOverSession");
  }

  if (objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v59, v60, v61))
  {
    v67 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v64, v65, v66);
    objc_msgSend_setObject_forKey_(v5, v68, v67, @"MaxPercentParticlesAboveHeightThreshold");
  }

  return v5;
}

@end