@interface BWAdaptiveCorrectionPreviewRegistrationTuningParameters
- (BWAdaptiveCorrectionPreviewRegistrationRegToolBoxConfig)regToolBoxConfig;
- (BWAdaptiveCorrectionPreviewRegistrationTuningParameters)init;
- (BWAdaptiveCorrectionPreviewRegistrationTuningParameters)initWithTuningDictionary:(id)dictionary;
- (uint64_t)_setDefaultAdaptiveCorrectionParameters;
@end

@implementation BWAdaptiveCorrectionPreviewRegistrationTuningParameters

- (BWAdaptiveCorrectionPreviewRegistrationTuningParameters)init
{
  v5.receiver = self;
  v5.super_class = BWAdaptiveCorrectionPreviewRegistrationTuningParameters;
  v2 = [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_regToolBoxConfig.keypointGridHeight = 0x700000018;
    *&v2->_regToolBoxConfig.keypointsSearchRadius = 1;
    *&v2->_keypointsMinSelectionScore = 0x3003FD9999ALL;
    *&v2->_epipolarWeightFalloffDistance = xmmword_1AD0463F0;
    *&v2->_regToolBoxConfig.numPyrLevels = xmmword_1AD0463E0;
    [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)v2 _setDefaultAdaptiveCorrectionParameters];
    v3->_adaptiveCorrectionConfigsPtr = v3->_adaptiveCorrectionConfigs;
  }

  return v3;
}

- (uint64_t)_setDefaultAdaptiveCorrectionParameters
{
  if (result)
  {
    for (i = 0; i != 1536; i += 512)
    {
      v2 = result + i;
      *(v2 + 64) = xmmword_1AD046400;
      *(v2 + 80) = xmmword_1AD046410;
      *(v2 + 96) = xmmword_1AD046420;
      *(v2 + 120) = xmmword_1AD046430;
      *(v2 + 136) = 0x4072C00000000000;
      *(v2 + 152) = xmmword_1AD046440;
      *(v2 + 168) = 0x3FB999999999999ALL;
      *(v2 + 176) = 1;
      *(v2 + 184) = 0x3F50624DD2F1A9FCLL;
      if (i)
      {
        v3 = 5;
      }

      else
      {
        v3 = 10;
      }

      *(v2 + 144) = v3;
    }
  }

  return result;
}

- (BWAdaptiveCorrectionPreviewRegistrationTuningParameters)initWithTuningDictionary:(id)dictionary
{
  v27.receiver = self;
  v27.super_class = BWAdaptiveCorrectionPreviewRegistrationTuningParameters;
  v4 = [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)&v27 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_regToolBoxConfig.keypointGridHeight = 0x700000018;
    *&v4->_regToolBoxConfig.keypointsSearchRadius = 1;
    *&v4->_keypointsMinSelectionScore = 0x3003FD9999ALL;
    *&v4->_epipolarWeightFalloffDistance = xmmword_1AD0463F0;
    *&v4->_regToolBoxConfig.numPyrLevels = xmmword_1AD0463E0;
    [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)v4 _setDefaultAdaptiveCorrectionParameters];
    v5->_regToolBoxConfig.numPyrLevels = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"numPyrLevels", "unsignedIntValue"}];
    v5->_regToolBoxConfig.keypointGridWidth = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"keypointGridWidth", "unsignedIntValue"}];
    v5->_regToolBoxConfig.keypointGridHeight = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"keypointGridHeight", "unsignedIntValue"}];
    v5->_regToolBoxConfig.keypointsTemplateRadius = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"keypointsTemplateRadius", "unsignedIntValue"}];
    v5->_regToolBoxConfig.keypointsSearchRadius = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"keypointsSearchRadius", "unsignedIntValue"}];
    [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"keypointsMinNccScore", "doubleValue"}];
    *&v7 = v7;
    v5->_regToolBoxConfig.keypointsMinNccScore = *&v7;
    v5->_regToolBoxConfig.imageWidth = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"imageWidth", "unsignedIntValue"}];
    v5->_regToolBoxConfig.imageHeight = [objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"RegTollboxParams", "objectForKeyedSubscript:", @"imageHeight", "unsignedIntValue"}];
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"keypointsMinSelectionScore", "floatValue"}];
    v5->_keypointsMinSelectionScore = v8;
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"epipolarWeightFalloffDistance", "doubleValue"}];
    v5->_epipolarWeightFalloffDistance = v9;
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"macroDepthWeightFalloffDistance", "doubleValue"}];
    v10 = 0;
    v5->_macroDepthWeightFalloffDistance = v11;
    p_rangeOCxT = &v5->_adaptiveCorrectionConfigs[0].rangeOCxT;
    do
    {
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"epErrorLimitWidePix_FirstPass", "doubleValue"}];
      *(p_rangeOCxT - 4) = v13;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"epErrorLimitWidePix_SecondPass", "doubleValue"}];
      *(p_rangeOCxT - 3) = v14;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"rangePFL_T", "doubleValue"}];
      *(p_rangeOCxT - 2) = v15;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"rangePFL_W", "doubleValue"}];
      *(p_rangeOCxT - 1) = v16;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"rangeOCxT", "doubleValue"}];
      *p_rangeOCxT = v17;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"rangeOCxW", "doubleValue"}];
      *(p_rangeOCxT + 1) = v18;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"rangeOCyW", "doubleValue"}];
      *(p_rangeOCxT + 3) = v19;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"intermediateMacroDistMM", "doubleValue"}];
      *(p_rangeOCxT + 4) = v20;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"extremeMacroDistMM", "doubleValue"}];
      *(p_rangeOCxT + 5) = v21;
      *(p_rangeOCxT + 12) = [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"minPointsForAdjustment", "intValue"}];
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"errorVal_GreaterThanInf", "doubleValue"}];
      *(p_rangeOCxT + 7) = v22;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"errorVal_LessThanExtremeMacro", "doubleValue"}];
      *(p_rangeOCxT + 8) = v23;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"errorVal_BetweenIntermediate_ExtremeMacro", "doubleValue"}];
      *(p_rangeOCxT + 9) = v24;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"runAnalyticalPreconditioning", "doubleValue"}];
      *(p_rangeOCxT + 80) = v25 != 0.0;
      [objc_msgSend(objc_msgSend(objc_msgSend(dictionary objectForKeyedSubscript:{@"AdaptiveCorrectionConfig", "objectForKeyedSubscript:", objc_msgSend(&unk_1F22481D8, "objectAtIndexedSubscript:", v10)), "objectForKeyedSubscript:", @"spgEpsilon", "doubleValue"}];
      *(p_rangeOCxT + 11) = v26;
      ++v10;
      p_rangeOCxT += 64;
    }

    while (v10 != 3);
    v5->_adaptiveCorrectionConfigsPtr = v5->_adaptiveCorrectionConfigs;
  }

  return v5;
}

- (BWAdaptiveCorrectionPreviewRegistrationRegToolBoxConfig)regToolBoxConfig
{
  v3 = *&self[1].keypointGridHeight;
  *&retstr->numPyrLevels = *&self[1].numPyrLevels;
  *&retstr->keypointGridHeight = v3;
  return self;
}

@end