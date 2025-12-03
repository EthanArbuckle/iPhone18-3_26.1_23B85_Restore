@interface CKLivePhotoBundleUtilities
+ (BOOL)fileExistsAtPath:(id)path;
+ (BOOL)isLivePhotoAtURL:(id)l;
+ (BOOL)writeToBundle:(id)bundle atURL:(id)l;
+ (id)calculateLivePhotoVideoPath:(id)path;
+ (id)getLivePhotoBundleURL:(id)l;
@end

@implementation CKLivePhotoBundleUtilities

+ (id)getLivePhotoBundleURL:(id)l
{
  lCopy = l;
  v5 = [self isLivePhotoAtURL:lCopy];
  v6 = 0;
  if (lCopy && v5)
  {
    v7 = [self calculateLivePhotoVideoPath:lCopy];
    v6 = [self attachmentPreviewFileURL:lCopy extension:*MEMORY[0x1E69C0E28]];
    if (([self fileExistsAtPath:v6] & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x1E69C0918]);
      path = [lCopy path];
      v10 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
      v11 = *(v10 + 16);
      v14 = *v10;
      v15 = v11;
      v12 = [v8 initWithPathToVideo:v7 pathToImage:path imageDisplayTime:&v14 pairingIdentifier:0];

      [self writeToBundle:v12 atURL:v6];
    }
  }

  return v6;
}

+ (BOOL)isLivePhotoAtURL:(id)l
{
  v3 = [self calculateLivePhotoVideoPath:l];
  v4 = v3 != 0;

  return v4;
}

+ (id)calculateLivePhotoVideoPath:(id)path
{
  path = [path path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  v5 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"MOV"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    goto LABEL_4;
  }

  stringByDeletingPathExtension2 = [v5 stringByDeletingPathExtension];
  v9 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"mov"];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(stringByDeletingPathExtension2) = [defaultManager2 fileExistsAtPath:v9];

  if (stringByDeletingPathExtension2)
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

+ (BOOL)fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  path = [pathCopy path];

  LOBYTE(pathCopy) = [defaultManager fileExistsAtPath:path];
  return pathCopy;
}

+ (BOOL)writeToBundle:(id)bundle atURL:(id)l
{
  bundleCopy = bundle;
  lCopy = l;
  if (bundleCopy && (v12 = 0, [bundleCopy writeToBundleAtURL:lCopy error:&v12], (v7 = v12) != 0))
  {
    v8 = v7;
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CKLivePhotoBundleUtilities *)bundleCopy writeToBundle:v8 atURL:v9];
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