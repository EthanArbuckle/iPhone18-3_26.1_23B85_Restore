@interface CAMStillImageCaptureResponse
- (BOOL)flashFired;
- (CAMStillImageCaptureResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 captureDate:(id)a5 metadata:(id)a6 burstIdentifier:(id)a7 burstRepresentedCount:(unint64_t)a8 imageWellImage:(id)a9 textAnalysisImage:(id)a10 coordinationInfo:(id)a11 finalExpectedPixelSize:(CGSize)a12 expectingPairedVideo:(BOOL)a13 captureID:(int64_t)a14 semanticEnhanceScene:(int64_t)a15;
- (CGSize)finalExpectedPixelSize;
- (NSString)description;
- (unint64_t)mediaSubtypes;
@end

@implementation CAMStillImageCaptureResponse

- (unint64_t)mediaSubtypes
{
  v3 = [(CAMCaptureResponse *)self coordinationInfo];
  v4 = [v3 isHDR];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if ([(CAMStillImageCaptureResponse *)self isExpectingPairedVideo])
  {
    return v5 | 8;
  }

  else
  {
    return v5;
  }
}

- (BOOL)flashFired
{
  v2 = [(CAMStillImageCaptureResponse *)self metadata];
  v3 = [v2 objectForKey:*MEMORY[0x1E696D9B0]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E696D9F0]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedShortValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (CAMStillImageCaptureResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 captureDate:(id)a5 metadata:(id)a6 burstIdentifier:(id)a7 burstRepresentedCount:(unint64_t)a8 imageWellImage:(id)a9 textAnalysisImage:(id)a10 coordinationInfo:(id)a11 finalExpectedPixelSize:(CGSize)a12 expectingPairedVideo:(BOOL)a13 captureID:(int64_t)a14 semanticEnhanceScene:(int64_t)a15
{
  height = a12.height;
  width = a12.width;
  v20 = a4;
  v22 = a3;
  v37 = a5;
  v23 = a6;
  v24 = a7;
  v36 = a9;
  v25 = a10;
  v38.receiver = self;
  v38.super_class = CAMStillImageCaptureResponse;
  v26 = [(CAMCaptureResponse *)&v38 initWithType:0 captureSession:v20 coordinationInfo:a11];
  if (v26)
  {
    v27 = [v22 copy];
    persistenceUUID = v26->_persistenceUUID;
    v26->_persistenceUUID = v27;

    objc_storeStrong(&v26->_captureDate, a5);
    v29 = [v23 copy];
    metadata = v26->_metadata;
    v26->_metadata = v29;

    v31 = [v24 copy];
    burstIdentifier = v26->_burstIdentifier;
    v26->_burstIdentifier = v31;

    v26->_burstRepresentedCount = a8;
    objc_storeStrong(&v26->_imageWellImage, a9);
    objc_storeStrong(&v26->_textAnalysisImage, a10);
    v26->_expectingPairedVideo = a13;
    v26->_finalExpectedPixelSize.width = width;
    v26->_finalExpectedPixelSize.height = height;
    v26->_captureID = a14;
    v26->_semanticEnhanceScene = a15;
    v33 = v26;
  }

  return v26;
}

- (NSString)description
{
  if (self->_burstIdentifier)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YES, %ld frames", self->_burstRepresentedCount];
  }

  else
  {
    v3 = @"NO";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(CAMStillImageCaptureResponse *)self captureID];
  v7 = [(CAMStillImageCaptureResponse *)self persistenceUUID];
  v8 = [(CAMCaptureResponse *)self sessionIdentifier];
  v9 = [(CAMStillImageCaptureResponse *)self captureDate];
  v10 = [(CAMStillImageCaptureResponse *)self captureDate];
  [v10 timeIntervalSince1970];
  v12 = v11;
  v13 = [(CAMStillImageCaptureResponse *)self burstIdentifier];
  v14 = [v4 stringWithFormat:@"<%@ captureID:%lld persistenceUUID:%@ sessionIdentifier:%d, captureDate:%@ (%.3f), burst:%@, burstIdentifier:%@>", v5, v6, v7, v8, v9, v12, v3, v13];

  return v14;
}

- (CGSize)finalExpectedPixelSize
{
  width = self->_finalExpectedPixelSize.width;
  height = self->_finalExpectedPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end