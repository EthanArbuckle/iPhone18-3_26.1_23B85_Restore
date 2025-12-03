@interface CDMNluLogUtil
+ (BOOL)saveCLIResult:(id)result protobufFile:(id)file preprocess:(BOOL)preprocess saveBinary:(BOOL)binary error:(id *)error;
+ (BOOL)saveCdmPlannerResponseJson:(id)json toFile:(id)file error:(id *)error;
+ (BOOL)savePreprocessingWrapperJson:(id)json toFile:(id)file error:(id *)error;
+ (BOOL)saveProtoFile:(id)file protobufFile:(id)protobufFile error:(id *)error;
+ (BOOL)saveResponseToProtobuf2:(id)protobuf2 protobufFile:(id)file error:(id *)error;
+ (BOOL)saveResponseToProtobuf:(id)protobuf protobufFile:(id)file error:(id *)error;
+ (BOOL)saveSpanMatchResponseToProtobuf:(id)protobuf protobufFile:(id)file error:(id *)error;
+ (BOOL)saveString:(id)string toFile:(id)file error:(id *)error;
+ (BOOL)saveSubwordEmbeddingResponseJson:(id)json toFile:(id)file error:(id *)error;
+ (id)getLogBasePath;
+ (id)loadCdmPlannerRequestFromProtobuf2File:(id)file error:(id *)error;
+ (id)loadDataFromProtobuf2File:(id)file error:(id *)error;
+ (id)loadOverrideSpansFromProtobuf2File:(id)file error:(id *)error;
+ (id)loadRequestFromProtobuf2File:(id)file error:(id *)error;
+ (id)loadSubwordEmbeddingRequestFromProtobuf2File:(id)file error:(id *)error;
+ (id)prettyPrintProtoResponse:(id)response;
+ (id)prettyPrintResponse:(id)response;
+ (id)writeLVCRequestToDisk:(id)disk error:(id *)error;
+ (id)writeLVCResponseToDisk:(id)disk error:(id *)error;
+ (id)writeMDRequestToDisk:(id)disk error:(id *)error;
+ (id)writeMDResponseToDisk:(id)disk error:(id *)error;
+ (id)writeMRRequestToDisk:(id)disk error:(id *)error;
+ (id)writeMRResponseToDisk:(id)disk error:(id *)error;
+ (id)writeNlv4RequestToDisk:(id)disk error:(id *)error;
+ (id)writeNlv4ResponseToDisk:(id)disk error:(id *)error;
+ (id)writePSCRequestToDisk:(id)disk error:(id *)error;
+ (id)writePSCResponseToDisk:(id)disk error:(id *)error;
+ (id)writeSNLCRequestToDisk:(id)disk error:(id *)error;
+ (id)writeSNLCResponseToDisk:(id)disk error:(id *)error;
+ (id)writeSSURequestToDisk:(id)disk error:(id *)error;
+ (id)writeSSUResponseToDisk:(id)disk error:(id *)error;
+ (id)writeUaaPRequestToDisk:(id)disk error:(id *)error;
+ (id)writeUaaPResponseToDisk:(id)disk error:(id *)error;
+ (void)populateErrorWithUserInfo:(id *)info errorMessage:(id)message errorCode:(int64_t)code;
@end

@implementation CDMNluLogUtil

