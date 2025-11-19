@interface AVCaptureSession(CAMCaptureEngine)
- (BOOL)cam_hasAddedInput:()CAMCaptureEngine;
- (BOOL)cam_hasAddedOutput:()CAMCaptureEngine;
- (id)cam_addConnectionWithMediaType:()CAMCaptureEngine fromDeviceInput:toOutput:;
- (id)cam_connectionWithMediaType:()CAMCaptureEngine fromDeviceInput:toOutput:;
- (uint64_t)cam_ensureConnections:()CAMCaptureEngine;
- (uint64_t)cam_ensureControls:()CAMCaptureEngine;
- (uint64_t)cam_ensureInputs:()CAMCaptureEngine exclusively:withConnections:;
- (uint64_t)cam_ensureOutputs:()CAMCaptureEngine exclusively:withConnections:;
- (uint64_t)cam_ensureOutputs:()CAMCaptureEngine whileRemoving:;
- (void)cam_ensureVideoPreviewLayers:()CAMCaptureEngine withConnections:whileRemoving:;
- (void)cam_removeAllInputs;
- (void)cam_removeAllOutputs;
- (void)cam_removeInputs:()CAMCaptureEngine;
@end

@implementation AVCaptureSession(CAMCaptureEngine)

- (BOOL)cam_hasAddedInput:()CAMCaptureEngine
{
  v4 = a3;
  v5 = [a1 inputs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AVCaptureSession_CAMCaptureEngine__cam_hasAddedInput___block_invoke;
  v9[3] = &unk_1E76FEAB8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

- (uint64_t)cam_ensureInputs:()CAMCaptureEngine exclusively:withConnections:
{
  v8 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v9 = [v8 mutableCopy];
  v10 = [a1 inputs];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__AVCaptureSession_CAMCaptureEngine__cam_ensureInputs_exclusively_withConnections___block_invoke;
  v18[3] = &unk_1E76FEAE0;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v22 = a4;
  v20 = v12;
  v21 = a1;
  [v10 enumerateObjectsUsingBlock:v18];
  if ([v12 count])
  {
    v13 = [v12 copy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__AVCaptureSession_CAMCaptureEngine__cam_ensureInputs_exclusively_withConnections___block_invoke_2;
    v16[3] = &unk_1E76FEB08;
    v16[4] = a1;
    v16[5] = &v23;
    v17 = a5;
    [v13 enumerateObjectsUsingBlock:v16];
  }

  v14 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v14;
}

- (void)cam_removeAllInputs
{
  v2 = [a1 inputs];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__AVCaptureSession_CAMCaptureEngine__cam_removeAllInputs__block_invoke;
  v3[3] = &unk_1E76FEB30;
  v3[4] = a1;
  [v2 enumerateObjectsUsingBlock:v3];
}

- (void)cam_removeInputs:()CAMCaptureEngine
{
  v4 = a3;
  v5 = [a1 inputs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVCaptureSession_CAMCaptureEngine__cam_removeInputs___block_invoke;
  v7[3] = &unk_1E76FD280;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (BOOL)cam_hasAddedOutput:()CAMCaptureEngine
{
  v4 = a3;
  v5 = [a1 outputs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__AVCaptureSession_CAMCaptureEngine__cam_hasAddedOutput___block_invoke;
  v9[3] = &unk_1E76FD660;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

- (uint64_t)cam_ensureOutputs:()CAMCaptureEngine exclusively:withConnections:
{
  v8 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v9 = [v8 mutableCopy];
  v10 = [a1 outputs];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke;
  v18[3] = &unk_1E76FEB58;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v22 = a4;
  v20 = v12;
  v21 = a1;
  [v10 enumerateObjectsUsingBlock:v18];
  if ([v12 count])
  {
    v13 = [v12 copy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_exclusively_withConnections___block_invoke_2;
    v16[3] = &unk_1E76FEB80;
    v16[4] = a1;
    v16[5] = &v23;
    v17 = a5;
    [v13 enumerateObjectsUsingBlock:v16];
  }

  v14 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v14;
}

- (uint64_t)cam_ensureOutputs:()CAMCaptureEngine whileRemoving:
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v8 = [v6 mutableCopy];
  v9 = [a1 outputs];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_whileRemoving___block_invoke;
  v17[3] = &unk_1E76FEBA8;
  v10 = v6;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v21 = a1;
  [v9 enumerateObjectsUsingBlock:v17];
  if ([v11 count])
  {
    v13 = [v11 copy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__AVCaptureSession_CAMCaptureEngine__cam_ensureOutputs_whileRemoving___block_invoke_2;
    v16[3] = &unk_1E76FEBD0;
    v16[4] = a1;
    v16[5] = &v22;
    [v13 enumerateObjectsUsingBlock:v16];
  }

  v14 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14;
}

- (void)cam_removeAllOutputs
{
  v2 = [a1 outputs];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__AVCaptureSession_CAMCaptureEngine__cam_removeAllOutputs__block_invoke;
  v3[3] = &unk_1E76FEBF8;
  v3[4] = a1;
  [v2 enumerateObjectsUsingBlock:v3];
}

- (void)cam_ensureVideoPreviewLayers:()CAMCaptureEngine withConnections:whileRemoving:
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 mutableCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__AVCaptureSession_CAMCaptureEngine__cam_ensureVideoPreviewLayers_withConnections_whileRemoving___block_invoke;
  v15[3] = &unk_1E76FEC20;
  v15[4] = a1;
  v11 = v10;
  v16 = v11;
  [v9 enumerateObjectsUsingBlock:v15];

  [v8 enumerateObjectsUsingBlock:&__block_literal_global_62];
  if ([v11 count])
  {
    v12 = [v11 copy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__AVCaptureSession_CAMCaptureEngine__cam_ensureVideoPreviewLayers_withConnections_whileRemoving___block_invoke_3;
    v13[3] = &unk_1E76FEC68;
    v14 = a4;
    v13[4] = a1;
    [v12 enumerateObjectsUsingBlock:v13];
  }
}

- (uint64_t)cam_ensureConnections:()CAMCaptureEngine
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = [v4 copy];
  v6 = [a1 connections];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__AVCaptureSession_CAMCaptureEngine__cam_ensureConnections___block_invoke;
  v13[3] = &unk_1E76FEC90;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [v6 enumerateObjectsUsingBlock:v13];
  if ([v8 count])
  {
    v9 = [v8 copy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__AVCaptureSession_CAMCaptureEngine__cam_ensureConnections___block_invoke_2;
    v12[3] = &unk_1E76FECB8;
    v12[4] = a1;
    v12[5] = &v16;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (id)cam_addConnectionWithMediaType:()CAMCaptureEngine fromDeviceInput:toOutput:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 device];
  v12 = [v11 deviceType];
  v13 = [v9 portsWithMediaType:v10 sourceDeviceType:v12 sourceDevicePosition:{objc_msgSend(v11, "position")}];

  v14 = [v13 firstObject];

  v15 = MEMORY[0x1E6987070];
  v19[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [v15 connectionWithInputPorts:v16 output:v8];

  if ([a1 canAddConnection:v17])
  {
    [a1 addConnection:v17];
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

- (id)cam_connectionWithMediaType:()CAMCaptureEngine fromDeviceInput:toOutput:
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 inputs];
  v12 = [v11 containsObject:v9];

  if (v12 && ([a1 outputs], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsObject:", v10), v13, v14))
  {
    v30 = v10;
    v31 = v8;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [v10 connections];
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v34)
    {
      v35 = 0;
      v33 = *v42;
      v15 = *MEMORY[0x1E6987608];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v18 = [v17 inputPorts];
          v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v36 = v17;
            v21 = *v38;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v37 + 1) + 8 * j);
                v24 = [v23 mediaType];
                v25 = [v24 isEqualToString:v15];

                if (v25)
                {
                  v26 = [v23 input];

                  if (v26 == v9)
                  {
                    v27 = v36;

                    v35 = v27;
                    goto LABEL_19;
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }

        v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    else
    {
      v35 = 0;
    }

    v10 = v30;
    v8 = v31;
    v28 = v35;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (uint64_t)cam_ensureControls:()CAMCaptureEngine
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [a1 controls];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [a1 removeControl:*(*(&v25 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v22;
    v15 = 1;
    *&v12 = 138543362;
    v20 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if ([a1 canAddControl:{v17, v20, v21}])
        {
          [a1 addControl:v17];
        }

        else
        {
          v18 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v30 = v17;
            _os_log_error_impl(&dword_1A3640000, v18, OS_LOG_TYPE_ERROR, "Failed to add control %{public}@", buf, 0xCu);
          }

          v15 = 0;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

@end