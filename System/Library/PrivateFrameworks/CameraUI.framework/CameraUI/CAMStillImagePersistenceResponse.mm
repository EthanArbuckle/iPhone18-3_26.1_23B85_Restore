@interface CAMStillImagePersistenceResponse
- (CAMStillImagePersistenceResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 url:(id)a5 creationDate:(id)a6 scrubberImage:(id)a7 finalExpectedPixelSize:(CGSize)a8 metadata:(id)a9 burstIdentifier:(id)a10 burstRepresentedCount:(unint64_t)a11 expectingPairedVideo:(BOOL)a12 coordinationInfo:(id)a13;
- (NSString)description;
@end

@implementation CAMStillImagePersistenceResponse

- (CAMStillImagePersistenceResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 url:(id)a5 creationDate:(id)a6 scrubberImage:(id)a7 finalExpectedPixelSize:(CGSize)a8 metadata:(id)a9 burstIdentifier:(id)a10 burstRepresentedCount:(unint64_t)a11 expectingPairedVideo:(BOOL)a12 coordinationInfo:(id)a13
{
  height = a8.height;
  width = a8.width;
  v18 = a4;
  v21 = a9;
  v22 = a10;
  v30.receiver = self;
  v30.super_class = CAMStillImagePersistenceResponse;
  v23 = [(CAMPersistenceResponse *)&v30 initWithUUID:a3 captureSession:v18 url:a5 creationDate:a6 scrubberImage:a7 pixelSize:a13 coordinationInfo:width, height];
  if (v23)
  {
    v24 = [v21 copy];
    metadata = v23->_metadata;
    v23->_metadata = v24;

    v26 = [v22 copy];
    burstIdentifier = v23->_burstIdentifier;
    v23->_burstIdentifier = v26;

    v23->_burstRepresentedCount = a11;
    v23->_expectingPairedVideo = a12;
    v28 = v23;
  }

  return v23;
}

- (NSString)description
{
  v3 = [(CAMStillImagePersistenceResponse *)self burstIdentifier];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YES, %ld frames", -[CAMStillImagePersistenceResponse burstRepresentedCount](self, "burstRepresentedCount")];
  }

  else
  {
    v4 = @"NO";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(CAMPersistenceResponse *)self persistenceUUID];
  v8 = [(CAMPersistenceResponse *)self sessionIdentifier];
  v9 = [(CAMPersistenceResponse *)self creationDate];
  v10 = [(CAMPersistenceResponse *)self creationDate];
  [v10 timeIntervalSince1970];
  v12 = v11;
  v13 = [(CAMPersistenceResponse *)self persistenceURL];
  v14 = [(CAMPersistenceResponse *)self coordinationInfo];
  v15 = [v5 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d burst:%@ creationDate:%@ (%.3f) persistenceURL:%@ coordinationInfo:%@>", v6, v7, v8, v4, v9, v12, v13, v14];

  return v15;
}

@end