+ (BOOL)saveCLIResult:(id)result protobufFile:(id)file preprocess:(BOOL)preprocess saveBinary:(BOOL)binary error:(id *)error
{
  binaryCopy = binary;
  preprocessCopy = preprocess;
  resultCopy = result;
  fileCopy = file;
  if (binaryCopy)
  {
    if (preprocessCopy)
    {
      preprocessingWrapper = [resultCopy preprocessingWrapper];
    }

    else
    {
      v18 = MEMORY[0x1E69D13F8];
      nluResponse = [resultCopy nluResponse];
      preprocessingWrapper = [v18 convertFromNluResponse:nluResponse];
    }

    data = [preprocessingWrapper data];

    v21 = [data writeToFile:fileCopy atomically:1];
    if (v21)
    {
      printf("%s saved\n", [fileCopy UTF8String]);
    }

    else
    {
      fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save %@", fileCopy];
      puts([fileCopy UTF8String]);
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:fileCopy errorCode:-4];
    }

    v16 = 0;
  }

  else
  {
    if (preprocessCopy)
    {
      preprocessingWrapper2 = [resultCopy preprocessingWrapper];
      nluResponse3 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:preprocessingWrapper2 formatType:@"json"];

      v16 = [CDMPlatformUtils prettyPrintJson:nluResponse3];
      printf("%s result:%s\n", [fileCopy UTF8String], objc_msgSend(v16, "UTF8String"));
      v32 = 0;
      v17 = &v32;
      [CDMNluLogUtil saveString:v16 toFile:fileCopy error:&v32];
    }

    else
    {
      nluResponse2 = [resultCopy nluResponse];
      v16 = [nluResponse2 description];

      printf("%s result:%s\n", [fileCopy UTF8String], objc_msgSend(v16, "UTF8String"));
      nluResponse3 = [resultCopy nluResponse];
      v31 = 0;
      v17 = &v31;
      [CDMNluLogUtil saveResponseToProtobuf:nluResponse3 protobufFile:fileCopy error:&v31];
    }

    v23 = *v17;

    if (v23)
    {
      uTF8String = [fileCopy UTF8String];
      localizedDescription = [v23 localizedDescription];
      printf("Error save %s:%s\n", uTF8String, [localizedDescription UTF8String]);

      v26 = MEMORY[0x1E695DF20];
      localizedDescription2 = [v23 localizedDescription];
      v28 = [v26 dictionaryWithObject:localizedDescription2 forKey:*MEMORY[0x1E696A578]];

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v28];

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  return v21;
}

