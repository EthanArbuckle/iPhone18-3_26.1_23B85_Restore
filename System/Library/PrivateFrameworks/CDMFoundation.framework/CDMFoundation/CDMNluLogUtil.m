@interface CDMNluLogUtil
+ (BOOL)saveCLIResult:(id)a3 protobufFile:(id)a4 preprocess:(BOOL)a5 saveBinary:(BOOL)a6 error:(id *)a7;
+ (BOOL)saveCdmPlannerResponseJson:(id)a3 toFile:(id)a4 error:(id *)a5;
+ (BOOL)savePreprocessingWrapperJson:(id)a3 toFile:(id)a4 error:(id *)a5;
+ (BOOL)saveProtoFile:(id)a3 protobufFile:(id)a4 error:(id *)a5;
+ (BOOL)saveResponseToProtobuf2:(id)a3 protobufFile:(id)a4 error:(id *)a5;
+ (BOOL)saveResponseToProtobuf:(id)a3 protobufFile:(id)a4 error:(id *)a5;
+ (BOOL)saveSpanMatchResponseToProtobuf:(id)a3 protobufFile:(id)a4 error:(id *)a5;
+ (BOOL)saveString:(id)a3 toFile:(id)a4 error:(id *)a5;
+ (BOOL)saveSubwordEmbeddingResponseJson:(id)a3 toFile:(id)a4 error:(id *)a5;
+ (id)getLogBasePath;
+ (id)loadCdmPlannerRequestFromProtobuf2File:(id)a3 error:(id *)a4;
+ (id)loadDataFromProtobuf2File:(id)a3 error:(id *)a4;
+ (id)loadOverrideSpansFromProtobuf2File:(id)a3 error:(id *)a4;
+ (id)loadRequestFromProtobuf2File:(id)a3 error:(id *)a4;
+ (id)loadSubwordEmbeddingRequestFromProtobuf2File:(id)a3 error:(id *)a4;
+ (id)prettyPrintProtoResponse:(id)a3;
+ (id)prettyPrintResponse:(id)a3;
+ (id)writeLVCRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeLVCResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeMDRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeMDResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeMRRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeMRResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeNlv4RequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeNlv4ResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writePSCRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writePSCResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeSNLCRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeSNLCResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeSSURequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeSSUResponseToDisk:(id)a3 error:(id *)a4;
+ (id)writeUaaPRequestToDisk:(id)a3 error:(id *)a4;
+ (id)writeUaaPResponseToDisk:(id)a3 error:(id *)a4;
+ (void)populateErrorWithUserInfo:(id *)a3 errorMessage:(id)a4 errorCode:(int64_t)a5;
@end

@implementation CDMNluLogUtil

+ (BOOL)saveCLIResult:(id)a3 protobufFile:(id)a4 preprocess:(BOOL)a5 saveBinary:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  if (v8)
  {
    if (v9)
    {
      v13 = [v11 preprocessingWrapper];
    }

    else
    {
      v18 = MEMORY[0x1E69D13F8];
      v19 = [v11 nluResponse];
      v13 = [v18 convertFromNluResponse:v19];
    }

    v20 = [v13 data];

    v21 = [v20 writeToFile:v12 atomically:1];
    if (v21)
    {
      printf("%s saved\n", [v12 UTF8String]);
    }

    else
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save %@", v12];
      puts([v29 UTF8String]);
      [CDMNluLogUtil populateErrorWithUserInfo:a7 errorMessage:v29 errorCode:-4];
    }

    v16 = 0;
  }

  else
  {
    if (v9)
    {
      v14 = [v11 preprocessingWrapper];
      v15 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:v14 formatType:@"json"];

      v16 = [CDMPlatformUtils prettyPrintJson:v15];
      printf("%s result:%s\n", [v12 UTF8String], objc_msgSend(v16, "UTF8String"));
      v32 = 0;
      v17 = &v32;
      [CDMNluLogUtil saveString:v16 toFile:v12 error:&v32];
    }

    else
    {
      v22 = [v11 nluResponse];
      v16 = [v22 description];

      printf("%s result:%s\n", [v12 UTF8String], objc_msgSend(v16, "UTF8String"));
      v15 = [v11 nluResponse];
      v31 = 0;
      v17 = &v31;
      [CDMNluLogUtil saveResponseToProtobuf:v15 protobufFile:v12 error:&v31];
    }

    v23 = *v17;

    if (v23)
    {
      v24 = [v12 UTF8String];
      v25 = [v23 localizedDescription];
      printf("Error save %s:%s\n", v24, [v25 UTF8String]);

      v26 = MEMORY[0x1E695DF20];
      v27 = [v23 localizedDescription];
      v28 = [v26 dictionaryWithObject:v27 forKey:*MEMORY[0x1E696A578]];

      *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v28];

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  return v21;
}

