@interface CAMPersistenceResponse
- (CAMPersistenceResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image pixelSize:(CGSize)size coordinationInfo:(id)info;
- (CGSize)pixelSize;
- (id)description;
@end

@implementation CAMPersistenceResponse

- (CAMPersistenceResponse)initWithUUID:(id)d captureSession:(unsigned __int16)session url:(id)url creationDate:(id)date scrubberImage:(id)image pixelSize:(CGSize)size coordinationInfo:(id)info
{
  height = size.height;
  width = size.width;
  dCopy = d;
  urlCopy = url;
  dateCopy = date;
  imageCopy = image;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = CAMPersistenceResponse;
  v22 = [(CAMPersistenceResponse *)&v29 init];
  if (v22)
  {
    v23 = [dCopy copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v23;

    v22->_sessionIdentifier = session;
    v25 = [urlCopy copy];
    persistenceURL = v22->_persistenceURL;
    v22->_persistenceURL = v25;

    objc_storeStrong(&v22->_creationDate, date);
    objc_storeStrong(&v22->_scrubberImage, image);
    v22->_pixelSize.width = width;
    v22->_pixelSize.height = height;
    objc_storeStrong(&v22->_coordinationInfo, info);
    v27 = v22;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  persistenceUUID = [(CAMPersistenceResponse *)self persistenceUUID];
  sessionIdentifier = [(CAMPersistenceResponse *)self sessionIdentifier];
  creationDate = [(CAMPersistenceResponse *)self creationDate];
  creationDate2 = [(CAMPersistenceResponse *)self creationDate];
  [creationDate2 timeIntervalSince1970];
  v10 = v9;
  persistenceURL = [(CAMPersistenceResponse *)self persistenceURL];
  coordinationInfo = [(CAMPersistenceResponse *)self coordinationInfo];
  v13 = [v3 stringWithFormat:@"<%@ persistenceUUID:%@ sessionIdentifier:%d creationDate:%@ (%.3f) persistenceURL:%@ coordinationInfo:%@>", v4, persistenceUUID, sessionIdentifier, creationDate, v10, persistenceURL, coordinationInfo];

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