+ (BOOL)saveCdmPlannerResponseJson:(id)json toFile:(id)file error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalCdmPlannerResponseWithResponse:json formatType:@"json"];
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

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:@"Nil content when CdmPlannerResponse(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:fileCopy atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveCdmPlannerResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CdmPlannerResponse(proto) logged to: %@", buf, 0x16u);
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

  if (!error)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  userInfo = [(__CFString *)v11 userInfo];
  *error = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)saveSubwordEmbeddingResponseJson:(id)json toFile:(id)file error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalSubwordEmbeddingResponseWithResponse:json formatType:@"json"];
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

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:@"Nil content when SubwordEmbeddingResponse(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:fileCopy atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil saveSubwordEmbeddingResponseJson:toFile:error:]";
      v21 = 2112;
      v22 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s SubwordEmbeddingResponse(proto) logged to: %@", buf, 0x16u);
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

  if (!error)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  userInfo = [(__CFString *)v11 userInfo];
  *error = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)savePreprocessingWrapperJson:(id)json toFile:(id)file error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v8 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:json formatType:@"json"];
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

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:@"Nil content when PreprocessingWrapper(proto) was serialized" errorCode:-1];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v10 = [v8 writeToFile:fileCopy atomically:1 encoding:4 error:&v18];
  v11 = v18;
  if (v10)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "+[CDMNluLogUtil savePreprocessingWrapperJson:toFile:error:]";
      v21 = 2112;
      v22 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CDMPreprocessingWrapper(proto) logged to: %@", buf, 0x16u);
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

  if (!error)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  userInfo = [(__CFString *)v11 userInfo];
  *error = [v15 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_14:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)saveString:(id)string toFile:(id)file error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  fileCopy = file;
  if (!fileCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMNluResponse-%f.json", v12];

    getLogBasePath = [self getLogBasePath];
    fileCopy = [getLogBasePath stringByAppendingPathComponent:v13];
  }

  v22 = 0;
  v15 = [stringCopy writeToFile:fileCopy atomically:1 encoding:4 error:&v22];
  v16 = v22;
  if (v15)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "+[CDMNluLogUtil saveString:toFile:error:]";
      v25 = 2112;
      v26 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
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

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    userInfo = [v16 userInfo];
    *error = [v19 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_10:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)saveProtoFile:(id)file protobufFile:(id)protobufFile error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  protobufFileCopy = protobufFile;
  v16 = 0;
  v9 = [fileCopy writeToFile:protobufFileCopy atomically:1 encoding:4 error:&v16];
  v10 = v16;
  if (v9)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "+[CDMNluLogUtil saveProtoFile:protobufFile:error:]";
      v19 = 2112;
      v20 = protobufFileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s Successfully logged protobuf to: %@", buf, 0x16u);
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

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    userInfo = [v10 userInfo];
    *error = [v13 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_8:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)saveResponseToProtobuf2:(id)protobuf2 protobufFile:(id)file error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  protobuf2Copy = protobuf2;
  fileCopy = file;
  if (!fileCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMSIRINLUEXTERNALCDMNluResponse-%f.json", v12];

    getLogBasePath = [self getLogBasePath];
    fileCopy = [getLogBasePath stringByAppendingPathComponent:v13];
  }

  pathExtension = [fileCopy pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter nluResponseFromSIRINLUEXTERNALCDMNluResponseWithResponse:protobuf2Copy formatType:pathExtension];

  v24 = 0;
  v17 = [v16 writeToFile:fileCopy atomically:1 encoding:4 error:&v24];
  v18 = v24;
  if (v17)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMNluLogUtil saveResponseToProtobuf2:protobufFile:error:]";
      v27 = 2112;
      v28 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
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

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    userInfo = [v18 userInfo];
    *error = [v21 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_10:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)saveResponseToProtobuf:(id)protobuf protobufFile:(id)file error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  fileCopy = file;
  if (!fileCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMNluResponse-%f.json", v12];

    getLogBasePath = [self getLogBasePath];
    fileCopy = [getLogBasePath stringByAppendingPathComponent:v13];
  }

  pathExtension = [fileCopy pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter nluResponseFromSIRINLUWithResponse:protobufCopy formatType:pathExtension];

  v24 = 0;
  v17 = [v16 writeToFile:fileCopy atomically:1 encoding:4 error:&v24];
  v18 = v24;
  if (v17)
  {
    userInfo = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMNluLogUtil saveResponseToProtobuf:protobufFile:error:]";
      v27 = 2112;
      v28 = fileCopy;
      _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
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

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    userInfo = [v18 userInfo];
    *error = [v21 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
LABEL_10:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)saveSpanMatchResponseToProtobuf:(id)protobuf protobufFile:(id)file error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  fileCopy = file;
  if (!fileCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v13 = [v10 stringWithFormat:@"CDMSpanMatchResponse-%f.json", v12];

    getLogBasePath = [self getLogBasePath];
    fileCopy = [getLogBasePath stringByAppendingPathComponent:v13];
  }

  pathExtension = [fileCopy pathExtension];
  v16 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSpanMatchResponseWithResponse:protobufCopy formatType:pathExtension];

  if (v16)
  {
    v25 = 0;
    v17 = [v16 writeToFile:fileCopy atomically:1 encoding:4 error:&v25];
    v18 = v25;
    if (v17)
    {
      userInfo = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "+[CDMNluLogUtil saveSpanMatchResponseToProtobuf:protobufFile:error:]";
        v28 = 2112;
        v29 = fileCopy;
        _os_log_impl(&dword_1DC287000, userInfo, OS_LOG_TYPE_INFO, "%s CDMNluResponse(proto) logged to: %@", buf, 0x16u);
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

      if (!error)
      {
        goto LABEL_13;
      }

      v22 = MEMORY[0x1E696ABC0];
      userInfo = [v18 userInfo];
      *error = [v22 errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:userInfo];
    }

LABEL_13:
    goto LABEL_14;
  }

  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"nil file data. Not saving file.", @"errorDescription", 0}];
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-4 userInfo:v20];

  v17 = 0;
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)loadOverrideSpansFromProtobuf2File:(id)file error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v25 = [CDMNluLogUtil loadDataFromProtobuf2File:"loadDataFromProtobuf2File:error:" error:?];
  if (!v25)
  {
    v28 = 0;
    goto LABEL_34;
  }

  pathExtension = [fileCopy pathExtension];
  if ([pathExtension isEqualToString:@"json"])
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v25 options:4 error:error];
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

            errorCopy = error;
            v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:*(*(&v29 + 1) + 8 * i) options:0 error:error];
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

            error = errorCopy;
          }

          v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v6);
      }

      errorCopy3 = error;

      if (v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      errorCopy3 = error;
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

      if (errorCopy3)
      {
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:*MEMORY[0x1E696A578]];
        *errorCopy3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:-3 userInfo:v20];
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

    if (errorCopy3)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:errorCopy3 errorMessage:v16 errorCode:-3];
    }
  }

  else
  {
    errorCopy4 = error;
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

    if (errorCopy4)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:errorCopy4 errorMessage:v16 errorCode:-2];
    }
  }

  v28 = 0;
