@interface VCPCNNModelEspresso
- ($FD4688982923A924290ECB669CAF1EC2)inputBlob;
- ($FD4688982923A924290ECB669CAF1EC2)outputBlob;
- (VCPCNNModelEspresso)initWithParameters:(id)a3 inputNames:(id)a4 outputNames:(id)a5 properties:(id)a6;
- (id).cxx_construct;
- (int)espressoForward:(float *)a3;
- (int)espressoForwardInputs:(vector<float *);
- (int)prepareModelInput:(float *)a3;
- (int)prepareModelInputs:(vector<float *);
- (int)prepareModelWithConfig:(id)a3;
- (int)softmax;
- (vector<espresso_buffer_t,)inputBlobs;
- (vector<espresso_buffer_t,)outputBlobs;
- (void)dealloc;
- (void)normalization:(float *)a3;
- (void)setInputBlob:(id *)a3;
- (void)setInputBlobs:()vector<espresso_buffer_t;
- (void)setOutputBlob:(id *)a3;
- (void)setOutputBlobs:()vector<espresso_buffer_t;
@end

@implementation VCPCNNModelEspresso

- (VCPCNNModelEspresso)initWithParameters:(id)a3 inputNames:(id)a4 outputNames:(id)a5 properties:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v42 = a4;
  v43 = a5;
  v12 = a6;
  v44.receiver = self;
  v44.super_class = VCPCNNModelEspresso;
  v13 = [(VCPCNNModelEspresso *)&v44 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_netFileUrl, a3);
    objc_storeStrong(&v14->_inputNames, a4);
    objc_storeStrong(&v14->_outputNames, a5);
    resConfig = v14->_resConfig;
    v14->_resConfig = &stru_1F496CB30;

    v16 = [v12 objectForKeyedSubscript:{@"forceCPU", v42, v43}];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 BOOLValue];
    }

    else
    {
      v18 = 0;
    }

    v20 = [v12 objectForKeyedSubscript:@"forceNNGraph"];

    v21 = v20;
    if (v20)
    {
      v22 = [v20 BOOLValue];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v12 objectForKeyedSubscript:@"sharedContext"];

    v24 = v23;
    if (v23)
    {
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 1;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v26 = [v11 absoluteString];
      v27 = v26;
      v28 = @"shared ";
      if (!v25)
      {
        v28 = &stru_1F496CB30;
      }

      *buf = 138412546;
      v46 = v28;
      v47 = 2112;
      *v48 = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CNNModelEspresso] Creating %@context for %@", buf, 0x16u);
    }

    v29 = [[VCPCNNEspressoContext alloc] initWithForceCPU:v18 forceNNGraph:v22 shared:v25];
    context = v14->_context;
    v14->_context = v29;

    v31 = v14->_context;
    if (v31)
    {
      [(VCPCNNEspressoContext *)v31 espressoContext];
      default_storage_type = espresso_get_default_storage_type();
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v33 = "";
        *buf = 136315906;
        if (v25)
        {
          v33 = "shared ";
        }

        v46 = v33;
        v47 = 1024;
        *v48 = v18;
        *&v48[4] = 1024;
        *&v48[6] = v22;
        v49 = 1024;
        v50 = default_storage_type;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CNNModelEspresso] Created %scontext (CPU:%d, MPSGraph:%d)), storage type %d", buf, 0x1Eu);
      }

      [(VCPCNNEspressoContext *)v14->_context espressoContext];
      v14->_plan = espresso_create_plan();
      v34 = [v12 objectForKeyedSubscript:@"planPriority"];
      v35 = v34 == 0;

      if (!v35)
      {
        v36 = [v12 objectForKeyedSubscript:@"planPriority"];
        [v36 intValue];

        espresso_plan_set_priority();
      }

      plan = v14->_plan;
      if (plan)
      {
        v37 = [(NSURL *)v14->_netFileUrl path];
        v38 = v37;
        [v37 UTF8String];
        v39 = espresso_plan_add_network();

        if (v39)
        {
          plan = 0;
        }

        else
        {
          plan = v14;
        }
      }
    }

    else
    {
      plan = 0;
    }
  }

  else
  {
    plan = 0;
  }

  v40 = plan;

  return v40;
}

