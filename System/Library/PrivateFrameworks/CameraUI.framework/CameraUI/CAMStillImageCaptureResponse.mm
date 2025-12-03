@interface CAMStillImageCaptureResponse
- (BOOL)flashFired;
- (CAMStillImageCaptureResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session captureDate:(id)date metadata:(id)metadata burstIdentifier:(id)identifier burstRepresentedCount:(unint64_t)count imageWellImage:(id)image textAnalysisImage:(id)self0 coordinationInfo:(id)self1 finalExpectedPixelSize:(CGSize)self2 expectingPairedVideo:(BOOL)self3 captureID:(int64_t)self4 semanticEnhanceScene:(int64_t)self5;
- (CGSize)finalExpectedPixelSize;
- (NSString)description;
- (unint64_t)mediaSubtypes;
@end

@implementation CAMStillImageCaptureResponse

- (unint64_t)mediaSubtypes
{
  coordinationInfo = [(CAMCaptureResponse *)self coordinationInfo];
  isHDR = [coordinationInfo isHDR];

  if (isHDR)
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
  metadata = [(CAMStillImageCaptureResponse *)self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x1E696D9B0]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E696D9F0]];
    v6 = v5;
    if (v5)
    {
      unsignedShortValue = [v5 unsignedShortValue];
    }

    else
    {
      unsignedShortValue = 0;
    }
  }

  else
  {
    unsignedShortValue = 0;
  }

  return unsignedShortValue & 1;
}

- (CAMStillImageCaptureResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session captureDate:(id)date metadata:(id)metadata burstIdentifier:(id)identifier burstRepresentedCount:(unint64_t)count imageWellImage:(id)image textAnalysisImage:(id)self0 coordinationInfo:(id)self1 finalExpectedPixelSize:(CGSize)self2 expectingPairedVideo:(BOOL)self3 captureID:(int64_t)self4 semanticEnhanceScene:(int64_t)self5
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  dCopy = d;
  dateCopy = date;
  metadataCopy = metadata;
  identifierCopy = identifier;
  imageCopy = image;
  analysisImageCopy = analysisImage;
  v38.receiver = self;
  v38.super_class = CAMStillImageCaptureResponse;
  v26 = [(CAMCaptureResponse *)&v38 initWithType:0 captureSession:sessionCopy coordinationInfo:info];
  if (v26)
  {
    v27 = [dCopy copy];
    persistenceUUID = v26->_persistenceUUID;
    v26->_persistenceUUID = v27;

    objc_storeStrong(&v26->_captureDate, date);
    v29 = [metadataCopy copy];
    metadata = v26->_metadata;
    v26->_metadata = v29;

    v31 = [identifierCopy copy];
    burstIdentifier = v26->_burstIdentifier;
    v26->_burstIdentifier = v31;

    v26->_burstRepresentedCount = count;
    objc_storeStrong(&v26->_imageWellImage, image);
    objc_storeStrong(&v26->_textAnalysisImage, analysisImage);
    v26->_expectingPairedVideo = video;
    v26->_finalExpectedPixelSize.width = width;
    v26->_finalExpectedPixelSize.height = height;
    v26->_captureID = iD;
    v26->_semanticEnhanceScene = scene;
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
  captureID = [(CAMStillImageCaptureResponse *)self captureID];
  persistenceUUID = [(CAMStillImageCaptureResponse *)self persistenceUUID];
  sessionIdentifier = [(CAMCaptureResponse *)self sessionIdentifier];
  captureDate = [(CAMStillImageCaptureResponse *)self captureDate];
  captureDate2 = [(CAMStillImageCaptureResponse *)self captureDate];
  [captureDate2 timeIntervalSince1970];
  v12 = v11;
  burstIdentifier = [(CAMStillImageCaptureResponse *)self burstIdentifier];
  v14 = [v4 stringWithFormat:@"<%@ captureID:%lld persistenceUUID:%@ sessionIdentifier:%d, captureDate:%@ (%.3f), burst:%@, burstIdentifier:%@>", v5, captureID, persistenceUUID, sessionIdentifier, captureDate, v12, v3, burstIdentifier];

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