LABEL_33:

LABEL_34:
  v22 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)loadCdmPlannerRequestFromProtobuf2File:(id)file error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:fileCopy error:error];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_16;
  }

  pathExtension = [fileCopy pathExtension];
  if ([pathExtension isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalCdmPlannerRequestJsonToObjWithProto2Json:v8];
  }

  else
  {
    if ([pathExtension isEqualToString:@"pb"])
    {
      v10 = [objc_alloc(MEMORY[0x1E69D1160]) initWithData:v6];
      goto LABEL_15;
    }

    if (![pathExtension isEqualToString:@"base64"])
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

      if (error)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:v11 errorCode:-2];
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

+ (id)loadSubwordEmbeddingRequestFromProtobuf2File:(id)file error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:fileCopy error:error];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  pathExtension = [fileCopy pathExtension];
  if ([pathExtension isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalSubwordEmbeddingRequestJsonToObjWithProto2Json:v8];
    goto LABEL_4;
  }

  if (![pathExtension isEqualToString:@"pb"])
  {
    if (![pathExtension isEqualToString:@"base64"])
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

      if (error)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:v11 errorCode:-2];
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

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:v11 errorCode:-3];
    }

LABEL_19:

    v10 = 0;
  }

LABEL_20:

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadRequestFromProtobuf2File:(id)file error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = [CDMNluLogUtil loadDataFromProtobuf2File:fileCopy error:error];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  pathExtension = [fileCopy pathExtension];
  if ([pathExtension isEqualToString:@"json"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [_TtC13CDMFoundation20CDMProtobufConverter siriExternalNluRequestJsonToObjWithProto2Json:v8];
    goto LABEL_4;
  }

  if (![pathExtension isEqualToString:@"pb"])
  {
    if (![pathExtension isEqualToString:@"base64"])
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

      if (error)
      {
        [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:v11 errorCode:-2];
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

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:v11 errorCode:-3];
    }

LABEL_19:

    v10 = 0;
  }

LABEL_20:

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadDataFromProtobuf2File:(id)file error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"error reading file: %@", fileCopy];
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[CDMNluLogUtil loadDataFromProtobuf2File:error:]";
      v15 = 2112;
      v16 = fileCopy;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (error)
    {
      [CDMNluLogUtil populateErrorWithUserInfo:error errorMessage:fileCopy errorCode:-1];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)populateErrorWithUserInfo:(id *)info errorMessage:(id)message errorCode:(int64_t)code
{
  messageCopy = message;
  v8 = *MEMORY[0x1E696A578];
  v10 = messageCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:? forKey:?];
  *info = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMNluLogUtil" code:code userInfo:v9];
}

