@interface FlowEstimate
- (BOOL)bindCVPixelBuffers:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6;
- (BOOL)estimateFlow:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6 callback:(id)a7;
- (void)setupNetworkModel;
@end

@implementation FlowEstimate

- (void)setupNetworkModel
{
  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v10, &v9);
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

  self->_inputBlobs = &inputBlobNames_0;
  self->_outputBlobs = &outputBlobNames_0;
  self->_concatenatedInputBlob = *self->_inputBlobs;
}

- (BOOL)bindCVPixelBuffers:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6
{
  p_net = &self->super._net;
  if (self->_level < 2)
  {
    concatenatedInputBlob = self->_concatenatedInputBlob;
    plan = p_net->plan;
    v13 = *&p_net->network_index;
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      goto LABEL_7;
    }

    v14 = 1;
  }

  else
  {
    v8 = *self->_inputBlobs;
    v9 = p_net->plan;
    v10 = *&p_net->network_index;
    if (espresso_network_bind_cvpixelbuffer())
    {
      NSLog(&cfstr_ErrorFailedToB.isa);
      return 0;
    }

    v15 = *(self->_inputBlobs + 1);
    v16 = p_net->plan;
    v17 = *&p_net->network_index;
    if (espresso_network_bind_cvpixelbuffer())
    {
LABEL_7:
      NSLog(&cfstr_ErrorFailedToB_0.isa);
      return 0;
    }

    if (_numLevels - 1 != self->_level)
    {
      v18 = *(self->_inputBlobs + 2);
      v19 = p_net->plan;
      v20 = *&p_net->network_index;
      if (espresso_network_bind_cvpixelbuffer())
      {
        NSLog(&cfstr_ErrorFailedToB_1.isa);
        return 0;
      }
    }

    v14 = 0;
  }

  v21 = self->_outputBlobs[v14];
  v22 = p_net->plan;
  v23 = *&p_net->network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_2.isa);
    return 0;
  }

  return 1;
}

- (BOOL)estimateFlow:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6 callback:(id)a7
{
  v12 = a7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  submissionQueue = self->_submissionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke;
  block[3] = &unk_278FEA560;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v18 = &v23;
  v19 = a3;
  block[4] = self;
  v17 = v12;
  v14 = v12;
  dispatch_sync(submissionQueue, block);
  LOBYTE(a5) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return a5;
}

void __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) bindCVPixelBuffers:*(a1 + 56) correlation:*(a1 + 64) flow:*(a1 + 72) output:*(a1 + 80)])
  {
    kdebug_trace();
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = *(v2 + 40);
    v5 = *(a1 + 40);
    if (espresso_plan_submit())
    {
      NSLog(&cfstr_FlowestimateLe.isa, [*(a1 + 32) level], objc_msgSend(*(a1 + 32), "usage"));
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorFailedToB_3.isa);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_2(uint64_t a1)
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