- (int)prepareModelWithConfig:(id)a3
{
  v5 = a3;
  v6 = [(NSArray *)self->_inputNames count];
  v7 = [(NSArray *)self->_outputNames count];
  if ([(VCPCNNModelEspresso *)self getPlanPhase]== 2)
  {
    v8 = -18;
    goto LABEL_16;
  }

  if ([(VCPCNNModelEspresso *)self getPlanPhase]== 1 && [(NSString *)self->_resConfig isEqualToString:v5])
  {
LABEL_5:
    v8 = 0;
    goto LABEL_16;
  }

  if ([(VCPCNNModelEspresso *)self getPlanPhase]|| (v8 = espresso_plan_build()) == 0)
  {
    if (![(NSString *)self->_resConfig isEqualToString:v5])
    {
      v8 = espresso_plan_build_clean();
      if (v8)
      {
        goto LABEL_16;
      }

      [v5 UTF8String];
      v8 = espresso_network_select_configuration();
      if (v8)
      {
        goto LABEL_16;
      }

      v8 = espresso_plan_build();
      if (v8)
      {
        goto LABEL_16;
      }

      objc_storeStrong(&self->_resConfig, a3);
    }

    if (v6 > 1)
    {
      v10 = v6 & 0x7FFFFFFF;
      std::vector<espresso_buffer_t>::resize(&self->_inputBlobs.__begin_, v10);
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = [(NSArray *)self->_inputNames objectAtIndexedSubscript:v12];
        [v13 UTF8String];
        v8 = espresso_network_bind_buffer();

        if (v8)
        {
          break;
        }

        ++v12;
        v11 += 168;
        if (v10 == v12)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v8 = espresso_network_bind_buffer();
      if (v8)
      {
        goto LABEL_16;
      }

LABEL_20:
      if (v7 <= 1)
      {
        if (v7 == 1)
        {
          v14 = [(NSArray *)self->_outputNames objectAtIndexedSubscript:0];
          [v14 UTF8String];
          v8 = espresso_network_bind_buffer();

          if (v8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v8 = espresso_network_bind_buffer();
          if (v8)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }

      v15 = v7 & 0x7FFFFFFF;
      std::vector<espresso_buffer_t>::resize(&self->_outputBlobs.__begin_, v15);
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = [(NSArray *)self->_outputNames objectAtIndexedSubscript:v17];
        [v18 UTF8String];
        v8 = espresso_network_bind_buffer();

        if (v8)
        {
          break;
        }

        ++v17;
        v16 += 168;
        if (v15 == v17)
        {
          goto LABEL_5;
        }
      }
    }
  }

LABEL_16:

  return v8;
}

- (int)prepareModelInput:(float *)a3
{
  if (!a3)
  {
    return -18;
  }

  v3 = vshlq_s64(vshlq_n_s64(*&self->_inputBlob.channels, 0x20uLL), xmmword_1C9F60950);
  memcpy(self->_inputBlob.data, a3, v3.i64[1] * SLODWORD(self->_inputBlob.sequence_length) * v3.i64[0] * LODWORD(self->_inputBlob.height) * LODWORD(self->_inputBlob.width));
  return 0;
}

- (int)prepareModelInputs:(vector<float *)
{
  v5 = [(NSArray *)self->_inputNames count];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = a3->__begin_[v7];
      if (!v8)
      {
        break;
      }

      v9 = (self->_inputBlobs.__begin_ + v6);
      v10 = vshlq_s64(vshlq_n_s64(v9[6], 0x20uLL), xmmword_1C9F60950);
      memcpy(v9->i64[0], v8, v10.i64[1] * v9[7].i32[0] * v10.i64[0] * v9[5].i32[0] * v9[5].i32[2]);
      ++v7;
      v6 += 168;
      if ([(NSArray *)self->_inputNames count]<= v7)
      {
        LODWORD(v5) = 0;
        return v5;
      }
    }

    LODWORD(v5) = -18;
  }

  return v5;
}

