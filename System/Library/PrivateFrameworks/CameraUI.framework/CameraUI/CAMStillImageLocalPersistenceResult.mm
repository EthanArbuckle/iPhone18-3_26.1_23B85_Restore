@interface CAMStillImageLocalPersistenceResult
- (CAMStillImageLocalPersistenceResult)initWithCaptureResult:(id)result atURL:(id)l linkedURL:(id)rL localAdjustmentsURL:(id)uRL diagnosticsPath:(id)path filteredPreviewPath:(id)previewPath withUUID:(id)d creationDate:(id)self0 uniformTypeIdentifier:(id)self1 orientation:(int64_t)self2 metadata:(id)self3 adjustmentsData:(id)self4 localPrivateMetadataFileURL:(id)self5 error:(id)self6;
@end

@implementation CAMStillImageLocalPersistenceResult

- (CAMStillImageLocalPersistenceResult)initWithCaptureResult:(id)result atURL:(id)l linkedURL:(id)rL localAdjustmentsURL:(id)uRL diagnosticsPath:(id)path filteredPreviewPath:(id)previewPath withUUID:(id)d creationDate:(id)self0 uniformTypeIdentifier:(id)self1 orientation:(int64_t)self2 metadata:(id)self3 adjustmentsData:(id)self4 localPrivateMetadataFileURL:(id)self5 error:(id)self6
{
  resultCopy = result;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  pathCopy = path;
  previewPathCopy = previewPath;
  dCopy = d;
  dateCopy = date;
  identifierCopy = identifier;
  v25 = rLCopy;
  metadataCopy = metadata;
  dataCopy = data;
  fileURLCopy = fileURL;
  v29 = previewPathCopy;
  errorCopy = error;
  v60.receiver = self;
  v60.super_class = CAMStillImageLocalPersistenceResult;
  v31 = [(CAMStillImageLocalPersistenceResult *)&v60 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_captureResult, result);
    objc_storeStrong(&v32->_creationDate, date);
    v33 = [lCopy copy];
    localDestinationURL = v32->_localDestinationURL;
    v32->_localDestinationURL = v33;

    v35 = [v25 copy];
    linkedDestinationURL = v32->_linkedDestinationURL;
    v32->_linkedDestinationURL = v35;

    v37 = [uRLCopy copy];
    localAdjustmentsURL = v32->_localAdjustmentsURL;
    v32->_localAdjustmentsURL = v37;

    v39 = [pathCopy copy];
    localDiagnosticsPath = v32->_localDiagnosticsPath;
    v32->_localDiagnosticsPath = v39;

    v41 = [v29 copy];
    localFilteredPreviewPath = v32->_localFilteredPreviewPath;
    v32->_localFilteredPreviewPath = v41;

    v43 = [dCopy copy];
    localPersistenceUUID = v32->_localPersistenceUUID;
    v32->_localPersistenceUUID = v43;

    v45 = [identifierCopy copy];
    uniformTypeIdentifier = v32->_uniformTypeIdentifier;
    v32->_uniformTypeIdentifier = v45;

    v32->_imageOrientation = orientation;
    v47 = [metadataCopy copy];
    metadata = v32->_metadata;
    v32->_metadata = v47;

    objc_storeStrong(&v32->_adjustmentsData, data);
    v49 = [fileURLCopy copy];
    localPrivateMetadataFileURL = v32->_localPrivateMetadataFileURL;
    v32->_localPrivateMetadataFileURL = v49;

    objc_storeStrong(&v32->_error, error);
    v51 = v32;
  }

  return v32;
}

@end