@interface CSFModelComputeBackendFactory
+ (id)provideComputeBackendWithModelFile:(id)a3 separateWeight:(id)a4 error:(id *)a5;
@end

@implementation CSFModelComputeBackendFactory

+ (id)provideComputeBackendWithModelFile:(id)a3 separateWeight:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 hasSuffix:@"bnns.mil"])
  {
    v9 = [CSFBnnsIrLookUp getBnnsIrPathFromMilFile:v7];
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v28 = "+[CSFModelComputeBackendFactory provideComputeBackendWithModelFile:separateWeight:error:]";
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s obtained lookup bnnsIrPath : %@ for mil path: %@", buf, 0x20u);
    }

    v24 = 0;
    v11 = [[CSFMil2bnnsComputeBackend alloc] initWithModelFile:v7 bnnsIrPath:v9 errOut:&v24];
    v12 = v24;

    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (!v12)
    {
      v11 = v11;
      v14 = v11;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if ([v7 hasSuffix:@"bnnsir"])
  {
    v23 = 0;
    v11 = [[CSFMil2bnnsComputeBackend alloc] initWithBnnsIrFile:v7 weightPath:v8 errOut:&v23];
    v13 = v23;
  }

  else
  {
    if (![v7 hasSuffix:@"mlmodelc"])
    {
      v15 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Backend not supported"];
      v26 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v12 = [v15 errorWithDomain:@"com.apple.corespeech" code:2457 userInfo:v17];

      v11 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    v11 = [[CSFCoreMLComputeBackend alloc] initWithModelFile:v7 error:&v22];
    v13 = v22;
  }

  v12 = v13;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_14:
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "+[CSFModelComputeBackendFactory provideComputeBackendWithModelFile:separateWeight:error:]";
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s model: %@ init with error: %@", buf, 0x20u);
  }

  if (a5)
  {
    v19 = v12;
    v14 = 0;
    *a5 = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v14;
}

@end