+ (BOOL)saveCdmPlannerResponseJson:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalCdmPlannerResponseWithResponse:a3 formatType:@"json"];
  v9 = v8;
  if (!v8)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveCdmPlannerResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = @"Nil content when CdmPlannerResponse(proto) was serialized";
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (a5)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a5 errorMessage:@"Nil content when CdmPlannerResponse(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:v7 atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveCdmPlannerResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s CdmPlannerResponse(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "+[CDMNluLogUtil saveCdmPlannerResponseJson:toFile:error:]";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (!a5)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v12 = [(__CFString *)v11 userInfo];
  *a5 = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v12];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)saveSubwordEmbeddingResponseJson:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalSubwordEmbeddingResponseWithResponse:a3 formatType:@"json"];
  v9 = v8;
  if (!v8)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveSubwordEmbeddingResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = @"Nil content when SubwordEmbeddingResponse(proto) was serialized";
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (a5)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a5 errorMessage:@"Nil content when SubwordEmbeddingResponse(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:v7 atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveSubwordEmbeddingResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s SubwordEmbeddingResponse(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "+[CDMNluLogUtil saveSubwordEmbeddingResponseJson:toFile:error:]";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (!a5)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v12 = [(__CFString *)v11 userInfo];
  *a5 = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v12];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)savePreprocessingWrapperJson:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:a3 formatType:@"json"];
  v9 = v8;
  if (!v8)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil savePreprocessingWrapperJson:toFile:error:]";
      v21 = 2112;
      v22 = @"Nil content when PreprocessingWrapper(proto) was serialized";
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (a5)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a5 errorMessage:@"Nil content when PreprocessingWrapper(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:v7 atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil savePreprocessingWrapperJson:toFile:error:]";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s CDMPreprocessingWrapper(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "+[CDMNluLogUtil savePreprocessingWrapperJson:toFile:error:]";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (!a5)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v12 = [(__CFString *)v11 userInfo];
  *a5 = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v12];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)saveString:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMNluResponse-%f.json", v12];

    v14 = [a1 getLogBasePath];
    v9 = [v14 stringByAppendingPathComponent:v13];
  }

  v22 = 0;
  v15 = [v8 writeToFile:v9 atomically:1 encoding:4 error:&v22];
  v16 = v22;
  if (v15)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "+[CDMNluLogUtil saveString:toFile:error:]";
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "+[CDMNluLogUtil saveString:toFile:error:]";
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (a5)
  {
    v19 = MEMORY[0x1E696ABC0];
    v17 = [v16 userInfo];
    *a5 = [v19 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v17];
LABEL_10:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)saveProtoFile:(id)a3 protobufFile:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16 = 0;
  v9 = [v7 writeToFile:v8 atomically:1 encoding:4 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "+[CDMNluLogUtil saveProtoFile:protobufFile:error:]";
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Successfully logged protobuf to: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "+[CDMNluLogUtil saveProtoFile:protobufFile:error:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: error writing proto file: %@", buf, 0x16u);
  }

  if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v11 = [v10 userInfo];
    *a5 = [v13 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v11];
