@interface NTKDecodedSnapshot
+ (id)decodedSnapshotFromURL:(id)a3 error:(id *)a4;
+ (id)queue_decodedSnapshotFromURL:(id)a3 error:(id *)a4;
- (NTKDecodedSnapshot)initWithImage:(id)a3 context:(id)a4;
@end

@implementation NTKDecodedSnapshot

+ (id)decodedSnapshotFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v7 = +[NTKSnapshotFileQueue defaultFileQueue];
  v8 = [v7 queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__NTKDecodedSnapshot_decodedSnapshotFromURL_error___block_invoke;
  v12[3] = &unk_27877DE58;
  v13 = v6;
  v14 = &v17;
  v15 = a1;
  v16 = a4;
  v9 = v6;
  dispatch_sync(v8, v12);

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

+ (id)queue_decodedSnapshotFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NTKSnapshotFileQueue defaultFileQueue];
  v7 = [v6 queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 absoluteURL];
  v9 = [v8 path];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  if (v11)
  {
    v15[0] = 0;
    v15[1] = 0;
    CPBitmapCreateImagesFromPath();
    v13 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NTKDecodedSnapshot *)v9 queue_decodedSnapshotFromURL:v15 error:v13];
    }

    if (v15[0])
    {
      CFRelease(v15[0]);
    }

    if (a4)
    {
      *a4 = v15[0];
    }

    v12 = 0;
  }

  else
  {
    v12 = [[NTKDecodedSnapshot alloc] initWithImage:0 context:0];
  }

  return v12;
}

- (NTKDecodedSnapshot)initWithImage:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKDecodedSnapshot;
  v9 = [(NTKDecodedSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, a3);
    objc_storeStrong(&v10->_context, a4);
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