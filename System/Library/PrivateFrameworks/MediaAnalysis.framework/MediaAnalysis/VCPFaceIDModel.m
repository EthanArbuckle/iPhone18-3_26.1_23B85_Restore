@interface VCPFaceIDModel
+ (BOOL)persistModel:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (BOOL)persistPetsModel:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (id)_loadModelAtPath:(id)a3 error:(id *)a4;
+ (id)_loadPetsModelAtPath:(id)a3 error:(id *)a4;
+ (id)animalObservationFromAnimalprintData:(id)a3;
+ (id)classifyAnimalObservation:(id)a3 withModel:(id)a4 error:(id *)a5;
+ (id)classifyFaceObservation:(id)a3 withModel:(id)a4 error:(id *)a5;
+ (id)faceObservationFromFaceprintData:(id)a3;
+ (id)loadVIPModelAtPath:(id)a3 withVIPType:(unint64_t)a4 error:(id *)a5;
+ (id)newMutablePersonsModel;
@end

@implementation VCPFaceIDModel

+ (id)faceObservationFromFaceprintData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E6984520]) initWithState:v3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6984518]);
    [v6 setFaceTorsoprint:v4];
    v7 = [v4 faceprint];
    [v6 setFaceprint:v7];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID: Failed to create faceprint from data : %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)animalObservationFromAnimalprintData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E6984408]) initWithState:v3 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x1E6984400]);
    LODWORD(v7) = 1065336439;
    v8 = [v6 initWithAnimalprint:v4 confidence:v7];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID: Failed to create animalprint from data : %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)newMutablePersonsModel
{
  v2 = objc_alloc_init(MEMORY[0x1E69845E8]);
  [v2 setMaximumIdentities:1000];
  [v2 setMaximumTrainingFaceprintsPerIdentity:10];
  v3 = [objc_alloc(MEMORY[0x1E69845D0]) initWithConfiguration:v2];

  return v3;
}

+ (id)classifyFaceObservation:(id)a3 withModel:(id)a4 error:(id *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [a4 predictPersonFromFaceObservation:a3 limit:1 canceller:0 error:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 firstObject];
    [v7 confidence];
    v9 = v8;
    if (v8 <= VCPPersonFaceVIPMatchingThreshold())
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID: Failed passing classify face confidence: %f", &v12, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      v10 = [v7 predictedPersonUniqueIdentifier];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID: Passing classify face confidence: %f", &v12, 0xCu);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID: Failed to predict at all", &v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)classifyAnimalObservation:(id)a3 withModel:(id)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a4 entityPredictionsForObservation:a3 limit:1 canceller:0 error:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 firstObject];
    [v7 confidence];
    v9 = v8;
    [objc_opt_class() petClassificationThreshold];
    if (v9 <= v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v13 = 134217984;
        v14 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: Failed passing classify pet confidence: %f", &v13, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v11 = [v7 entityUniqueIdentifier];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v13 = 134217984;
        v14 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: Passing classify pet confidence: %f", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Failed to predict pet at all", &v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_loadModelAtPath:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E69845E0] modelFromURL:v5 options:v6 error:a4];

  return v7;
}

+ (id)_loadPetsModelAtPath:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v6 = objc_alloc_init(MEMORY[0x1E6984508]);
  v7 = [MEMORY[0x1E69844F8] modelFromURL:v5 options:v6 error:a4];

  return v7;
}

+ (id)loadVIPModelAtPath:(id)a3 withVIPType:(unint64_t)a4 error:(id *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    if (a4 == 1)
    {
      v9 = [a1 _loadPetsModelAtPath:v8 error:a5];
      goto LABEL_9;
    }

    if (!a4)
    {
      v9 = [a1 _loadModelAtPath:v8 error:a5];
LABEL_9:
      v11 = v9;
      goto LABEL_14;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = VCPMAVIPTypeDescription(a4);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load VIP %@ Model", &v14, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = VCPMAVIPTypeDescription(a4);
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID %@ Model path is nil; skip loading", &v14, 0xCu);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (BOOL)persistModel:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = objc_alloc_init(MEMORY[0x1E69845F8]);
    [v10 setReadOnly:1];
    LOBYTE(a5) = [v7 writeToURL:v9 options:v10 error:a5];
  }

  else if (a5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QuickFaceID Person Model path is nil cannot persist"];;
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];

    LOBYTE(a5) = 0;
  }

  return a5;
}

+ (BOOL)persistPetsModel:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = objc_alloc_init(MEMORY[0x1E6984510]);
    [v10 setReadOnly:1];
    LOBYTE(a5) = [v7 writeToURL:v9 options:v10 error:a5];
  }

  else if (a5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QuickFaceID Pet Model path is nil cannot persist"];;
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];

    LOBYTE(a5) = 0;
  }

  return a5;
}

@end