LABEL_8:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)saveResponseToProtobuf2:(id)a3 protobufFile:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMSIRINLUEXTERNALCDMNluResponse-%f.json", v12];

    v14 = [a1 getLogBasePath];
    v9 = [v14 stringByAppendingPathComponent:v13];
  }

  v15 = [v9 pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter nluResponseFromSIRINLUEXTERNALCDMNluResponseWithResponse:v8 formatType:v15];

  v24 = 0;
  v17 = [v16 writeToFile:v9 atomically:1 encoding:4 error:&v24];
  v18 = v24;
  if (v17)
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMNluLogUtil saveResponseToProtobuf2:protobufFile:error:]";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "+[CDMNluLogUtil saveResponseToProtobuf2:protobufFile:error:]";
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (a5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v19 = [v18 userInfo];
    *a5 = [v21 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v19];
LABEL_10:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)saveResponseToProtobuf:(id)a3 protobufFile:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMNluResponse-%f.json", v12];

    v14 = [a1 getLogBasePath];
    v9 = [v14 stringByAppendingPathComponent:v13];
  }

  v15 = [v9 pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter nluResponseFromSIRINLUWithResponse:v8 formatType:v15];

  v24 = 0;
  v17 = [v16 writeToFile:v9 atomically:1 encoding:4 error:&v24];
  v18 = v24;
  if (v17)
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMNluLogUtil saveResponseToProtobuf:protobufFile:error:]";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "+[CDMNluLogUtil saveResponseToProtobuf:protobufFile:error:]";
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
  }

  if (a5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v19 = [v18 userInfo];
    *a5 = [v21 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v19];
LABEL_10:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)saveSpanMatchResponseToProtobuf:(id)a3 protobufFile:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMSpanMatchResponse-%f.json", v12];

    v14 = [a1 getLogBasePath];
    v9 = [v14 stringByAppendingPathComponent:v13];
  }

  v15 = [v9 pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSpanMatchResponseWithResponse:v8 formatType:v15];

  if (v16)
  {
    v25 = 0;
    v17 = [v16 writeToFile:v9 atomically:1 encoding:4 error:&v25];
    v18 = v25;
    if (v17)
    {
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "+[CDMNluLogUtil saveSpanMatchResponseToProtobuf:protobufFile:error:]";
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
      }
    }

    else
    {
      v21 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "+[CDMNluLogUtil saveSpanMatchResponseToProtobuf:protobufFile:error:]";
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: error writing (response proto) file: %@", buf, 0x16u);
      }

      if (!a5)
      {
        goto LABEL_13;
      }

      v22 = MEMORY[0x1E696ABC0];
      v19 = [v18 userInfo];
      *a5 = [v22 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v19];
    }

LABEL_13:
    goto LABEL_14;
  }

  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"nil file data. Not saving file.", @"errorDescription", 0}];
  *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v20];

  v17 = 0;
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)loadOverrideSpansFromProtobuf2File:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v25 = [CDMNluLogUtil loadDataFromProtobuf2File:"loadDataFromProtobuf2File:error:" error:?];
  if (!v25)
  {
    v28 = 0;
    goto LABEL_34;
  }

  v24 = [v26 pathExtension];
  if ([v24 isEqualToString:@"json"])
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v25 options:4 error:a4];
    if (v5)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count", v5)}];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v5;
      v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v6)
      {
        v7 = *v30;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v30 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = a4;
            v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:*(*(&v29 + 1) + 8 * i) options:0 error:a4];
            v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
            v12 = [_TtC13CDMFoundation20CDMProtobufConverter siriInternalMatchingSpanJsonToObjWithProto2Json:v11];
            if (v12)
            {
              [v28 addObject:v12];
            }

            else
            {
              v13 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v34 = "+[CDMNluLogUtil loadOverrideSpansFromProtobuf2File:error:]";
                _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to parse a MatchingSpan from JSON for SiriVocabMatcher override but was unable to do so!", buf, 0xCu);
              }
            }

            a4 = v9;
          }

          v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v6);
      }

      v14 = a4;

      if (v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v14 = a4;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error serializing array of MatchingSpans from JSON", 0];
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "+[CDMNluLogUtil loadOverrideSpansFromProtobuf2File:error:]";
        v35 = 2112;
        v36 = v18;
        _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
      }

      if (v14)
      {
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:*MEMORY[0x1E696A578]];
        *v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-3 userInfo:v20];
      }
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error decoding SIRINLUMatchingSpan objects"];
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "+[CDMNluLogUtil loadOverrideSpansFromProtobuf2File:error:]";
      v35 = 2112;
      v36 = v16;
      _os_log_error_impl(&dword_1DC287000, v21, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (v14)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:v14 errorMessage:v16 errorCode:-3];
    }
  }

  else
  {
    v15 = a4;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unhandled path extension"];
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "+[CDMNluLogUtil loadOverrideSpansFromProtobuf2File:error:]";
      v35 = 2112;
      v36 = v16;
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (v15)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:v15 errorMessage:v16 errorCode:-2];
    }
  }

  v28 = 0;
