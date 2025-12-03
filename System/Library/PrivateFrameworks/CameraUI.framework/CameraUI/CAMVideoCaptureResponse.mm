@interface CAMVideoCaptureResponse
- (CAMVideoCaptureResponse)initWithUUID:(id)d captureMode:(int64_t)mode captureSession:(unsigned __int16)session url:(id)url captureDate:(id)date duration:(id *)duration stillPersistenceUUID:(id)iD stillDisplayTime:(id *)self0 reason:(int64_t)self1 videoZoomFactor:(double)self2 finalExpectedPixelSize:(CGSize)self3 imageWellImage:(id)self4 previewImage:(id)self5 coordinationInfo:(id)self6 slowWriterFrameDrops:(BOOL)self7;
- (CGSize)finalExpectedPixelSize;
- (NSString)description;
@end

@implementation CAMVideoCaptureResponse

- (CAMVideoCaptureResponse)initWithUUID:(id)d captureMode:(int64_t)mode captureSession:(unsigned __int16)session url:(id)url captureDate:(id)date duration:(id *)duration stillPersistenceUUID:(id)iD stillDisplayTime:(id *)self0 reason:(int64_t)self1 videoZoomFactor:(double)self2 finalExpectedPixelSize:(CGSize)self3 imageWellImage:(id)self4 previewImage:(id)self5 coordinationInfo:(id)self6 slowWriterFrameDrops:(BOOL)self7
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  dCopy = d;
  urlCopy = url;
  dateCopy = date;
  iDCopy = iD;
  imageCopy = image;
  previewImageCopy = previewImage;
  v44.receiver = self;
  v44.super_class = CAMVideoCaptureResponse;
  v28 = [(CAMCaptureResponse *)&v44 initWithType:1 captureSession:sessionCopy coordinationInfo:info];
  v29 = v28;
  if (v28)
  {
    v28->_captureMode = mode;
    v30 = [dCopy copy];
    persistenceUUID = v29->_persistenceUUID;
    v29->_persistenceUUID = v30;

    v32 = [urlCopy copy];
    localPersistenceURL = v29->_localPersistenceURL;
    v29->_localPersistenceURL = v32;

    objc_storeStrong(&v29->_captureDate, date);
    var3 = duration->var3;
    *&v29->_duration.value = *&duration->var0;
    v29->_duration.epoch = var3;
    v35 = [iDCopy copy];
    stillPersistenceUUID = v29->_stillPersistenceUUID;
    v29->_stillPersistenceUUID = v35;

    v37 = time->var3;
    *&v29->_stillDisplayTime.value = *&time->var0;
    v29->_stillDisplayTime.epoch = v37;
    v29->_reason = reason;
    v29->_videoZoomFactor = factor;
    v29->_finalExpectedPixelSize.width = width;
    v29->_finalExpectedPixelSize.height = height;
    objc_storeStrong(&v29->_imageWellImage, image);
    objc_storeStrong(&v29->_previewImage, previewImage);
    v29->_slowWriterFrameDrops = drops;
    v38 = v29;
  }

  return v29;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  persistenceUUID = [(CAMVideoCaptureResponse *)self persistenceUUID];
  sessionIdentifier = [(CAMCaptureResponse *)self sessionIdentifier];
  captureDate = [(CAMVideoCaptureResponse *)self captureDate];
  captureDate2 = [(CAMVideoCaptureResponse *)self captureDate];
  [captureDate2 timeIntervalSince1970];
  v10 = v9;
  localPersistenceURL = [(CAMVideoCaptureResponse *)self localPersistenceURL];
  v12 = [v3 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d, captureDate:%@ (%.3f), localPersistenceURL:%@>", v4, persistenceUUID, sessionIdentifier, captureDate, v10, localPersistenceURL];

  return v12;
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