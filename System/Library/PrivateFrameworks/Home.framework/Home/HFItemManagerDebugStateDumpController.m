@interface HFItemManagerDebugStateDumpController
@end

@implementation HFItemManagerDebugStateDumpController

void __56___HFItemManagerDebugStateDumpController_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(_HFItemManagerDebugStateDumpController);
  v1 = qword_280E02AD0;
  qword_280E02AD0 = v0;
}

void *__46___HFItemManagerDebugStateDumpController_init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _performStateDump];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v4 = v3;

  return v3;
}

id __59___HFItemManagerDebugStateDumpController__performStateDump__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFStateDumpBuilderContext contextWithDetailLevel:2];
  v4 = [v2 hf_stateDumpBuilderWithContext:v3];
  v5 = [v4 buildPropertyListRepresentation];

  return v5;
}

@end