@interface CAMVideoCaptureResponse
- (CAMVideoCaptureResponse)initWithUUID:(id)a3 captureMode:(int64_t)a4 captureSession:(unsigned __int16)a5 url:(id)a6 captureDate:(id)a7 duration:(id *)a8 stillPersistenceUUID:(id)a9 stillDisplayTime:(id *)a10 reason:(int64_t)a11 videoZoomFactor:(double)a12 finalExpectedPixelSize:(CGSize)a13 imageWellImage:(id)a14 previewImage:(id)a15 coordinationInfo:(id)a16 slowWriterFrameDrops:(BOOL)a17;
- (CGSize)finalExpectedPixelSize;
- (NSString)description;
@end

@implementation CAMVideoCaptureResponse

- (CAMVideoCaptureResponse)initWithUUID:(id)a3 captureMode:(int64_t)a4 captureSession:(unsigned __int16)a5 url:(id)a6 captureDate:(id)a7 duration:(id *)a8 stillPersistenceUUID:(id)a9 stillDisplayTime:(id *)a10 reason:(int64_t)a11 videoZoomFactor:(double)a12 finalExpectedPixelSize:(CGSize)a13 imageWellImage:(id)a14 previewImage:(id)a15 coordinationInfo:(id)a16 slowWriterFrameDrops:(BOOL)a17
{
  height = a13.height;
  width = a13.width;
  v23 = a5;
  v43 = a3;
  v26 = a6;
  v42 = a7;
  v27 = a9;
  v41 = a14;
  v40 = a15;
  v44.receiver = self;
  v44.super_class = CAMVideoCaptureResponse;
  v28 = [(CAMCaptureResponse *)&v44 initWithType:1 captureSession:v23 coordinationInfo:a16];
  v29 = v28;
  if (v28)
  {
    v28->_captureMode = a4;
    v30 = [v43 copy];
    persistenceUUID = v29->_persistenceUUID;
    v29->_persistenceUUID = v30;

    v32 = [v26 copy];
    localPersistenceURL = v29->_localPersistenceURL;
    v29->_localPersistenceURL = v32;

    objc_storeStrong(&v29->_captureDate, a7);
    var3 = a8->var3;
    *&v29->_duration.value = *&a8->var0;
    v29->_duration.epoch = var3;
    v35 = [v27 copy];
    stillPersistenceUUID = v29->_stillPersistenceUUID;
    v29->_stillPersistenceUUID = v35;

    v37 = a10->var3;
    *&v29->_stillDisplayTime.value = *&a10->var0;
    v29->_stillDisplayTime.epoch = v37;
    v29->_reason = a11;
    v29->_videoZoomFactor = a12;
    v29->_finalExpectedPixelSize.width = width;
    v29->_finalExpectedPixelSize.height = height;
    objc_storeStrong(&v29->_imageWellImage, a14);
    objc_storeStrong(&v29->_previewImage, a15);
    v29->_slowWriterFrameDrops = a17;
    v38 = v29;
  }

  return v29;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMVideoCaptureResponse *)self persistenceUUID];
  v6 = [(CAMCaptureResponse *)self sessionIdentifier];
  v7 = [(CAMVideoCaptureResponse *)self captureDate];
  v8 = [(CAMVideoCaptureResponse *)self captureDate];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = [(CAMVideoCaptureResponse *)self localPersistenceURL];
  v12 = [v3 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d, captureDate:%@ (%.3f), localPersistenceURL:%@>", v4, v5, v6, v7, v10, v11];

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