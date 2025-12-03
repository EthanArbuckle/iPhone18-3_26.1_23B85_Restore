@interface CAMVideoLocalPersistenceResult
- (CAMVideoLocalPersistenceResult)initWithCoder:(id)coder;
- (CAMVideoLocalPersistenceResult)initWithURL:(id)l filteredLocalDestinationURL:(id)rL linkedURL:(id)uRL filteredLinkedURL:(id)linkedURL videoThumbnailPath:(id)path UUID:(id)d duration:(id *)duration dimensions:(id)self0 stillPersistenceUUID:(id)self1 stillDisplayTime:(id *)self2 metadataItems:(id)self3 creationDate:(id)self4 adjustmentsData:(id)self5 coordinationInfo:(id)self6 localPrivateMetadataFileURL:(id)self7 error:(id)self8;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMVideoLocalPersistenceResult

- (CAMVideoLocalPersistenceResult)initWithURL:(id)l filteredLocalDestinationURL:(id)rL linkedURL:(id)uRL filteredLinkedURL:(id)linkedURL videoThumbnailPath:(id)path UUID:(id)d duration:(id *)duration dimensions:(id)self0 stillPersistenceUUID:(id)self1 stillDisplayTime:(id *)self2 metadataItems:(id)self3 creationDate:(id)self4 adjustmentsData:(id)self5 coordinationInfo:(id)self6 localPrivateMetadataFileURL:(id)self7 error:(id)self8
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  linkedURLCopy = linkedURL;
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  itemsCopy = items;
  dateCopy = date;
  dataCopy = data;
  infoCopy = info;
  fileURLCopy = fileURL;
  errorCopy = error;
  v58.receiver = self;
  v58.super_class = CAMVideoLocalPersistenceResult;
  v31 = [(CAMVideoLocalPersistenceResult *)&v58 init];
  if (v31)
  {
    v32 = [lCopy copy];
    v33 = *(v31 + 1);
    *(v31 + 1) = v32;

    v34 = [rLCopy copy];
    v35 = *(v31 + 2);
    *(v31 + 2) = v34;

    v36 = [uRLCopy copy];
    v37 = *(v31 + 3);
    *(v31 + 3) = v36;

    v38 = [linkedURLCopy copy];
    v39 = *(v31 + 4);
    *(v31 + 4) = v38;

    v40 = [pathCopy copy];
    v41 = *(v31 + 5);
    *(v31 + 5) = v40;

    v42 = [dCopy copy];
    v43 = *(v31 + 6);
    *(v31 + 6) = v42;

    v44 = *&duration->var0;
    *(v31 + 17) = duration->var3;
    *(v31 + 120) = v44;
    *(v31 + 7) = dimensions;
    v45 = [iDCopy copy];
    v46 = *(v31 + 8);
    *(v31 + 8) = v45;

    v47 = *&time->var0;
    *(v31 + 20) = time->var3;
    *(v31 + 9) = v47;
    objc_storeStrong(v31 + 9, items);
    objc_storeStrong(v31 + 10, date);
    objc_storeStrong(v31 + 11, data);
    objc_storeStrong(v31 + 12, info);
    v48 = [fileURLCopy copy];
    v49 = *(v31 + 13);
    *(v31 + 13) = v48;

    objc_storeStrong(v31 + 14, error);
    v50 = v31;
  }

  return v31;
}

- (CAMVideoLocalPersistenceResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalDestinationURL"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultFilteredLocalDestinationURL"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLinkedDestinationURL"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultFilteredLinkedDestinationURL"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultVideoThumbnailDestinationPath"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalPersistenceUUID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultDuration"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultDimensions"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultStillPersistenceUUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultStillDisplayTime"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultCreationDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultAdjustmentsData"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultLocalPrivateMetadataFileURL"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMVideoLocalPersistenceResultError"];

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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  duration = self->_duration;
  coderCopy = coder;
  v6 = [v4 valueWithCMTime:&duration];
  duration = self->_stillDisplayTime;
  v7 = [MEMORY[0x1E696B098] valueWithCMTime:&duration];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_dimensions objCType:"{?=ii}"];
  localDestinationURL = [(CAMVideoLocalPersistenceResult *)self localDestinationURL];
  [coderCopy encodeObject:localDestinationURL forKey:@"CAMVideoLocalPersistenceResultLocalDestinationURL"];

  filteredLocalDestinationURL = [(CAMVideoLocalPersistenceResult *)self filteredLocalDestinationURL];
  [coderCopy encodeObject:filteredLocalDestinationURL forKey:@"CAMVideoLocalPersistenceResultFilteredLocalDestinationURL"];

  linkedDestinationURL = [(CAMVideoLocalPersistenceResult *)self linkedDestinationURL];
  [coderCopy encodeObject:linkedDestinationURL forKey:@"CAMVideoLocalPersistenceResultLinkedDestinationURL"];

  filteredLinkedDestinationURL = [(CAMVideoLocalPersistenceResult *)self filteredLinkedDestinationURL];
  [coderCopy encodeObject:filteredLinkedDestinationURL forKey:@"CAMVideoLocalPersistenceResultFilteredLinkedDestinationURL"];

  filteredVideoPreviewPath = [(CAMVideoLocalPersistenceResult *)self filteredVideoPreviewPath];
  [coderCopy encodeObject:filteredVideoPreviewPath forKey:@"CAMVideoLocalPersistenceResultVideoThumbnailDestinationPath"];

  localPersistenceUUID = [(CAMVideoLocalPersistenceResult *)self localPersistenceUUID];
  [coderCopy encodeObject:localPersistenceUUID forKey:@"CAMVideoLocalPersistenceResultLocalPersistenceUUID"];

  [coderCopy encodeObject:v6 forKey:@"CAMVideoLocalPersistenceResultDuration"];
  [coderCopy encodeObject:v8 forKey:@"CAMVideoLocalPersistenceResultDimensions"];
  stillPersistenceUUID = [(CAMVideoLocalPersistenceResult *)self stillPersistenceUUID];
  [coderCopy encodeObject:stillPersistenceUUID forKey:@"CAMVideoLocalPersistenceResultStillPersistenceUUID"];

  [coderCopy encodeObject:v7 forKey:@"CAMVideoLocalPersistenceResultStillDisplayTime"];
  creationDate = [(CAMVideoLocalPersistenceResult *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"CAMVideoLocalPersistenceResultCreationDate"];

  adjustmentsData = [(CAMVideoLocalPersistenceResult *)self adjustmentsData];
  [coderCopy encodeObject:adjustmentsData forKey:@"CAMVideoLocalPersistenceResultAdjustmentsData"];

  localPrivateMetadataFileURL = [(CAMVideoLocalPersistenceResult *)self localPrivateMetadataFileURL];
  [coderCopy encodeObject:localPrivateMetadataFileURL forKey:@"CAMVideoLocalPersistenceResultLocalPrivateMetadataFileURL"];

  error = [(CAMVideoLocalPersistenceResult *)self error];
  [coderCopy encodeObject:error forKey:@"CAMVideoLocalPersistenceResultError"];
}

@end