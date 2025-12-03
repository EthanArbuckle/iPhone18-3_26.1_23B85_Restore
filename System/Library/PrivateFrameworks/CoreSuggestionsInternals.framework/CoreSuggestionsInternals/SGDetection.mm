@interface SGDetection
- (SGDetection)initWithType:(unsigned int)type extraction:(id)extraction context:(id)context contextRangeOfInterest:(_NSRange)interest label:(id)label hasPhoneLabel:(BOOL)phoneLabel match:(_NSRange)match extractionInfo:(id)self0 isUnlikelyPhone:(BOOL)self1;
- (_NSRange)contextRangeOfInterest;
- (_NSRange)match;
- (id)description;
@end

@implementation SGDetection

- (_NSRange)match
{
  length = self->_match.length;
  location = self->_match.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)contextRangeOfInterest
{
  length = self->_contextRangeOfInterest.length;
  location = self->_contextRangeOfInterest.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  label = self->_label;
  v5 = [v3 initWithFormat:@"<SGDetection/%@ '%@'>", label, self->_extraction];

  return v5;
}

- (SGDetection)initWithType:(unsigned int)type extraction:(id)extraction context:(id)context contextRangeOfInterest:(_NSRange)interest label:(id)label hasPhoneLabel:(BOOL)phoneLabel match:(_NSRange)match extractionInfo:(id)self0 isUnlikelyPhone:(BOOL)self1
{
  length = interest.length;
  location = interest.location;
  extractionCopy = extraction;
  contextCopy = context;
  labelCopy = label;
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = SGDetection;
  v20 = [(SGDetection *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    objc_storeStrong(&v20->_extraction, extraction);
    objc_storeStrong(&v21->_context, context);
    v21->_contextRangeOfInterest.location = location;
    v21->_contextRangeOfInterest.length = length;
    objc_storeStrong(&v21->_label, label);
    v21->_hasPhoneLabel = phoneLabel;
    v21->_match = match;
    objc_storeStrong(&v21->_extractionInfo, info);
    v21->_isUnlikelyPhone = phone;
  }

  return v21;
}

uint64_t __112__SGDetection_detectionWithType_text_matchRange_matchString_label_hasPhoneLabel_extractionInfo_isUnlikelyPhone___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((*(result + 40) - a3) >= 0x50)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a7 = 1;
  }

  return result;
}

uint64_t __112__SGDetection_detectionWithType_text_matchRange_matchString_label_hasPhoneLabel_extractionInfo_isUnlikelyPhone___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a3 - *(result + 40)) >= 0x50)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a7 = 1;
  }

  return result;
}

@end