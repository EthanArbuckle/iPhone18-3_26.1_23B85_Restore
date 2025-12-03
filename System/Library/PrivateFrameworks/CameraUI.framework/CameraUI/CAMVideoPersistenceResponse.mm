@interface CAMVideoPersistenceResponse
- (CAMVideoPersistenceResponse)initWithUUID:(id)d captureMode:(int64_t)mode captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image finalExpectedPixelSize:(CGSize)size duration:(id *)self0 stillPersistenceUUID:(id)self1 stillDisplayTime:(id *)self2 coordinationInfo:(id)self3;
@end

@implementation CAMVideoPersistenceResponse

- (CAMVideoPersistenceResponse)initWithUUID:(id)d captureMode:(int64_t)mode captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image finalExpectedPixelSize:(CGSize)size duration:(id *)self0 stillPersistenceUUID:(id)self1 stillDisplayTime:(id *)self2 coordinationInfo:(id)self3
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  iDCopy = iD;
  v31.receiver = self;
  v31.super_class = CAMVideoPersistenceResponse;
  height = [(CAMPersistenceResponse *)&v31 initWithUUID:d captureSession:sessionCopy url:url creationDate:date scrubberImage:image pixelSize:info coordinationInfo:width, height];
  v24 = height;
  if (height)
  {
    *(height + 9) = mode;
    v25 = *&duration->var0;
    *(height + 13) = duration->var3;
    *(height + 88) = v25;
    v26 = [iDCopy copy];
    stillPersistenceUUID = v24->_stillPersistenceUUID;
    v24->_stillPersistenceUUID = v26;

    var3 = time->var3;
    *&v24->_stillDisplayTime.value = *&time->var0;
    v24->_stillDisplayTime.epoch = var3;
    v29 = v24;
  }

  return v24;
}

@end