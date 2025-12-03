@interface CVNLPCaptionSensitiveImageParameters
- (CVNLPCaptionSensitiveImageParameters)initWithVisionIdentifier:(id)identifier minConfidence:(double)confidence commonBlockingTokens:(id)tokens categoryBlockingTokens:(id)blockingTokens categoryBlockingTokensAnnex:(id)annex;
@end

@implementation CVNLPCaptionSensitiveImageParameters

- (CVNLPCaptionSensitiveImageParameters)initWithVisionIdentifier:(id)identifier minConfidence:(double)confidence commonBlockingTokens:(id)tokens categoryBlockingTokens:(id)blockingTokens categoryBlockingTokensAnnex:(id)annex
{
  identifierCopy = identifier;
  tokensCopy = tokens;
  blockingTokensCopy = blockingTokens;
  annexCopy = annex;
  v29.receiver = self;
  v29.super_class = CVNLPCaptionSensitiveImageParameters;
  v17 = [(CVNLPCaptionSensitiveImageParameters *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_visionIdentifier, identifier);
    v18->_minConfidence = confidence;
    if (blockingTokensCopy)
    {
      v22 = blockingTokensCopy;
      blockingTokens = v18->_blockingTokens;
      v18->_blockingTokens = v22;
    }

    else
    {
      v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21);
      v27 = v24;
      if (tokensCopy)
      {
        objc_msgSend_addObjectsFromArray_(v24, v25, tokensCopy, v26);
      }

      if (annexCopy)
      {
        objc_msgSend_addObjectsFromArray_(v27, v25, annexCopy, v26);
      }

      blockingTokens = v18->_blockingTokens;
      v18->_blockingTokens = v27;
    }
  }

  return v18;
}

@end