LABEL_33:

LABEL_34:
  v22 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)loadCdmPlannerRequestFromProtobuf2File:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:v5 error:a4];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v7 = [v5 pathExtension];
  if ([v7 isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalCdmPlannerRequestJsonToObjWithProto2Json:v8];
  }

  else
  {
    if ([v7 isEqualToString:@"pb"])
    {
      v10 = [objc_alloc(MEMORY[0x1E69D1160]) initWithData:v6];
      goto LABEL_15;
    }

    if (![v7 isEqualToString:@"base64"])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unhandled path extension"];
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "+[CDMNluLogUtil loadCdmPlannerRequestFromProtobuf2File:error:]";
        v17 = 2112;
        v18 = v11;
        _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v15, 0x16u);
      }

      if (a4)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v11 errorCode:-2];
      }

      v10 = 0;
      goto LABEL_15;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v6 options:1];
    v9 = [objc_alloc(MEMORY[0x1E69D1160]) initWithData:v8];
  }

  v10 = v9;

LABEL_15:
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadSubwordEmbeddingRequestFromProtobuf2File:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:v5 error:a4];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v7 = [v5 pathExtension];
  if ([v7 isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalSubwordEmbeddingRequestJsonToObjWithProto2Json:v8];
    goto LABEL_4;
  }

  if (![v7 isEqualToString:@"pb"])
  {
    if (![v7 isEqualToString:@"base64"])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unhandled path extension"];
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "+[CDMNluLogUtil loadSubwordEmbeddingRequestFromProtobuf2File:error:]";
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v16, 0x16u);
      }

      if (a4)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v11 errorCode:-2];
      }

      goto LABEL_19;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v6 options:1];
    v9 = [objc_alloc(MEMORY[0x1E69D11E8]) initWithData:v8];
LABEL_4:
    v10 = v9;

    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v10 = [objc_alloc(MEMORY[0x1E69D11E8]) initWithData:v6];
  if (!v10)
  {
LABEL_9:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error decoding SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest object"];
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "+[CDMNluLogUtil loadSubwordEmbeddingRequestFromProtobuf2File:error:]";
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v16, 0x16u);
    }

    if (a4)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v11 errorCode:-3];
    }

LABEL_19:

    v10 = 0;
  }

LABEL_20:

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadRequestFromProtobuf2File:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:v5 error:a4];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v7 = [v5 pathExtension];
  if ([v7 isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalNluRequestJsonToObjWithProto2Json:v8];
    goto LABEL_4;
  }

  if (![v7 isEqualToString:@"pb"])
  {
    if (![v7 isEqualToString:@"base64"])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unhandled path extension"];
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "+[CDMNluLogUtil loadRequestFromProtobuf2File:error:]";
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v16, 0x16u);
      }

      if (a4)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v11 errorCode:-2];
      }

      goto LABEL_19;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v6 options:1];
    v9 = [objc_alloc(MEMORY[0x1E69D1150]) initWithData:v8];
LABEL_4:
    v10 = v9;

    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v10 = [objc_alloc(MEMORY[0x1E69D1150]) initWithData:v6];
  if (!v10)
  {
LABEL_9:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error decoding SIRINLUEXTERNALCDMNluRequest object"];
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "+[CDMNluLogUtil loadRequestFromProtobuf2File:error:]";
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v16, 0x16u);
    }

    if (a4)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v11 errorCode:-3];
    }

LABEL_19:

    v10 = 0;
  }

