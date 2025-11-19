@interface MADSharedTextEncoder
+ (MADSharedTextEncoder)textEncoderWithVersion:(unint64_t)a3 extendedContextLength:(BOOL)a4;
+ (int64_t)revisionForVersion:(unint64_t)a3;
+ (unint64_t)contextLength:(BOOL)a3;
- (BOOL)_runOnInput:(id)a3 output:(id *)a4 error:(id *)a5;
- (BOOL)loadResources:(id *)a3;
- (BOOL)runOnInput:(id)a3 output:(id *)a4 error:(id *)a5;
- (MADSharedTextEncoder)initWithTextEncoderWithVersion:(unint64_t)a3 extendedContextLength:(BOOL)a4;
@end

@implementation MADSharedTextEncoder

+ (int64_t)revisionForVersion:(unint64_t)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3 - 1;
  if (a3 - 1 < 9 && ((0x15Fu >> v4) & 1) != 0)
  {
    return qword_1C9F636C0[v4];
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown embedding version specified (%d)", v6, 8u);
  }

  return 0;
}

+ (unint64_t)contextLength:(BOOL)a3
{
  if (a3)
  {
    return 512;
  }

  else
  {
    return 77;
  }
}

- (MADSharedTextEncoder)initWithTextEncoderWithVersion:(unint64_t)a3 extendedContextLength:(BOOL)a4
{
  v4 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = MADSharedTextEncoder;
  v6 = [(MADSharedTextEncoder *)&v47 init];
  if (!v6)
  {
    goto LABEL_45;
  }

  v46 = 0;
  v7 = [MEMORY[0x1E6999168] createForRevision:objc_msgSend(objc_opt_class() error:{"revisionForVersion:", a3), &v46}];
  v8 = v46;
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = [v8 description];
      *buf = 138412290;
      v49 = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create text encoder configuration (%@)", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v9 = [objc_opt_class() computeBackend];
  v10 = v9;
  if (v9 && ([v7 setInferenceBackend:{objc_msgSend(v9, "integerValue")}] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    v49 = v10;
    v36 = MEMORY[0x1E69E9C10];
    v37 = "Failed to set text encoder compute backend (%@)";
    v38 = 12;
    goto LABEL_40;
  }

  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CSUTextEncoder_init", "", buf, 2u);
  }

  v15 = [objc_alloc(MEMORY[0x1E6999160]) initWithConfiguration:v7];
  textEncoder = v6->_textEncoder;
  v6->_textEncoder = v15;

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v12, "CSUTextEncoder_init", "", buf, 2u);
  }

  if (v6->_textEncoder)
  {
    if (a3 <= 9 && ((1 << a3) & 0x3A0) != 0)
    {
      v44 = [objc_opt_class() contextLength:v4];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v49 = v44;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Setting context length: %lu", buf, 0xCu);
      }

      v19 = VCPSignPostPersistentLog();
      v20 = os_signpost_id_generate(v19);

      v21 = VCPSignPostPersistentLog();
      v22 = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CSUTextEncoder_setContextLength", " enableTelemetry=YES ", buf, 2u);
      }

      v23 = +[MADStateHandler sharedStateHandler];
      [v23 enterKnownTimeoutRisk:5];

      v24 = v6->_textEncoder;
      v45 = v8;
      [(CSUTextEncoder *)v24 setContextLength:v44 error:&v45];
      v25 = v45;

      v26 = +[MADStateHandler sharedStateHandler];
      [v26 exitKnownTimeoutRisk];

      v27 = VCPSignPostPersistentLog();
      v28 = v27;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        v29 = qos_class_self();
        v30 = VCPMAQoSDescription(v29);
        v31 = v30;
        v32 = [v30 UTF8String];
        v33 = "Failure";
        *buf = 136446722;
        v49 = v32;
        if (!v25)
        {
          v33 = "Success";
        }

        v50 = 2082;
        v51 = v33;
        v52 = 2050;
        v53 = v44;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v20, "CSUTextEncoder_setContextLength", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s ContextLength=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x20u);
      }

      if (v25)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v34 = [v25 description];
          *buf = 138412290;
          v49 = v34;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set context length (%@)", buf, 0xCu);
        }

        v8 = v25;
        goto LABEL_41;
      }

      v8 = 0;
      v6->_extendedContextLength = v4;
    }

    v6->_version = a3;
    v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v41 = dispatch_queue_create("MADSharedTextEncoder", v40);
    queue = v6->_queue;
    v6->_queue = v41;

LABEL_45:
    v39 = v6;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v36 = MEMORY[0x1E69E9C10];
    v37 = "Failed to create text encoder";
    v38 = 2;
LABEL_40:
    _os_log_impl(&dword_1C9B70000, v36, OS_LOG_TYPE_ERROR, v37, buf, v38);
  }

LABEL_41:

LABEL_42:
  v39 = 0;
LABEL_46:

  return v39;
}

+ (MADSharedTextEncoder)textEncoderWithVersion:(unint64_t)a3 extendedContextLength:(BOOL)a4
{
  v4 = [[MADSharedTextEncoder alloc] initWithTextEncoderWithVersion:a3 extendedContextLength:a4];

  return v4;
}

