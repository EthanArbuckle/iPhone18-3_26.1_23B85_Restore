@interface FlowAdaptationDecoder
- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output;
- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback;
- (FlowAdaptationDecoder)initWithMode:(int64_t)mode revision:(int64_t)revision;
- (void)setupNetworkModel;
@end

@implementation FlowAdaptationDecoder

- (FlowAdaptationDecoder)initWithMode:(int64_t)mode revision:(int64_t)revision
{
  [(EspressoModel *)self setUsage:?];
  [(FlowEstimate *)self setRevision:revision];
  [(FlowAdaptationDecoder *)self setupNetworkModel];
  espresso_file = self->_espresso_file;
  v14.receiver = self;
  v14.super_class = FlowAdaptationDecoder;
  v8 = [(EspressoModel *)&v14 initWithModelName:espresso_file usage:mode];
  v9 = v8;
  if (v8)
  {
    [(FlowEstimate *)v8 setLevel:0];
    v10 = dispatch_queue_create("Flow Adaptation Decoder", 0);
    submissionQueue = v9->_submissionQueue;
    v9->_submissionQueue = v10;

    v12 = v9;
  }

  return v9;
}

- (void)setupNetworkModel
{
  self->super._inputBlobs = &inputBlobNames_1;
  espresso_file = self->_espresso_file;
  self->_espresso_file = @"flow_adaptation_decoder";

  self->super._outputBlobs = &outputBlobNames_1;
  if ([(FlowEstimate *)self revision]!= 1)
  {
    self->super._outputBlobs = &off_27EF7E070;
    v4 = [(NSString *)self->_espresso_file stringByAppendingFormat:@"_rev%ld", [(FlowEstimate *)self revision]];
    v5 = self->_espresso_file;
    self->_espresso_file = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output
{
  p_net = &self->super.super._net;
  v8 = *self->super._inputBlobs;
  plan = self->super.super._net.plan;
  v10 = *&p_net->network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_4.isa);
    return 0;
  }

  v11 = *(self->super._inputBlobs + 1);
  v12 = p_net->plan;
  v13 = *&p_net->network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_1.isa);
    return 0;
  }

  v14 = *(self->super._inputBlobs + 2);
  v15 = p_net->plan;
  v16 = *&p_net->network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_0.isa);
    return 0;
  }

  v17 = *self->super._outputBlobs;
  v18 = p_net->plan;
  v19 = *&p_net->network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_5.isa);
    return 0;
  }

  return 1;
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
  block[2] = __71__FlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke;
  block[3] = &unk_278FEA560;
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

void __71__FlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) bindCVPixelBuffers:*(a1 + 56) correlation:*(a1 + 64) flow:*(a1 + 72) output:*(a1 + 80)])
  {
    kdebug_trace();
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = *(v2 + 40);
    v5 = MEMORY[0x277D85DD0];
    v6 = *(a1 + 40);
    if (espresso_plan_submit())
    {
      NSLog(&cfstr_Flowadaptation.isa, [*(a1 + 32) usage], v5, 3221225472, __71__FlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke_2, &unk_278FEA538, v6);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t __71__FlowAdaptationDecoder_estimateFlow_correlation_flow_output_callback___block_invoke_2(uint64_t a1)
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

@end