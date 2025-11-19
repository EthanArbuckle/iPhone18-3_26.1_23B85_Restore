@interface CAMVideoLocalPersistenceResult
- (CAMVideoLocalPersistenceResult)initWithCoder:(id)a3;
- (CAMVideoLocalPersistenceResult)initWithURL:(id)a3 filteredLocalDestinationURL:(id)a4 linkedURL:(id)a5 filteredLinkedURL:(id)a6 videoThumbnailPath:(id)a7 UUID:(id)a8 duration:(id *)a9 dimensions:(id)a10 stillPersistenceUUID:(id)a11 stillDisplayTime:(id *)a12 metadataItems:(id)a13 creationDate:(id)a14 adjustmentsData:(id)a15 coordinationInfo:(id)a16 localPrivateMetadataFileURL:(id)a17 error:(id)a18;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMVideoLocalPersistenceResult

- (CAMVideoLocalPersistenceResult)initWithURL:(id)a3 filteredLocalDestinationURL:(id)a4 linkedURL:(id)a5 filteredLinkedURL:(id)a6 videoThumbnailPath:(id)a7 UUID:(id)a8 duration:(id *)a9 dimensions:(id)a10 stillPersistenceUUID:(id)a11 stillDisplayTime:(id *)a12 metadataItems:(id)a13 creationDate:(id)a14 adjustmentsData:(id)a15 coordinationInfo:(id)a16 localPrivateMetadataFileURL:(id)a17 error:(id)a18
{
  v56 = a3;
  v55 = a4;
  v57 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a11;
  v26 = a13;
  v27 = a14;
  v54 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v58.receiver = self;
  v58.super_class = CAMVideoLocalPersistenceResult;
  v31 = [(CAMVideoLocalPersistenceResult *)&v58 init];
  if (v31)
  {
    v32 = [v56 copy];
    v33 = *(v31 + 1);
    *(v31 + 1) = v32;

    v34 = [v55 copy];
    v35 = *(v31 + 2);
    *(v31 + 2) = v34;

    v36 = [v57 copy];
    v37 = *(v31 + 3);
    *(v31 + 3) = v36;

    v38 = [v22 copy];
    v39 = *(v31 + 4);
    *(v31 + 4) = v38;

    v40 = [v23 copy];
    v41 = *(v31 + 5);
    *(v31 + 5) = v40;

    v42 = [v24 copy];
    v43 = *(v31 + 6);
    *(v31 + 6) = v42;

    v44 = *&a9->var0;
    *(v31 + 17) = a9->var3;
    *(v31 + 120) = v44;
    *(v31 + 7) = a10;
    v45 = [v25 copy];
    v46 = *(v31 + 8);
    *(v31 + 8) = v45;

    v47 = *&a12->var0;
    *(v31 + 20) = a12->var3;
    *(v31 + 9) = v47;
    objc_storeStrong(v31 + 9, a13);
    objc_storeStrong(v31 + 10, a14);
    objc_storeStrong(v31 + 11, a15);
    objc_storeStrong(v31 + 12, a16);
    v48 = [v29 copy];
    v49 = *(v31 + 13);
    *(v31 + 13) = v48;

    objc_storeStrong(v31 + 14, a18);
    v50 = v31;
  }

  return v31;
}