- (BOOL)loadResources:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__66;
  v13 = __Block_byref_object_dispose__66;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MADSharedTextEncoder_loadResources___block_invoke;
  block[3] = &unk_1E834E3C8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if ((v16[3] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [v10[5] description];
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Text encoder failed to load resource (%@)", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = [v10[5] copy];
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void __38__MADSharedTextEncoder_loadResources___block_invoke(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostPersistentLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostPersistentLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CSUTextEncoder_loadResources", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = +[MADStateHandler sharedStateHandler];
  [v6 enterKnownTimeoutRisk:5];

  v7 = *(a1[4] + 16);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v7 loadResources:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[5] + 8) + 24) = v9;
  v10 = +[MADStateHandler sharedStateHandler];
  [v10 exitKnownTimeoutRisk];

  v11 = VCPSignPostPersistentLog();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    v13 = qos_class_self();
    v14 = VCPMAQoSDescription(v13);
    v15 = v14;
    v16 = [v14 UTF8String];
    if (*(*(a1[5] + 8) + 24))
    {
      v17 = "Success";
    }

    else
    {
      v17 = "Failure";
    }

    v18 = atomic_load((a1[4] + 33));
    v19 = [objc_opt_class() contextLength:*(a1[4] + 32)];
    *buf = 136446978;
    v22 = v16;
    v23 = 2082;
    v24 = v17;
    v25 = 2050;
    v26 = v18 & 1;
    v27 = 2050;
    v28 = v19;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v3, "CSUTextEncoder_loadResources", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s IsWarm=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    atomic_store(1u, (a1[4] + 33));
  }
}

- (BOOL)_runOnInput:(id)a3 output:(id *)a4 error:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = VCPSignPostPersistentLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostPersistentLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUTextEncoder_runOnInput", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = +[MADStateHandler sharedStateHandler];
  [v13 enterKnownTimeoutRisk:5];

  textEncoder = self->_textEncoder;
  v44 = 0;
  [(CSUTextEncoder *)textEncoder runOnInput:v8 error:&v44];
  v15 = v44;
  v16 = +[MADStateHandler sharedStateHandler];
  [v16 exitKnownTimeoutRisk];

  v17 = VCPSignPostPersistentLog();
  v18 = v17;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v43 = v8;
    v19 = qos_class_self();
    v20 = VCPMAQoSDescription(v19);
    v21 = v20;
    v22 = [v20 UTF8String];
    if (v15)
    {
      v23 = "Failure";
    }

    else
    {
      v23 = "Success";
    }

    v24 = atomic_load(&self->_isWarm);
    v25 = [objc_opt_class() contextLength:self->_extendedContextLength];
    *buf = 136446978;
    v50 = v22;
    v51 = 2082;
    v52 = v23;
    v53 = 2050;
    v54 = v24 & 1;
    v55 = 2050;
    v56 = v25;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v10, "CSUTextEncoder_runOnInput", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s IsWarm=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);

    v8 = v43;
  }

  if (!v15)
  {
    atomic_store(1u, &self->_isWarm);
    v35 = MEMORY[0x1E69AE300];
    v36 = [(CSUTextEncoder *)self->_textEncoder inferenceOutputs];
    v37 = [v36 CSUTextEmbedding];
    v31 = [v35 embeddingFromMultiArray:v37 version:self->_version];

    if (v31)
    {
      if (!a4)
      {
        v33 = 1;
        goto LABEL_27;
      }

      v31 = v31;
      v34 = *a4;
      *a4 = v31;
      v33 = 1;
    }

    else
    {
      v38 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to extract and normalize embedding"];
      v46 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v34 = [v38 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v40];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = [v34 description];
        *buf = 138412290;
        v50 = v41;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (a5)
      {
        objc_storeStrong(a5, v34);
      }

      v33 = 0;
    }

    goto LABEL_26;
  }

  v26 = MEMORY[0x1E696ABC0];
  v47 = *MEMORY[0x1E696A578];
  v27 = MEMORY[0x1E696AEC0];
  v28 = [v15 description];
  v29 = [v27 stringWithFormat:@"Text encoding failed (%@)", v28];
  v48 = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v31 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v30];

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [v31 description];
    *buf = 138412290;
    v50 = v32;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  if (a5)
  {
    v31 = v31;
    v33 = 0;
    v34 = *a5;
    *a5 = v31;
LABEL_26:

    goto LABEL_27;
  }

  v33 = 0;
LABEL_27:

  return v33;
}

- (BOOL)runOnInput:(id)a3 output:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__66;
  v22 = __Block_byref_object_dispose__66;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MADSharedTextEncoder_runOnInput_output_error___block_invoke;
  block[3] = &unk_1E83517F8;
  v15 = &v24;
  block[4] = self;
  v10 = v8;
  v16 = &v18;
  v17 = a4;
  v14 = v10;
  dispatch_sync(queue, block);
  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = [v19[5] copy];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

uint64_t __48__MADSharedTextEncoder_runOnInput_output_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _runOnInput:*(a1 + 40) output:*(a1 + 64) error:*(*(a1 + 56) + 8) + 40];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end