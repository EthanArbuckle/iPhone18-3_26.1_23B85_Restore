@interface CAMStillImageLocalPersistenceResult
- (CAMStillImageLocalPersistenceResult)initWithCaptureResult:(id)a3 atURL:(id)a4 linkedURL:(id)a5 localAdjustmentsURL:(id)a6 diagnosticsPath:(id)a7 filteredPreviewPath:(id)a8 withUUID:(id)a9 creationDate:(id)a10 uniformTypeIdentifier:(id)a11 orientation:(int64_t)a12 metadata:(id)a13 adjustmentsData:(id)a14 localPrivateMetadataFileURL:(id)a15 error:(id)a16;
@end

@implementation CAMStillImageLocalPersistenceResult

- (CAMStillImageLocalPersistenceResult)initWithCaptureResult:(id)a3 atURL:(id)a4 linkedURL:(id)a5 localAdjustmentsURL:(id)a6 diagnosticsPath:(id)a7 filteredPreviewPath:(id)a8 withUUID:(id)a9 creationDate:(id)a10 uniformTypeIdentifier:(id)a11 orientation:(int64_t)a12 metadata:(id)a13 adjustmentsData:(id)a14 localPrivateMetadataFileURL:(id)a15 error:(id)a16
{
  v56 = a3;
  v57 = a4;
  v21 = a5;
  v59 = a6;
  v58 = a7;
  v22 = a8;
  v23 = a9;
  v55 = a10;
  v24 = a11;
  v25 = v21;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = v22;
  v30 = a16;
  v60.receiver = self;
  v60.super_class = CAMStillImageLocalPersistenceResult;
  v31 = [(CAMStillImageLocalPersistenceResult *)&v60 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_captureResult, a3);
    objc_storeStrong(&v32->_creationDate, a10);
    v33 = [v57 copy];
    localDestinationURL = v32->_localDestinationURL;
    v32->_localDestinationURL = v33;

    v35 = [v25 copy];
    linkedDestinationURL = v32->_linkedDestinationURL;
    v32->_linkedDestinationURL = v35;

    v37 = [v59 copy];
    localAdjustmentsURL = v32->_localAdjustmentsURL;
    v32->_localAdjustmentsURL = v37;

    v39 = [v58 copy];
    localDiagnosticsPath = v32->_localDiagnosticsPath;
    v32->_localDiagnosticsPath = v39;

    v41 = [v29 copy];
    localFilteredPreviewPath = v32->_localFilteredPreviewPath;
    v32->_localFilteredPreviewPath = v41;

    v43 = [v23 copy];
    localPersistenceUUID = v32->_localPersistenceUUID;
    v32->_localPersistenceUUID = v43;

    v45 = [v24 copy];
    uniformTypeIdentifier = v32->_uniformTypeIdentifier;
    v32->_uniformTypeIdentifier = v45;

    v32->_imageOrientation = a12;
    v47 = [v26 copy];
    metadata = v32->_metadata;
    v32->_metadata = v47;

    objc_storeStrong(&v32->_adjustmentsData, a14);
    v49 = [v28 copy];
    localPrivateMetadataFileURL = v32->_localPrivateMetadataFileURL;
    v32->_localPrivateMetadataFileURL = v49;

    objc_storeStrong(&v32->_error, a16);
    v51 = v32;
  }

  return v32;
}

@end