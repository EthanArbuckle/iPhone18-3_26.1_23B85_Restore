@interface AVCaptureSession
@end

@implementation AVCaptureSession

void __83__AVCaptureSession_CAMCaptureEngine__cam_ensureInputs_exclusively_withConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) removeObject:v3];
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) removeInput:v3];
  }
}

void __83__AVCaptureSession_CAMCaptureEngine__cam_ensureInputs_exclusively_withConnections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_9;
  }

  if (![*(a1 + 32) canAddInput:v3])
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __83__AVCaptureSession_CAMCaptureEngine__cam_ensureInputs_exclusively_withConnections___block_invoke_2_cold_1();
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [v4 addInput:v3];
  }

  else
  {
    [v4 addInputWithNoConnections:v3];
  }

LABEL_9:
}

void __55__AVCaptureSession_CAMCaptureEngine__cam_removeInputs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) removeInput:v3];
  }
}

void __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) removeObject:v3];
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) removeOutput:v3];
  }
}

void __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_9;
  }

  if (![*(a1 + 32) canAddOutput:v3])
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke_2_cold_1(v3, v5);
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [v4 addOutput:v3];
  }

  else
  {
    [v4 addOutputWithNoConnections:v3];
  }

LABEL_9:
}

void __70__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_whileRemoving___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:?])
  {
    [a1[5] removeObject:v3];
  }

  else if ([a1[6] containsObject:v3])
  {
    [a1[7] removeOutput:v3];
  }
}

void __70__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_whileRemoving___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if (![*(a1 + 32) canAddOutput:v3])
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke_2_cold_1(v3, v4);
    }

    goto LABEL_7;
  }

  [*(a1 + 32) addOutput:v3];
LABEL_8:
}

void __97__AVCaptureSession_CAMCaptureEngine__cam_ensureVideoPreviewLayers_withConnections_whileRemoving___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 session];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [*(a1 + 40) removeObject:v5];
  }
}

uint64_t __97__AVCaptureSession_CAMCaptureEngine__cam_ensureVideoPreviewLayers_withConnections_whileRemoving___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 setSession:v2];
  }

  else
  {
    return [a2 setSessionWithNoConnection:v2];
  }
}

void __60__AVCaptureSession_CAMCaptureEngine__cam_ensureConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) removeObject:v3];
  }
}

void __60__AVCaptureSession_CAMCaptureEngine__cam_ensureConnections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if (![*(a1 + 32) canAddConnection:v3])
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__AVCaptureSession_CAMCaptureEngine__cam_ensureConnections___block_invoke_2_cold_1();
    }

    goto LABEL_7;
  }

  [*(a1 + 32) addConnection:v3];
LABEL_8:
}

void __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to add output %{public}@", &v2, 0xCu);
}

@end