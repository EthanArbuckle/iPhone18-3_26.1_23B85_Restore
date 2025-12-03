@interface CAMCaptureEncodingUtilities
+ (id)selectPhotoCodecFromAvailableCodecs:(id)codecs withBehavior:(int64_t)behavior;
+ (id)selectVideoCodecFromAvailableCodecs:(id)codecs withBehavior:(int64_t)behavior;
@end

@implementation CAMCaptureEncodingUtilities

+ (id)selectVideoCodecFromAvailableCodecs:(id)codecs withBehavior:(int64_t)behavior
{
  v16 = *MEMORY[0x1E69E9840];
  codecsCopy = codecs;
  if (behavior > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = **(&unk_1E76F7CC0 + behavior);
  }

  if ([codecsCopy containsObject:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = [codecsCopy objectAtIndex:0];
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = codecsCopy;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find desired codec %{public}@, using default of %{public}@ (available = %{public}@)", &v10, 0x20u);
    }
  }

  return v7;
}

+ (id)selectPhotoCodecFromAvailableCodecs:(id)codecs withBehavior:(int64_t)behavior
{
  codecsCopy = codecs;
  v6 = codecsCopy;
  if (behavior == 1)
  {
    v7 = *MEMORY[0x1E6987CF0];
    if ([codecsCopy containsObject:*MEMORY[0x1E6987CF0]])
    {
LABEL_5:
      firstObject = v7;
      if (firstObject)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!behavior)
  {
    v7 = *MEMORY[0x1E6987D00];
    goto LABEL_5;
  }

  firstObject = [v6 firstObject];
LABEL_7:

  return firstObject;
}

@end