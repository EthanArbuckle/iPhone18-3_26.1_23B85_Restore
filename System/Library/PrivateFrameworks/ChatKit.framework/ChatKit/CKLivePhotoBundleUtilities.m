@interface CKLivePhotoBundleUtilities
+ (BOOL)fileExistsAtPath:(id)a3;
+ (BOOL)isLivePhotoAtURL:(id)a3;
+ (BOOL)writeToBundle:(id)a3 atURL:(id)a4;
+ (id)calculateLivePhotoVideoPath:(id)a3;
+ (id)getLivePhotoBundleURL:(id)a3;
@end

@implementation CKLivePhotoBundleUtilities

+ (id)getLivePhotoBundleURL:(id)a3
{
  v4 = a3;
  v5 = [a1 isLivePhotoAtURL:v4];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [a1 calculateLivePhotoVideoPath:v4];
    v6 = [a1 attachmentPreviewFileURL:v4 extension:*MEMORY[0x1E69C0E28]];
    if (([a1 fileExistsAtPath:v6] & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x1E69C0918]);
      v9 = [v4 path];
      v10 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
      v11 = *(v10 + 16);
      v14 = *v10;
      v15 = v11;
      v12 = [v8 initWithPathToVideo:v7 pathToImage:v9 imageDisplayTime:&v14 pairingIdentifier:0];

      [a1 writeToBundle:v12 atURL:v6];
    }
  }

  return v6;
}

+ (BOOL)isLivePhotoAtURL:(id)a3
{
  v3 = [a1 calculateLivePhotoVideoPath:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)calculateLivePhotoVideoPath:(id)a3
{
  v3 = [a3 path];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v4 stringByAppendingPathExtension:@"MOV"];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [v5 stringByDeletingPathExtension];
  v9 = [v8 stringByAppendingPathExtension:@"mov"];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v8) = [v10 fileExistsAtPath:v9];

  if (v8)
  {
    v5 = v9;
LABEL_4:
    v11 = v5;
    v9 = v11;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (BOOL)fileExistsAtPath:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  LOBYTE(v4) = [v5 fileExistsAtPath:v6];
  return v4;
}

+ (BOOL)writeToBundle:(id)a3 atURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (v12 = 0, [v5 writeToBundleAtURL:v6 error:&v12], (v7 = v12) != 0))
  {
    v8 = v7;
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CKLivePhotoBundleUtilities *)v5 writeToBundle:v8 atURL:v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (void)writeToBundle:(os_log_t)log atURL:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Could not create iris bundle from using videoComplement %@, error %@", &v3, 0x16u);
}

@end