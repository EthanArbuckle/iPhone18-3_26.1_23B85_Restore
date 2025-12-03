@interface CAMIrisVideoJob
- (BOOL)isCTMVideo;
- (CAMIrisVideoJob)initWithCoder:(id)coder;
- (CAMIrisVideoJob)initWithVideoURL:(id)l stillImagePersistenceUUID:(id)d videoPersistenceUUID:(id)iD irisIdentifier:(id)identifier captureDevice:(int64_t)device captureOrientation:(int64_t)orientation duration:(id *)duration stillImageDisplayTime:(id *)self0 captureTime:(double)self1 captureError:(id)self2 filterName:(id)self3 filteredVideoURL:(id)self4 persistenceOptions:(int64_t)self5 temporaryPersistenceOptions:(int64_t)self6 bundleIdentifier:(id)self7;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMIrisVideoJob

- (CAMIrisVideoJob)initWithVideoURL:(id)l stillImagePersistenceUUID:(id)d videoPersistenceUUID:(id)iD irisIdentifier:(id)identifier captureDevice:(int64_t)device captureOrientation:(int64_t)orientation duration:(id *)duration stillImageDisplayTime:(id *)self0 captureTime:(double)self1 captureError:(id)self2 filterName:(id)self3 filteredVideoURL:(id)self4 persistenceOptions:(int64_t)self5 temporaryPersistenceOptions:(int64_t)self6 bundleIdentifier:(id)self7
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  obj = identifier;
  identifierCopy = identifier;
  errorCopy = error;
  nameCopy = name;
  rLCopy = rL;
  bundleIdentifierCopy = bundleIdentifier;
  v42.receiver = self;
  v42.super_class = CAMIrisVideoJob;
  v29 = [(CAMIrisVideoJob *)&v42 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_videoURL, l);
    objc_storeStrong(&v30->_stillImagePersistenceUUID, d);
    objc_storeStrong(&v30->_videoPersistenceUUID, iD);
    objc_storeStrong(&v30->_irisIdentifier, obj);
    v30->_captureDevice = device;
    v30->_captureOrientation = orientation;
    v31 = *&duration->var0;
    v30->_duration.epoch = duration->var3;
    *&v30->_duration.value = v31;
    var3 = time->var3;
    *&v30->_stillImageDisplayTime.value = *&time->var0;
    v30->_stillImageDisplayTime.epoch = var3;
    v30->_captureTime = captureTime;
    objc_storeStrong(&v30->_captureError, error);
    objc_storeStrong(&v30->_filterName, name);
    objc_storeStrong(&v30->_filteredVideoURL, rL);
    v30->_persistenceOptions = options;
    v30->_temporaryPersistenceOptions = persistenceOptions;
    v33 = [bundleIdentifierCopy copy];
    bundleIdentifier = v30->_bundleIdentifier;
    v30->_bundleIdentifier = v33;

    v35 = v30;
  }

  return v30;
}

