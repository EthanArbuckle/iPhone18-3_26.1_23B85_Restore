@interface CAMPersistenceResponse
- (CAMPersistenceResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 url:(id)a5 creationDate:(id)a6 scrubberImage:(id)a7 pixelSize:(CGSize)a8 coordinationInfo:(id)a9;
- (CGSize)pixelSize;
- (id)description;
@end

@implementation CAMPersistenceResponse

- (CAMPersistenceResponse)initWithUUID:(id)a3 captureSession:(unsigned __int16)a4 url:(id)a5 creationDate:(id)a6 scrubberImage:(id)a7 pixelSize:(CGSize)a8 coordinationInfo:(id)a9
{
  height = a8.height;
  width = a8.width;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v29.receiver = self;
  v29.super_class = CAMPersistenceResponse;
  v22 = [(CAMPersistenceResponse *)&v29 init];
  if (v22)
  {
    v23 = [v17 copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v23;

    v22->_sessionIdentifier = a4;
    v25 = [v18 copy];
    persistenceURL = v22->_persistenceURL;
    v22->_persistenceURL = v25;

    objc_storeStrong(&v22->_creationDate, a6);
    objc_storeStrong(&v22->_scrubberImage, a7);
    v22->_pixelSize.width = width;
    v22->_pixelSize.height = height;
    objc_storeStrong(&v22->_coordinationInfo, a9);
    v27 = v22;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMPersistenceResponse *)self persistenceUUID];
  v6 = [(CAMPersistenceResponse *)self sessionIdentifier];
  v7 = [(CAMPersistenceResponse *)self creationDate];
  v8 = [(CAMPersistenceResponse *)self creationDate];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = [(CAMPersistenceResponse *)self persistenceURL];
  v12 = [(CAMPersistenceResponse *)self coordinationInfo];
  v13 = [v3 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d creationDate:%@ (%.3f) persistenceURL:%@ coordinationInfo:%@>", v4, v5, v6, v7, v10, v11, v12];

  return v13;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end