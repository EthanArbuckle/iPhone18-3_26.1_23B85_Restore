@interface BMStoreDataClassLogging
+ (void)logClassNamed:(id)named;
@end

@implementation BMStoreDataClassLogging

+ (void)logClassNamed:(id)named
{
  namedCopy = named;
  if (_os_feature_enabled_impl())
  {
    v4 = NSClassFromString(namedCopy);
    if (![(NSString *)namedCopy hasPrefix:@"BM"])
    {
      goto LABEL_6;
    }

    ImageName = class_getImageName(v4);
    if (!ImageName)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ImageName];
    lastPathComponent = [v6 lastPathComponent];

    if (([lastPathComponent isEqual:@"BiomeStreams"]& 1) != 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v8 = [lastPathComponent hasPrefix:@"BiomeLibrary"];

    if ((v8 & 1) == 0)
    {
LABEL_6:
      lastPathComponent = __biome_log_for_category();
      if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_FAULT))
      {
        [(BMStoreDataClassLogging *)namedCopy logClassNamed:lastPathComponent];
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