+ (id)prettyPrintProtoResponse:(id)response
{
  v64 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v52);
  v38 = responseCopy;
  requestId = [responseCopy requestId];
  v5 = [requestId idA];
  v6 = v5;
  uTF8String = [v5 UTF8String];
  v8 = strlen(uTF8String);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, uTF8String, v8);
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
  parses = [v38 parses];
  v11 = [parses countByEnumeratingWithState:&v48 objects:v63 count:16];
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
        objc_enumerationMutation(parses);
      }

      v14 = *(*(&v48 + 1) + 8 * v13);
      userDialogActs = [v14 userDialogActs];
      v16 = [userDialogActs count] == 0;

      if (v16)
      {
        goto LABEL_45;
      }

      userDialogActs2 = [v14 userDialogActs];
      firstObject = [userDialogActs2 firstObject];

      if ([firstObject hasAccepted])
      {
        accepted = [firstObject accepted];
        reference = [accepted reference];
LABEL_23:
        v21 = reference;

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

      if ([firstObject hasRejected])
      {
        accepted = [firstObject rejected];
        reference = [accepted reference];
        goto LABEL_23;
      }

      if ([firstObject hasCancelled])
      {
        accepted = [firstObject cancelled];
        reference = [accepted reference];
        goto LABEL_23;
      }

      if ([firstObject hasUserStatedTask])
      {
        accepted = [firstObject userStatedTask];
        reference = [accepted task];
        goto LABEL_23;
      }

      if ([firstObject hasWantedToRepeat])
      {
        accepted = [firstObject wantedToRepeat];
        reference = [accepted reference];
        goto LABEL_23;
      }

      if ([firstObject hasAcknowledged])
      {
        accepted = [firstObject acknowledged];
        reference = [accepted reference];
        goto LABEL_23;
      }

      if ([firstObject hasWantedToProceed])
      {
        accepted = [firstObject wantedToProceed];
        reference = [accepted reference];
        goto LABEL_23;
      }

      if ([firstObject hasWantedToPause])
      {
        accepted = [firstObject wantedToPause];
        reference = [accepted reference];
        goto LABEL_23;
      }

      v30 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v58 = 136315394;
        *&v58[4] = "+[CDMNluLogUtil prettyPrintProtoResponse:]";
        *&v58[12] = 2112;
        *&v58[14] = firstObject;
        _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled SIRINLUExternalUserDialogAct type: %@", v58, 0x16u);
      }

LABEL_46:
      ++v13;
    }

    while (v11 != v13);
    v31 = [parses countByEnumeratingWithState:&v48 objects:v63 count:16];
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

+ (id)prettyPrintResponse:(id)response
{
  v65 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v53);
  v40 = responseCopy;
  requestId = [responseCopy requestId];
  idAsString = [requestId idAsString];
  v6 = idAsString;
  uTF8String = [idAsString UTF8String];
  v8 = strlen(uTF8String);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, uTF8String, v8);
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
  parses = [v40 parses];
  v11 = [parses countByEnumeratingWithState:&v49 objects:v64 count:16];
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
          objc_enumerationMutation(parses);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        userDialogActs = [v15 userDialogActs];
        v17 = [userDialogActs count] == 0;

        if (v17)
        {
          goto LABEL_39;
        }

        userDialogActs2 = [v15 userDialogActs];
        firstObject = [userDialogActs2 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          reference = [firstObject reference];
LABEL_20:
          v21 = reference;

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
          reference = [firstObject task];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = firstObject;
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
          *&v59[14] = firstObject;
          _os_log_error_impl(&dword_1DC287000, v31, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled SIRINLUUserDialogAct type: %@", v59, 0x16u);
        }

LABEL_40:
        ++v14;
      }

      while (v11 != v14);
      v32 = [parses countByEnumeratingWithState:&v49 objects:v64 count:16];
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

+ (id)writeUaaPResponseToDisk:(id)disk error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"UaaPResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserResponseWithResponse:diskCopy formatType:pathExtension];

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

    if (error)
    {
      v20 = v16;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)writeUaaPRequestToDisk:(id)disk error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"UaaPRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserRequestWithRequest:diskCopy formatType:pathExtension];

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

    if (error)
    {
      v20 = v16;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)writeSSUResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SSUResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSSUResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeSSURequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SSURequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSSURequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeLVCResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"LVCResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeLVCRequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"LVCRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writePSCResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"PSCResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializePSCParserResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writePSCRequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"PSCRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializePSCParserRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeSNLCResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SNLCResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeSNLCRequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"SNLCRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeMRResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MRResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeMRRequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MRRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeMDResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MDResponse-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeMDRequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"MDRequest-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeNlv4ResponseToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"Nlv4Response-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserResponseWithResponse:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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

+ (id)writeNlv4RequestToDisk:(id)disk error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v10 = [v7 stringWithFormat:@"Nlv4Request-%f.json", v9];

  getLogBasePath = [self getLogBasePath];
  v12 = [getLogBasePath stringByAppendingPathComponent:v10];

  pathExtension = [v12 pathExtension];
  v14 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserRequestWithRequest:diskCopy formatType:pathExtension];

  if ([CDMNluLogUtil saveProtoFile:v14 protobufFile:v12 error:error])
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
      v18 = *error;
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