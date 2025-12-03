@interface FRCFlowAdaptationDecoder
- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output;
- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback;
- (FRCFlowAdaptationDecoder)initWithMode:(int64_t)mode revision:(int64_t)revision;
- (void)setupNetworkModel;
@end

@implementation FRCFlowAdaptationDecoder

- (FRCFlowAdaptationDecoder)initWithMode:(int64_t)mode revision:(int64_t)revision
{
  [(VEEspressoModel *)self setUsage:?];
  [(OFFlowEstimate *)self setRevision:revision];
  [(FRCFlowAdaptationDecoder *)self setupNetworkModel];
  espresso_file = self->_espresso_file;
  v14.receiver = self;
  v14.super_class = FRCFlowAdaptationDecoder;
  v8 = [(VEEspressoModel *)&v14 initWithModelName:espresso_file usage:mode];
  v9 = v8;
  if (v8)
  {
    [(OFFlowEstimate *)v8 setLevel:0];
    v10 = dispatch_queue_create("Flow Adaptation Decoder", 0);
    submissionQueue = v9->_submissionQueue;
    v9->_submissionQueue = v10;

    v12 = v9;
  }

  return v9;
}

- (void)setupNetworkModel
{
  self->super._inputBlobs = &inputBlobNames_0;
  espresso_file = self->_espresso_file;
  self->_espresso_file = @"flow_adaptation_decoder";

  self->super._outputBlobs = &outputBlobNames_0;
  if ([(OFFlowEstimate *)self revision]!= 1)
  {
    self->super._outputBlobs = &off_27EEA9818;
    self->_espresso_file = [(NSString *)self->_espresso_file stringByAppendingFormat:@"_rev%ld", [(OFFlowEstimate *)self revision]];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output
{
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    if ((global_logLevel & 0x10) == 0)
    {
LABEL_15:
      LOBYTE(v6) = 0;
      return v6;
    }

    v6 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
      goto LABEL_15;
    }
  }

  else if (espresso_network_bind_direct_cvpixelbuffer())
  {
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v6 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
      goto LABEL_15;
    }
  }

  else if (espresso_network_bind_direct_cvpixelbuffer())
  {
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v6 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
      goto LABEL_15;
    }
  }

  else
  {
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v6 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return v6;
        }

        [FRCFlowAdaptationDecoder bindCVPixelBuffers:correlation:flow:output:];
      }

      goto LABEL_15;
    }

    LOBYTE(v6) = 1;
  }

  return v6;
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
  block[2] = __74__FRCFlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke;
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

void __74__FRCFlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) bindCVPixelBuffers:*(a1 + 56) correlation:*(a1 + 64) flow:*(a1 + 72) output:*(a1 + 80)])
  {
    kdebug_trace();
    v4 = *(a1 + 40);
    if (espresso_plan_submit())
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v3 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          __74__FRCFlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke_cold_1(v2, v3);
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t __74__FRCFlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __74__FRCFlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke_cold_1(void **a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = 134217984;
  v5 = [v2 usage];
  _os_log_error_impl(&dword_24874B000, v3, OS_LOG_TYPE_ERROR, "FRCFlowAdaptationDecoder: Error !! Network execution Failed. (Usage:%ld)", &v4, 0xCu);
}

@end