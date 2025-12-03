@interface IDSWRMLinkRecommendationMetric
- (IDSWRMLinkRecommendationMetric)initWithRecommendedLinkType:(unsigned int)type primaryLinkType:(unsigned int)linkType magnetState:(unsigned int)state infraWiFiState:(unsigned int)fiState;
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

- (IDSWRMLinkRecommendationMetric)initWithRecommendedLinkType:(unsigned int)type primaryLinkType:(unsigned int)linkType magnetState:(unsigned int)state infraWiFiState:(unsigned int)fiState
{
  v11.receiver = self;
  v11.super_class = IDSWRMLinkRecommendationMetric;
  result = [(IDSWRMLinkRecommendationMetric *)&v11 init];
  if (result)
  {
    result->_recommendedLinkType = type;
    result->_primaryLinkType = linkType;
    result->_magnetState = state;
    result->_infraWiFiState = fiState;
  }

  return result;
}

@end