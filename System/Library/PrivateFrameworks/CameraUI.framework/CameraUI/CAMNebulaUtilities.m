@interface CAMNebulaUtilities
+ (id)locationFromJPEGAtPath:(id)a3;
@end

@implementation CAMNebulaUtilities

+ (id)locationFromJPEGAtPath:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:0];
  if ([(__CFData *)v4 length])
  {
    v5 = [*MEMORY[0x1E6982E58] identifier];
    v6 = v5;
    if (v5)
    {
      v13 = *MEMORY[0x1E696E118];
      v14[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v7 = 0;
    }

    v9 = CGImageSourceCreateWithData(v4, v7);
    if (v9)
    {
      v10 = v9;
      v11 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
      v8 = [MEMORY[0x1E69BF180] locationFromImageProperties:v11];
      CFRelease(v10);
    }

    else
    {
      v11 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CAMNebulaUtilities locationFromJPEGAtPath:v3];
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMNebulaUtilities locationFromJPEGAtPath:v3];
    }

    v8 = 0;
  }

  return v8;
}

+ (void)locationFromJPEGAtPath:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0(&dword_1A3640000, v2, v3, "Unable to create image source for '%{public}@'.", v4, v5, v6, v7, 2u);
}

+ (void)locationFromJPEGAtPath:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0(&dword_1A3640000, v2, v3, "locationFromJPEGAtPath: Unable to read data from file '%{public}@'.", v4, v5, v6, v7, 2u);
}

@end