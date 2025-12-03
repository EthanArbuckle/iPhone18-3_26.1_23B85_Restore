@interface CVNLPCaptionEncoderTransformer
- (CVNLPCaptionEncoderTransformer)initWithOptions:(id)options runTimeParams:(id)params;
- (id).cxx_construct;
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)computeCaptionForImageImpl:(vImage_Buffer *)impl outputs:(id *)outputs;
- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs;
- (void)computeCaptionForPixelBufferImpl:(__CVBuffer *)impl outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBufferImpl:(void *)impl outputs:(id *)outputs;
- (void)dealloc;
@end

@implementation CVNLPCaptionEncoderTransformer

- (CVNLPCaptionEncoderTransformer)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v14.receiver = self;
  v14.super_class = CVNLPCaptionEncoderTransformer;
  if ([(CVNLPCaptionModelBase *)&v14 initWithOptions:optionsCopy runTimeParams:paramsCopy])
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v8, CVNLPCaptionModelPath, v9);
    objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"encoder_opt.espresso.net", v12, v10);
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  encoderPlan = self->encoderPlan;
  espresso_plan_destroy();
  encoderCtx = self->encoderCtx;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = CVNLPCaptionEncoderTransformer;
  [(CVNLPCaptionEncoderTransformer *)&v5 dealloc];
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, image, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D944E8;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = image;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"Encode", v9);
}

- (void)computeCaptionForImageImpl:(vImage_Buffer *)impl outputs:(id *)outputs
{
  v44[1] = *MEMORY[0x1E69E9840];
  p_encoderNet = &self->encoderNet;
  plan = self->encoderNet.plan;
  v8 = *&p_encoderNet->network_index;
  begin = self->encoderInputNames.__begin_;
  if (begin[23] < 0)
  {
    v10 = *begin;
  }

  v11 = *&impl->width;
  v33 = *&impl->data;
  v34 = v11;
  if (espresso_network_bind_input_vimagebuffer_rgba8())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v29);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = self->encoderPlan;
  if (espresso_plan_execute_sync())
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    v31 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v30, v32);
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v17 = *&self->attFeatsBlob.stride_batch_number;
  v41 = *&self->attFeatsBlob.stride_height;
  v42 = v17;
  v43 = *&self->attFeatsBlob.storage_type;
  v18 = *&self->attFeatsBlob.width;
  v37 = *&self->attFeatsBlob.stride[2];
  v38 = v18;
  v19 = *&self->attFeatsBlob.sequence_length;
  v39 = *&self->attFeatsBlob.channels;
  v40 = v19;
  v20 = *self->attFeatsBlob.dim;
  v33 = *&self->attFeatsBlob.data;
  v34 = v20;
  v21 = *self->attFeatsBlob.stride;
  v35 = *&self->attFeatsBlob.dim[2];
  v36 = v21;
  v22 = objc_msgSend__blob_size_(self, v13, &v33, v14);
  v24 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v15, v23, data, 4 * v22, 0);
  v44[0] = v24;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v44, 1);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, buffer, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D947C4;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = buffer;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"EncodePx", v9);
}

- (void)computeCaptionForPixelBufferImpl:(__CVBuffer *)impl outputs:(id *)outputs
{
  v31[1] = *MEMORY[0x1E69E9840];
  p_encoderNet = &self->encoderNet;
  plan = self->encoderNet.plan;
  v8 = *&p_encoderNet->network_index;
  begin = self->encoderInputNames.__begin_;
  if (begin[23] < 0)
  {
    v10 = *begin;
  }

  if (espresso_network_bind_cvpixelbuffer() || (v11 = self->encoderPlan, espresso_plan_execute_sync()))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v16 = *&self->attFeatsBlob.stride_batch_number;
  v29[8] = *&self->attFeatsBlob.stride_height;
  v29[9] = v16;
  v30 = *&self->attFeatsBlob.storage_type;
  v17 = *&self->attFeatsBlob.width;
  v29[4] = *&self->attFeatsBlob.stride[2];
  v29[5] = v17;
  v18 = *&self->attFeatsBlob.sequence_length;
  v29[6] = *&self->attFeatsBlob.channels;
  v29[7] = v18;
  v19 = *self->attFeatsBlob.dim;
  v29[0] = *&self->attFeatsBlob.data;
  v29[1] = v19;
  v20 = *self->attFeatsBlob.stride;
  v29[2] = *&self->attFeatsBlob.dim[2];
  v29[3] = v20;
  v21 = objc_msgSend__blob_size_(self, v12, v29, v13);
  v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v14, v22, data, 4 * v21, 0);
  v31[0] = v23;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v31, 1);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, buffer, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D94A6C;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = buffer;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"EncodePx", v9);
}

- (void)computeCaptionForVideoPixelBufferImpl:(void *)impl outputs:(id *)outputs
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = *impl;
  if (*(impl + 1) != *impl)
  {
    v8 = 0;
    v9 = 0;
    p_encoderNet = &self->encoderNet;
    while (1)
    {
      v11 = self->encoderInputNames.__begin_ + v8;
      if (v11[23] < 0)
      {
        v12 = *v11;
      }

      plan = p_encoderNet->plan;
      v14 = *&self->encoderNet.network_index;
      v15 = *(v6 + 8 * v9);
      if (espresso_network_bind_cvpixelbuffer())
      {
        break;
      }

      ++v9;
      v6 = *impl;
      v8 += 24;
      if (v9 >= (*(impl + 1) - *impl) >> 3)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v33);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  v16 = self->encoderPlan;
  if (espresso_plan_execute_sync())
  {
    goto LABEL_9;
  }

  v19 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v21 = *&self->attFeatsBlob.stride_batch_number;
  v34[8] = *&self->attFeatsBlob.stride_height;
  v34[9] = v21;
  v35 = *&self->attFeatsBlob.storage_type;
  v22 = *&self->attFeatsBlob.width;
  v34[4] = *&self->attFeatsBlob.stride[2];
  v34[5] = v22;
  v23 = *&self->attFeatsBlob.sequence_length;
  v34[6] = *&self->attFeatsBlob.channels;
  v34[7] = v23;
  v24 = *self->attFeatsBlob.dim;
  v34[0] = *&self->attFeatsBlob.data;
  v34[1] = v24;
  v25 = *self->attFeatsBlob.stride;
  v34[2] = *&self->attFeatsBlob.dim[2];
  v34[3] = v25;
  v26 = objc_msgSend__blob_size_(self, v17, v34, v18);
  v28 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v19, v27, data, 4 * v26, 0);
  v36[0] = v28;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v36, 1);

  v30 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  return self;
}

@end