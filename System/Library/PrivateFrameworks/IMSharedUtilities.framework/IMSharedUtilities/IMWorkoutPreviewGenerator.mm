@interface IMWorkoutPreviewGenerator
+ (BOOL)generateWorkoutPreview:(id)preview andWriteToURL:(id)l maxPxWidth:(double)width scale:(double)scale imagePxSize:(CGSize *)size;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMWorkoutPreviewGenerator

+ (BOOL)generateWorkoutPreview:(id)preview andWriteToURL:(id)l maxPxWidth:(double)width scale:(double)scale imagePxSize:(CGSize *)size
{
  v44 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  lCopy = l;
  *size = *MEMORY[0x1E695F060];
  MEMORY[0x1AC570AA0](@"BlastDoorWorkoutPreview", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v11 = previewCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  activityType = [v12 activityType];
  isIndoor = [v12 isIndoor];
  configurationType = [v12 configurationType];
  configurationName = [v12 configurationName];
  goalTypeIdentifier = [v12 goalTypeIdentifier];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v18 = qword_1EB30B3C8;
  v43 = qword_1EB30B3C8;
  if (!qword_1EB30B3C8)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1A86B8984;
    v38 = &unk_1E78261C8;
    v39 = &v40;
    sub_1A86B8984(buf);
    v18 = v41[3];
  }

  v19 = v18;
  _Block_object_dispose(&v40, 8);
  v20 = [[v18 alloc] initWithActivityType:activityType isIndoor:isIndoor configurationType:configurationType configurationName:configurationName goalTypeIdentifier:goalTypeIdentifier];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v21 = qword_1EB30B3D8;
  v43 = qword_1EB30B3D8;
  if (!qword_1EB30B3D8)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1A86B8B4C;
    v38 = &unk_1E78261C8;
    v39 = &v40;
    sub_1A86B8B4C(buf);
    v21 = v41[3];
  }

  v22 = v21;
  _Block_object_dispose(&v40, 8);
  v23 = [v21 uiImageRepresentationForBlastDoorDataSource:v20 scale:scale];
  v24 = v23;
  if (v23 && (v25 = CGDataProviderCreateWithCFData(v23), v26 = CGImageCreateWithPNGDataProvider(v25, 0, 1, kCGRenderingIntentDefault), CGDataProviderRelease(v25), v26))
  {
    v36 = 0;
    v27 = [IMImageUtilities persistPreviewToDiskCache:v26 previewURL:lCopy error:&v36];
    v28 = v36;
    if (v27)
    {
      Width = CGImageGetWidth(v26);
      Height = CGImageGetHeight(v26);
      size->width = Width;
      size->height = Height;
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = lCopy;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "IMWorkoutPreviewGenerator - Failed to write decorated image to URL %@: %@", buf, 0x16u);
      }
    }

    CGImageRelease(v26);

    v32 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "IMWorkoutPreviewGenerator - Failed to get image from IMWorkoutPreviewUnpacker_SwiftImpl", buf, 2u);
      }
    }

    v27 = 0;
    v32 = 1;
  }

  if (v32)
  {
    v27 = 0;
  }

  return v27;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v54[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  if (lCopy && size && error)
  {
    sizeCopy = size;
    v16 = MEMORY[0x1E695DFF8];
    v17 = NSTemporaryDirectory();
    v54[0] = v17;
    v54[1] = @"ImagePreview";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v19 = [v16 fileURLWithPathComponents:v18];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v22 = [v19 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v23 = [v22 URLByAppendingPathExtension:@"ktx"];

    if (v23)
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x3032000000;
      v51 = sub_1A8601F84;
      v52 = sub_1A86021B0;
      v53 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = sub_1A8601F84;
      v43 = sub_1A86021B0;
      v44 = 0;
      v24 = dispatch_group_create();
      dispatch_group_enter(v24);
      var0 = constraints->var0;
      var2 = constraints->var2;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_1A86B87DC;
      v34[3] = &unk_1E7829820;
      v36 = &v45;
      v37 = &v39;
      p_buf = &buf;
      v27 = v24;
      v35 = v27;
      [IMAttachmentBlastdoor generateWorkoutPreview:lCopy senderContext:contextCopy maxPxWidth:v34 scale:var0 withCompletionBlock:var2];
      dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
      if (v40[5] && *(v46 + 24) == 1 && !*(*(&buf + 1) + 40))
      {
        [objc_opt_class() generateWorkoutPreview:v40[5] andWriteToURL:v23 maxPxWidth:sizeCopy scale:constraints->var0 imagePxSize:constraints->var2];
      }

      else
      {

        v28 = *(*(&buf + 1) + 40);
        v23 = 0;
        if (v28)
        {
          *error = v28;
        }
      }

      v30 = v23;

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&buf, 8);

      _Block_object_dispose(&v45, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = stringGUID;
          _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL %@", &buf, 0xCu);
        }
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
      *error = v30 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Invalid parameters", &buf, 2u);
      }
    }

    v30 = 0;
  }

  return v30;
}

@end