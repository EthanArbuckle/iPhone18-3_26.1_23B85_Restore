@interface MADServicePrivate
+ (id)allowedClasses;
+ (id)allowedMultiModalRequestClasses;
+ (id)allowedTextRequestClasses;
+ (id)allowedTextResultClasses;
+ (id)allowedVideoRequestClasses;
+ (id)allowedVideoResultClasses;
+ (void)configureServerInterface:(id)interface;
@end

@implementation MADServicePrivate

+ (id)allowedVideoResultClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedVideoRequestClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedClasses
{
  v6[12] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v6[10] = objc_opt_class();
  v6[11] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:12];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedTextRequestClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedTextResultClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedMultiModalRequestClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (void)configureServerInterface:(id)interface
{
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___MADServicePrivate;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v16, sel_configureServerInterface_, interfaceCopy);
  allowedClasses = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses forSelector:sel_requestImageProcessing_forAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses2 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses2 forSelector:sel_requestImageProcessing_forAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedClasses3 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses3 forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses4 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses4 forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedClasses5 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses5 forSelector:sel_requestImageProcessing_forAssetWithCloudIdentifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses6 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses6 forSelector:sel_requestImageProcessing_forAssetWithCloudIdentifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedClasses7 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses7 forSelector:sel_requestImageProcessingWithCloudIdentifierRequests_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses8 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses8 forSelector:sel_requestImageProcessingWithCloudIdentifierRequests_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedClasses9 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses9 forSelector:sel_requestImageProcessing_forImageData_withUniformTypeIdentifier_identifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses10 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses10 forSelector:sel_requestImageProcessing_forImageData_withUniformTypeIdentifier_identifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedVideoRequestClasses = [objc_opt_class() allowedVideoRequestClasses];
  [interfaceCopy setClasses:allowedVideoRequestClasses forSelector:sel_requestVideoProcessing_assetIdentifier_identifierType_photoLibraryURL_requestID_isIncremental_reply_ argumentIndex:0 ofReply:0];

  allowedVideoResultClasses = [objc_opt_class() allowedVideoResultClasses];
  [interfaceCopy setClasses:allowedVideoResultClasses forSelector:sel_requestVideoProcessing_assetIdentifier_identifierType_photoLibraryURL_requestID_isIncremental_reply_ argumentIndex:0 ofReply:1];
}

@end