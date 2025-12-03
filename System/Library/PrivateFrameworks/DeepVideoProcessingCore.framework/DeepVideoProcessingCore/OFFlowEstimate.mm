@interface OFFlowEstimate
- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output;
- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback;
- (OFFlowEstimate)initWithMode:(int64_t)mode level:(unsigned int)level revision:(int64_t)revision;
- (void)setupNetworkModel;
@end

@implementation OFFlowEstimate

- (OFFlowEstimate)initWithMode:(int64_t)mode level:(unsigned int)level revision:(int64_t)revision
{
  v6 = *&level;
  [(OFFlowEstimate *)self setLevel:*&level];
  [(VEEspressoModel *)self setUsage:mode];
  [(OFFlowEstimate *)self setRevision:revision];
  [(OFFlowEstimate *)self setupNetworkModel];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", self->_espresso_base_name, (v6 + 1)];
  v16.receiver = self;
  v16.super_class = OFFlowEstimate;
  v10 = [(VEEspressoModel *)&v16 initWithModelName:v9 usage:mode];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Optical Flow Estimate Level %d", v6];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    submissionQueue = v10->_submissionQueue;
    v10->_submissionQueue = v12;

    v14 = v10;
  }

  return v10;
}

- (void)setupNetworkModel
{
  v9 = 0;
  v10 = 0;
  getInputFrameSizeForUsage([(VEEspressoModel *)self usage], &v10, &v9);
  espresso_base_name = self->_espresso_base_name;
  if (v10 <= 0x3E8)
  {
    v4 = @"optical_flow_estimation_pyrlite";
  }

  else
  {
    v4 = @"optical_flow_estimation_pyrlite_HD";
  }

  self->_espresso_base_name = &v4->isa;

  if (self->_revision != 1)
  {
    v5 = [(NSString *)self->_espresso_base_name stringByAppendingFormat:@"_rev%ld", self->_revision];
    v6 = self->_espresso_base_name;
    self->_espresso_base_name = v5;
  }

  v7 = [(NSString *)self->_espresso_base_name stringByAppendingString:@"_stage"];
  v8 = self->_espresso_base_name;
  self->_espresso_base_name = v7;

  self->_inputBlobs = &inputBlobNames_1;
  self->_outputBlobs = &outputBlobNames_2;
  self->_concatenatedInputBlob = *self->_inputBlobs;
}

- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output
{
  if (self->_level < 2)
  {
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v7 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        return v7;
      }

LABEL_9:
      [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
      goto LABEL_22;
    }

LABEL_20:
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v7 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        [OFFlowEstimate bindCVPixelBuffers:correlation:flow:output:];
      }

      goto LABEL_22;
    }

    LOBYTE(v7) = 1;
    return v7;
  }

  if (!espresso_network_bind_cvpixelbuffer())
  {
    if (espresso_network_bind_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v7 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        return v7;
      }

      goto LABEL_9;
    }

    if (_numLevels - 1 != self->_level && espresso_network_bind_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v7 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
        goto LABEL_22;
      }

      return v7;
    }

    goto LABEL_20;
  }

  if ((global_logLevel & 0x10) == 0)
  {
LABEL_22:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    [OFFlowEstimate bindCVPixelBuffers:correlation:flow:output:];
    goto LABEL_22;
  }

  return v7;
}

- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback
{
  callbackCopy = callback;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  submissionQueue = self->_submissionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke;
  block[3] = &unk_278F53790;
  correlationCopy = correlation;
  v21 = a5;
  outputCopy = output;
  v18 = &v23;
  flowCopy = flow;
  block[4] = self;
  v17 = callbackCopy;
  v14 = callbackCopy;
  dispatch_sync(submissionQueue, block);
  LOBYTE(a5) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return a5;
}

void __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) bindCVPixelBuffers:*(a1 + 56) correlation:*(a1 + 64) flow:*(a1 + 72) output:*(a1 + 80)] & 1) == 0)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_cold_1();
    }

    goto LABEL_12;
  }

  kdebug_trace();
  v3 = *(a1 + 40);
  if (!v3)
  {
    v5 = espresso_plan_execute_sync();
    kdebug_trace();
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  v7 = v3;
  v4 = espresso_plan_submit();

  if (v4)
  {
LABEL_9:
    if ((global_logLevel & 0x10) != 0)
    {
      v6 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_cold_2(v2, v6);
      }
    }

LABEL_12:
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_16(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __64__OFFlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_cold_2(id *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  LODWORD(v3) = [v3 level];
  v5 = [*a1 usage];
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 2048;
  v8 = v5;
  _os_log_error_impl(&dword_24874B000, v4, OS_LOG_TYPE_ERROR, "OFFlowEstimate Level:%d: Error !! Network execution Failed. (Usage:%ld)", v6, 0x12u);
}

@end