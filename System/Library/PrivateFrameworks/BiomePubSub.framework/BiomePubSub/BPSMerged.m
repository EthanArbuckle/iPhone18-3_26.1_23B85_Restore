@interface BPSMerged
@end

@implementation BPSMerged

uint64_t __40___BPSMerged_receiveCompletion_atIndex___block_invoke(uint64_t a1, void *a2)
{
  [a2 receiveCompletion:*(a1 + 32)];
  v2 = MEMORY[0x1E696AD98];

  return [v2 numberWithInteger:0];
}

uint64_t __40___BPSMerged_receiveCompletion_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[BPSCompletion success];
  [v2 receiveCompletion:v3];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:0];
}

uint64_t __35___BPSMerged_receiveInput_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 receiveInput:*(a1 + 32)];

  return [v2 numberWithInteger:v3];
}

uint64_t __35___BPSMerged_receiveInput_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 receiveInput:*(a1 + 32)];

  return [v2 numberWithInteger:v3];
}

uint64_t __28___BPSMerged_requestDemand___block_invoke(uint64_t a1, void *a2)
{
  [a2 receiveInput:*(a1 + 32)];
  v2 = MEMORY[0x1E696AD98];

  return [v2 numberWithInteger:0];
}

uint64_t __28___BPSMerged_requestDemand___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[BPSCompletion success];
  [v2 receiveCompletion:v3];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:0];
}

uint64_t __28___BPSMerged_requestDemand___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 receiveInput:*(a1 + 32)];

  return [v2 numberWithInteger:v3];
}

uint64_t __28___BPSMerged_requestDemand___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[BPSCompletion success];
  [v2 receiveCompletion:v3];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:0];
}

@end