- (int)espressoForward:(float *)a3
{
  result = [(VCPCNNModelEspresso *)self prepareModelInput:a3];
  if (!result)
  {

    return espresso_plan_execute_sync();
  }

  return result;
}

- (int)espressoForwardInputs:(vector<float *)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&__p, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  v4 = [(VCPCNNModelEspresso *)self prepareModelInputs:&__p];
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (!v4)
  {
    return espresso_plan_execute_sync();
  }

  return v4;
}

- (void)normalization:(float *)a3
{
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_inputBlob.channels];
  [v19 addObject:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_inputBlob.height];
  [v19 addObject:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_inputBlob.width];
  [v19 addObject:v7];

  v8 = 0;
  v9 = 1;
  while ([v19 count] > v8)
  {
    v10 = [v19 objectAtIndexedSubscript:v8];
    v9 *= [v10 intValue];

    ++v8;
  }

  v11 = v9;
  if (v9 < 1)
  {
    v15 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v12 = 0.0;
    v13 = v9;
    v14 = a3;
    v15 = 0.0;
    do
    {
      v16 = *v14++;
      v15 = v15 + v16;
      v12 = v12 + (v16 * v16);
      --v13;
    }

    while (v13);
  }

  if (v9 >= 1)
  {
    v17 = v15 / v9;
    v18 = fmaxf(sqrtf((v12 / v9) - (v17 * v17)), 0.00000011921);
    do
    {
      *a3 = (*a3 - v17) / v18;
      ++a3;
      --v11;
    }

    while (v11);
  }
}

- (int)softmax
{
  if (self->_outputBlob.width * self->_outputBlob.height != 1)
  {
    return -18;
  }

  if (self->_outputBlob.channels < 1)
  {
    return 0;
  }

  data = self->_outputBlob.data;
  v3 = self->_outputBlob.channels & 0x7FFFFFFF;
  v4 = -1.0e10;
  v5 = v3;
  v6 = data;
  do
  {
    v7 = *v6++;
    v8 = v7;
    if (v7 > v4)
    {
      v4 = v8;
    }

    --v5;
  }

  while (v5);
  v9 = 0.0;
  v10 = self->_outputBlob.channels & 0x7FFFFFFF;
  v11 = self->_outputBlob.data;
  do
  {
    v12 = expf(*v11 - v4);
    *v11++ = v12;
    v9 = v9 + v12;
    --v10;
  }

  while (v10);
  do
  {
    *data = *data / v9;
    ++data;
    --v3;
  }

  while (v3);
  return 0;
}

- (void)dealloc
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  v3.receiver = self;
  v3.super_class = VCPCNNModelEspresso;
  [(VCPCNNModelEspresso *)&v3 dealloc];
}

- (vector<espresso_buffer_t,)inputBlobs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(retstr, self->_inputBlobs.__begin_, self->_inputBlobs.__end_, 0xCF3CF3CF3CF3CF3DLL * ((self->_inputBlobs.__end_ - self->_inputBlobs.__begin_) >> 3));
}

- (void)setInputBlobs:()vector<espresso_buffer_t
{
  p_inputBlobs = &self->_inputBlobs;
  if (p_inputBlobs != a3)
  {
    std::vector<espresso_buffer_t>::__assign_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(p_inputBlobs, a3->__begin_, a3->__end_, 0xCF3CF3CF3CF3CF3DLL * ((a3->__end_ - a3->__begin_) >> 3));
  }
}