LABEL_20:

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadDataFromProtobuf2File:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error reading file: %@", v5];
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[CDMNluLogUtil loadDataFromProtobuf2File:error:]";
      v15 = 2112;
      v16 = v9;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (a4)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:a4 errorMessage:v9 errorCode:-1];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)populateErrorWithUserInfo:(id *)a3 errorMessage:(id)a4 errorCode:(int64_t)a5
{
  v7 = a4;
  v8 = *MEMORY[0x1E696A578];
  v10 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:? forKey:?];
  *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:a5 userInfo:v9];
}

+ (id)prettyPrintProtoResponse:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v52);
  v38 = v3;
  v4 = [v3 requestId];
  v5 = [v4 idA];
  v6 = v5;
  v7 = [v5 UTF8String];
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v7, v8);
  std::ios_base::getloc((&v53 + *(v53 - 24)));
  v9 = std::locale::use_facet(v58, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(v58);
  std::ostream::put();
  std::ostream::flush();

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [v38 parses];
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = 0;
  v41 = *v49;
  v39 = *(MEMORY[0x1E69E54E8] + 24);
  v40 = *MEMORY[0x1E69E54E8];
  do
  {
    v13 = 0;
    do
    {
      if (*v49 != v41)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v48 + 1) + 8 * v13);
      v15 = [v14 userDialogActs];
      v16 = [v15 count] == 0;

      if (v16)
      {
        goto LABEL_45;
      }

      v17 = [v14 userDialogActs];
      v18 = [v17 firstObject];

      if ([v18 hasAccepted])
      {
        v19 = [v18 accepted];
        v20 = [v19 reference];
LABEL_23:
        v21 = v20;

        if (!v21)
        {
          goto LABEL_46;
        }

        v22 = [MEMORY[0x1E69D1450] convertUsoGraph:v21];
        SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v22);
        v24 = *SharedUsoVocabManager;
        v25 = SharedUsoVocabManager[1];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v46 = v25;
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v46 = 0;
        }

        v45 = v24;
        if (v22)
        {
          [(siri::ontology *)v22 toCppUsoGraph:&v45 withError:0];
        }

        else
        {
          v47 = 0;
        }

        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](v58);
        siri::ontology::UsoGraph::prettyPrint();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Parse ", 6);
        v26 = MEMORY[0x1E1297A30](&v53, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ":", 1);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(&v42, MEMORY[0x1E69E5318]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        std::stringbuf::str();
        if ((v44 & 0x80u) == 0)
        {
          locale = &v42;
        }

        else
        {
          locale = v42.__locale_;
        }

        if ((v44 & 0x80u) == 0)
        {
          v29 = v44;
        }

        else
        {
          v29 = v43;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, locale, v29);
        if (v44 < 0)
        {
          operator delete(v42.__locale_);
        }

        *v58 = v40;
        *&v58[*(v40 - 24)] = v39;
        *&v58[8] = MEMORY[0x1E69E5548] + 16;
        if (v61 < 0)
        {
          operator delete(__p);
        }

        *&v58[8] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v58[16]);
        std::ostream::~ostream();
        MEMORY[0x1E1297AB0](&v62);
        std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v47);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

