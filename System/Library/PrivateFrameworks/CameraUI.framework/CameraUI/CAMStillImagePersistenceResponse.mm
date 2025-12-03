@interface CAMStillImagePersistenceResponse
- (CAMStillImagePersistenceResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image finalExpectedPixelSize:(CGSize)size metadata:(id)metadata burstIdentifier:(id)self0 burstRepresentedCount:(unint64_t)self1 expectingPairedVideo:(BOOL)self2 coordinationInfo:(id)self3;
- (NSString)description;
@end

@implementation CAMStillImagePersistenceResponse

- (CAMStillImagePersistenceResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image finalExpectedPixelSize:(CGSize)size metadata:(id)metadata burstIdentifier:(id)self0 burstRepresentedCount:(unint64_t)self1 expectingPairedVideo:(BOOL)self2 coordinationInfo:(id)self3
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  metadataCopy = metadata;
  identifierCopy = identifier;
  v30.receiver = self;
  v30.super_class = CAMStillImagePersistenceResponse;
  height = [(CAMPersistenceResponse *)&v30 initWithUUID:d captureSession:sessionCopy url:url creationDate:date scrubberImage:image pixelSize:info coordinationInfo:width, height];
  if (height)
  {
    v24 = [metadataCopy copy];
    metadata = height->_metadata;
    height->_metadata = v24;

    v26 = [identifierCopy copy];
    burstIdentifier = height->_burstIdentifier;
    height->_burstIdentifier = v26;

    height->_burstRepresentedCount = count;
    height->_expectingPairedVideo = video;
    v28 = height;
  }

  return height;
}

- (NSString)description
{
  burstIdentifier = [(CAMStillImagePersistenceResponse *)self burstIdentifier];
  if (burstIdentifier)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YES, %ld frames", -[CAMStillImagePersistenceResponse burstRepresentedCount](self, "burstRepresentedCount")];
  }

  else
  {
    v4 = @"NO";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  persistenceUUID = [(CAMPersistenceResponse *)self persistenceUUID];
  sessionIdentifier = [(CAMPersistenceResponse *)self sessionIdentifier];
  creationDate = [(CAMPersistenceResponse *)self creationDate];
  creationDate2 = [(CAMPersistenceResponse *)self creationDate];
  [creationDate2 timeIntervalSince1970];
  v12 = v11;
  persistenceURL = [(CAMPersistenceResponse *)self persistenceURL];
  coordinationInfo = [(CAMPersistenceResponse *)self coordinationInfo];
  v15 = [v5 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d burst:%@ creationDate:%@ (%.3f) persistenceURL:%@ coordinationInfo:%@>", v6, persistenceUUID, sessionIdentifier, v4, creationDate, v12, persistenceURL, coordinationInfo];

  return v15;
}

@end