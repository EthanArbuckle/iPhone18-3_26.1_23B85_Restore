@interface SGDetection
- (SGDetection)initWithType:(unsigned int)a3 extraction:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 label:(id)a7 hasPhoneLabel:(BOOL)a8 match:(_NSRange)a9 extractionInfo:(id)a10 isUnlikelyPhone:(BOOL)a11;
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

- (SGDetection)initWithType:(unsigned int)a3 extraction:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 label:(id)a7 hasPhoneLabel:(BOOL)a8 match:(_NSRange)a9 extractionInfo:(id)a10 isUnlikelyPhone:(BOOL)a11
{
  length = a6.length;
  location = a6.location;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v24 = a10;
  v25.receiver = self;
  v25.super_class = SGDetection;
  v20 = [(SGDetection *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = a3;
    objc_storeStrong(&v20->_extraction, a4);
    objc_storeStrong(&v21->_context, a5);
    v21->_contextRangeOfInterest.location = location;
    v21->_contextRangeOfInterest.length = length;
    objc_storeStrong(&v21->_label, a7);
    v21->_hasPhoneLabel = a8;
    v21->_match = a9;
    objc_storeStrong(&v21->_extractionInfo, a10);
    v21->_isUnlikelyPhone = a11;
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