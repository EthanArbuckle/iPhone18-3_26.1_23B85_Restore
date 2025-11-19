@interface _MTLSharedEvent(IOGPUFamilySupport)
- (uint64_t)_encodeIOGPUKernelConditionalEventAbortCommandArgs:()IOGPUFamilySupport;
- (uint64_t)_encodeIOGPUKernelSignalEventAgentCommandArgs:()IOGPUFamilySupport value:agentMask:;
- (uint64_t)_encodeIOGPUKernelSignalEventCommandArgs:()IOGPUFamilySupport value:;
- (uint64_t)_encodeIOGPUKernelSignalEventScheduledCommandArgs:()IOGPUFamilySupport value:;
- (uint64_t)_encodeIOGPUKernelWaitEventCommandArgs:()IOGPUFamilySupport value:timeout:;
@end

@implementation _MTLSharedEvent(IOGPUFamilySupport)

- (uint64_t)_encodeIOGPUKernelSignalEventCommandArgs:()IOGPUFamilySupport value:
{
  v4 = *(a1 + *MEMORY[0x1E696CE18]);
  a3[1] = a4;
  *a3 = v4;
  return 3;
}

- (uint64_t)_encodeIOGPUKernelWaitEventCommandArgs:()IOGPUFamilySupport value:timeout:
{
  v5 = *(a1 + *MEMORY[0x1E696CE18]);
  *(a3 + 8) = a4;
  *a3 = v5;
  *(a3 + 4) = a5;
  return 4;
}

- (uint64_t)_encodeIOGPUKernelSignalEventAgentCommandArgs:()IOGPUFamilySupport value:agentMask:
{
  *a3 = *(a1 + *MEMORY[0x1E696CE18]);
  a3[1] = a4;
  a3[2] = a5;
  return 11;
}

- (uint64_t)_encodeIOGPUKernelConditionalEventAbortCommandArgs:()IOGPUFamilySupport
{
  v3 = *(a1 + *MEMORY[0x1E696CE18]);
  a3[1] = 0;
  *a3 = v3;
  return 12;
}

- (uint64_t)_encodeIOGPUKernelSignalEventScheduledCommandArgs:()IOGPUFamilySupport value:
{
  v4 = *(a1 + *MEMORY[0x1E696CE18]);
  a3[1] = a4;
  *a3 = v4;
  return 13;
}

@end