LABEL_45:
        v12 = (v12 + 1);
        goto LABEL_46;
      }

      if ([v18 hasRejected])
      {
        v19 = [v18 rejected];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      if ([v18 hasCancelled])
      {
        v19 = [v18 cancelled];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      if ([v18 hasUserStatedTask])
      {
        v19 = [v18 userStatedTask];
        v20 = [v19 task];
        goto LABEL_23;
      }

      if ([v18 hasWantedToRepeat])
      {
        v19 = [v18 wantedToRepeat];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      if ([v18 hasAcknowledged])
      {
        v19 = [v18 acknowledged];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      if ([v18 hasWantedToProceed])
      {
        v19 = [v18 wantedToProceed];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      if ([v18 hasWantedToPause])
      {
        v19 = [v18 wantedToPause];
        v20 = [v19 reference];
        goto LABEL_23;
      }

      v30 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v58 = 136315394;
        *&v58[4] = "+[CDMNluLogUtil prettyPrintProtoResponse:]";
        *&v58[12] = 2112;
        *&v58[14] = v18;
        _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled SIRINLUExternalUserDialogAct type: %@", v58, 0x16u);
      }

LABEL_46:
      ++v13;
    }

    while (v11 != v13);
    v31 = [v10 countByEnumeratingWithState:&v48 objects:v63 count:16];
    v11 = v31;
  }

  while (v31);
LABEL_52:

  v32 = MEMORY[0x1E696AEC0];
  std::stringbuf::str();
  if (v59 >= 0)
  {
    v33 = v58;
  }

  else
  {
    v33 = *v58;
  }

  v34 = [v32 stringWithCString:v33 encoding:4];
  if (v59 < 0)
  {
    operator delete(*v58);
  }

  v52[0] = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(v52 + *(v52[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v53 = v35;
  v54 = MEMORY[0x1E69E5548] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  MEMORY[0x1E1297AB0](&v57);

  v36 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)prettyPrintResponse:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v53);
  v40 = v3;
  v4 = [v3 requestId];
  v5 = [v4 idAsString];
  v6 = v5;
  v7 = [v5 UTF8String];
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, v7, v8);
  std::ios_base::getloc((&v54 + *(v54 - 24)));
  v9 = std::locale::use_facet(v59, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(v59);
  std::ostream::put();
  std::ostream::flush();

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v40 parses];
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v50;
    v41 = *(MEMORY[0x1E69E54E8] + 24);
    v42 = *MEMORY[0x1E69E54E8];
    do
    {
      v14 = 0;
      do
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        v16 = [v15 userDialogActs];
        v17 = [v16 count] == 0;

        if (v17)
        {
          goto LABEL_39;
        }

        v18 = [v15 userDialogActs];
        v19 = [v18 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v20 = [v19 reference];
LABEL_20:
          v21 = v20;

          if (!v21)
          {
            goto LABEL_40;
          }

          SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v22);
          v24 = *SharedUsoVocabManager;
          v25 = SharedUsoVocabManager[1];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            v47 = v25;
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v47 = 0;
          }

          v46 = v24;
          [v21 toCppUsoGraph:&v46 withError:0];
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](v59);
          siri::ontology::UsoGraph::prettyPrint();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Parse ", 6);
          v26 = MEMORY[0x1E1297A30](&v54, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ":", 1);
          std::ios_base::getloc((v26 + *(*v26 - 24)));
          v27 = std::locale::use_facet(&v43, MEMORY[0x1E69E5318]);
          (v27->__vftable[2].~facet_0)(v27, 10);
          std::locale::~locale(&v43);
          std::ostream::put();
          std::ostream::flush();
          std::stringbuf::str();
          if ((v45 & 0x80u) == 0)
          {
            locale = &v43;
          }

          else
          {
            locale = v43.__locale_;
          }

          if ((v45 & 0x80u) == 0)
          {
            v29 = v45;
          }

          else
          {
            v29 = v44;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, locale, v29);
          if (v45 < 0)
          {
            operator delete(v43.__locale_);
          }

          *v59 = v42;
          *&v59[*(v42 - 24)] = v41;
          *&v59[8] = MEMORY[0x1E69E5548] + 16;
          if (v62 < 0)
          {
            operator delete(__p);
          }

          *&v59[8] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v59[16]);
          std::ostream::~ostream();
          MEMORY[0x1E1297AB0](&v63);
          std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v48);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

LABEL_39:
          v12 = (v12 + 1);
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 task];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v19;
          v35 = [v30 description];

          v36 = v40;
          goto LABEL_54;
        }

        v31 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v59 = 136315394;
          *&v59[4] = "+[CDMNluLogUtil prettyPrintResponse:]";
          *&v59[12] = 2112;
          *&v59[14] = v19;
          _os_log_error_impl(&dword_1DC287000, v31, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled SIRINLUUserDialogAct type: %@", v59, 0x16u);
        }

LABEL_40:
        ++v14;
      }

      while (v11 != v14);
      v32 = [v10 countByEnumeratingWithState:&v49 objects:v64 count:16];
      v11 = v32;
    }

    while (v32);
  }

  v33 = MEMORY[0x1E696AEC0];
  std::stringbuf::str();
  if (v60 >= 0)
  {
    v34 = v59;
  }

  else
  {
    v34 = *v59;
  }

  v35 = [v33 stringWithCString:v34 encoding:4];
  if (v60 < 0)
  {
    operator delete(*v59);
  }

  v36 = v40;
