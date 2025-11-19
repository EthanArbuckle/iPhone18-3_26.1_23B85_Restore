@interface CVNLPCaptionSensitiveImageParameters
- (CVNLPCaptionSensitiveImageParameters)initWithVisionIdentifier:(id)a3 minConfidence:(double)a4 commonBlockingTokens:(id)a5 categoryBlockingTokens:(id)a6 categoryBlockingTokensAnnex:(id)a7;
@end

@implementation CVNLPCaptionSensitiveImageParameters

- (CVNLPCaptionSensitiveImageParameters)initWithVisionIdentifier:(id)a3 minConfidence:(double)a4 commonBlockingTokens:(id)a5 categoryBlockingTokens:(id)a6 categoryBlockingTokensAnnex:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = CVNLPCaptionSensitiveImageParameters;
  v17 = [(CVNLPCaptionSensitiveImageParameters *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_visionIdentifier, a3);
    v18->_minConfidence = a4;
    if (v15)
    {
      v22 = v15;
      blockingTokens = v18->_blockingTokens;
      v18->_blockingTokens = v22;
    }

    else
    {
      v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21);
      v27 = v24;
      if (v14)
      {
        objc_msgSend_addObjectsFromArray_(v24, v25, v14, v26);
      }

      if (v16)
      {
        objc_msgSend_addObjectsFromArray_(v27, v25, v16, v26);
      }

      blockingTokens = v18->_blockingTokens;
      v18->_blockingTokens = v27;
    }
  }

  return v18;
}

@end