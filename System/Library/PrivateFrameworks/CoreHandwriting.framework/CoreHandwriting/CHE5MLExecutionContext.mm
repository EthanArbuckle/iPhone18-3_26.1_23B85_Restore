@interface CHE5MLExecutionContext
- (BOOL)predictFromPreboundInputsWithError:(id *)error;
- (CHE5MLExecutionContext)initWithFunction:(id)function;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor error:(id *)error;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor preboundInputs:(id)inputs preboundOutputs:(id)outputs error:(id *)error;
- (id)predictionFromFeatureProvider:(id)provider error:(id *)error;
- (id)predictionFromInputObjects:(id)objects error:(id *)error;
- (id)sharedExecutionContextWithError:(id *)error;
- (void)prebindInputs:(id)inputs;
- (void)predictFromPreboundInputsAsync:(id)async;
- (void)unbindInputs;
@end

@implementation CHE5MLExecutionContext

- (CHE5MLExecutionContext)initWithFunction:(id)function
{
  functionCopy = function;
  v21.receiver = self;
  v21.super_class = CHE5MLExecutionContext;
  v6 = [(CHE5MLExecutionContext *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_functionDescriptor, function);
    v7->_executionLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_1EF1BEA50);
    prewarmBlock = v7->_prewarmBlock;
    v7->_prewarmBlock = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = qos_class_self();
    v12 = dispatch_queue_attr_make_with_qos_class(v10, v11, 0);

    v13 = dispatch_queue_create("com.apple.CoreHandwriting.E5MLExecutionContextQueue", v12);
    contextQueue = v7->_contextQueue;
    v7->_contextQueue = v13;

    v15 = v7->_contextQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18386AA94;
    block[3] = &unk_1E6DDC1D0;
    v16 = v7;
    v20 = v16;
    dispatch_async(v15, block);
    v17 = v16;
  }

  return v7;
}

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor error:(id *)error
{
  v6 = MEMORY[0x1E69DF8D8];
  descriptorCopy = descriptor;
  v8 = objc_alloc_init(v6);
  dispatch_block_wait(self->_prewarmBlock, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_setPrewarmedState_(v8, v9, self->_prewarmedState, v10, v11, v12);
  v18 = objc_msgSend_function(descriptorCopy, v13, v14, v15, v16, v17);

  v22 = objc_msgSend_newExecutionContextWithConfiguration_error_(v18, v19, v8, error, v20, v21);
  return v22;
}

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor preboundInputs:(id)inputs preboundOutputs:(id)outputs error:(id *)error
{
  v10 = MEMORY[0x1E69DF8D8];
  outputsCopy = outputs;
  inputsCopy = inputs;
  descriptorCopy = descriptor;
  v14 = objc_alloc_init(v10);
  dispatch_block_wait(self->_prewarmBlock, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_setPrewarmedState_(v14, v15, self->_prewarmedState, v16, v17, v18);
  objc_msgSend_setBoundInputObjects_(v14, v19, inputsCopy, v20, v21, v22);

  objc_msgSend_setBoundOutputObjects_(v14, v23, outputsCopy, v24, v25, v26);
  objc_msgSend_setPrewireInUseAllocations_(v14, v27, 1, v28, v29, v30);
  v36 = objc_msgSend_function(descriptorCopy, v31, v32, v33, v34, v35);

  v40 = objc_msgSend_newExecutionContextWithConfiguration_error_(v36, v37, v14, error, v38, v39);
  return v40;
}

- (id)sharedExecutionContextWithError:(id *)error
{
  executionContext = self->_executionContext;
  if (executionContext)
  {
  }

  else
  {
    v8 = objc_msgSend_newE5RTExecutionContextForFunctionDescriptor_error_(self, a2, self->_functionDescriptor, error, v3, v4);
    v9 = self->_executionContext;
    self->_executionContext = v8;

    executionContext = self->_executionContext;
  }

  return executionContext;
}

- (id)predictionFromInputObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if (!objectsCopy)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v11 = objc_msgSend_sharedExecutionContextWithError_(self, v6, error, v7, v8, v9);
  if (!v11)
  {
    v20 = 0;
    goto LABEL_23;
  }

  os_unfair_lock_lock(&self->_executionLock);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC88;
  v13 = os_signpost_id_generate(v12);

  if (qword_1EA84DC48 == -1)
  {
    v14 = qword_1EA84DC88;
    v15 = v13 - 1;
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v14 = qword_1EA84DC88;
    v15 = v13 - 1;
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_9;
    }
  }

  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CHE5MLContextExecution", "", buf, 2u);
  }

LABEL_9:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN CHE5MLContextExecution", v26, 2u);
  }

  v20 = objc_msgSend_executeWithInputObjects_error_(v11, v17, objectsCopy, error, v18, v19);
  if (qword_1EA84DC48 == -1)
  {
    v21 = qword_1EA84DC88;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v21 = qword_1EA84DC88;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_17;
    }
  }

  if (os_signpost_enabled(v21))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v21, OS_SIGNPOST_INTERVAL_END, v13, "CHE5MLContextExecution", "", v25, 2u);
  }

LABEL_17:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v22 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v22 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_19:
    *v24 = 0;
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_DEFAULT, "END CHE5MLContextExecution", v24, 2u);
  }

LABEL_20:

  os_unfair_lock_unlock(&self->_executionLock);
LABEL_23:

LABEL_24:

  return v20;
}

