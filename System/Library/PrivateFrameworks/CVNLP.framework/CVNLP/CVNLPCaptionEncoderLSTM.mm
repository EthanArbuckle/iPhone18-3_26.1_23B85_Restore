@interface CVNLPCaptionEncoderLSTM
- (CVNLPCaptionEncoderLSTM)initWithOptions:(id)options runTimeParams:(id)params;
- (void)_run:(vImage_Buffer *)_run meanFeatures:(id *)features attnFeatures:(id *)attnFeatures projectedAttnFeatures:(id *)projectedAttnFeatures;
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)dealloc;
@end

@implementation CVNLPCaptionEncoderLSTM

- (CVNLPCaptionEncoderLSTM)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v59.receiver = self;
  v59.super_class = CVNLPCaptionEncoderLSTM;
  v8 = [(CVNLPCaptionModelBase *)&v59 initWithOptions:optionsCopy runTimeParams:paramsCopy];
  v11 = v8;
  if (v8)
  {
    v8->meanFeaturesPresent = 0;
    v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, CVNLPCaptionModelPath, v10);
    v15 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"encoder_opt.espresso.net", v14);
    v11->encoderCtx = espresso_create_context();
    v11->encoderPlan = espresso_create_plan();
    v19 = objc_msgSend_path(v15, v16, v17, v18);
    v20 = v19;
    objc_msgSend_UTF8String(v20, v21, v22, v23);
    p_encoderNet = &v11->encoderNet;
    v25 = espresso_plan_add_network();

    if (v25)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      encoderPlan = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(exception, v40);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v26 = v11->encoderPlan;
    if (espresso_plan_build())
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      v42 = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v41, v43);
      __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    plan = p_encoderNet->plan;
    v28 = *&v11->encoderNet.network_index;
    if (espresso_network_query_blob_dimensions())
    {
      v44 = __cxa_allocate_exception(0x10uLL);
      v45 = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v44, v46);
      __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v29 = p_encoderNet->plan;
    v30 = *&v11->encoderNet.network_index;
    if (c_network_get_output_names())
    {
      v47 = __cxa_allocate_exception(0x10uLL);
      v48 = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v47, v49);
      __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v11->meanFeaturesPresent)
    {
      v31 = p_encoderNet->plan;
      v32 = *&v11->encoderNet.network_index;
      if (espresso_network_bind_buffer())
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        v57 = v11->encoderPlan;
        espresso_plan_get_error_info();
        std::runtime_error::runtime_error(v56, v58);
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v33 = p_encoderNet->plan;
    v34 = *&v11->encoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v50 = __cxa_allocate_exception(0x10uLL);
      v51 = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v50, v52);
      __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v35 = p_encoderNet->plan;
    v36 = *&v11->encoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v53 = __cxa_allocate_exception(0x10uLL);
      v54 = v11->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v53, v55);
      __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return v11;
}

- (void)dealloc
{
  encoderPlan = self->encoderPlan;
  espresso_plan_destroy();
  encoderCtx = self->encoderCtx;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = CVNLPCaptionEncoderLSTM;
  [(CVNLPCaptionEncoderLSTM *)&v5 dealloc];
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v14[3] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  objc_msgSend__run_meanFeatures_attnFeatures_projectedAttnFeatures_(self, a2, image, &v13, &v12, &v11);
  v6 = v13;
  v7 = v12;
  v9 = v11;
  if (image->data)
  {
    MEMORY[0x1DA741250](image->data, 0x1000C8077774924);
  }

  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v9;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 3);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_run:(vImage_Buffer *)_run meanFeatures:(id *)features attnFeatures:(id *)attnFeatures projectedAttnFeatures:(id *)projectedAttnFeatures
{
  v61 = xmmword_1D9DDE660;
  v62 = 0;
  p_encoderNet = &self->encoderNet;
  plan = self->encoderNet.plan;
  v12 = *&p_encoderNet->network_index;
  v13 = *&_run->width;
  v47 = *&_run->data;
  v48 = v13;
  if (espresso_network_bind_input_vimagebuffer_rgba8() || (v14 = self->encoderPlan, espresso_plan_execute_sync()))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v43);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (self->meanFeaturesPresent)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v18 = *&self->meanFeatsBlob.stride_height;
    v19 = *&self->meanFeatsBlob.stride_batch_number;
    v20 = *&self->meanFeatsBlob.channels;
    v54 = *&self->meanFeatsBlob.sequence_length;
    v55 = v18;
    v56 = v19;
    v57 = *&self->meanFeatsBlob.storage_type;
    v21 = *&self->meanFeatsBlob.width;
    v51 = *&self->meanFeatsBlob.stride[2];
    v52 = v21;
    v53 = v20;
    v22 = *self->meanFeatsBlob.dim;
    v47 = *&self->meanFeatsBlob.data;
    v48 = v22;
    v23 = *self->meanFeatsBlob.stride;
    v49 = *&self->meanFeatsBlob.dim[2];
    v50 = v23;
    objc_msgSend__copy_data_from_blob_to_(self, v15, &v47, &v58);
    *features = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v24, v58, v59 - v58);
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }
  }

  else
  {
    *features = objc_msgSend_data(MEMORY[0x1E695DEF0], v15, v16, v17);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v26 = *&self->attFeatsBlob.stride_height;
  v27 = *&self->attFeatsBlob.stride_batch_number;
  v28 = *&self->attFeatsBlob.channels;
  v54 = *&self->attFeatsBlob.sequence_length;
  v55 = v26;
  v56 = v27;
  v57 = *&self->attFeatsBlob.storage_type;
  v29 = *&self->attFeatsBlob.width;
  v51 = *&self->attFeatsBlob.stride[2];
  v52 = v29;
  v53 = v28;
  v30 = *self->attFeatsBlob.dim;
  v47 = *&self->attFeatsBlob.data;
  v48 = v30;
  v31 = *self->attFeatsBlob.stride;
  v49 = *&self->attFeatsBlob.dim[2];
  v50 = v31;
  objc_msgSend__copy_data_from_blob_to_(self, v25, &v47, &v58);
  *attnFeatures = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v32, v58, v59 - v58);
  __p = 0;
  v45 = 0;
  v46 = 0;
  v33 = *&self->pAttFeatsBlob.stride_height;
  v34 = *&self->pAttFeatsBlob.stride_batch_number;
  v35 = *&self->pAttFeatsBlob.channels;
  v54 = *&self->pAttFeatsBlob.sequence_length;
  v55 = v33;
  v56 = v34;
  v57 = *&self->pAttFeatsBlob.storage_type;
  v36 = *&self->pAttFeatsBlob.width;
  v51 = *&self->pAttFeatsBlob.stride[2];
  v52 = v36;
  v53 = v35;
  v37 = *self->pAttFeatsBlob.dim;
  v47 = *&self->pAttFeatsBlob.data;
  v48 = v37;
  v38 = *self->pAttFeatsBlob.stride;
  v49 = *&self->pAttFeatsBlob.dim[2];
  v50 = v38;
  objc_msgSend__copy_data_from_blob_to_(self, v39, &v47, &__p);
  *projectedAttnFeatures = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v40, __p, v45 - __p);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

@end