- (CAMIrisVideoJob)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CAMIrisVideoJob;
  v5 = [(CAMIrisVideoJob *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobVideoURL"];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobStillImagePersistenceUUID"];
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobVideoPersistenceUUID"];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobIrisIdentifier"];
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    *(v5 + 5) = [coderCopy decodeIntegerForKey:@"CAMIrisVideoJobCaptureDevice"];
    *(v5 + 6) = [coderCopy decodeIntegerForKey:@"CAMIrisVideoJobCaptureOrientation"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobDuration"];
    v15 = v14;
    if (v14)
    {
      [v14 CMTimeValue];
      *(v5 + 7) = v33;
      v16 = v34;
    }

    else
    {
      v17 = MEMORY[0x1E6960C70];
      *(v5 + 7) = *MEMORY[0x1E6960C70];
      v16 = *(v17 + 16);
    }

    *(v5 + 16) = v16;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobStillImageDisplayTime"];
    v19 = v18;
    if (v18)
    {
      [v18 CMTimeValue];
      *(v5 + 136) = v33;
      v20 = v34;
    }

    else
    {
      v21 = MEMORY[0x1E6960C70];
      *(v5 + 136) = *MEMORY[0x1E6960C70];
      v20 = *(v21 + 16);
    }

    *(v5 + 19) = v20;
    [coderCopy decodeDoubleForKey:@"CAMIrisVideoJobCaptureTime"];
    *(v5 + 7) = v22;
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobCaptureError"];
    v24 = *(v5 + 8);
    *(v5 + 8) = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobFilterName"];
    v26 = *(v5 + 9);
    *(v5 + 9) = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobFilteredVideoURL"];
    v28 = *(v5 + 10);
    *(v5 + 10) = v27;

    *(v5 + 11) = [coderCopy decodeIntegerForKey:@"CAMIrisVideoJobPersistenceOptions"];
    *(v5 + 12) = [coderCopy decodeIntegerForKey:@"CAMIrisVideoJobTemporaryPersistenceOptions"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobBundleIdentifier"];
    v30 = *(v5 + 13);
    *(v5 + 13) = v29;

    v31 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  duration = self->_duration;
  coderCopy = coder;
  v6 = [v4 valueWithCMTime:&duration];
  duration = self->_stillImageDisplayTime;
  v7 = [MEMORY[0x1E696B098] valueWithCMTime:&duration];
  [coderCopy encodeObject:self->_videoURL forKey:@"CAMIrisVideoJobVideoURL"];
  [coderCopy encodeObject:self->_stillImagePersistenceUUID forKey:@"CAMIrisVideoJobStillImagePersistenceUUID"];
  [coderCopy encodeObject:self->_videoPersistenceUUID forKey:@"CAMIrisVideoJobVideoPersistenceUUID"];
  [coderCopy encodeObject:self->_irisIdentifier forKey:@"CAMIrisVideoJobIrisIdentifier"];
  [coderCopy encodeInteger:self->_captureDevice forKey:@"CAMIrisVideoJobCaptureDevice"];
  [coderCopy encodeInteger:self->_captureOrientation forKey:@"CAMIrisVideoJobCaptureOrientation"];
  [coderCopy encodeObject:v6 forKey:@"CAMIrisVideoJobDuration"];
  [coderCopy encodeObject:v7 forKey:@"CAMIrisVideoJobStillImageDisplayTime"];
  [coderCopy encodeDouble:@"CAMIrisVideoJobCaptureTime" forKey:self->_captureTime];
  [coderCopy encodeObject:self->_captureError forKey:@"CAMIrisVideoJobCaptureError"];
  [coderCopy encodeObject:self->_filterName forKey:@"CAMIrisVideoJobFilterName"];
  [coderCopy encodeObject:self->_filteredVideoURL forKey:@"CAMIrisVideoJobFilteredVideoURL"];
  [coderCopy encodeInteger:self->_persistenceOptions forKey:@"CAMIrisVideoJobPersistenceOptions"];
  [coderCopy encodeInteger:self->_temporaryPersistenceOptions forKey:@"CAMIrisVideoJobTemporaryPersistenceOptions"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"CAMIrisVideoJobBundleIdentifier"];
}

- (id)description
{
  videoURL = [(CAMIrisVideoJob *)self videoURL];
  filterName = [(CAMIrisVideoJob *)self filterName];
  v5 = MEMORY[0x1E696AEC0];
  if (filterName)
  {
    v11.receiver = self;
    v11.super_class = CAMIrisVideoJob;
    v6 = [(CAMIrisVideoJob *)&v11 description];
    [v5 stringWithFormat:@"%@: videoURL=%@ (%@)", v6, videoURL, filterName];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CAMIrisVideoJob;
    v6 = [(CAMIrisVideoJob *)&v10 description];
    [v5 stringWithFormat:@"%@: videoURL=%@", v6, videoURL, v9];
  }
  v7 = ;

  return v7;
}

- (BOOL)isCTMVideo
{
  stillImagePersistenceUUID = [(CAMIrisVideoJob *)self stillImagePersistenceUUID];
  videoPersistenceUUID = [(CAMIrisVideoJob *)self videoPersistenceUUID];
  v5 = [stillImagePersistenceUUID isEqualToString:videoPersistenceUUID];

  return v5;
}

@end