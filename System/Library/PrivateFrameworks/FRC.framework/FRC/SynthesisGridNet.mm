@interface SynthesisGridNet
- (BOOL)synthesizeFrameFromFeatureForward:(id *)forward backward:(id *)backward destination:(__CVBuffer *)destination pyramidStartLevel:(unint64_t)level callback:(id)callback;
- (SynthesisGridNet)initWithMode:(int64_t)mode;
- (void)dealloc;
@end

@implementation SynthesisGridNet

- (SynthesisGridNet)initWithMode:(int64_t)mode
{
  v12 = 0;
  v13 = 0;
  FRCGetInputFrameSizeForUsage(mode, &v13, &v12);
  if (v13 <= 0x3E8)
  {
    v5 = @"synthesis_net_GridNet_pyrlite";
  }

  else
  {
    v5 = @"synthesis_net_GridNet_pyrlite_HD";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5];
  v11.receiver = self;
  v11.super_class = SynthesisGridNet;
  v7 = [(EspressoModel *)&v11 initWithModelName:v6 usage:mode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SynthesisGridNet;
  [(EspressoModel *)&v2 dealloc];
}

- (BOOL)synthesizeFrameFromFeatureForward:(id *)forward backward:(id *)backward destination:(__CVBuffer *)destination pyramidStartLevel:(unint64_t)level callback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  p_net = &self->super._net;
  v14 = &backward->var0[level];
  v15 = &forward->var0[level];
  v16 = off_278FEA7E0;
  do
  {
    v17 = *(v16 - 1);
    v18 = v15[v12];
    plan = p_net->plan;
    v20 = *&self->super._net.network_index;
    if (espresso_network_bind_cvpixelbuffer() || (v21 = *v16, v22 = v14[v12], v23 = p_net->plan, v24 = *&self->super._net.network_index, espresso_network_bind_cvpixelbuffer()))
    {
      NSLog(&cfstr_GridnetErrorFa.isa);
      goto LABEL_8;
    }

    ++v12;
    v16 += 2;
  }

  while (v12 != 3);
  v25 = p_net->plan;
  v26 = *&self->super._net.network_index;
  if (espresso_network_bind_cvpixelbuffer())
  {
    NSLog(&cfstr_GridnetErrorFa_0.isa);
LABEL_8:
    v27 = 0;
    goto LABEL_9;
  }

  kdebug_trace();
  v29 = self->super._plan;
  if (callbackCopy)
  {
    callbackQueue = self->super._callbackQueue;
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __102__SynthesisGridNet_synthesizeFrameFromFeatureForward_backward_destination_pyramidStartLevel_callback___block_invoke;
    v37 = &unk_278FEA538;
    v38 = callbackCopy;
    v31 = espresso_plan_submit();

    if (v31)
    {
LABEL_12:
      NSLog(&cfstr_GridnetErrorNe.isa, [(EspressoModel *)self usage], v34, v35, v36, v37);
      goto LABEL_8;
    }
  }

  else
  {
    v32 = self->super._plan;
    v33 = espresso_plan_execute_sync();
    kdebug_trace();
    if (v33)
    {
      goto LABEL_12;
    }
  }

  v27 = 1;
LABEL_9:

  return v27;
}

uint64_t __102__SynthesisGridNet_synthesizeFrameFromFeatureForward_backward_destination_pyramidStartLevel_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

@end