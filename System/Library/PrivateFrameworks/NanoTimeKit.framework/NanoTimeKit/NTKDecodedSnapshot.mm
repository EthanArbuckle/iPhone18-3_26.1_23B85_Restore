@interface NTKDecodedSnapshot
+ (id)decodedSnapshotFromURL:(id)l error:(id *)error;
+ (id)queue_decodedSnapshotFromURL:(id)l error:(id *)error;
- (NTKDecodedSnapshot)initWithImage:(id)image context:(id)context;
@end

@implementation NTKDecodedSnapshot

+ (id)decodedSnapshotFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v7 = +[NTKSnapshotFileQueue defaultFileQueue];
  queue = [v7 queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__NTKDecodedSnapshot_decodedSnapshotFromURL_error___block_invoke;
  v12[3] = &unk_27877DE58;
  v13 = lCopy;
  v14 = &v17;
  selfCopy = self;
  errorCopy = error;
  v9 = lCopy;
  dispatch_sync(queue, v12);

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __51__NTKDecodedSnapshot_decodedSnapshotFromURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) queue_decodedSnapshotFromURL:*(a1 + 32) error:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)queue_decodedSnapshotFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NTKSnapshotFileQueue defaultFileQueue];
  queue = [v6 queue];
  dispatch_assert_queue_V2(queue);

  absoluteURL = [lCopy absoluteURL];
  path = [absoluteURL path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    v15[0] = 0;
    v15[1] = 0;
    CPBitmapCreateImagesFromPath();
    v13 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NTKDecodedSnapshot *)path queue_decodedSnapshotFromURL:v15 error:v13];
    }

    if (v15[0])
    {
      CFRelease(v15[0]);
    }

    if (error)
    {
      *error = v15[0];
    }

    v12 = 0;
  }

  else
  {
    v12 = [[NTKDecodedSnapshot alloc] initWithImage:0 context:0];
  }

  return v12;
}

- (NTKDecodedSnapshot)initWithImage:(id)image context:(id)context
{
  imageCopy = image;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = NTKDecodedSnapshot;
  v9 = [(NTKDecodedSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

+ (void)queue_decodedSnapshotFromURL:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_FAULT, "UIImage: File %@ exception while reading, removing… %@", v1, 0x16u);
}

+ (void)queue_decodedSnapshotFromURL:(NSObject *)a3 error:.cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "UIImage: File %@ couldn't get plist %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end