- (CAMVideoLocalPersistenceResult)initWithCoder:(id)a3
{
  v4 = a3;
  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalDestinationURL"];
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultFilteredLocalDestinationURL"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLinkedDestinationURL"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultFilteredLinkedDestinationURL"];
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultVideoThumbnailDestinationPath"];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalPersistenceUUID"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultDuration"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultDimensions"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultStillPersistenceUUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultStillDisplayTime"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultCreationDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultAdjustmentsData"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalPrivateMetadataFileURL"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultError"];

  v13 = *MEMORY[0x1E6960C70];
  v32 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v33 = v14;
  if (v5)
  {
    v17 = v13;
    [v5 CMTimeValue];
    v13 = v17;
  }

  v30 = v13;
  v31 = v14;
  if (v8)
  {
    [v8 CMTimeValue];
  }

  v29 = 0;
  if (v6)
  {
    [v6 getValue:&v29];
    v15 = v29;
  }

  else
  {
    v15 = 0;
  }

  v27 = v32;
  v28 = v33;
  v25 = v30;
  v26 = v31;
  v18 = [(CAMVideoLocalPersistenceResult *)self initWithURL:v24 filteredLocalDestinationURL:v23 linkedURL:v22 filteredLinkedURL:v21 videoThumbnailPath:v20 UUID:v19 duration:&v27 dimensions:v15 stillPersistenceUUID:v7 stillDisplayTime:&v25 metadataItems:0 creationDate:v9 adjustmentsData:v10 coordinationInfo:0 localPrivateMetadataFileURL:v11 error:v12];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  duration = self->_duration;
  v5 = a3;
  v6 = [v4 valueWithCMTime:&duration];
  duration = self->_stillDisplayTime;
  v7 = [MEMORY[0x1E696B098] valueWithCMTime:&duration];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_dimensions objCType:"{?=ii}"];
  v9 = [(CAMVideoLocalPersistenceResult *)self localDestinationURL];
  [v5 encodeObject:v9 forKey:@"CAMVideoLocalPersistenceResultLocalDestinationURL"];

  v10 = [(CAMVideoLocalPersistenceResult *)self filteredLocalDestinationURL];
  [v5 encodeObject:v10 forKey:@"CAMVideoLocalPersistenceResultFilteredLocalDestinationURL"];

  v11 = [(CAMVideoLocalPersistenceResult *)self linkedDestinationURL];
  [v5 encodeObject:v11 forKey:@"CAMVideoLocalPersistenceResultLinkedDestinationURL"];

  v12 = [(CAMVideoLocalPersistenceResult *)self filteredLinkedDestinationURL];
  [v5 encodeObject:v12 forKey:@"CAMVideoLocalPersistenceResultFilteredLinkedDestinationURL"];

  v13 = [(CAMVideoLocalPersistenceResult *)self filteredVideoPreviewPath];
  [v5 encodeObject:v13 forKey:@"CAMVideoLocalPersistenceResultVideoThumbnailDestinationPath"];

  v14 = [(CAMVideoLocalPersistenceResult *)self localPersistenceUUID];
  [v5 encodeObject:v14 forKey:@"CAMVideoLocalPersistenceResultLocalPersistenceUUID"];

  [v5 encodeObject:v6 forKey:@"CAMVideoLocalPersistenceResultDuration"];
  [v5 encodeObject:v8 forKey:@"CAMVideoLocalPersistenceResultDimensions"];
  v15 = [(CAMVideoLocalPersistenceResult *)self stillPersistenceUUID];
  [v5 encodeObject:v15 forKey:@"CAMVideoLocalPersistenceResultStillPersistenceUUID"];

  [v5 encodeObject:v7 forKey:@"CAMVideoLocalPersistenceResultStillDisplayTime"];
  v16 = [(CAMVideoLocalPersistenceResult *)self creationDate];
  [v5 encodeObject:v16 forKey:@"CAMVideoLocalPersistenceResultCreationDate"];

  v17 = [(CAMVideoLocalPersistenceResult *)self adjustmentsData];
  [v5 encodeObject:v17 forKey:@"CAMVideoLocalPersistenceResultAdjustmentsData"];

  v18 = [(CAMVideoLocalPersistenceResult *)self localPrivateMetadataFileURL];
  [v5 encodeObject:v18 forKey:@"CAMVideoLocalPersistenceResultLocalPrivateMetadataFileURL"];

  v19 = [(CAMVideoLocalPersistenceResult *)self error];
  [v5 encodeObject:v19 forKey:@"CAMVideoLocalPersistenceResultError"];
}

@end