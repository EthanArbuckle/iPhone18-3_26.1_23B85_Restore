@interface CHGroupingAndRecognitionResults
- (CHGroupingAndRecognitionResults)initWithGroupingResult:(id)result recognitionResultsByGroupID:(id)d strokeClassificationResult:(id)classificationResult previousProcessedStrokeGroupingResult:(id)groupingResult previousProcessedRecognizedResultsByGroupID:(id)iD strokeGroupReplacements:(id)replacements cachedRecognitionResultsFromPostProcessing:(id)processing;
- (NSDictionary)cachedRecognitionResultsFromPostProcessing;
- (id)refreshedCachedResultsFromPostProcessing;
@end

@implementation CHGroupingAndRecognitionResults

- (CHGroupingAndRecognitionResults)initWithGroupingResult:(id)result recognitionResultsByGroupID:(id)d strokeClassificationResult:(id)classificationResult previousProcessedStrokeGroupingResult:(id)groupingResult previousProcessedRecognizedResultsByGroupID:(id)iD strokeGroupReplacements:(id)replacements cachedRecognitionResultsFromPostProcessing:(id)processing
{
  resultCopy = result;
  dCopy = d;
  classificationResultCopy = classificationResult;
  groupingResultCopy = groupingResult;
  iDCopy = iD;
  replacementsCopy = replacements;
  processingCopy = processing;
  v61.receiver = self;
  v61.super_class = CHGroupingAndRecognitionResults;
  v18 = [(CHGroupingAndRecognitionResults *)&v61 init];
  p_isa = &v18->super.isa;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_strokeGroupingResult, result);
    objc_storeStrong(p_isa + 4, d);
    objc_storeStrong(p_isa + 6, groupingResult);
    objc_storeStrong(p_isa + 7, iD);
    objc_storeStrong(p_isa + 5, classificationResult);
    objc_storeStrong(p_isa + 8, replacements);
    v26 = objc_msgSend_strokeGroups(resultCopy, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_mutableCopy(v26, v27, v28, v29, v30, v31);
    intermediateStrokeGroups = v20->__intermediateStrokeGroups;
    v20->__intermediateStrokeGroups = v32;

    v39 = objc_msgSend_mutableCopy(dCopy, v34, v35, v36, v37, v38);
    intermediateRecognitionResults = v20->__intermediateRecognitionResults;
    v20->__intermediateRecognitionResults = v39;

    if (processingCopy)
    {
      v46 = objc_msgSend_mutableCopy(processingCopy, v41, v42, v43, v44, v45);
    }

    else
    {
      v46 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v41, v42, v43, v44, v45);
    }

    intermediateCachedRecognitionResults = v20->_intermediateCachedRecognitionResults;
    v20->_intermediateCachedRecognitionResults = v46;

    v53 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v48, v49, v50, v51, v52);
    refreshedCachedResultsFromPostProcessing = v20->_refreshedCachedResultsFromPostProcessing;
    v20->_refreshedCachedResultsFromPostProcessing = v53;
  }

  return v20;
}

- (NSDictionary)cachedRecognitionResultsFromPostProcessing
{
  v6 = objc_msgSend_copy(self->_intermediateCachedRecognitionResults, a2, v2, v3, v4, v5);

  return v6;
}

- (id)refreshedCachedResultsFromPostProcessing
{
  v6 = objc_msgSend_copy(self->_refreshedCachedResultsFromPostProcessing, a2, v2, v3, v4, v5);

  return v6;
}

@end