- (id)predictionFromFeatureProvider:(id)provider error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_createInputSurfacesForFeatureProvider_(CHE5MLUtilities, a2, provider, error, v4, v5);
  v14 = objc_msgSend_functionDescriptor(self, v9, v10, v11, v12, v13);
  v17 = objc_msgSend_newInputsForFunctionDescriptor_surfaces_error_(CHE5MLUtilities, v15, v14, v8, error, v16);

  v21 = objc_msgSend_predictionFromInputObjects_error_(self, v18, v17, error, v19, v20);
  if (v21)
  {
    v49 = v17;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = v8;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v50, v54, 16, v24);
    if (v25)
    {
      v30 = v25;
      v31 = *v51;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v22);
          }

          v33 = objc_msgSend_objectForKeyedSubscript_(v22, v26, *(*(&v50 + 1) + 8 * i), v27, v28, v29);
          v39 = objc_msgSend_pointerValue(v33, v34, v35, v36, v37, v38);

          CFRelease(v39);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v26, &v50, v54, 16, v29);
      }

      while (v30);
    }

    v45 = objc_msgSend_functionDescriptor(self, v40, v41, v42, v43, v44);
    v47 = objc_msgSend_featureProviderForE5RTOutputs_functionDescriptor_dataType_error_(CHE5MLUtilities, v46, v21, v45, 65568, error);

    v17 = v49;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (void)prebindInputs:(id)inputs
{
  objc_storeStrong(&self->_preboundInputObjects, inputs);
  inputsCopy = inputs;
  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = 0;
}

- (void)unbindInputs
{
  preboundInputObjects = self->_preboundInputObjects;
  self->_preboundInputObjects = 0;

  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = 0;
}

- (BOOL)predictFromPreboundInputsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_executionLock);
  if (self->_preboundOutputObjects)
  {
    if (self->_preboundExecutionContext)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = objc_msgSend_newE5RTExecutionOutputsForFunctionDescriptor_error_(CHE5MLUtilities, v5, self->_functionDescriptor, error, v6, v7);
    preboundOutputObjects = self->_preboundOutputObjects;
    self->_preboundOutputObjects = v8;

    if (self->_preboundExecutionContext)
    {
      goto LABEL_6;
    }
  }

  v10 = objc_msgSend_newE5RTExecutionContextForFunctionDescriptor_preboundInputs_preboundOutputs_error_(self, v5, self->_functionDescriptor, self->_preboundInputObjects, self->_preboundOutputObjects, error);
  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = v10;

  if (!self->_preboundExecutionContext)
  {
LABEL_25:
    os_unfair_lock_unlock(&self->_executionLock);
    return 0;
  }

LABEL_6:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC88;
  v13 = os_signpost_id_generate(v12);

  if (qword_1EA84DC48 == -1)
  {
    v14 = qword_1EA84DC88;
    v15 = v13 - 1;
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v14 = qword_1EA84DC88;
    v15 = v13 - 1;
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }
  }

  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CHE5MLContextExecution", "", buf, 2u);
  }

LABEL_12:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN CHE5MLContextExecution", v26, 2u);
  }

  objc_msgSend_executeAndReturnError_(self->_preboundExecutionContext, v17, error, v18, v19, v20);
  if (qword_1EA84DC48 == -1)
  {
    v21 = qword_1EA84DC88;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v21 = qword_1EA84DC88;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_20;
    }
  }

  if (os_signpost_enabled(v21))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v21, OS_SIGNPOST_INTERVAL_END, v13, "CHE5MLContextExecution", "", v25, 2u);
  }

LABEL_20:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v22 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_22:
    *v24 = 0;
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_DEFAULT, "END CHE5MLContextExecution", v24, 2u);
  }

LABEL_23:

  if (error && *error)
  {
    goto LABEL_25;
  }

  os_unfair_lock_unlock(&self->_executionLock);
  return 1;
}

- (void)predictFromPreboundInputsAsync:(id)async
{
  asyncCopy = async;
  os_unfair_lock_lock(&self->_executionLock);
  if (self->_preboundOutputObjects)
  {
    v8 = 0;
    if (self->_preboundExecutionContext)
    {
LABEL_3:
      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    functionDescriptor = self->_functionDescriptor;
    v34 = 0;
    v11 = objc_msgSend_newE5RTExecutionOutputsForFunctionDescriptor_error_(CHE5MLUtilities, v5, functionDescriptor, &v34, v6, v7);
    v8 = v34;
    preboundOutputObjects = self->_preboundOutputObjects;
    self->_preboundOutputObjects = v11;

    if (self->_preboundExecutionContext)
    {
      goto LABEL_3;
    }
  }

  v13 = objc_opt_class();
  v14 = self->_functionDescriptor;
  preboundInputObjects = self->_preboundInputObjects;
  v16 = self->_preboundOutputObjects;
  v33 = v8;
  v18 = objc_msgSend_newE5RTExecutionContextForFunctionDescriptor_preboundInputs_preboundOutputs_error_(v13, v17, v14, preboundInputObjects, v16, &v33);
  v9 = v33;

  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = v18;

  if (!self->_preboundExecutionContext)
  {
    os_unfair_lock_unlock(&self->_executionLock);
    asyncCopy[2](asyncCopy, 0, v9);
    goto LABEL_17;
  }

LABEL_6:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC88;
  v21 = os_signpost_id_generate(v20);

  if (qword_1EA84DC48 == -1)
  {
    v22 = qword_1EA84DC88;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v22 = qword_1EA84DC88;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CHE5MLContextExecution", "", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v23 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN CHE5MLContextExecution", buf, 2u);
  }

  v24 = self->_preboundExecutionContext;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_18386B960;
  v29[3] = &unk_1E6DDF150;
  v31 = v21;
  v29[4] = self;
  v30 = asyncCopy;
  objc_msgSend_executeWithCompletionHandler_(v24, v25, v29, v26, v27, v28);

LABEL_17:
}

@end