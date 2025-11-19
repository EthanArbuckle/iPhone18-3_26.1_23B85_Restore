@interface BMStoreDataClassLogging
+ (void)logClassNamed:(id)a3;
@end

@implementation BMStoreDataClassLogging

+ (void)logClassNamed:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = NSClassFromString(v3);
    if (![(NSString *)v3 hasPrefix:@"BM"])
    {
      goto LABEL_6;
    }

    ImageName = class_getImageName(v4);
    if (!ImageName)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ImageName];
    v7 = [v6 lastPathComponent];

    if (([v7 isEqual:@"BiomeStreams"]& 1) != 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v8 = [v7 hasPrefix:@"BiomeLibrary"];

    if ((v8 & 1) == 0)
    {
LABEL_6:
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(BMStoreDataClassLogging *)v3 logClassNamed:v7];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

+ (void)logClassNamed:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C928A000, a2, OS_LOG_TYPE_FAULT, "Decoding event of class %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end