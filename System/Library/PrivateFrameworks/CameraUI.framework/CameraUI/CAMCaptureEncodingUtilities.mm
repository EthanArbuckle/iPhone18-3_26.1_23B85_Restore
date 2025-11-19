@interface CAMCaptureEncodingUtilities
+ (id)selectPhotoCodecFromAvailableCodecs:(id)a3 withBehavior:(int64_t)a4;
+ (id)selectVideoCodecFromAvailableCodecs:(id)a3 withBehavior:(int64_t)a4;
@end

@implementation CAMCaptureEncodingUtilities

+ (id)selectVideoCodecFromAvailableCodecs:(id)a3 withBehavior:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = **(&unk_1E76F7CC0 + a4);
  }

  if ([v5 containsObject:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = [v5 objectAtIndex:0];
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find desired codec %{public}@, using default of %{public}@ (available = %{public}@)", &v10, 0x20u);
    }
  }

  return v7;
}

+ (id)selectPhotoCodecFromAvailableCodecs:(id)a3 withBehavior:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    v7 = *MEMORY[0x1E6987CF0];
    if ([v5 containsObject:*MEMORY[0x1E6987CF0]])
    {
LABEL_5:
      v8 = v7;
      if (v8)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!a4)
  {
    v7 = *MEMORY[0x1E6987D00];
    goto LABEL_5;
  }

  v8 = [v6 firstObject];
LABEL_7:

  return v8;
}

@end