- (vector<espresso_buffer_t,)outputBlobs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(retstr, self->_outputBlobs.__begin_, self->_outputBlobs.__end_, 0xCF3CF3CF3CF3CF3DLL * ((self->_outputBlobs.__end_ - self->_outputBlobs.__begin_) >> 3));
}

- (void)setOutputBlobs:()vector<espresso_buffer_t
{
  p_outputBlobs = &self->_outputBlobs;
  if (p_outputBlobs != a3)
  {
    std::vector<espresso_buffer_t>::__assign_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(p_outputBlobs, a3->__begin_, a3->__end_, 0xCF3CF3CF3CF3CF3DLL * ((a3->__end_ - a3->__begin_) >> 3));
  }
}

- ($FD4688982923A924290ECB669CAF1EC2)inputBlob
{
  v3 = *&self[1].var3[2];
  v4 = *&self[1].var4;
  *&retstr->var14 = self[1].var8;
  v5 = *&self[1].var0;
  v6 = *&self[1].var2[2];
  *&retstr->var3[2] = *self[1].var2;
  *&retstr->var4 = v6;
  *&retstr->var6 = *self[1].var3;
  *&retstr->var8 = v3;
  v7 = *&self->var11;
  *&retstr->var0 = *&self->var9;
  *retstr->var2 = v7;
  *&retstr->var2[2] = *&self->var13;
  *retstr->var3 = v5;
  v8 = *&self[1].var6;
  *&retstr->var10 = v4;
  *&retstr->var12 = v8;
  return self;
}

- (void)setInputBlob:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *a3->var2;
  *&self->_inputBlob.dim[2] = *&a3->var2[2];
  *self->_inputBlob.dim = v4;
  *&self->_inputBlob.data = v3;
  v5 = *a3->var3;
  v6 = *&a3->var3[2];
  v7 = *&a3->var4;
  *&self->_inputBlob.channels = *&a3->var6;
  *&self->_inputBlob.width = v7;
  *&self->_inputBlob.stride[2] = v6;
  *self->_inputBlob.stride = v5;
  v8 = *&a3->var8;
  v9 = *&a3->var10;
  v10 = *&a3->var12;
  *&self->_inputBlob.storage_type = *&a3->var14;
  *&self->_inputBlob.stride_batch_number = v10;
  *&self->_inputBlob.stride_height = v9;
  *&self->_inputBlob.sequence_length = v8;
}

- ($FD4688982923A924290ECB669CAF1EC2)outputBlob
{
  v3 = *&self[2].var6;
  *&retstr->var10 = *&self[2].var4;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[2].var8;
  v4 = *&self[2].var2[2];
  *&retstr->var3[2] = *self[2].var2;
  *&retstr->var4 = v4;
  v5 = *&self[2].var3[2];
  *&retstr->var6 = *self[2].var3;
  *&retstr->var8 = v5;
  v6 = *&self[1].var11;
  *&retstr->var0 = *&self[1].var9;
  *retstr->var2 = v6;
  v7 = *&self[2].var0;
  *&retstr->var2[2] = *&self[1].var13;
  *retstr->var3 = v7;
  return self;
}

- (void)setOutputBlob:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2[2];
  *self->_outputBlob.dim = *a3->var2;
  *&self->_outputBlob.dim[2] = v4;
  *&self->_outputBlob.data = v3;
  v5 = *a3->var3;
  v6 = *&a3->var3[2];
  v7 = *&a3->var6;
  *&self->_outputBlob.width = *&a3->var4;
  *&self->_outputBlob.channels = v7;
  *self->_outputBlob.stride = v5;
  *&self->_outputBlob.stride[2] = v6;
  v8 = *&a3->var8;
  v9 = *&a3->var10;
  v10 = *&a3->var12;
  *&self->_outputBlob.storage_type = *&a3->var14;
  *&self->_outputBlob.stride_height = v9;
  *&self->_outputBlob.stride_batch_number = v10;
  *&self->_outputBlob.sequence_length = v8;
}

- (id).cxx_construct
{
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  return self;
}

@end