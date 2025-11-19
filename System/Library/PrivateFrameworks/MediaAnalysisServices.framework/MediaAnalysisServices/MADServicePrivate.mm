@interface MADServicePrivate
+ (id)allowedClasses;
+ (id)allowedMultiModalRequestClasses;
+ (id)allowedTextRequestClasses;
+ (id)allowedTextResultClasses;
+ (id)allowedVideoRequestClasses;
+ (id)allowedVideoResultClasses;
+ (void)configureServerInterface:(id)a3;
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

+ (void)configureServerInterface:(id)a3
{
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___MADServicePrivate;
  v3 = a3;
  objc_msgSendSuper2(&v16, sel_configureServerInterface_, v3);
  v4 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v4 forSelector:sel_requestImageProcessing_forAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_requestID_andReply_ argumentIndex:0 ofReply:0];

  v5 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v5 forSelector:sel_requestImageProcessing_forAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_requestID_andReply_ argumentIndex:0 ofReply:1];

  v6 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v6 forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_requestID_andReply_ argumentIndex:0 ofReply:0];

  v7 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v7 forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_requestID_andReply_ argumentIndex:0 ofReply:1];

  v8 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v8 forSelector:sel_requestImageProcessing_forAssetWithCloudIdentifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  v9 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v9 forSelector:sel_requestImageProcessing_forAssetWithCloudIdentifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  v10 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v10 forSelector:sel_requestImageProcessingWithCloudIdentifierRequests_requestID_andReply_ argumentIndex:0 ofReply:0];

  v11 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v11 forSelector:sel_requestImageProcessingWithCloudIdentifierRequests_requestID_andReply_ argumentIndex:0 ofReply:1];

  v12 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v12 forSelector:sel_requestImageProcessing_forImageData_withUniformTypeIdentifier_identifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  v13 = [objc_opt_class() allowedClasses];
  [v3 setClasses:v13 forSelector:sel_requestImageProcessing_forImageData_withUniformTypeIdentifier_identifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  v14 = [objc_opt_class() allowedVideoRequestClasses];
  [v3 setClasses:v14 forSelector:sel_requestVideoProcessing_assetIdentifier_identifierType_photoLibraryURL_requestID_isIncremental_reply_ argumentIndex:0 ofReply:0];

  v15 = [objc_opt_class() allowedVideoResultClasses];
  [v3 setClasses:v15 forSelector:sel_requestVideoProcessing_assetIdentifier_identifierType_photoLibraryURL_requestID_isIncremental_reply_ argumentIndex:0 ofReply:1];
}

@end