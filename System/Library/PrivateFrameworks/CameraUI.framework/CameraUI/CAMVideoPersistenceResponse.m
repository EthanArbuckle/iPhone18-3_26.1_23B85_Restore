@interface CAMVideoPersistenceResponse
- (CAMVideoPersistenceResponse)initWithUUID:(id)a3 captureMode:(int64_t)a4 captureSession:(unsigned __int16)a5 url:(id)a6 creationDate:(id)a7 scrubberImage:(id)a8 finalExpectedPixelSize:(CGSize)a9 duration:(id *)a10 stillPersistenceUUID:(id)a11 stillDisplayTime:(id *)a12 coordinationInfo:(id)a13;
@end

@implementation CAMVideoPersistenceResponse

- (CAMVideoPersistenceResponse)initWithUUID:(id)a3 captureMode:(int64_t)a4 captureSession:(unsigned __int16)a5 url:(id)a6 creationDate:(id)a7 scrubberImage:(id)a8 finalExpectedPixelSize:(CGSize)a9 duration:(id *)a10 stillPersistenceUUID:(id)a11 stillDisplayTime:(id *)a12 coordinationInfo:(id)a13
{
  height = a9.height;
  width = a9.width;
  v18 = a5;
  v22 = a11;
  v31.receiver = self;
  v31.super_class = CAMVideoPersistenceResponse;
  v23 = [(CAMPersistenceResponse *)&v31 initWithUUID:a3 captureSession:v18 url:a6 creationDate:a7 scrubberImage:a8 pixelSize:a13 coordinationInfo:width, height];
  v24 = v23;
  if (v23)
  {
    *(v23 + 9) = a4;
    v25 = *&a10->var0;
    *(v23 + 13) = a10->var3;
    *(v23 + 88) = v25;
    v26 = [v22 copy];
    stillPersistenceUUID = v24->_stillPersistenceUUID;
    v24->_stillPersistenceUUID = v26;

    var3 = a12->var3;
    *&v24->_stillDisplayTime.value = *&a12->var0;
    v24->_stillDisplayTime.epoch = var3;
    v29 = v24;
  }

  return v24;
}

@end