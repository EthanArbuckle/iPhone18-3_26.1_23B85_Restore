@interface IDSWRMLinkRecommendationMetric
- (IDSWRMLinkRecommendationMetric)initWithRecommendedLinkType:(unsigned int)a3 primaryLinkType:(unsigned int)a4 magnetState:(unsigned int)a5 infraWiFiState:(unsigned int)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWRMLinkRecommendationMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSWRMLinkRecommendationMetric recommendedLinkType](self, "recommendedLinkType")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"recommendedLinkType", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSWRMLinkRecommendationMetric primaryLinkType](self, "primaryLinkType")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"primaryLinkType", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSWRMLinkRecommendationMetric magnetState](self, "magnetState")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"magnetState", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSWRMLinkRecommendationMetric infraWiFiState](self, "infraWiFiState")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"infraWiFiState", v7);
  }

  return v3;
}

- (IDSWRMLinkRecommendationMetric)initWithRecommendedLinkType:(unsigned int)a3 primaryLinkType:(unsigned int)a4 magnetState:(unsigned int)a5 infraWiFiState:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = IDSWRMLinkRecommendationMetric;
  result = [(IDSWRMLinkRecommendationMetric *)&v11 init];
  if (result)
  {
    result->_recommendedLinkType = a3;
    result->_primaryLinkType = a4;
    result->_magnetState = a5;
    result->_infraWiFiState = a6;
  }

  return result;
}

@end