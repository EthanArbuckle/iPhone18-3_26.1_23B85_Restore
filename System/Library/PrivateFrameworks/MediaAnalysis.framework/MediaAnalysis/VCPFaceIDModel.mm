@interface VCPFaceIDModel
+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error;
+ (BOOL)persistPetsModel:(id)model toPath:(id)path error:(id *)error;
+ (id)_loadModelAtPath:(id)path error:(id *)error;
+ (id)_loadPetsModelAtPath:(id)path error:(id *)error;
+ (id)animalObservationFromAnimalprintData:(id)data;
+ (id)classifyAnimalObservation:(id)observation withModel:(id)model error:(id *)error;
+ (id)classifyFaceObservation:(id)observation withModel:(id)model error:(id *)error;
+ (id)faceObservationFromFaceprintData:(id)data;
+ (id)loadVIPModelAtPath:(id)path withVIPType:(unint64_t)type error:(id *)error;
+ (id)newMutablePersonsModel;
@end

@implementation VCPFaceIDModel

+ (id)faceObservationFromFaceprintData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E6984520]) initWithState:dataCopy error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6984518]);
    [v6 setFaceTorsoprint:v4];
    faceprint = [v4 faceprint];
    [v6 setFaceprint:faceprint];
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

+ (id)animalObservationFromAnimalprintData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E6984408]) initWithState:dataCopy error:&v10];
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

+ (id)classifyFaceObservation:(id)observation withModel:(id)model error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [model predictPersonFromFaceObservation:observation limit:1 canceller:0 error:error];
  v6 = v5;
  if (v5)
  {
    firstObject = [v5 firstObject];
    [firstObject confidence];
    v9 = v8;
    if (v8 <= VCPPersonFaceVIPMatchingThreshold())
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID: Failed passing classify face confidence: %f", &v12, 0xCu);
      }

      predictedPersonUniqueIdentifier = 0;
    }

    else
    {
      predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
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

    predictedPersonUniqueIdentifier = 0;
  }

  return predictedPersonUniqueIdentifier;
}

+ (id)classifyAnimalObservation:(id)observation withModel:(id)model error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [model entityPredictionsForObservation:observation limit:1 canceller:0 error:error];
  v6 = v5;
  if (v5)
  {
    firstObject = [v5 firstObject];
    [firstObject confidence];
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

      entityUniqueIdentifier = 0;
    }

    else
    {
      entityUniqueIdentifier = [firstObject entityUniqueIdentifier];
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

    entityUniqueIdentifier = 0;
  }

  return entityUniqueIdentifier;
}

+ (id)_loadModelAtPath:(id)path error:(id *)error
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E69845E0] modelFromURL:v5 options:v6 error:error];

  return v7;
}

+ (id)_loadPetsModelAtPath:(id)path error:(id *)error
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  v6 = objc_alloc_init(MEMORY[0x1E6984508]);
  v7 = [MEMORY[0x1E69844F8] modelFromURL:v5 options:v6 error:error];

  return v7;
}

+ (id)loadVIPModelAtPath:(id)path withVIPType:(unint64_t)type error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    if (type == 1)
    {
      v9 = [self _loadPetsModelAtPath:pathCopy error:error];
      goto LABEL_9;
    }

    if (!type)
    {
      v9 = [self _loadModelAtPath:pathCopy error:error];
LABEL_9:
      v11 = v9;
      goto LABEL_14;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = VCPMAVIPTypeDescription(type);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load VIP %@ Model", &v14, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = VCPMAVIPTypeDescription(type);
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID %@ Model path is nil; skip loading", &v14, 0xCu);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  pathCopy = path;
  if (pathCopy)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
    v10 = objc_alloc_init(MEMORY[0x1E69845F8]);
    [v10 setReadOnly:1];
    LOBYTE(error) = [modelCopy writeToURL:v9 options:v10 error:error];
  }

  else if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QuickFaceID Person Model path is nil cannot persist"];;
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];

    LOBYTE(error) = 0;
  }

  return error;
}

+ (BOOL)persistPetsModel:(id)model toPath:(id)path error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  pathCopy = path;
  if (pathCopy)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
    v10 = objc_alloc_init(MEMORY[0x1E6984510]);
    [v10 setReadOnly:1];
    LOBYTE(error) = [modelCopy writeToURL:v9 options:v10 error:error];
  }

  else if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QuickFaceID Pet Model path is nil cannot persist"];;
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];

    LOBYTE(error) = 0;
  }

  return error;
}

@end