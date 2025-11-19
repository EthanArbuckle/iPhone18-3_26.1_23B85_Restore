@interface CAMIrisVideoJob
- (BOOL)isCTMVideo;
- (CAMIrisVideoJob)initWithCoder:(id)a3;
- (CAMIrisVideoJob)initWithVideoURL:(id)a3 stillImagePersistenceUUID:(id)a4 videoPersistenceUUID:(id)a5 irisIdentifier:(id)a6 captureDevice:(int64_t)a7 captureOrientation:(int64_t)a8 duration:(id *)a9 stillImageDisplayTime:(id *)a10 captureTime:(double)a11 captureError:(id)a12 filterName:(id)a13 filteredVideoURL:(id)a14 persistenceOptions:(int64_t)a15 temporaryPersistenceOptions:(int64_t)a16 bundleIdentifier:(id)a17;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMIrisVideoJob

- (CAMIrisVideoJob)initWithVideoURL:(id)a3 stillImagePersistenceUUID:(id)a4 videoPersistenceUUID:(id)a5 irisIdentifier:(id)a6 captureDevice:(int64_t)a7 captureOrientation:(int64_t)a8 duration:(id *)a9 stillImageDisplayTime:(id *)a10 captureTime:(double)a11 captureError:(id)a12 filterName:(id)a13 filteredVideoURL:(id)a14 persistenceOptions:(int64_t)a15 temporaryPersistenceOptions:(int64_t)a16 bundleIdentifier:(id)a17
{
  v41 = a3;
  v40 = a4;
  v23 = a5;
  obj = a6;
  v24 = a6;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a17;
  v42.receiver = self;
  v42.super_class = CAMIrisVideoJob;
  v29 = [(CAMIrisVideoJob *)&v42 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_videoURL, a3);
    objc_storeStrong(&v30->_stillImagePersistenceUUID, a4);
    objc_storeStrong(&v30->_videoPersistenceUUID, a5);
    objc_storeStrong(&v30->_irisIdentifier, obj);
    v30->_captureDevice = a7;
    v30->_captureOrientation = a8;
    v31 = *&a9->var0;
    v30->_duration.epoch = a9->var3;
    *&v30->_duration.value = v31;
    var3 = a10->var3;
    *&v30->_stillImageDisplayTime.value = *&a10->var0;
    v30->_stillImageDisplayTime.epoch = var3;
    v30->_captureTime = a11;
    objc_storeStrong(&v30->_captureError, a12);
    objc_storeStrong(&v30->_filterName, a13);
    objc_storeStrong(&v30->_filteredVideoURL, a14);
    v30->_persistenceOptions = a15;
    v30->_temporaryPersistenceOptions = a16;
    v33 = [v28 copy];
    bundleIdentifier = v30->_bundleIdentifier;
    v30->_bundleIdentifier = v33;

    v35 = v30;
  }

  return v30;
}

- (CAMIrisVideoJob)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CAMIrisVideoJob;
  v5 = [(CAMIrisVideoJob *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobVideoURL"];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobStillImagePersistenceUUID"];
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobVideoPersistenceUUID"];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobIrisIdentifier"];
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    *(v5 + 5) = [v4 decodeIntegerForKey:@"CAMIrisVideoJobCaptureDevice"];
    *(v5 + 6) = [v4 decodeIntegerForKey:@"CAMIrisVideoJobCaptureOrientation"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobDuration"];
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
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobStillImageDisplayTime"];
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
    [v4 decodeDoubleForKey:@"CAMIrisVideoJobCaptureTime"];
    *(v5 + 7) = v22;
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobCaptureError"];
    v24 = *(v5 + 8);
    *(v5 + 8) = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobFilterName"];
    v26 = *(v5 + 9);
    *(v5 + 9) = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobFilteredVideoURL"];
    v28 = *(v5 + 10);
    *(v5 + 10) = v27;

    *(v5 + 11) = [v4 decodeIntegerForKey:@"CAMIrisVideoJobPersistenceOptions"];
    *(v5 + 12) = [v4 decodeIntegerForKey:@"CAMIrisVideoJobTemporaryPersistenceOptions"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMIrisVideoJobBundleIdentifier"];
    v30 = *(v5 + 13);
    *(v5 + 13) = v29;

    v31 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  duration = self->_duration;
  v5 = a3;
  v6 = [v4 valueWithCMTime:&duration];
  duration = self->_stillImageDisplayTime;
  v7 = [MEMORY[0x1E696B098] valueWithCMTime:&duration];
  [v5 encodeObject:self->_videoURL forKey:@"CAMIrisVideoJobVideoURL"];
  [v5 encodeObject:self->_stillImagePersistenceUUID forKey:@"CAMIrisVideoJobStillImagePersistenceUUID"];
  [v5 encodeObject:self->_videoPersistenceUUID forKey:@"CAMIrisVideoJobVideoPersistenceUUID"];
  [v5 encodeObject:self->_irisIdentifier forKey:@"CAMIrisVideoJobIrisIdentifier"];
  [v5 encodeInteger:self->_captureDevice forKey:@"CAMIrisVideoJobCaptureDevice"];
  [v5 encodeInteger:self->_captureOrientation forKey:@"CAMIrisVideoJobCaptureOrientation"];
  [v5 encodeObject:v6 forKey:@"CAMIrisVideoJobDuration"];
  [v5 encodeObject:v7 forKey:@"CAMIrisVideoJobStillImageDisplayTime"];
  [v5 encodeDouble:@"CAMIrisVideoJobCaptureTime" forKey:self->_captureTime];
  [v5 encodeObject:self->_captureError forKey:@"CAMIrisVideoJobCaptureError"];
  [v5 encodeObject:self->_filterName forKey:@"CAMIrisVideoJobFilterName"];
  [v5 encodeObject:self->_filteredVideoURL forKey:@"CAMIrisVideoJobFilteredVideoURL"];
  [v5 encodeInteger:self->_persistenceOptions forKey:@"CAMIrisVideoJobPersistenceOptions"];
  [v5 encodeInteger:self->_temporaryPersistenceOptions forKey:@"CAMIrisVideoJobTemporaryPersistenceOptions"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"CAMIrisVideoJobBundleIdentifier"];
}

- (id)description
{
  v3 = [(CAMIrisVideoJob *)self videoURL];
  v4 = [(CAMIrisVideoJob *)self filterName];
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = CAMIrisVideoJob;
    v6 = [(CAMIrisVideoJob *)&v11 description];
    [v5 stringWithFormat:@"%@: videoURL=%@ (%@)", v6, v3, v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CAMIrisVideoJob;
    v6 = [(CAMIrisVideoJob *)&v10 description];
    [v5 stringWithFormat:@"%@: videoURL=%@", v6, v3, v9];
  }
  v7 = ;

  return v7;
}

- (BOOL)isCTMVideo
{
  v3 = [(CAMIrisVideoJob *)self stillImagePersistenceUUID];
  v4 = [(CAMIrisVideoJob *)self videoPersistenceUUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end