LABEL_54:
  v53[0] = *MEMORY[0x1E69E54D8];
  v37 = *(MEMORY[0x1E69E54D8] + 72);
  *(v53 + *(v53[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v54 = v37;
  v55 = MEMORY[0x1E69E5548] + 16;
  if (v57 < 0)
  {
    operator delete(v56[7].__locale_);
  }

  v55 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v56);
  std::iostream::~basic_iostream();
  MEMORY[0x1E1297AB0](&v58);

  v38 = *MEMORY[0x1E69E9840];

  return v35;
}

+ (id)writeUaaPResponseToDisk:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"UaaPResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserResponseWithResponse:v6 formatType:v13];

  v23 = 0;
  v15 = [CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:&v23];
  v16 = v23;
  if (v15)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "+[CDMNluLogUtil writeUaaPResponseToDisk:error:]";
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s UaaPResponse logged to: %@", buf, 0x16u);
    }

    v18 = v12;
  }

  else
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "+[CDMNluLogUtil writeUaaPResponseToDisk:error:]";
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    if (a4)
    {
      v20 = v16;
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)writeUaaPRequestToDisk:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"UaaPRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserRequestWithRequest:v6 formatType:v13];

  v23 = 0;
  v15 = [CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:&v23];
  v16 = v23;
  if (v15)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "+[CDMNluLogUtil writeUaaPRequestToDisk:error:]";
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s UaaPRequest logged to: %@", buf, 0x16u);
    }

    v18 = v12;
  }

  else
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "+[CDMNluLogUtil writeUaaPRequestToDisk:error:]";
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    if (a4)
    {
      v20 = v16;
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)writeSSUResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SSUResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSSUResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSSUResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s SSUResponse logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSSUResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error writing SSU response to file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeSSURequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SSURequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSSURequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSSURequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s SSURequest logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSSURequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error writing SSU request to file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeLVCResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"LVCResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeLVCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s LVCResponse logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeLVCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error writing LVC response to file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeLVCRequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"LVCRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeLVCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s LVCRequest logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeLVCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error writing LVC request to file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writePSCResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"PSCResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializePSCParserResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writePSCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s PSCResponse logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writePSCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writePSCRequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"PSCRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializePSCParserRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writePSCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s PSCRequest logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writePSCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeSNLCResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SNLCResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSNLCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s SNLCResponse logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSNLCResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeSNLCRequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SNLCRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSNLCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s SNLCRequest logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeSNLCRequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeMRResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MRResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMRResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s MR Response logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMRResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeMRRequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MRRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMRRequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s MR Request logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMRRequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeMDResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MDResponse-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMDResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s MD Response logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMDResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeMDRequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MDRequest-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMDRequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s MD Request logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeMDRequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeNlv4ResponseToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"Nlv4Response-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserResponseWithResponse:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeNlv4ResponseToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s NLv4Response logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeNlv4ResponseToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)writeNlv4RequestToDisk:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"Nlv4Request-%f.json", v9];

  v11 = [a1 getLogBasePath];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserRequestWithRequest:v6 formatType:v13];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:a4])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeNlv4RequestToDisk:error:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s NLv4Request logged to: %@", buf, 0x16u);
    }

    v16 = v12;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *a4;
      *buf = 136315394;
      v22 = "+[CDMNluLogUtil writeNlv4RequestToDisk:error:]";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: error writing file: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)getLogBasePath
{
  if (+[CDMNluLogUtil getLogBasePath]::onceToken != -1)
  {
    dispatch_once(&+[CDMNluLogUtil getLogBasePath]::onceToken, &__block_literal_global_4495);
  }

  v3 = +[CDMNluLogUtil getLogBasePath]::value;

  return v3;
}

uint64_t __31__CDMNluLogUtil_getLogBasePath__block_invoke()
{
  +[CDMNluLogUtil getLogBasePath]::value = +[CDMUserDefaultsUtils readCustomLogPath];

  return MEMORY[0x1EEE66BB8]();
}

@end